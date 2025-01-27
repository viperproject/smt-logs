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
(declare-sort T@Field_27923_53 0)
(declare-sort T@Field_27936_27937 0)
(declare-sort T@Field_35865_35866 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_34868_4039 0)
(declare-sort T@Field_35878_35883 0)
(declare-sort T@Field_34945_34946 0)
(declare-sort T@Field_34958_34963 0)
(declare-sort T@Field_34037_34042 0)
(declare-sort T@Field_17301_17332 0)
(declare-sort T@Field_17301_34042 0)
(declare-sort T@Field_17331_4039 0)
(declare-sort T@Field_17331_53 0)
(declare-sort T@Field_17331_27937 0)
(declare-sort T@Field_17306_4039 0)
(declare-sort T@Field_17306_53 0)
(declare-sort T@Field_17306_27937 0)
(declare-sort T@Field_34023_3575 0)
(declare-sort T@Field_34054_34055 0)
(declare-sort T@Field_34023_53 0)
(declare-sort T@Field_34023_27937 0)
(declare-datatypes ((T@PolymorphicMapType_27884 0)) (((PolymorphicMapType_27884 (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| (Array T@Ref T@Field_34868_4039 Real)) (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| (Array T@Ref T@Field_35865_35866 Real)) (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| (Array T@Ref T@Field_34945_34946 Real)) (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| (Array T@Ref T@Field_34023_3575 Real)) (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| (Array T@Ref T@Field_17301_17332 Real)) (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| (Array T@Ref T@Field_27923_53 Real)) (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| (Array T@Ref T@Field_27936_27937 Real)) (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| (Array T@Ref T@Field_17301_34042 Real)) (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| (Array T@Ref T@Field_17331_4039 Real)) (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| (Array T@Ref T@Field_17331_53 Real)) (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| (Array T@Ref T@Field_17331_27937 Real)) (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| (Array T@Ref T@Field_35878_35883 Real)) (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| (Array T@Ref T@Field_17306_4039 Real)) (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| (Array T@Ref T@Field_17306_53 Real)) (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| (Array T@Ref T@Field_17306_27937 Real)) (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| (Array T@Ref T@Field_34958_34963 Real)) (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| (Array T@Ref T@Field_34054_34055 Real)) (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| (Array T@Ref T@Field_34023_53 Real)) (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| (Array T@Ref T@Field_34023_27937 Real)) (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| (Array T@Ref T@Field_34037_34042 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_28412 0)) (((PolymorphicMapType_28412 (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (Array T@Ref T@Field_34868_4039 Bool)) (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (Array T@Ref T@Field_27923_53 Bool)) (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (Array T@Ref T@Field_27936_27937 Bool)) (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (Array T@Ref T@Field_17301_34042 Bool)) (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (Array T@Ref T@Field_17301_17332 Bool)) (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (Array T@Ref T@Field_34023_3575 Bool)) (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (Array T@Ref T@Field_34023_53 Bool)) (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (Array T@Ref T@Field_34023_27937 Bool)) (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (Array T@Ref T@Field_34037_34042 Bool)) (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (Array T@Ref T@Field_34054_34055 Bool)) (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (Array T@Ref T@Field_17306_4039 Bool)) (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (Array T@Ref T@Field_17306_53 Bool)) (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (Array T@Ref T@Field_17306_27937 Bool)) (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (Array T@Ref T@Field_34958_34963 Bool)) (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (Array T@Ref T@Field_34945_34946 Bool)) (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (Array T@Ref T@Field_17331_4039 Bool)) (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (Array T@Ref T@Field_17331_53 Bool)) (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (Array T@Ref T@Field_17331_27937 Bool)) (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (Array T@Ref T@Field_35878_35883 Bool)) (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (Array T@Ref T@Field_35865_35866 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27863 0)) (((PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| (Array T@Ref T@Field_27923_53 Bool)) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| (Array T@Ref T@Field_27936_27937 T@Ref)) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| (Array T@Ref T@Field_35865_35866 T@FrameType)) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| (Array T@Ref T@Field_34868_4039 Int)) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| (Array T@Ref T@Field_35878_35883 T@PolymorphicMapType_28412)) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| (Array T@Ref T@Field_34945_34946 T@FrameType)) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| (Array T@Ref T@Field_34958_34963 T@PolymorphicMapType_28412)) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| (Array T@Ref T@Field_34037_34042 T@PolymorphicMapType_28412)) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| (Array T@Ref T@Field_17301_17332 T@FrameType)) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| (Array T@Ref T@Field_17301_34042 T@PolymorphicMapType_28412)) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| (Array T@Ref T@Field_17331_4039 Int)) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| (Array T@Ref T@Field_17331_53 Bool)) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| (Array T@Ref T@Field_17331_27937 T@Ref)) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| (Array T@Ref T@Field_17306_4039 Int)) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| (Array T@Ref T@Field_17306_53 Bool)) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| (Array T@Ref T@Field_17306_27937 T@Ref)) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| (Array T@Ref T@Field_34023_3575 Int)) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| (Array T@Ref T@Field_34054_34055 T@FrameType)) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| (Array T@Ref T@Field_34023_53 Bool)) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| (Array T@Ref T@Field_34023_27937 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_27923_53)
(declare-fun f_7 () T@Field_34868_4039)
(declare-fun g () T@Field_34868_4039)
(declare-sort T@Seq_36838 0)
(declare-fun |Seq#Length_36838| (T@Seq_36838) Int)
(declare-fun |Seq#Drop_36838| (T@Seq_36838 Int) T@Seq_36838)
(declare-sort T@Seq_3424 0)
(declare-fun |Seq#Length_3424| (T@Seq_3424) Int)
(declare-fun |Seq#Drop_3424| (T@Seq_3424 Int) T@Seq_3424)
(declare-fun succHeap (T@PolymorphicMapType_27863 T@PolymorphicMapType_27863) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_27863 T@PolymorphicMapType_27863) Bool)
(declare-fun state (T@PolymorphicMapType_27863 T@PolymorphicMapType_27884) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_27884) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_28412)
(declare-fun p2 (T@Ref Int) T@Field_35865_35866)
(declare-fun IsPredicateField_17331_17332 (T@Field_35865_35866) Bool)
(declare-fun |p2#trigger_17331| (T@PolymorphicMapType_27863 T@Field_35865_35866) Bool)
(declare-fun |p2#everUsed_17331| (T@Field_35865_35866) Bool)
(declare-fun |Seq#Index_36838| (T@Seq_36838 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3424| (T@Seq_3424 Int) Int)
(declare-fun |Seq#Empty_36838| () T@Seq_36838)
(declare-fun |Seq#Empty_3424| () T@Seq_3424)
(declare-fun p1 (T@Ref) T@Field_34945_34946)
(declare-fun IsPredicateField_17306_17307 (T@Field_34945_34946) Bool)
(declare-fun |p1#trigger_17306| (T@PolymorphicMapType_27863 T@Field_34945_34946) Bool)
(declare-fun |p1#everUsed_17306| (T@Field_34945_34946) Bool)
(declare-fun |Seq#Update_36838| (T@Seq_36838 Int T@Ref) T@Seq_36838)
(declare-fun |Seq#Update_3424| (T@Seq_3424 Int Int) T@Seq_3424)
(declare-fun |Seq#Take_36838| (T@Seq_36838 Int) T@Seq_36838)
(declare-fun |Seq#Take_3424| (T@Seq_3424 Int) T@Seq_3424)
(declare-fun |Seq#Contains_3424| (T@Seq_3424 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3424)
(declare-fun |Seq#Contains_17359| (T@Seq_36838 T@Ref) Bool)
(declare-fun |Seq#Skolem_17359| (T@Seq_36838 T@Ref) Int)
(declare-fun |Seq#Skolem_3424| (T@Seq_3424 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_27863 T@PolymorphicMapType_27863 T@PolymorphicMapType_27884) Bool)
(declare-fun IsPredicateField_17258_17259 (T@Field_34054_34055) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_34023 (T@Field_34054_34055) T@Field_34037_34042)
(declare-fun HasDirectPerm_34023_17332 (T@PolymorphicMapType_27884 T@Ref T@Field_34054_34055) Bool)
(declare-fun PredicateMaskField_17306 (T@Field_34945_34946) T@Field_34958_34963)
(declare-fun HasDirectPerm_17306_17307 (T@PolymorphicMapType_27884 T@Ref T@Field_34945_34946) Bool)
(declare-fun PredicateMaskField_17331 (T@Field_35865_35866) T@Field_35878_35883)
(declare-fun HasDirectPerm_17331_17332 (T@PolymorphicMapType_27884 T@Ref T@Field_35865_35866) Bool)
(declare-fun IsPredicateField_17301_91021 (T@Field_17301_17332) Bool)
(declare-fun PredicateMaskField_17301 (T@Field_17301_17332) T@Field_17301_34042)
(declare-fun HasDirectPerm_17301_17332 (T@PolymorphicMapType_27884 T@Ref T@Field_17301_17332) Bool)
(declare-fun IsWandField_17258_17259 (T@Field_34054_34055) Bool)
(declare-fun WandMaskField_17258 (T@Field_34054_34055) T@Field_34037_34042)
(declare-fun IsWandField_17306_98396 (T@Field_34945_34946) Bool)
(declare-fun WandMaskField_17306 (T@Field_34945_34946) T@Field_34958_34963)
(declare-fun IsWandField_17331_98039 (T@Field_35865_35866) Bool)
(declare-fun WandMaskField_17331 (T@Field_35865_35866) T@Field_35878_35883)
(declare-fun IsWandField_17301_97682 (T@Field_17301_17332) Bool)
(declare-fun WandMaskField_17301 (T@Field_17301_17332) T@Field_17301_34042)
(declare-fun |Seq#Singleton_36838| (T@Ref) T@Seq_36838)
(declare-fun |Seq#Singleton_3424| (Int) T@Seq_3424)
(declare-fun |p2#sm| (T@Ref Int) T@Field_35878_35883)
(declare-fun |p1#sm| (T@Ref) T@Field_34958_34963)
(declare-fun |Seq#Append_36838| (T@Seq_36838 T@Seq_36838) T@Seq_36838)
(declare-fun |Seq#Append_3424| (T@Seq_3424 T@Seq_3424) T@Seq_3424)
(declare-fun dummyHeap () T@PolymorphicMapType_27863)
(declare-fun ZeroMask () T@PolymorphicMapType_27884)
(declare-fun InsidePredicate_35865_35865 (T@Field_35865_35866 T@FrameType T@Field_35865_35866 T@FrameType) Bool)
(declare-fun InsidePredicate_34945_34945 (T@Field_34945_34946 T@FrameType T@Field_34945_34946 T@FrameType) Bool)
(declare-fun InsidePredicate_34023_34023 (T@Field_34054_34055 T@FrameType T@Field_34054_34055 T@FrameType) Bool)
(declare-fun InsidePredicate_27923_27923 (T@Field_17301_17332 T@FrameType T@Field_17301_17332 T@FrameType) Bool)
(declare-fun IsPredicateField_17301_4039 (T@Field_34868_4039) Bool)
(declare-fun IsWandField_17301_4039 (T@Field_34868_4039) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17243_112414 (T@Field_34037_34042) Bool)
(declare-fun IsWandField_17243_112430 (T@Field_34037_34042) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_17243_27937 (T@Field_34023_27937) Bool)
(declare-fun IsWandField_17243_27937 (T@Field_34023_27937) Bool)
(declare-fun IsPredicateField_17243_53 (T@Field_34023_53) Bool)
(declare-fun IsWandField_17243_53 (T@Field_34023_53) Bool)
(declare-fun IsPredicateField_17243_3575 (T@Field_34023_3575) Bool)
(declare-fun IsWandField_17243_3575 (T@Field_34023_3575) Bool)
(declare-fun IsPredicateField_17306_111597 (T@Field_34958_34963) Bool)
(declare-fun IsWandField_17306_111613 (T@Field_34958_34963) Bool)
(declare-fun IsPredicateField_17306_27937 (T@Field_17306_27937) Bool)
(declare-fun IsWandField_17306_27937 (T@Field_17306_27937) Bool)
(declare-fun IsPredicateField_17306_53 (T@Field_17306_53) Bool)
(declare-fun IsWandField_17306_53 (T@Field_17306_53) Bool)
(declare-fun IsPredicateField_17306_4054 (T@Field_17306_4039) Bool)
(declare-fun IsWandField_17306_4054 (T@Field_17306_4039) Bool)
(declare-fun IsPredicateField_17331_110766 (T@Field_35878_35883) Bool)
(declare-fun IsWandField_17331_110782 (T@Field_35878_35883) Bool)
(declare-fun IsPredicateField_17331_27937 (T@Field_17331_27937) Bool)
(declare-fun IsWandField_17331_27937 (T@Field_17331_27937) Bool)
(declare-fun IsPredicateField_17331_53 (T@Field_17331_53) Bool)
(declare-fun IsWandField_17331_53 (T@Field_17331_53) Bool)
(declare-fun IsPredicateField_17331_4054 (T@Field_17331_4039) Bool)
(declare-fun IsWandField_17331_4054 (T@Field_17331_4039) Bool)
(declare-fun IsPredicateField_17303_109935 (T@Field_17301_34042) Bool)
(declare-fun IsWandField_17303_109951 (T@Field_17301_34042) Bool)
(declare-fun IsPredicateField_17303_27937 (T@Field_27936_27937) Bool)
(declare-fun IsWandField_17303_27937 (T@Field_27936_27937) Bool)
(declare-fun IsPredicateField_17303_53 (T@Field_27923_53) Bool)
(declare-fun IsWandField_17303_53 (T@Field_27923_53) Bool)
(declare-fun HasDirectPerm_34023_90776 (T@PolymorphicMapType_27884 T@Ref T@Field_34037_34042) Bool)
(declare-fun HasDirectPerm_34023_27937 (T@PolymorphicMapType_27884 T@Ref T@Field_34023_27937) Bool)
(declare-fun HasDirectPerm_34023_53 (T@PolymorphicMapType_27884 T@Ref T@Field_34023_53) Bool)
(declare-fun HasDirectPerm_34023_4039 (T@PolymorphicMapType_27884 T@Ref T@Field_34023_3575) Bool)
(declare-fun HasDirectPerm_17306_89642 (T@PolymorphicMapType_27884 T@Ref T@Field_34958_34963) Bool)
(declare-fun HasDirectPerm_17306_27937 (T@PolymorphicMapType_27884 T@Ref T@Field_17306_27937) Bool)
(declare-fun HasDirectPerm_17306_53 (T@PolymorphicMapType_27884 T@Ref T@Field_17306_53) Bool)
(declare-fun HasDirectPerm_17306_4039 (T@PolymorphicMapType_27884 T@Ref T@Field_17306_4039) Bool)
(declare-fun HasDirectPerm_17331_88544 (T@PolymorphicMapType_27884 T@Ref T@Field_35878_35883) Bool)
(declare-fun HasDirectPerm_17331_27937 (T@PolymorphicMapType_27884 T@Ref T@Field_17331_27937) Bool)
(declare-fun HasDirectPerm_17331_53 (T@PolymorphicMapType_27884 T@Ref T@Field_17331_53) Bool)
(declare-fun HasDirectPerm_17331_4039 (T@PolymorphicMapType_27884 T@Ref T@Field_17331_4039) Bool)
(declare-fun HasDirectPerm_17301_87403 (T@PolymorphicMapType_27884 T@Ref T@Field_17301_34042) Bool)
(declare-fun HasDirectPerm_17301_27937 (T@PolymorphicMapType_27884 T@Ref T@Field_27936_27937) Bool)
(declare-fun HasDirectPerm_17301_53 (T@PolymorphicMapType_27884 T@Ref T@Field_27923_53) Bool)
(declare-fun HasDirectPerm_17301_4039 (T@PolymorphicMapType_27884 T@Ref T@Field_34868_4039) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_27884 T@PolymorphicMapType_27884 T@PolymorphicMapType_27884) Bool)
(declare-fun |Seq#Equal_36838| (T@Seq_36838 T@Seq_36838) Bool)
(declare-fun |Seq#Equal_3424| (T@Seq_3424 T@Seq_3424) Bool)
(declare-fun |Seq#ContainsTrigger_17359| (T@Seq_36838 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3424| (T@Seq_3424 Int) Bool)
(declare-fun getPredWandId_17331_17332 (T@Field_35865_35866) Int)
(declare-fun wand (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_34023_3575)
(declare-fun getPredWandId_17306_17307 (T@Field_34945_34946) Int)
(declare-fun |wand#ft| (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_34054_34055)
(declare-fun |wand#sm| (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_34037_34042)
(declare-fun |Seq#SkolemDiff_36838| (T@Seq_36838 T@Seq_36838) Int)
(declare-fun |Seq#SkolemDiff_3424| (T@Seq_3424 T@Seq_3424) Int)
(declare-fun InsidePredicate_35865_34945 (T@Field_35865_35866 T@FrameType T@Field_34945_34946 T@FrameType) Bool)
(declare-fun InsidePredicate_35865_34023 (T@Field_35865_35866 T@FrameType T@Field_34054_34055 T@FrameType) Bool)
(declare-fun InsidePredicate_35865_27923 (T@Field_35865_35866 T@FrameType T@Field_17301_17332 T@FrameType) Bool)
(declare-fun InsidePredicate_34945_35865 (T@Field_34945_34946 T@FrameType T@Field_35865_35866 T@FrameType) Bool)
(declare-fun InsidePredicate_34945_34023 (T@Field_34945_34946 T@FrameType T@Field_34054_34055 T@FrameType) Bool)
(declare-fun InsidePredicate_34945_27923 (T@Field_34945_34946 T@FrameType T@Field_17301_17332 T@FrameType) Bool)
(declare-fun InsidePredicate_34023_35865 (T@Field_34054_34055 T@FrameType T@Field_35865_35866 T@FrameType) Bool)
(declare-fun InsidePredicate_34023_34945 (T@Field_34054_34055 T@FrameType T@Field_34945_34946 T@FrameType) Bool)
(declare-fun InsidePredicate_34023_27923 (T@Field_34054_34055 T@FrameType T@Field_17301_17332 T@FrameType) Bool)
(declare-fun InsidePredicate_27923_35865 (T@Field_17301_17332 T@FrameType T@Field_35865_35866 T@FrameType) Bool)
(declare-fun InsidePredicate_27923_34945 (T@Field_17301_17332 T@FrameType T@Field_34945_34946 T@FrameType) Bool)
(declare-fun InsidePredicate_27923_34023 (T@Field_17301_17332 T@FrameType T@Field_34054_34055 T@FrameType) Bool)
(declare-fun getPredWandId_17243_3575 (T@Field_34023_3575) Int)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_36838) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_36838| s)) (= (|Seq#Length_36838| (|Seq#Drop_36838| s n)) (- (|Seq#Length_36838| s) n))) (=> (< (|Seq#Length_36838| s) n) (= (|Seq#Length_36838| (|Seq#Drop_36838| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_36838| (|Seq#Drop_36838| s n)) (|Seq#Length_36838| s))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_36838| (|Seq#Drop_36838| s n)))
 :pattern ( (|Seq#Length_36838| s) (|Seq#Drop_36838| s n))
)))
(assert (forall ((s@@0 T@Seq_3424) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3424| s@@0)) (= (|Seq#Length_3424| (|Seq#Drop_3424| s@@0 n@@0)) (- (|Seq#Length_3424| s@@0) n@@0))) (=> (< (|Seq#Length_3424| s@@0) n@@0) (= (|Seq#Length_3424| (|Seq#Drop_3424| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3424| (|Seq#Drop_3424| s@@0 n@@0)) (|Seq#Length_3424| s@@0))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3424| (|Seq#Drop_3424| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3424| s@@0) (|Seq#Drop_3424| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_27863) (Heap1 T@PolymorphicMapType_27863) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_27863) (Mask T@PolymorphicMapType_27884) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_27863) (Heap1@@0 T@PolymorphicMapType_27863) (Heap2 T@PolymorphicMapType_27863) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_35865_35866) ) (!  (not (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_35878_35883) ) (!  (not (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17331_27937) ) (!  (not (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17331_53) ) (!  (not (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17331_4039) ) (!  (not (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_34945_34946) ) (!  (not (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_34958_34963) ) (!  (not (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_17306_27937) ) (!  (not (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_17306_53) ) (!  (not (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_17306_4039) ) (!  (not (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_34054_34055) ) (!  (not (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_34037_34042) ) (!  (not (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_34023_27937) ) (!  (not (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_34023_53) ) (!  (not (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_34023_3575) ) (!  (not (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17301_17332) ) (!  (not (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17301_34042) ) (!  (not (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_27936_27937) ) (!  (not (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_27923_53) ) (!  (not (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_34868_4039) ) (!  (not (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((a_2 T@Ref) (b_24 Int) ) (! (IsPredicateField_17331_17332 (p2 a_2 b_24))
 :qid |stdinbpl.725:15|
 :skolemid |72|
 :pattern ( (p2 a_2 b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_27863) (a_2@@0 T@Ref) (b_24@@0 Int) ) (! (|p2#everUsed_17331| (p2 a_2@@0 b_24@@0))
 :qid |stdinbpl.744:15|
 :skolemid |76|
 :pattern ( (|p2#trigger_17331| Heap@@0 (p2 a_2@@0 b_24@@0)))
)))
(assert (forall ((s@@1 T@Seq_36838) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_36838| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_36838| (|Seq#Drop_36838| s@@1 n@@1) j) (|Seq#Index_36838| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_36838| (|Seq#Drop_36838| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3424) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3424| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3424| (|Seq#Drop_3424| s@@2 n@@2) j@@0) (|Seq#Index_3424| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3424| (|Seq#Drop_3424| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_36838| |Seq#Empty_36838|) 0))
(assert (= (|Seq#Length_3424| |Seq#Empty_3424|) 0))
(assert (forall ((a_2@@1 T@Ref) ) (! (IsPredicateField_17306_17307 (p1 a_2@@1))
 :qid |stdinbpl.671:15|
 :skolemid |66|
 :pattern ( (p1 a_2@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_27863) (a_2@@2 T@Ref) ) (! (|p1#everUsed_17306| (p1 a_2@@2))
 :qid |stdinbpl.690:15|
 :skolemid |70|
 :pattern ( (|p1#trigger_17306| Heap@@1 (p1 a_2@@2)))
)))
(assert (forall ((s@@3 T@Seq_36838) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_36838| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_36838| (|Seq#Update_36838| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_36838| (|Seq#Update_36838| s@@3 i v) n@@3) (|Seq#Index_36838| s@@3 n@@3)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_36838| (|Seq#Update_36838| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_36838| s@@3 n@@3) (|Seq#Update_36838| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3424) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3424| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3424| (|Seq#Update_3424| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3424| (|Seq#Update_3424| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3424| s@@4 n@@4)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3424| (|Seq#Update_3424| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3424| s@@4 n@@4) (|Seq#Update_3424| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_36838) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_36838| s@@5)) (= (|Seq#Length_36838| (|Seq#Take_36838| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_36838| s@@5) n@@5) (= (|Seq#Length_36838| (|Seq#Take_36838| s@@5 n@@5)) (|Seq#Length_36838| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_36838| (|Seq#Take_36838| s@@5 n@@5)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_36838| (|Seq#Take_36838| s@@5 n@@5)))
 :pattern ( (|Seq#Take_36838| s@@5 n@@5) (|Seq#Length_36838| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3424) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3424| s@@6)) (= (|Seq#Length_3424| (|Seq#Take_3424| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3424| s@@6) n@@6) (= (|Seq#Length_3424| (|Seq#Take_3424| s@@6 n@@6)) (|Seq#Length_3424| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3424| (|Seq#Take_3424| s@@6 n@@6)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3424| (|Seq#Take_3424| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3424| s@@6 n@@6) (|Seq#Length_3424| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3424| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.606:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3424| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_36838) (x T@Ref) ) (!  (=> (|Seq#Contains_17359| s@@7 x) (and (and (<= 0 (|Seq#Skolem_17359| s@@7 x)) (< (|Seq#Skolem_17359| s@@7 x) (|Seq#Length_36838| s@@7))) (= (|Seq#Index_36838| s@@7 (|Seq#Skolem_17359| s@@7 x)) x)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_17359| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3424) (x@@0 Int) ) (!  (=> (|Seq#Contains_3424| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3424| s@@8 x@@0)) (< (|Seq#Skolem_3424| s@@8 x@@0) (|Seq#Length_3424| s@@8))) (= (|Seq#Index_3424| s@@8 (|Seq#Skolem_3424| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3424| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_36838) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_36838| s@@9 n@@7) s@@9))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_36838| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3424) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3424| s@@10 n@@8) s@@10))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3424| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.301:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.299:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_27863) (ExhaleHeap T@PolymorphicMapType_27863) (Mask@@0 T@PolymorphicMapType_27884) (pm_f_7 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_34023_17332 Mask@@0 null pm_f_7) (IsPredicateField_17258_17259 pm_f_7)) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@2) null (PredicateMaskField_34023 pm_f_7)) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap) null (PredicateMaskField_34023 pm_f_7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_17258_17259 pm_f_7) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap) null (PredicateMaskField_34023 pm_f_7)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_27863) (ExhaleHeap@@0 T@PolymorphicMapType_27863) (Mask@@1 T@PolymorphicMapType_27884) (pm_f_7@@0 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17306_17307 Mask@@1 null pm_f_7@@0) (IsPredicateField_17306_17307 pm_f_7@@0)) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@3) null (PredicateMaskField_17306 pm_f_7@@0)) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@0) null (PredicateMaskField_17306 pm_f_7@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_17306_17307 pm_f_7@@0) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@0) null (PredicateMaskField_17306 pm_f_7@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_27863) (ExhaleHeap@@1 T@PolymorphicMapType_27863) (Mask@@2 T@PolymorphicMapType_27884) (pm_f_7@@1 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_17331_17332 Mask@@2 null pm_f_7@@1) (IsPredicateField_17331_17332 pm_f_7@@1)) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@4) null (PredicateMaskField_17331 pm_f_7@@1)) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@1) null (PredicateMaskField_17331 pm_f_7@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_17331_17332 pm_f_7@@1) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@1) null (PredicateMaskField_17331 pm_f_7@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_27863) (ExhaleHeap@@2 T@PolymorphicMapType_27863) (Mask@@3 T@PolymorphicMapType_27884) (pm_f_7@@2 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_17301_17332 Mask@@3 null pm_f_7@@2) (IsPredicateField_17301_91021 pm_f_7@@2)) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@5) null (PredicateMaskField_17301 pm_f_7@@2)) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@2) null (PredicateMaskField_17301 pm_f_7@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_17301_91021 pm_f_7@@2) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@2) null (PredicateMaskField_17301 pm_f_7@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_27863) (ExhaleHeap@@3 T@PolymorphicMapType_27863) (Mask@@4 T@PolymorphicMapType_27884) (pm_f_7@@3 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_34023_17332 Mask@@4 null pm_f_7@@3) (IsWandField_17258_17259 pm_f_7@@3)) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@6) null (WandMaskField_17258 pm_f_7@@3)) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@3) null (WandMaskField_17258 pm_f_7@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_17258_17259 pm_f_7@@3) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@3) null (WandMaskField_17258 pm_f_7@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_27863) (ExhaleHeap@@4 T@PolymorphicMapType_27863) (Mask@@5 T@PolymorphicMapType_27884) (pm_f_7@@4 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_17306_17307 Mask@@5 null pm_f_7@@4) (IsWandField_17306_98396 pm_f_7@@4)) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@7) null (WandMaskField_17306 pm_f_7@@4)) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@4) null (WandMaskField_17306 pm_f_7@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_17306_98396 pm_f_7@@4) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@4) null (WandMaskField_17306 pm_f_7@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_27863) (ExhaleHeap@@5 T@PolymorphicMapType_27863) (Mask@@6 T@PolymorphicMapType_27884) (pm_f_7@@5 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_17331_17332 Mask@@6 null pm_f_7@@5) (IsWandField_17331_98039 pm_f_7@@5)) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@8) null (WandMaskField_17331 pm_f_7@@5)) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@5) null (WandMaskField_17331 pm_f_7@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_17331_98039 pm_f_7@@5) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@5) null (WandMaskField_17331 pm_f_7@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_27863) (ExhaleHeap@@6 T@PolymorphicMapType_27863) (Mask@@7 T@PolymorphicMapType_27884) (pm_f_7@@6 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_17301_17332 Mask@@7 null pm_f_7@@6) (IsWandField_17301_97682 pm_f_7@@6)) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@9) null (WandMaskField_17301 pm_f_7@@6)) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@6) null (WandMaskField_17301 pm_f_7@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_17301_97682 pm_f_7@@6) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@6) null (WandMaskField_17301 pm_f_7@@6)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_17359| (|Seq#Singleton_36838| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_17359| (|Seq#Singleton_36838| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3424| (|Seq#Singleton_3424| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3424| (|Seq#Singleton_3424| x@@2) y@@0))
)))
(assert (forall ((a_2@@3 T@Ref) (b_24@@1 Int) (a2 T@Ref) (b2 Int) ) (!  (=> (= (p2 a_2@@3 b_24@@1) (p2 a2 b2)) (and (= a_2@@3 a2) (= b_24@@1 b2)))
 :qid |stdinbpl.735:15|
 :skolemid |74|
 :pattern ( (p2 a_2@@3 b_24@@1) (p2 a2 b2))
)))
(assert (forall ((a_2@@4 T@Ref) (b_24@@2 Int) (a2@@0 T@Ref) (b2@@0 Int) ) (!  (=> (= (|p2#sm| a_2@@4 b_24@@2) (|p2#sm| a2@@0 b2@@0)) (and (= a_2@@4 a2@@0) (= b_24@@2 b2@@0)))
 :qid |stdinbpl.739:15|
 :skolemid |75|
 :pattern ( (|p2#sm| a_2@@4 b_24@@2) (|p2#sm| a2@@0 b2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_27863) (ExhaleHeap@@7 T@PolymorphicMapType_27863) (Mask@@8 T@PolymorphicMapType_27884) (pm_f_7@@7 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_34023_17332 Mask@@8 null pm_f_7@@7) (IsPredicateField_17258_17259 pm_f_7@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7 T@Ref) (f_27 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7 f_27) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@10) o2_7 f_27) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7 f_27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7 f_27))
)) (forall ((o2_7@@0 T@Ref) (f_27@@0 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@0 f_27@@0) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@10) o2_7@@0 f_27@@0) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@0 f_27@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@0 f_27@@0))
))) (forall ((o2_7@@1 T@Ref) (f_27@@1 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@1 f_27@@1) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@10) o2_7@@1 f_27@@1) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@1 f_27@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@1 f_27@@1))
))) (forall ((o2_7@@2 T@Ref) (f_27@@2 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@2 f_27@@2) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@10) o2_7@@2 f_27@@2) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@2 f_27@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@2 f_27@@2))
))) (forall ((o2_7@@3 T@Ref) (f_27@@3 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@3 f_27@@3) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@10) o2_7@@3 f_27@@3) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@3 f_27@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@3 f_27@@3))
))) (forall ((o2_7@@4 T@Ref) (f_27@@4 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@4 f_27@@4) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@10) o2_7@@4 f_27@@4) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@4 f_27@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@4 f_27@@4))
))) (forall ((o2_7@@5 T@Ref) (f_27@@5 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@5 f_27@@5) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@10) o2_7@@5 f_27@@5) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@5 f_27@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@5 f_27@@5))
))) (forall ((o2_7@@6 T@Ref) (f_27@@6 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@6 f_27@@6) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@10) o2_7@@6 f_27@@6) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@6 f_27@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@6 f_27@@6))
))) (forall ((o2_7@@7 T@Ref) (f_27@@7 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@7 f_27@@7) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) o2_7@@7 f_27@@7) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@7 f_27@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@7 f_27@@7))
))) (forall ((o2_7@@8 T@Ref) (f_27@@8 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@8 f_27@@8) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@10) o2_7@@8 f_27@@8) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@8 f_27@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@8 f_27@@8))
))) (forall ((o2_7@@9 T@Ref) (f_27@@9 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@9 f_27@@9) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@10) o2_7@@9 f_27@@9) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@9 f_27@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@9 f_27@@9))
))) (forall ((o2_7@@10 T@Ref) (f_27@@10 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@10 f_27@@10) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@10) o2_7@@10 f_27@@10) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@10 f_27@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@10 f_27@@10))
))) (forall ((o2_7@@11 T@Ref) (f_27@@11 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@11 f_27@@11) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@10) o2_7@@11 f_27@@11) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@11 f_27@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@11 f_27@@11))
))) (forall ((o2_7@@12 T@Ref) (f_27@@12 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@12 f_27@@12) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@10) o2_7@@12 f_27@@12) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@12 f_27@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@12 f_27@@12))
))) (forall ((o2_7@@13 T@Ref) (f_27@@13 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@13 f_27@@13) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@10) o2_7@@13 f_27@@13) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@13 f_27@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@13 f_27@@13))
))) (forall ((o2_7@@14 T@Ref) (f_27@@14 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@14 f_27@@14) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@10) o2_7@@14 f_27@@14) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@14 f_27@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@14 f_27@@14))
))) (forall ((o2_7@@15 T@Ref) (f_27@@15 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@15 f_27@@15) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@10) o2_7@@15 f_27@@15) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@15 f_27@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@15 f_27@@15))
))) (forall ((o2_7@@16 T@Ref) (f_27@@16 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@16 f_27@@16) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@10) o2_7@@16 f_27@@16) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@16 f_27@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@16 f_27@@16))
))) (forall ((o2_7@@17 T@Ref) (f_27@@17 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@17 f_27@@17) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@10) o2_7@@17 f_27@@17) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@17 f_27@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@17 f_27@@17))
))) (forall ((o2_7@@18 T@Ref) (f_27@@18 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@18 f_27@@18) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@10) o2_7@@18 f_27@@18) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@18 f_27@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@18 f_27@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_17258_17259 pm_f_7@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_27863) (ExhaleHeap@@8 T@PolymorphicMapType_27863) (Mask@@9 T@PolymorphicMapType_27884) (pm_f_7@@8 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_17306_17307 Mask@@9 null pm_f_7@@8) (IsPredicateField_17306_17307 pm_f_7@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@19 T@Ref) (f_27@@19 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@19 f_27@@19) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@11) o2_7@@19 f_27@@19) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@19 f_27@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@19 f_27@@19))
)) (forall ((o2_7@@20 T@Ref) (f_27@@20 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@20 f_27@@20) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@11) o2_7@@20 f_27@@20) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@20 f_27@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@20 f_27@@20))
))) (forall ((o2_7@@21 T@Ref) (f_27@@21 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@21 f_27@@21) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@11) o2_7@@21 f_27@@21) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@21 f_27@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@21 f_27@@21))
))) (forall ((o2_7@@22 T@Ref) (f_27@@22 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@22 f_27@@22) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@11) o2_7@@22 f_27@@22) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@22 f_27@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@22 f_27@@22))
))) (forall ((o2_7@@23 T@Ref) (f_27@@23 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@23 f_27@@23) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@11) o2_7@@23 f_27@@23) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@23 f_27@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@23 f_27@@23))
))) (forall ((o2_7@@24 T@Ref) (f_27@@24 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@24 f_27@@24) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@11) o2_7@@24 f_27@@24) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@24 f_27@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@24 f_27@@24))
))) (forall ((o2_7@@25 T@Ref) (f_27@@25 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@25 f_27@@25) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@11) o2_7@@25 f_27@@25) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@25 f_27@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@25 f_27@@25))
))) (forall ((o2_7@@26 T@Ref) (f_27@@26 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@26 f_27@@26) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@11) o2_7@@26 f_27@@26) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@26 f_27@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@26 f_27@@26))
))) (forall ((o2_7@@27 T@Ref) (f_27@@27 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@27 f_27@@27) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@11) o2_7@@27 f_27@@27) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@27 f_27@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@27 f_27@@27))
))) (forall ((o2_7@@28 T@Ref) (f_27@@28 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@28 f_27@@28) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@11) o2_7@@28 f_27@@28) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@28 f_27@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@28 f_27@@28))
))) (forall ((o2_7@@29 T@Ref) (f_27@@29 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@29 f_27@@29) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@11) o2_7@@29 f_27@@29) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@29 f_27@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@29 f_27@@29))
))) (forall ((o2_7@@30 T@Ref) (f_27@@30 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@30 f_27@@30) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@11) o2_7@@30 f_27@@30) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@30 f_27@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@30 f_27@@30))
))) (forall ((o2_7@@31 T@Ref) (f_27@@31 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@31 f_27@@31) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@11) o2_7@@31 f_27@@31) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@31 f_27@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@31 f_27@@31))
))) (forall ((o2_7@@32 T@Ref) (f_27@@32 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@32 f_27@@32) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) o2_7@@32 f_27@@32) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@32 f_27@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@32 f_27@@32))
))) (forall ((o2_7@@33 T@Ref) (f_27@@33 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@33 f_27@@33) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@11) o2_7@@33 f_27@@33) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@33 f_27@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@33 f_27@@33))
))) (forall ((o2_7@@34 T@Ref) (f_27@@34 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@34 f_27@@34) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@11) o2_7@@34 f_27@@34) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@34 f_27@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@34 f_27@@34))
))) (forall ((o2_7@@35 T@Ref) (f_27@@35 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@35 f_27@@35) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@11) o2_7@@35 f_27@@35) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@35 f_27@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@35 f_27@@35))
))) (forall ((o2_7@@36 T@Ref) (f_27@@36 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@36 f_27@@36) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@11) o2_7@@36 f_27@@36) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@36 f_27@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@36 f_27@@36))
))) (forall ((o2_7@@37 T@Ref) (f_27@@37 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@37 f_27@@37) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@11) o2_7@@37 f_27@@37) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@37 f_27@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@37 f_27@@37))
))) (forall ((o2_7@@38 T@Ref) (f_27@@38 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@38 f_27@@38) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@11) o2_7@@38 f_27@@38) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@38 f_27@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@38 f_27@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsPredicateField_17306_17307 pm_f_7@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_27863) (ExhaleHeap@@9 T@PolymorphicMapType_27863) (Mask@@10 T@PolymorphicMapType_27884) (pm_f_7@@9 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_17331_17332 Mask@@10 null pm_f_7@@9) (IsPredicateField_17331_17332 pm_f_7@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@39 T@Ref) (f_27@@39 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@39 f_27@@39) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@12) o2_7@@39 f_27@@39) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@39 f_27@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@39 f_27@@39))
)) (forall ((o2_7@@40 T@Ref) (f_27@@40 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@40 f_27@@40) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@12) o2_7@@40 f_27@@40) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@40 f_27@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@40 f_27@@40))
))) (forall ((o2_7@@41 T@Ref) (f_27@@41 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@41 f_27@@41) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@12) o2_7@@41 f_27@@41) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@41 f_27@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@41 f_27@@41))
))) (forall ((o2_7@@42 T@Ref) (f_27@@42 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@42 f_27@@42) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@12) o2_7@@42 f_27@@42) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@42 f_27@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@42 f_27@@42))
))) (forall ((o2_7@@43 T@Ref) (f_27@@43 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@43 f_27@@43) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@12) o2_7@@43 f_27@@43) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@43 f_27@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@43 f_27@@43))
))) (forall ((o2_7@@44 T@Ref) (f_27@@44 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@44 f_27@@44) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@12) o2_7@@44 f_27@@44) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@44 f_27@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@44 f_27@@44))
))) (forall ((o2_7@@45 T@Ref) (f_27@@45 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@45 f_27@@45) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@12) o2_7@@45 f_27@@45) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@45 f_27@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@45 f_27@@45))
))) (forall ((o2_7@@46 T@Ref) (f_27@@46 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@46 f_27@@46) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@12) o2_7@@46 f_27@@46) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@46 f_27@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@46 f_27@@46))
))) (forall ((o2_7@@47 T@Ref) (f_27@@47 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@47 f_27@@47) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@12) o2_7@@47 f_27@@47) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@47 f_27@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@47 f_27@@47))
))) (forall ((o2_7@@48 T@Ref) (f_27@@48 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@48 f_27@@48) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@12) o2_7@@48 f_27@@48) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@48 f_27@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@48 f_27@@48))
))) (forall ((o2_7@@49 T@Ref) (f_27@@49 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@49 f_27@@49) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@12) o2_7@@49 f_27@@49) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@49 f_27@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@49 f_27@@49))
))) (forall ((o2_7@@50 T@Ref) (f_27@@50 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@50 f_27@@50) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@12) o2_7@@50 f_27@@50) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@50 f_27@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@50 f_27@@50))
))) (forall ((o2_7@@51 T@Ref) (f_27@@51 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@51 f_27@@51) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@12) o2_7@@51 f_27@@51) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@51 f_27@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@51 f_27@@51))
))) (forall ((o2_7@@52 T@Ref) (f_27@@52 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@52 f_27@@52) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@12) o2_7@@52 f_27@@52) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@52 f_27@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@52 f_27@@52))
))) (forall ((o2_7@@53 T@Ref) (f_27@@53 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@53 f_27@@53) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@12) o2_7@@53 f_27@@53) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@53 f_27@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@53 f_27@@53))
))) (forall ((o2_7@@54 T@Ref) (f_27@@54 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@54 f_27@@54) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@12) o2_7@@54 f_27@@54) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@54 f_27@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@54 f_27@@54))
))) (forall ((o2_7@@55 T@Ref) (f_27@@55 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@55 f_27@@55) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@12) o2_7@@55 f_27@@55) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@55 f_27@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@55 f_27@@55))
))) (forall ((o2_7@@56 T@Ref) (f_27@@56 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@56 f_27@@56) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@12) o2_7@@56 f_27@@56) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@56 f_27@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@56 f_27@@56))
))) (forall ((o2_7@@57 T@Ref) (f_27@@57 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@57 f_27@@57) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) o2_7@@57 f_27@@57) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@57 f_27@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@57 f_27@@57))
))) (forall ((o2_7@@58 T@Ref) (f_27@@58 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@58 f_27@@58) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@12) o2_7@@58 f_27@@58) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@58 f_27@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@58 f_27@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsPredicateField_17331_17332 pm_f_7@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_27863) (ExhaleHeap@@10 T@PolymorphicMapType_27863) (Mask@@11 T@PolymorphicMapType_27884) (pm_f_7@@10 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_17301_17332 Mask@@11 null pm_f_7@@10) (IsPredicateField_17301_91021 pm_f_7@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@59 T@Ref) (f_27@@59 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@59 f_27@@59) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@13) o2_7@@59 f_27@@59) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@59 f_27@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@59 f_27@@59))
)) (forall ((o2_7@@60 T@Ref) (f_27@@60 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@60 f_27@@60) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@13) o2_7@@60 f_27@@60) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@60 f_27@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@60 f_27@@60))
))) (forall ((o2_7@@61 T@Ref) (f_27@@61 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@61 f_27@@61) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@13) o2_7@@61 f_27@@61) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@61 f_27@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@61 f_27@@61))
))) (forall ((o2_7@@62 T@Ref) (f_27@@62 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@62 f_27@@62) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) o2_7@@62 f_27@@62) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@62 f_27@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@62 f_27@@62))
))) (forall ((o2_7@@63 T@Ref) (f_27@@63 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@63 f_27@@63) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@13) o2_7@@63 f_27@@63) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@63 f_27@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@63 f_27@@63))
))) (forall ((o2_7@@64 T@Ref) (f_27@@64 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@64 f_27@@64) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@13) o2_7@@64 f_27@@64) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@64 f_27@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@64 f_27@@64))
))) (forall ((o2_7@@65 T@Ref) (f_27@@65 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@65 f_27@@65) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@13) o2_7@@65 f_27@@65) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@65 f_27@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@65 f_27@@65))
))) (forall ((o2_7@@66 T@Ref) (f_27@@66 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@66 f_27@@66) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@13) o2_7@@66 f_27@@66) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@66 f_27@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@66 f_27@@66))
))) (forall ((o2_7@@67 T@Ref) (f_27@@67 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@67 f_27@@67) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@13) o2_7@@67 f_27@@67) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@67 f_27@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@67 f_27@@67))
))) (forall ((o2_7@@68 T@Ref) (f_27@@68 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@68 f_27@@68) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@13) o2_7@@68 f_27@@68) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@68 f_27@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@68 f_27@@68))
))) (forall ((o2_7@@69 T@Ref) (f_27@@69 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@69 f_27@@69) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@13) o2_7@@69 f_27@@69) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@69 f_27@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@69 f_27@@69))
))) (forall ((o2_7@@70 T@Ref) (f_27@@70 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@70 f_27@@70) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@13) o2_7@@70 f_27@@70) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@70 f_27@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@70 f_27@@70))
))) (forall ((o2_7@@71 T@Ref) (f_27@@71 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@71 f_27@@71) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@13) o2_7@@71 f_27@@71) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@71 f_27@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@71 f_27@@71))
))) (forall ((o2_7@@72 T@Ref) (f_27@@72 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@72 f_27@@72) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@13) o2_7@@72 f_27@@72) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@72 f_27@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@72 f_27@@72))
))) (forall ((o2_7@@73 T@Ref) (f_27@@73 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@73 f_27@@73) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@13) o2_7@@73 f_27@@73) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@73 f_27@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@73 f_27@@73))
))) (forall ((o2_7@@74 T@Ref) (f_27@@74 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@74 f_27@@74) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@13) o2_7@@74 f_27@@74) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@74 f_27@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@74 f_27@@74))
))) (forall ((o2_7@@75 T@Ref) (f_27@@75 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@75 f_27@@75) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@13) o2_7@@75 f_27@@75) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@75 f_27@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@75 f_27@@75))
))) (forall ((o2_7@@76 T@Ref) (f_27@@76 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@76 f_27@@76) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@13) o2_7@@76 f_27@@76) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@76 f_27@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@76 f_27@@76))
))) (forall ((o2_7@@77 T@Ref) (f_27@@77 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@77 f_27@@77) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@13) o2_7@@77 f_27@@77) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@77 f_27@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@77 f_27@@77))
))) (forall ((o2_7@@78 T@Ref) (f_27@@78 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@78 f_27@@78) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@13) o2_7@@78 f_27@@78) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@78 f_27@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@78 f_27@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsPredicateField_17301_91021 pm_f_7@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_27863) (ExhaleHeap@@11 T@PolymorphicMapType_27863) (Mask@@12 T@PolymorphicMapType_27884) (pm_f_7@@11 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_34023_17332 Mask@@12 null pm_f_7@@11) (IsWandField_17258_17259 pm_f_7@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@79 T@Ref) (f_27@@79 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@79 f_27@@79) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@14) o2_7@@79 f_27@@79) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@79 f_27@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@79 f_27@@79))
)) (forall ((o2_7@@80 T@Ref) (f_27@@80 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@80 f_27@@80) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@14) o2_7@@80 f_27@@80) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@80 f_27@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@80 f_27@@80))
))) (forall ((o2_7@@81 T@Ref) (f_27@@81 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@81 f_27@@81) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@14) o2_7@@81 f_27@@81) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@81 f_27@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@81 f_27@@81))
))) (forall ((o2_7@@82 T@Ref) (f_27@@82 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@82 f_27@@82) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@14) o2_7@@82 f_27@@82) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@82 f_27@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@82 f_27@@82))
))) (forall ((o2_7@@83 T@Ref) (f_27@@83 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@83 f_27@@83) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@14) o2_7@@83 f_27@@83) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@83 f_27@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@83 f_27@@83))
))) (forall ((o2_7@@84 T@Ref) (f_27@@84 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@84 f_27@@84) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@14) o2_7@@84 f_27@@84) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@84 f_27@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@84 f_27@@84))
))) (forall ((o2_7@@85 T@Ref) (f_27@@85 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@85 f_27@@85) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@14) o2_7@@85 f_27@@85) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@85 f_27@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@85 f_27@@85))
))) (forall ((o2_7@@86 T@Ref) (f_27@@86 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@86 f_27@@86) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@14) o2_7@@86 f_27@@86) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@86 f_27@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@86 f_27@@86))
))) (forall ((o2_7@@87 T@Ref) (f_27@@87 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@87 f_27@@87) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) o2_7@@87 f_27@@87) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@87 f_27@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@87 f_27@@87))
))) (forall ((o2_7@@88 T@Ref) (f_27@@88 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@88 f_27@@88) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@14) o2_7@@88 f_27@@88) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@88 f_27@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@88 f_27@@88))
))) (forall ((o2_7@@89 T@Ref) (f_27@@89 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@89 f_27@@89) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@14) o2_7@@89 f_27@@89) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@89 f_27@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@89 f_27@@89))
))) (forall ((o2_7@@90 T@Ref) (f_27@@90 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@90 f_27@@90) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@14) o2_7@@90 f_27@@90) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@90 f_27@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@90 f_27@@90))
))) (forall ((o2_7@@91 T@Ref) (f_27@@91 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@91 f_27@@91) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@14) o2_7@@91 f_27@@91) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@91 f_27@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@91 f_27@@91))
))) (forall ((o2_7@@92 T@Ref) (f_27@@92 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@92 f_27@@92) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@14) o2_7@@92 f_27@@92) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@92 f_27@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@92 f_27@@92))
))) (forall ((o2_7@@93 T@Ref) (f_27@@93 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@93 f_27@@93) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@14) o2_7@@93 f_27@@93) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@93 f_27@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@93 f_27@@93))
))) (forall ((o2_7@@94 T@Ref) (f_27@@94 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@94 f_27@@94) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@14) o2_7@@94 f_27@@94) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@94 f_27@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@94 f_27@@94))
))) (forall ((o2_7@@95 T@Ref) (f_27@@95 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@95 f_27@@95) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@14) o2_7@@95 f_27@@95) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@95 f_27@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@95 f_27@@95))
))) (forall ((o2_7@@96 T@Ref) (f_27@@96 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@96 f_27@@96) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@14) o2_7@@96 f_27@@96) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@96 f_27@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@96 f_27@@96))
))) (forall ((o2_7@@97 T@Ref) (f_27@@97 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@97 f_27@@97) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@14) o2_7@@97 f_27@@97) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@97 f_27@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@97 f_27@@97))
))) (forall ((o2_7@@98 T@Ref) (f_27@@98 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@98 f_27@@98) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@14) o2_7@@98 f_27@@98) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@98 f_27@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@98 f_27@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (IsWandField_17258_17259 pm_f_7@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_27863) (ExhaleHeap@@12 T@PolymorphicMapType_27863) (Mask@@13 T@PolymorphicMapType_27884) (pm_f_7@@12 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_17306_17307 Mask@@13 null pm_f_7@@12) (IsWandField_17306_98396 pm_f_7@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@99 T@Ref) (f_27@@99 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@99 f_27@@99) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@15) o2_7@@99 f_27@@99) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@99 f_27@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@99 f_27@@99))
)) (forall ((o2_7@@100 T@Ref) (f_27@@100 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@100 f_27@@100) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@15) o2_7@@100 f_27@@100) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@100 f_27@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@100 f_27@@100))
))) (forall ((o2_7@@101 T@Ref) (f_27@@101 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@101 f_27@@101) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@15) o2_7@@101 f_27@@101) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@101 f_27@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@101 f_27@@101))
))) (forall ((o2_7@@102 T@Ref) (f_27@@102 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@102 f_27@@102) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@15) o2_7@@102 f_27@@102) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@102 f_27@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@102 f_27@@102))
))) (forall ((o2_7@@103 T@Ref) (f_27@@103 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@103 f_27@@103) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@15) o2_7@@103 f_27@@103) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@103 f_27@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@103 f_27@@103))
))) (forall ((o2_7@@104 T@Ref) (f_27@@104 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@104 f_27@@104) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@15) o2_7@@104 f_27@@104) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@104 f_27@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@104 f_27@@104))
))) (forall ((o2_7@@105 T@Ref) (f_27@@105 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@105 f_27@@105) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@15) o2_7@@105 f_27@@105) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@105 f_27@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@105 f_27@@105))
))) (forall ((o2_7@@106 T@Ref) (f_27@@106 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@106 f_27@@106) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@15) o2_7@@106 f_27@@106) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@106 f_27@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@106 f_27@@106))
))) (forall ((o2_7@@107 T@Ref) (f_27@@107 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@107 f_27@@107) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@15) o2_7@@107 f_27@@107) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@107 f_27@@107)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@107 f_27@@107))
))) (forall ((o2_7@@108 T@Ref) (f_27@@108 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@108 f_27@@108) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@15) o2_7@@108 f_27@@108) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@108 f_27@@108)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@108 f_27@@108))
))) (forall ((o2_7@@109 T@Ref) (f_27@@109 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@109 f_27@@109) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@15) o2_7@@109 f_27@@109) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@109 f_27@@109)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@109 f_27@@109))
))) (forall ((o2_7@@110 T@Ref) (f_27@@110 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@110 f_27@@110) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@15) o2_7@@110 f_27@@110) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@110 f_27@@110)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@110 f_27@@110))
))) (forall ((o2_7@@111 T@Ref) (f_27@@111 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@111 f_27@@111) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@15) o2_7@@111 f_27@@111) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@111 f_27@@111)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@111 f_27@@111))
))) (forall ((o2_7@@112 T@Ref) (f_27@@112 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@112 f_27@@112) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) o2_7@@112 f_27@@112) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@112 f_27@@112)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@112 f_27@@112))
))) (forall ((o2_7@@113 T@Ref) (f_27@@113 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@113 f_27@@113) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@15) o2_7@@113 f_27@@113) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@113 f_27@@113)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@113 f_27@@113))
))) (forall ((o2_7@@114 T@Ref) (f_27@@114 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@114 f_27@@114) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@15) o2_7@@114 f_27@@114) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@114 f_27@@114)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@114 f_27@@114))
))) (forall ((o2_7@@115 T@Ref) (f_27@@115 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@115 f_27@@115) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@15) o2_7@@115 f_27@@115) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@115 f_27@@115)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@115 f_27@@115))
))) (forall ((o2_7@@116 T@Ref) (f_27@@116 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@116 f_27@@116) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@15) o2_7@@116 f_27@@116) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@116 f_27@@116)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@116 f_27@@116))
))) (forall ((o2_7@@117 T@Ref) (f_27@@117 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@117 f_27@@117) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@15) o2_7@@117 f_27@@117) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@117 f_27@@117)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@117 f_27@@117))
))) (forall ((o2_7@@118 T@Ref) (f_27@@118 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@118 f_27@@118) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@15) o2_7@@118 f_27@@118) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@118 f_27@@118)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@118 f_27@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (IsWandField_17306_98396 pm_f_7@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_27863) (ExhaleHeap@@13 T@PolymorphicMapType_27863) (Mask@@14 T@PolymorphicMapType_27884) (pm_f_7@@13 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_17331_17332 Mask@@14 null pm_f_7@@13) (IsWandField_17331_98039 pm_f_7@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@119 T@Ref) (f_27@@119 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@119 f_27@@119) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@16) o2_7@@119 f_27@@119) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@119 f_27@@119)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@119 f_27@@119))
)) (forall ((o2_7@@120 T@Ref) (f_27@@120 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@120 f_27@@120) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@16) o2_7@@120 f_27@@120) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@120 f_27@@120)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@120 f_27@@120))
))) (forall ((o2_7@@121 T@Ref) (f_27@@121 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@121 f_27@@121) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@16) o2_7@@121 f_27@@121) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@121 f_27@@121)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@121 f_27@@121))
))) (forall ((o2_7@@122 T@Ref) (f_27@@122 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@122 f_27@@122) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@16) o2_7@@122 f_27@@122) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@122 f_27@@122)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@122 f_27@@122))
))) (forall ((o2_7@@123 T@Ref) (f_27@@123 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@123 f_27@@123) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@16) o2_7@@123 f_27@@123) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@123 f_27@@123)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@123 f_27@@123))
))) (forall ((o2_7@@124 T@Ref) (f_27@@124 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@124 f_27@@124) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@16) o2_7@@124 f_27@@124) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@124 f_27@@124)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@124 f_27@@124))
))) (forall ((o2_7@@125 T@Ref) (f_27@@125 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@125 f_27@@125) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@16) o2_7@@125 f_27@@125) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@125 f_27@@125)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@125 f_27@@125))
))) (forall ((o2_7@@126 T@Ref) (f_27@@126 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@126 f_27@@126) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@16) o2_7@@126 f_27@@126) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@126 f_27@@126)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@126 f_27@@126))
))) (forall ((o2_7@@127 T@Ref) (f_27@@127 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@127 f_27@@127) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@16) o2_7@@127 f_27@@127) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@127 f_27@@127)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@127 f_27@@127))
))) (forall ((o2_7@@128 T@Ref) (f_27@@128 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@128 f_27@@128) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@16) o2_7@@128 f_27@@128) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@128 f_27@@128)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@128 f_27@@128))
))) (forall ((o2_7@@129 T@Ref) (f_27@@129 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@129 f_27@@129) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@16) o2_7@@129 f_27@@129) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@129 f_27@@129)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@129 f_27@@129))
))) (forall ((o2_7@@130 T@Ref) (f_27@@130 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@130 f_27@@130) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@16) o2_7@@130 f_27@@130) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@130 f_27@@130)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@130 f_27@@130))
))) (forall ((o2_7@@131 T@Ref) (f_27@@131 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@131 f_27@@131) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@16) o2_7@@131 f_27@@131) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@131 f_27@@131)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@131 f_27@@131))
))) (forall ((o2_7@@132 T@Ref) (f_27@@132 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@132 f_27@@132) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@16) o2_7@@132 f_27@@132) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@132 f_27@@132)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@132 f_27@@132))
))) (forall ((o2_7@@133 T@Ref) (f_27@@133 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@133 f_27@@133) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@16) o2_7@@133 f_27@@133) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@133 f_27@@133)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@133 f_27@@133))
))) (forall ((o2_7@@134 T@Ref) (f_27@@134 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@134 f_27@@134) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@16) o2_7@@134 f_27@@134) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@134 f_27@@134)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@134 f_27@@134))
))) (forall ((o2_7@@135 T@Ref) (f_27@@135 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@135 f_27@@135) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@16) o2_7@@135 f_27@@135) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@135 f_27@@135)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@135 f_27@@135))
))) (forall ((o2_7@@136 T@Ref) (f_27@@136 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@136 f_27@@136) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@16) o2_7@@136 f_27@@136) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@136 f_27@@136)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@136 f_27@@136))
))) (forall ((o2_7@@137 T@Ref) (f_27@@137 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@137 f_27@@137) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) o2_7@@137 f_27@@137) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@137 f_27@@137)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@137 f_27@@137))
))) (forall ((o2_7@@138 T@Ref) (f_27@@138 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@138 f_27@@138) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@16) o2_7@@138 f_27@@138) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@138 f_27@@138)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@138 f_27@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (IsWandField_17331_98039 pm_f_7@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_27863) (ExhaleHeap@@14 T@PolymorphicMapType_27863) (Mask@@15 T@PolymorphicMapType_27884) (pm_f_7@@14 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_17301_17332 Mask@@15 null pm_f_7@@14) (IsWandField_17301_97682 pm_f_7@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@139 T@Ref) (f_27@@139 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@139 f_27@@139) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@17) o2_7@@139 f_27@@139) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@139 f_27@@139)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@139 f_27@@139))
)) (forall ((o2_7@@140 T@Ref) (f_27@@140 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@140 f_27@@140) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@17) o2_7@@140 f_27@@140) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@140 f_27@@140)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@140 f_27@@140))
))) (forall ((o2_7@@141 T@Ref) (f_27@@141 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@141 f_27@@141) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@17) o2_7@@141 f_27@@141) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@141 f_27@@141)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@141 f_27@@141))
))) (forall ((o2_7@@142 T@Ref) (f_27@@142 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@142 f_27@@142) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) o2_7@@142 f_27@@142) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@142 f_27@@142)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@142 f_27@@142))
))) (forall ((o2_7@@143 T@Ref) (f_27@@143 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@143 f_27@@143) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@17) o2_7@@143 f_27@@143) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@143 f_27@@143)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@143 f_27@@143))
))) (forall ((o2_7@@144 T@Ref) (f_27@@144 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@144 f_27@@144) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@17) o2_7@@144 f_27@@144) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@144 f_27@@144)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@144 f_27@@144))
))) (forall ((o2_7@@145 T@Ref) (f_27@@145 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@145 f_27@@145) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@17) o2_7@@145 f_27@@145) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@145 f_27@@145)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@145 f_27@@145))
))) (forall ((o2_7@@146 T@Ref) (f_27@@146 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@146 f_27@@146) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@17) o2_7@@146 f_27@@146) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@146 f_27@@146)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@146 f_27@@146))
))) (forall ((o2_7@@147 T@Ref) (f_27@@147 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@147 f_27@@147) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@17) o2_7@@147 f_27@@147) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@147 f_27@@147)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@147 f_27@@147))
))) (forall ((o2_7@@148 T@Ref) (f_27@@148 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@148 f_27@@148) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@17) o2_7@@148 f_27@@148) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@148 f_27@@148)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@148 f_27@@148))
))) (forall ((o2_7@@149 T@Ref) (f_27@@149 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@149 f_27@@149) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@17) o2_7@@149 f_27@@149) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@149 f_27@@149)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@149 f_27@@149))
))) (forall ((o2_7@@150 T@Ref) (f_27@@150 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@150 f_27@@150) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@17) o2_7@@150 f_27@@150) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@150 f_27@@150)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@150 f_27@@150))
))) (forall ((o2_7@@151 T@Ref) (f_27@@151 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@151 f_27@@151) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@17) o2_7@@151 f_27@@151) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@151 f_27@@151)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@151 f_27@@151))
))) (forall ((o2_7@@152 T@Ref) (f_27@@152 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@152 f_27@@152) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@17) o2_7@@152 f_27@@152) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@152 f_27@@152)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@152 f_27@@152))
))) (forall ((o2_7@@153 T@Ref) (f_27@@153 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@153 f_27@@153) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@17) o2_7@@153 f_27@@153) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@153 f_27@@153)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@153 f_27@@153))
))) (forall ((o2_7@@154 T@Ref) (f_27@@154 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@154 f_27@@154) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@17) o2_7@@154 f_27@@154) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@154 f_27@@154)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@154 f_27@@154))
))) (forall ((o2_7@@155 T@Ref) (f_27@@155 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@155 f_27@@155) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@17) o2_7@@155 f_27@@155) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@155 f_27@@155)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@155 f_27@@155))
))) (forall ((o2_7@@156 T@Ref) (f_27@@156 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@156 f_27@@156) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@17) o2_7@@156 f_27@@156) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@156 f_27@@156)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@156 f_27@@156))
))) (forall ((o2_7@@157 T@Ref) (f_27@@157 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@157 f_27@@157) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@17) o2_7@@157 f_27@@157) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@157 f_27@@157)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@157 f_27@@157))
))) (forall ((o2_7@@158 T@Ref) (f_27@@158 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@158 f_27@@158) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@17) o2_7@@158 f_27@@158) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@158 f_27@@158)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@158 f_27@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (IsWandField_17301_97682 pm_f_7@@14))
)))
(assert (forall ((s@@11 T@Seq_36838) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_36838| s@@11))) (= (|Seq#Index_36838| (|Seq#Take_36838| s@@11 n@@9) j@@3) (|Seq#Index_36838| s@@11 j@@3)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_36838| (|Seq#Take_36838| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_36838| s@@11 j@@3) (|Seq#Take_36838| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3424) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3424| s@@12))) (= (|Seq#Index_3424| (|Seq#Take_3424| s@@12 n@@10) j@@4) (|Seq#Index_3424| s@@12 j@@4)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3424| (|Seq#Take_3424| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3424| s@@12 j@@4) (|Seq#Take_3424| s@@12 n@@10))
)))
(assert (forall ((a_2@@5 T@Ref) (a2@@1 T@Ref) ) (!  (=> (= (p1 a_2@@5) (p1 a2@@1)) (= a_2@@5 a2@@1))
 :qid |stdinbpl.681:15|
 :skolemid |68|
 :pattern ( (p1 a_2@@5) (p1 a2@@1))
)))
(assert (forall ((a_2@@6 T@Ref) (a2@@2 T@Ref) ) (!  (=> (= (|p1#sm| a_2@@6) (|p1#sm| a2@@2)) (= a_2@@6 a2@@2))
 :qid |stdinbpl.685:15|
 :skolemid |69|
 :pattern ( (|p1#sm| a_2@@6) (|p1#sm| a2@@2))
)))
(assert (forall ((s@@13 T@Seq_36838) (t T@Seq_36838) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_36838| s@@13))) (< n@@11 (|Seq#Length_36838| (|Seq#Append_36838| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_36838| s@@13)) (|Seq#Length_36838| s@@13)) n@@11) (= (|Seq#Take_36838| (|Seq#Append_36838| s@@13 t) n@@11) (|Seq#Append_36838| s@@13 (|Seq#Take_36838| t (|Seq#Sub| n@@11 (|Seq#Length_36838| s@@13)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_36838| (|Seq#Append_36838| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3424) (t@@0 T@Seq_3424) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3424| s@@14))) (< n@@12 (|Seq#Length_3424| (|Seq#Append_3424| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3424| s@@14)) (|Seq#Length_3424| s@@14)) n@@12) (= (|Seq#Take_3424| (|Seq#Append_3424| s@@14 t@@0) n@@12) (|Seq#Append_3424| s@@14 (|Seq#Take_3424| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3424| s@@14)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3424| (|Seq#Append_3424| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_27863) (ExhaleHeap@@15 T@PolymorphicMapType_27863) (Mask@@16 T@PolymorphicMapType_27884) (o_19 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@18) o_19 $allocated) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@15) o_19 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@15) o_19 $allocated))
)))
(assert (forall ((p T@Field_35865_35866) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_35865_35865 p v_1 p w))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35865_35865 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_34945_34946) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_34945_34945 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34945_34945 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_34054_34055) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_34023_34023 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34023_34023 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_17301_17332) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_27923_27923 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27923_27923 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((s0 T@Seq_36838) (s1 T@Seq_36838) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_36838|)) (not (= s1 |Seq#Empty_36838|))) (<= (|Seq#Length_36838| s0) n@@13)) (< n@@13 (|Seq#Length_36838| (|Seq#Append_36838| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_36838| s0)) (|Seq#Length_36838| s0)) n@@13) (= (|Seq#Index_36838| (|Seq#Append_36838| s0 s1) n@@13) (|Seq#Index_36838| s1 (|Seq#Sub| n@@13 (|Seq#Length_36838| s0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_36838| (|Seq#Append_36838| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3424) (s1@@0 T@Seq_3424) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3424|)) (not (= s1@@0 |Seq#Empty_3424|))) (<= (|Seq#Length_3424| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3424| (|Seq#Append_3424| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3424| s0@@0)) (|Seq#Length_3424| s0@@0)) n@@14) (= (|Seq#Index_3424| (|Seq#Append_3424| s0@@0 s1@@0) n@@14) (|Seq#Index_3424| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3424| s0@@0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3424| (|Seq#Append_3424| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_17301_4039 f_7)))
(assert  (not (IsWandField_17301_4039 f_7)))
(assert  (not (IsPredicateField_17301_4039 g)))
(assert  (not (IsWandField_17301_4039 g)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_27863) (ExhaleHeap@@16 T@PolymorphicMapType_27863) (Mask@@17 T@PolymorphicMapType_27884) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@19 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_27884) (o_2@@19 T@Ref) (f_4@@19 T@Field_34037_34042) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_17243_112414 f_4@@19))) (not (IsWandField_17243_112430 f_4@@19))) (<= (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_27884) (o_2@@20 T@Ref) (f_4@@20 T@Field_34023_27937) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_17243_27937 f_4@@20))) (not (IsWandField_17243_27937 f_4@@20))) (<= (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_27884) (o_2@@21 T@Ref) (f_4@@21 T@Field_34023_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_17243_53 f_4@@21))) (not (IsWandField_17243_53 f_4@@21))) (<= (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_27884) (o_2@@22 T@Ref) (f_4@@22 T@Field_34054_34055) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_17258_17259 f_4@@22))) (not (IsWandField_17258_17259 f_4@@22))) (<= (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_27884) (o_2@@23 T@Ref) (f_4@@23 T@Field_34023_3575) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_17243_3575 f_4@@23))) (not (IsWandField_17243_3575 f_4@@23))) (<= (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_27884) (o_2@@24 T@Ref) (f_4@@24 T@Field_34958_34963) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_17306_111597 f_4@@24))) (not (IsWandField_17306_111613 f_4@@24))) (<= (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_27884) (o_2@@25 T@Ref) (f_4@@25 T@Field_17306_27937) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_17306_27937 f_4@@25))) (not (IsWandField_17306_27937 f_4@@25))) (<= (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_27884) (o_2@@26 T@Ref) (f_4@@26 T@Field_17306_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_17306_53 f_4@@26))) (not (IsWandField_17306_53 f_4@@26))) (<= (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_27884) (o_2@@27 T@Ref) (f_4@@27 T@Field_34945_34946) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_17306_17307 f_4@@27))) (not (IsWandField_17306_98396 f_4@@27))) (<= (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_27884) (o_2@@28 T@Ref) (f_4@@28 T@Field_17306_4039) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_17306_4054 f_4@@28))) (not (IsWandField_17306_4054 f_4@@28))) (<= (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_27884) (o_2@@29 T@Ref) (f_4@@29 T@Field_35878_35883) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_17331_110766 f_4@@29))) (not (IsWandField_17331_110782 f_4@@29))) (<= (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_27884) (o_2@@30 T@Ref) (f_4@@30 T@Field_17331_27937) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_17331_27937 f_4@@30))) (not (IsWandField_17331_27937 f_4@@30))) (<= (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_27884) (o_2@@31 T@Ref) (f_4@@31 T@Field_17331_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_17331_53 f_4@@31))) (not (IsWandField_17331_53 f_4@@31))) (<= (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_27884) (o_2@@32 T@Ref) (f_4@@32 T@Field_35865_35866) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_17331_17332 f_4@@32))) (not (IsWandField_17331_98039 f_4@@32))) (<= (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_27884) (o_2@@33 T@Ref) (f_4@@33 T@Field_17331_4039) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_17331_4054 f_4@@33))) (not (IsWandField_17331_4054 f_4@@33))) (<= (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_27884) (o_2@@34 T@Ref) (f_4@@34 T@Field_17301_34042) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_17303_109935 f_4@@34))) (not (IsWandField_17303_109951 f_4@@34))) (<= (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_27884) (o_2@@35 T@Ref) (f_4@@35 T@Field_27936_27937) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_17303_27937 f_4@@35))) (not (IsWandField_17303_27937 f_4@@35))) (<= (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_27884) (o_2@@36 T@Ref) (f_4@@36 T@Field_27923_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_17303_53 f_4@@36))) (not (IsWandField_17303_53 f_4@@36))) (<= (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_27884) (o_2@@37 T@Ref) (f_4@@37 T@Field_17301_17332) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_17301_91021 f_4@@37))) (not (IsWandField_17301_97682 f_4@@37))) (<= (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_27884) (o_2@@38 T@Ref) (f_4@@38 T@Field_34868_4039) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_17301_4039 f_4@@38))) (not (IsWandField_17301_4039 f_4@@38))) (<= (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_27884) (o_2@@39 T@Ref) (f_4@@39 T@Field_34037_34042) ) (! (= (HasDirectPerm_34023_90776 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_90776 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_27884) (o_2@@40 T@Ref) (f_4@@40 T@Field_34023_27937) ) (! (= (HasDirectPerm_34023_27937 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_27937 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_27884) (o_2@@41 T@Ref) (f_4@@41 T@Field_34023_53) ) (! (= (HasDirectPerm_34023_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_27884) (o_2@@42 T@Ref) (f_4@@42 T@Field_34054_34055) ) (! (= (HasDirectPerm_34023_17332 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_17332 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_27884) (o_2@@43 T@Ref) (f_4@@43 T@Field_34023_3575) ) (! (= (HasDirectPerm_34023_4039 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_4039 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_27884) (o_2@@44 T@Ref) (f_4@@44 T@Field_34958_34963) ) (! (= (HasDirectPerm_17306_89642 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_89642 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_27884) (o_2@@45 T@Ref) (f_4@@45 T@Field_17306_27937) ) (! (= (HasDirectPerm_17306_27937 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_27937 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_27884) (o_2@@46 T@Ref) (f_4@@46 T@Field_17306_53) ) (! (= (HasDirectPerm_17306_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_27884) (o_2@@47 T@Ref) (f_4@@47 T@Field_34945_34946) ) (! (= (HasDirectPerm_17306_17307 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_17307 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_27884) (o_2@@48 T@Ref) (f_4@@48 T@Field_17306_4039) ) (! (= (HasDirectPerm_17306_4039 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_4039 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_27884) (o_2@@49 T@Ref) (f_4@@49 T@Field_35878_35883) ) (! (= (HasDirectPerm_17331_88544 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_88544 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_27884) (o_2@@50 T@Ref) (f_4@@50 T@Field_17331_27937) ) (! (= (HasDirectPerm_17331_27937 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_27937 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_27884) (o_2@@51 T@Ref) (f_4@@51 T@Field_17331_53) ) (! (= (HasDirectPerm_17331_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_27884) (o_2@@52 T@Ref) (f_4@@52 T@Field_35865_35866) ) (! (= (HasDirectPerm_17331_17332 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_17332 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_27884) (o_2@@53 T@Ref) (f_4@@53 T@Field_17331_4039) ) (! (= (HasDirectPerm_17331_4039 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_4039 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_27884) (o_2@@54 T@Ref) (f_4@@54 T@Field_17301_34042) ) (! (= (HasDirectPerm_17301_87403 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_87403 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_27884) (o_2@@55 T@Ref) (f_4@@55 T@Field_27936_27937) ) (! (= (HasDirectPerm_17301_27937 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_27937 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_27884) (o_2@@56 T@Ref) (f_4@@56 T@Field_27923_53) ) (! (= (HasDirectPerm_17301_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_27884) (o_2@@57 T@Ref) (f_4@@57 T@Field_17301_17332) ) (! (= (HasDirectPerm_17301_17332 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_17332 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_27884) (o_2@@58 T@Ref) (f_4@@58 T@Field_34868_4039) ) (! (= (HasDirectPerm_17301_4039 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_4039 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.231:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3424| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.604:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3424| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_27863) (ExhaleHeap@@17 T@PolymorphicMapType_27863) (Mask@@58 T@PolymorphicMapType_27884) (o_19@@0 T@Ref) (f_27@@159 T@Field_34037_34042) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_34023_90776 Mask@@58 o_19@@0 f_27@@159) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@20) o_19@@0 f_27@@159) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@17) o_19@@0 f_27@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@17) o_19@@0 f_27@@159))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_27863) (ExhaleHeap@@18 T@PolymorphicMapType_27863) (Mask@@59 T@PolymorphicMapType_27884) (o_19@@1 T@Ref) (f_27@@160 T@Field_34023_27937) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_34023_27937 Mask@@59 o_19@@1 f_27@@160) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@21) o_19@@1 f_27@@160) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@18) o_19@@1 f_27@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@18) o_19@@1 f_27@@160))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_27863) (ExhaleHeap@@19 T@PolymorphicMapType_27863) (Mask@@60 T@PolymorphicMapType_27884) (o_19@@2 T@Ref) (f_27@@161 T@Field_34023_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_34023_53 Mask@@60 o_19@@2 f_27@@161) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@22) o_19@@2 f_27@@161) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@19) o_19@@2 f_27@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@19) o_19@@2 f_27@@161))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_27863) (ExhaleHeap@@20 T@PolymorphicMapType_27863) (Mask@@61 T@PolymorphicMapType_27884) (o_19@@3 T@Ref) (f_27@@162 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_34023_17332 Mask@@61 o_19@@3 f_27@@162) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@23) o_19@@3 f_27@@162) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@20) o_19@@3 f_27@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@20) o_19@@3 f_27@@162))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_27863) (ExhaleHeap@@21 T@PolymorphicMapType_27863) (Mask@@62 T@PolymorphicMapType_27884) (o_19@@4 T@Ref) (f_27@@163 T@Field_34023_3575) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_34023_4039 Mask@@62 o_19@@4 f_27@@163) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@24) o_19@@4 f_27@@163) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@21) o_19@@4 f_27@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@21) o_19@@4 f_27@@163))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_27863) (ExhaleHeap@@22 T@PolymorphicMapType_27863) (Mask@@63 T@PolymorphicMapType_27884) (o_19@@5 T@Ref) (f_27@@164 T@Field_34958_34963) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_17306_89642 Mask@@63 o_19@@5 f_27@@164) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@25) o_19@@5 f_27@@164) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@22) o_19@@5 f_27@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@22) o_19@@5 f_27@@164))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_27863) (ExhaleHeap@@23 T@PolymorphicMapType_27863) (Mask@@64 T@PolymorphicMapType_27884) (o_19@@6 T@Ref) (f_27@@165 T@Field_17306_27937) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_17306_27937 Mask@@64 o_19@@6 f_27@@165) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@26) o_19@@6 f_27@@165) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@23) o_19@@6 f_27@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@23) o_19@@6 f_27@@165))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_27863) (ExhaleHeap@@24 T@PolymorphicMapType_27863) (Mask@@65 T@PolymorphicMapType_27884) (o_19@@7 T@Ref) (f_27@@166 T@Field_17306_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_17306_53 Mask@@65 o_19@@7 f_27@@166) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@27) o_19@@7 f_27@@166) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@24) o_19@@7 f_27@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@24) o_19@@7 f_27@@166))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_27863) (ExhaleHeap@@25 T@PolymorphicMapType_27863) (Mask@@66 T@PolymorphicMapType_27884) (o_19@@8 T@Ref) (f_27@@167 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_17306_17307 Mask@@66 o_19@@8 f_27@@167) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@28) o_19@@8 f_27@@167) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@25) o_19@@8 f_27@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@25) o_19@@8 f_27@@167))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_27863) (ExhaleHeap@@26 T@PolymorphicMapType_27863) (Mask@@67 T@PolymorphicMapType_27884) (o_19@@9 T@Ref) (f_27@@168 T@Field_17306_4039) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_17306_4039 Mask@@67 o_19@@9 f_27@@168) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@29) o_19@@9 f_27@@168) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@26) o_19@@9 f_27@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@26) o_19@@9 f_27@@168))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_27863) (ExhaleHeap@@27 T@PolymorphicMapType_27863) (Mask@@68 T@PolymorphicMapType_27884) (o_19@@10 T@Ref) (f_27@@169 T@Field_35878_35883) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_17331_88544 Mask@@68 o_19@@10 f_27@@169) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@30) o_19@@10 f_27@@169) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@27) o_19@@10 f_27@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@27) o_19@@10 f_27@@169))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_27863) (ExhaleHeap@@28 T@PolymorphicMapType_27863) (Mask@@69 T@PolymorphicMapType_27884) (o_19@@11 T@Ref) (f_27@@170 T@Field_17331_27937) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_17331_27937 Mask@@69 o_19@@11 f_27@@170) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@31) o_19@@11 f_27@@170) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@28) o_19@@11 f_27@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@28) o_19@@11 f_27@@170))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_27863) (ExhaleHeap@@29 T@PolymorphicMapType_27863) (Mask@@70 T@PolymorphicMapType_27884) (o_19@@12 T@Ref) (f_27@@171 T@Field_17331_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_17331_53 Mask@@70 o_19@@12 f_27@@171) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@32) o_19@@12 f_27@@171) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@29) o_19@@12 f_27@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@29) o_19@@12 f_27@@171))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_27863) (ExhaleHeap@@30 T@PolymorphicMapType_27863) (Mask@@71 T@PolymorphicMapType_27884) (o_19@@13 T@Ref) (f_27@@172 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_17331_17332 Mask@@71 o_19@@13 f_27@@172) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@33) o_19@@13 f_27@@172) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@30) o_19@@13 f_27@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@30) o_19@@13 f_27@@172))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_27863) (ExhaleHeap@@31 T@PolymorphicMapType_27863) (Mask@@72 T@PolymorphicMapType_27884) (o_19@@14 T@Ref) (f_27@@173 T@Field_17331_4039) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_17331_4039 Mask@@72 o_19@@14 f_27@@173) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@34) o_19@@14 f_27@@173) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@31) o_19@@14 f_27@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@31) o_19@@14 f_27@@173))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_27863) (ExhaleHeap@@32 T@PolymorphicMapType_27863) (Mask@@73 T@PolymorphicMapType_27884) (o_19@@15 T@Ref) (f_27@@174 T@Field_17301_34042) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_17301_87403 Mask@@73 o_19@@15 f_27@@174) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@35) o_19@@15 f_27@@174) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@32) o_19@@15 f_27@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@32) o_19@@15 f_27@@174))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_27863) (ExhaleHeap@@33 T@PolymorphicMapType_27863) (Mask@@74 T@PolymorphicMapType_27884) (o_19@@16 T@Ref) (f_27@@175 T@Field_27936_27937) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_17301_27937 Mask@@74 o_19@@16 f_27@@175) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@36) o_19@@16 f_27@@175) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@33) o_19@@16 f_27@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@33) o_19@@16 f_27@@175))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_27863) (ExhaleHeap@@34 T@PolymorphicMapType_27863) (Mask@@75 T@PolymorphicMapType_27884) (o_19@@17 T@Ref) (f_27@@176 T@Field_27923_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_17301_53 Mask@@75 o_19@@17 f_27@@176) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@37) o_19@@17 f_27@@176) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@34) o_19@@17 f_27@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@34) o_19@@17 f_27@@176))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_27863) (ExhaleHeap@@35 T@PolymorphicMapType_27863) (Mask@@76 T@PolymorphicMapType_27884) (o_19@@18 T@Ref) (f_27@@177 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_17301_17332 Mask@@76 o_19@@18 f_27@@177) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@38) o_19@@18 f_27@@177) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@35) o_19@@18 f_27@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@35) o_19@@18 f_27@@177))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_27863) (ExhaleHeap@@36 T@PolymorphicMapType_27863) (Mask@@77 T@PolymorphicMapType_27884) (o_19@@19 T@Ref) (f_27@@178 T@Field_34868_4039) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_17301_4039 Mask@@77 o_19@@19 f_27@@178) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@39) o_19@@19 f_27@@178) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@36) o_19@@19 f_27@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@36) o_19@@19 f_27@@178))
)))
(assert (forall ((s0@@1 T@Seq_36838) (s1@@1 T@Seq_36838) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_36838|)) (not (= s1@@1 |Seq#Empty_36838|))) (= (|Seq#Length_36838| (|Seq#Append_36838| s0@@1 s1@@1)) (+ (|Seq#Length_36838| s0@@1) (|Seq#Length_36838| s1@@1))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_36838| (|Seq#Append_36838| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3424) (s1@@2 T@Seq_3424) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3424|)) (not (= s1@@2 |Seq#Empty_3424|))) (= (|Seq#Length_3424| (|Seq#Append_3424| s0@@2 s1@@2)) (+ (|Seq#Length_3424| s0@@2) (|Seq#Length_3424| s1@@2))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3424| (|Seq#Append_3424| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_34037_34042) ) (! (= (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_34023_27937) ) (! (= (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_34023_53) ) (! (= (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_34054_34055) ) (! (= (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_34023_3575) ) (! (= (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_34958_34963) ) (! (= (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_17306_27937) ) (! (= (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_17306_53) ) (! (= (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_34945_34946) ) (! (= (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_17306_4039) ) (! (= (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_35878_35883) ) (! (= (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_17331_27937) ) (! (= (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_17331_53) ) (! (= (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_35865_35866) ) (! (= (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_17331_4039) ) (! (= (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_17301_34042) ) (! (= (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_27936_27937) ) (! (= (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_27923_53) ) (! (= (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_17301_17332) ) (! (= (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_34868_4039) ) (! (= (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((s@@15 T@Seq_36838) (t@@1 T@Seq_36838) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_36838| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_36838| s@@15)) (|Seq#Length_36838| s@@15)) n@@15) (= (|Seq#Drop_36838| (|Seq#Append_36838| s@@15 t@@1) n@@15) (|Seq#Drop_36838| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_36838| s@@15))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_36838| (|Seq#Append_36838| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3424) (t@@2 T@Seq_3424) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3424| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3424| s@@16)) (|Seq#Length_3424| s@@16)) n@@16) (= (|Seq#Drop_3424| (|Seq#Append_3424| s@@16 t@@2) n@@16) (|Seq#Drop_3424| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3424| s@@16))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3424| (|Seq#Append_3424| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_27884) (SummandMask1 T@PolymorphicMapType_27884) (SummandMask2 T@PolymorphicMapType_27884) (o_2@@79 T@Ref) (f_4@@79 T@Field_34037_34042) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_27884) (SummandMask1@@0 T@PolymorphicMapType_27884) (SummandMask2@@0 T@PolymorphicMapType_27884) (o_2@@80 T@Ref) (f_4@@80 T@Field_34023_27937) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_27884) (SummandMask1@@1 T@PolymorphicMapType_27884) (SummandMask2@@1 T@PolymorphicMapType_27884) (o_2@@81 T@Ref) (f_4@@81 T@Field_34023_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_27884) (SummandMask1@@2 T@PolymorphicMapType_27884) (SummandMask2@@2 T@PolymorphicMapType_27884) (o_2@@82 T@Ref) (f_4@@82 T@Field_34054_34055) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_27884) (SummandMask1@@3 T@PolymorphicMapType_27884) (SummandMask2@@3 T@PolymorphicMapType_27884) (o_2@@83 T@Ref) (f_4@@83 T@Field_34023_3575) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_27884) (SummandMask1@@4 T@PolymorphicMapType_27884) (SummandMask2@@4 T@PolymorphicMapType_27884) (o_2@@84 T@Ref) (f_4@@84 T@Field_34958_34963) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_27884) (SummandMask1@@5 T@PolymorphicMapType_27884) (SummandMask2@@5 T@PolymorphicMapType_27884) (o_2@@85 T@Ref) (f_4@@85 T@Field_17306_27937) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_27884) (SummandMask1@@6 T@PolymorphicMapType_27884) (SummandMask2@@6 T@PolymorphicMapType_27884) (o_2@@86 T@Ref) (f_4@@86 T@Field_17306_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_27884) (SummandMask1@@7 T@PolymorphicMapType_27884) (SummandMask2@@7 T@PolymorphicMapType_27884) (o_2@@87 T@Ref) (f_4@@87 T@Field_34945_34946) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_27884) (SummandMask1@@8 T@PolymorphicMapType_27884) (SummandMask2@@8 T@PolymorphicMapType_27884) (o_2@@88 T@Ref) (f_4@@88 T@Field_17306_4039) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_27884) (SummandMask1@@9 T@PolymorphicMapType_27884) (SummandMask2@@9 T@PolymorphicMapType_27884) (o_2@@89 T@Ref) (f_4@@89 T@Field_35878_35883) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_27884) (SummandMask1@@10 T@PolymorphicMapType_27884) (SummandMask2@@10 T@PolymorphicMapType_27884) (o_2@@90 T@Ref) (f_4@@90 T@Field_17331_27937) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_27884) (SummandMask1@@11 T@PolymorphicMapType_27884) (SummandMask2@@11 T@PolymorphicMapType_27884) (o_2@@91 T@Ref) (f_4@@91 T@Field_17331_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_27884) (SummandMask1@@12 T@PolymorphicMapType_27884) (SummandMask2@@12 T@PolymorphicMapType_27884) (o_2@@92 T@Ref) (f_4@@92 T@Field_35865_35866) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_27884) (SummandMask1@@13 T@PolymorphicMapType_27884) (SummandMask2@@13 T@PolymorphicMapType_27884) (o_2@@93 T@Ref) (f_4@@93 T@Field_17331_4039) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_27884) (SummandMask1@@14 T@PolymorphicMapType_27884) (SummandMask2@@14 T@PolymorphicMapType_27884) (o_2@@94 T@Ref) (f_4@@94 T@Field_17301_34042) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_27884) (SummandMask1@@15 T@PolymorphicMapType_27884) (SummandMask2@@15 T@PolymorphicMapType_27884) (o_2@@95 T@Ref) (f_4@@95 T@Field_27936_27937) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_27884) (SummandMask1@@16 T@PolymorphicMapType_27884) (SummandMask2@@16 T@PolymorphicMapType_27884) (o_2@@96 T@Ref) (f_4@@96 T@Field_27923_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_27884) (SummandMask1@@17 T@PolymorphicMapType_27884) (SummandMask2@@17 T@PolymorphicMapType_27884) (o_2@@97 T@Ref) (f_4@@97 T@Field_17301_17332) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_27884) (SummandMask1@@18 T@PolymorphicMapType_27884) (SummandMask2@@18 T@PolymorphicMapType_27884) (o_2@@98 T@Ref) (f_4@@98 T@Field_34868_4039) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3424| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3424| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.603:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3424| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_36838) (b T@Seq_36838) ) (!  (=> (|Seq#Equal_36838| a b) (= a b))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_36838| a b))
)))
(assert (forall ((a@@0 T@Seq_3424) (b@@0 T@Seq_3424) ) (!  (=> (|Seq#Equal_3424| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3424| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_36838) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_36838| s@@17))) (|Seq#ContainsTrigger_17359| s@@17 (|Seq#Index_36838| s@@17 i@@3)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_36838| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3424) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3424| s@@18))) (|Seq#ContainsTrigger_3424| s@@18 (|Seq#Index_3424| s@@18 i@@4)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3424| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_36838) (s1@@3 T@Seq_36838) ) (!  (and (=> (= s0@@3 |Seq#Empty_36838|) (= (|Seq#Append_36838| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_36838|) (= (|Seq#Append_36838| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_36838| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3424) (s1@@4 T@Seq_3424) ) (!  (and (=> (= s0@@4 |Seq#Empty_3424|) (= (|Seq#Append_3424| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3424|) (= (|Seq#Append_3424| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3424| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_36838| (|Seq#Singleton_36838| t@@3) 0) t@@3)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_36838| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3424| (|Seq#Singleton_3424| t@@4) 0) t@@4)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3424| t@@4))
)))
(assert (forall ((s@@19 T@Seq_36838) ) (! (<= 0 (|Seq#Length_36838| s@@19))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_36838| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3424) ) (! (<= 0 (|Seq#Length_3424| s@@20))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3424| s@@20))
)))
(assert (forall ((a_2@@7 T@Ref) (b_24@@3 Int) ) (! (= (getPredWandId_17331_17332 (p2 a_2@@7 b_24@@3)) 1)
 :qid |stdinbpl.729:15|
 :skolemid |73|
 :pattern ( (p2 a_2@@7 b_24@@3))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 Bool) (arg4 T@Ref) (arg5 Real) (arg6 T@Ref) (arg7 Int) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 Bool) (arg4_2 T@Ref) (arg5_2 Real) (arg6_2 T@Ref) (arg7_2 Int) ) (!  (=> (= (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (and (= arg5 arg5_2) (and (= arg6 arg6_2) (= arg7 arg7_2))))))))
 :qid |stdinbpl.644:15|
 :skolemid |64|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2))
)))
(assert (forall ((s0@@5 T@Seq_36838) (s1@@5 T@Seq_36838) ) (!  (=> (|Seq#Equal_36838| s0@@5 s1@@5) (and (= (|Seq#Length_36838| s0@@5) (|Seq#Length_36838| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_36838| s0@@5))) (= (|Seq#Index_36838| s0@@5 j@@6) (|Seq#Index_36838| s1@@5 j@@6)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_36838| s0@@5 j@@6))
 :pattern ( (|Seq#Index_36838| s1@@5 j@@6))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_36838| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3424) (s1@@6 T@Seq_3424) ) (!  (=> (|Seq#Equal_3424| s0@@6 s1@@6) (and (= (|Seq#Length_3424| s0@@6) (|Seq#Length_3424| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3424| s0@@6))) (= (|Seq#Index_3424| s0@@6 j@@7) (|Seq#Index_3424| s1@@6 j@@7)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3424| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3424| s1@@6 j@@7))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3424| s0@@6 s1@@6))
)))
(assert (forall ((a_2@@8 T@Ref) ) (! (= (getPredWandId_17306_17307 (p1 a_2@@8)) 0)
 :qid |stdinbpl.675:15|
 :skolemid |67|
 :pattern ( (p1 a_2@@8))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_36838| (|Seq#Singleton_36838| t@@5)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_36838| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3424| (|Seq#Singleton_3424| t@@6)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3424| t@@6))
)))
(assert (forall ((a_2@@9 T@Ref) (b_24@@4 Int) ) (! (= (PredicateMaskField_17331 (p2 a_2@@9 b_24@@4)) (|p2#sm| a_2@@9 b_24@@4))
 :qid |stdinbpl.721:15|
 :skolemid |71|
 :pattern ( (PredicateMaskField_17331 (p2 a_2@@9 b_24@@4)))
)))
(assert (forall ((s@@21 T@Seq_36838) (t@@7 T@Seq_36838) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_36838| s@@21))) (= (|Seq#Take_36838| (|Seq#Append_36838| s@@21 t@@7) n@@17) (|Seq#Take_36838| s@@21 n@@17)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_36838| (|Seq#Append_36838| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3424) (t@@8 T@Seq_3424) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3424| s@@22))) (= (|Seq#Take_3424| (|Seq#Append_3424| s@@22 t@@8) n@@18) (|Seq#Take_3424| s@@22 n@@18)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3424| (|Seq#Append_3424| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_36838) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_36838| s@@23))) (= (|Seq#Length_36838| (|Seq#Update_36838| s@@23 i@@5 v@@2)) (|Seq#Length_36838| s@@23)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_36838| (|Seq#Update_36838| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_36838| s@@23) (|Seq#Update_36838| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3424) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3424| s@@24))) (= (|Seq#Length_3424| (|Seq#Update_3424| s@@24 i@@6 v@@3)) (|Seq#Length_3424| s@@24)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3424| (|Seq#Update_3424| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3424| s@@24) (|Seq#Update_3424| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_27863) (o_18 T@Ref) (f_28 T@Field_34037_34042) (v@@4 T@PolymorphicMapType_28412) ) (! (succHeap Heap@@40 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@40) (store (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@40) o_18 f_28 v@@4) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@40) (store (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@40) o_18 f_28 v@@4) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_27863) (o_18@@0 T@Ref) (f_28@@0 T@Field_34023_3575) (v@@5 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@41) (store (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@41) o_18@@0 f_28@@0 v@@5) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@41) (store (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@41) o_18@@0 f_28@@0 v@@5) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_27863) (o_18@@1 T@Ref) (f_28@@1 T@Field_34054_34055) (v@@6 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@42) (store (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@42) o_18@@1 f_28@@1 v@@6) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@42) (store (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@42) o_18@@1 f_28@@1 v@@6) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_27863) (o_18@@2 T@Ref) (f_28@@2 T@Field_34023_27937) (v@@7 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@43) (store (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@43) o_18@@2 f_28@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@43) (store (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@43) o_18@@2 f_28@@2 v@@7)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_27863) (o_18@@3 T@Ref) (f_28@@3 T@Field_34023_53) (v@@8 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@44) (store (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@44) o_18@@3 f_28@@3 v@@8) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@44) (store (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@44) o_18@@3 f_28@@3 v@@8) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_27863) (o_18@@4 T@Ref) (f_28@@4 T@Field_34958_34963) (v@@9 T@PolymorphicMapType_28412) ) (! (succHeap Heap@@45 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@45) (store (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@45) o_18@@4 f_28@@4 v@@9) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@45) (store (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@45) o_18@@4 f_28@@4 v@@9) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_27863) (o_18@@5 T@Ref) (f_28@@5 T@Field_17306_4039) (v@@10 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@46) (store (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@46) o_18@@5 f_28@@5 v@@10) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@46) (store (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@46) o_18@@5 f_28@@5 v@@10) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_27863) (o_18@@6 T@Ref) (f_28@@6 T@Field_34945_34946) (v@@11 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@47) (store (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@47) o_18@@6 f_28@@6 v@@11) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@47) (store (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@47) o_18@@6 f_28@@6 v@@11) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_27863) (o_18@@7 T@Ref) (f_28@@7 T@Field_17306_27937) (v@@12 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@48) (store (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@48) o_18@@7 f_28@@7 v@@12) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@48) (store (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@48) o_18@@7 f_28@@7 v@@12) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_27863) (o_18@@8 T@Ref) (f_28@@8 T@Field_17306_53) (v@@13 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@49) (store (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@49) o_18@@8 f_28@@8 v@@13) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@49) (store (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@49) o_18@@8 f_28@@8 v@@13) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_27863) (o_18@@9 T@Ref) (f_28@@9 T@Field_35878_35883) (v@@14 T@PolymorphicMapType_28412) ) (! (succHeap Heap@@50 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@50) (store (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@50) o_18@@9 f_28@@9 v@@14) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@50) (store (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@50) o_18@@9 f_28@@9 v@@14) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_27863) (o_18@@10 T@Ref) (f_28@@10 T@Field_17331_4039) (v@@15 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@51) (store (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@51) o_18@@10 f_28@@10 v@@15) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@51) (store (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@51) o_18@@10 f_28@@10 v@@15) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_27863) (o_18@@11 T@Ref) (f_28@@11 T@Field_35865_35866) (v@@16 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@52) (store (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@52) o_18@@11 f_28@@11 v@@16) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@52) (store (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@52) o_18@@11 f_28@@11 v@@16) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_27863) (o_18@@12 T@Ref) (f_28@@12 T@Field_17331_27937) (v@@17 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@53) (store (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@53) o_18@@12 f_28@@12 v@@17) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@53) (store (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@53) o_18@@12 f_28@@12 v@@17) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_27863) (o_18@@13 T@Ref) (f_28@@13 T@Field_17331_53) (v@@18 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@54) (store (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@54) o_18@@13 f_28@@13 v@@18) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@54) (store (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@54) o_18@@13 f_28@@13 v@@18) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_27863) (o_18@@14 T@Ref) (f_28@@14 T@Field_17301_34042) (v@@19 T@PolymorphicMapType_28412) ) (! (succHeap Heap@@55 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@55) (store (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@55) o_18@@14 f_28@@14 v@@19) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@55) (store (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@55) o_18@@14 f_28@@14 v@@19) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_27863) (o_18@@15 T@Ref) (f_28@@15 T@Field_34868_4039) (v@@20 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@56) (store (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@56) o_18@@15 f_28@@15 v@@20) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@56) (store (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@56) o_18@@15 f_28@@15 v@@20) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_27863) (o_18@@16 T@Ref) (f_28@@16 T@Field_17301_17332) (v@@21 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@57) (store (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@57) o_18@@16 f_28@@16 v@@21) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@57) (store (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@57) o_18@@16 f_28@@16 v@@21) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_27863) (o_18@@17 T@Ref) (f_28@@17 T@Field_27936_27937) (v@@22 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@58) (store (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@58) o_18@@17 f_28@@17 v@@22) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@58) (store (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@58) o_18@@17 f_28@@17 v@@22) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_27863) (o_18@@18 T@Ref) (f_28@@18 T@Field_27923_53) (v@@23 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_27863 (store (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@59) o_18@@18 f_28@@18 v@@23) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (store (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@59) o_18@@18 f_28@@18 v@@23) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@59)))
)))
(assert (forall ((a_2@@10 T@Ref) ) (! (= (PredicateMaskField_17306 (p1 a_2@@10)) (|p1#sm| a_2@@10))
 :qid |stdinbpl.667:15|
 :skolemid |65|
 :pattern ( (PredicateMaskField_17306 (p1 a_2@@10)))
)))
(assert (forall ((s@@25 T@Seq_36838) (t@@9 T@Seq_36838) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_36838| s@@25))) (= (|Seq#Drop_36838| (|Seq#Append_36838| s@@25 t@@9) n@@19) (|Seq#Append_36838| (|Seq#Drop_36838| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_36838| (|Seq#Append_36838| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3424) (t@@10 T@Seq_3424) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3424| s@@26))) (= (|Seq#Drop_3424| (|Seq#Append_3424| s@@26 t@@10) n@@20) (|Seq#Append_3424| (|Seq#Drop_3424| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3424| (|Seq#Append_3424| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_36838) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_36838| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_36838| (|Seq#Drop_36838| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_36838| s@@27 i@@7))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_36838| s@@27 n@@21) (|Seq#Index_36838| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3424) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3424| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3424| (|Seq#Drop_3424| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3424| s@@28 i@@8))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3424| s@@28 n@@22) (|Seq#Index_3424| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_36838) (s1@@7 T@Seq_36838) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_36838|)) (not (= s1@@7 |Seq#Empty_36838|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_36838| s0@@7))) (= (|Seq#Index_36838| (|Seq#Append_36838| s0@@7 s1@@7) n@@23) (|Seq#Index_36838| s0@@7 n@@23)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_36838| (|Seq#Append_36838| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_36838| s0@@7 n@@23) (|Seq#Append_36838| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3424) (s1@@8 T@Seq_3424) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3424|)) (not (= s1@@8 |Seq#Empty_3424|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3424| s0@@8))) (= (|Seq#Index_3424| (|Seq#Append_3424| s0@@8 s1@@8) n@@24) (|Seq#Index_3424| s0@@8 n@@24)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3424| (|Seq#Append_3424| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3424| s0@@8 n@@24) (|Seq#Append_3424| s0@@8 s1@@8))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 Bool) (arg4@@0 T@Ref) (arg5@@0 Real) (arg6@@0 T@Ref) (arg7@@0 Int) ) (! (= (|wand#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0) (WandMaskField_17258 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
 :qid |stdinbpl.636:15|
 :skolemid |62|
 :pattern ( (WandMaskField_17258 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
)))
(assert (forall ((s0@@9 T@Seq_36838) (s1@@9 T@Seq_36838) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_36838|)) (not (= s1@@9 |Seq#Empty_36838|))) (<= 0 m)) (< m (|Seq#Length_36838| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_36838| s0@@9)) (|Seq#Length_36838| s0@@9)) m) (= (|Seq#Index_36838| (|Seq#Append_36838| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_36838| s0@@9))) (|Seq#Index_36838| s1@@9 m))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_36838| s1@@9 m) (|Seq#Append_36838| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3424) (s1@@10 T@Seq_3424) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3424|)) (not (= s1@@10 |Seq#Empty_3424|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3424| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3424| s0@@10)) (|Seq#Length_3424| s0@@10)) m@@0) (= (|Seq#Index_3424| (|Seq#Append_3424| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3424| s0@@10))) (|Seq#Index_3424| s1@@10 m@@0))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3424| s1@@10 m@@0) (|Seq#Append_3424| s0@@10 s1@@10))
)))
(assert (forall ((o_18@@19 T@Ref) (f_26 T@Field_27936_27937) (Heap@@60 T@PolymorphicMapType_27863) ) (!  (=> (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@60) o_18@@19 $allocated) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@60) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@60) o_18@@19 f_26) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@60) o_18@@19 f_26))
)))
(assert (forall ((s@@29 T@Seq_36838) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_36838| s@@29))) (= (|Seq#Index_36838| s@@29 i@@9) x@@3)) (|Seq#Contains_17359| s@@29 x@@3))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_17359| s@@29 x@@3) (|Seq#Index_36838| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3424) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3424| s@@30))) (= (|Seq#Index_3424| s@@30 i@@10) x@@4)) (|Seq#Contains_3424| s@@30 x@@4))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3424| s@@30 x@@4) (|Seq#Index_3424| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_36838) (s1@@11 T@Seq_36838) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_36838| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36838| s0@@11 s1@@11))) (not (= (|Seq#Length_36838| s0@@11) (|Seq#Length_36838| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36838| s0@@11 s1@@11))) (= (|Seq#Length_36838| s0@@11) (|Seq#Length_36838| s1@@11))) (= (|Seq#SkolemDiff_36838| s0@@11 s1@@11) (|Seq#SkolemDiff_36838| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_36838| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_36838| s0@@11 s1@@11) (|Seq#Length_36838| s0@@11))) (not (= (|Seq#Index_36838| s0@@11 (|Seq#SkolemDiff_36838| s0@@11 s1@@11)) (|Seq#Index_36838| s1@@11 (|Seq#SkolemDiff_36838| s0@@11 s1@@11))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_36838| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3424) (s1@@12 T@Seq_3424) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3424| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3424| s0@@12 s1@@12))) (not (= (|Seq#Length_3424| s0@@12) (|Seq#Length_3424| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3424| s0@@12 s1@@12))) (= (|Seq#Length_3424| s0@@12) (|Seq#Length_3424| s1@@12))) (= (|Seq#SkolemDiff_3424| s0@@12 s1@@12) (|Seq#SkolemDiff_3424| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3424| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3424| s0@@12 s1@@12) (|Seq#Length_3424| s0@@12))) (not (= (|Seq#Index_3424| s0@@12 (|Seq#SkolemDiff_3424| s0@@12 s1@@12)) (|Seq#Index_3424| s1@@12 (|Seq#SkolemDiff_3424| s0@@12 s1@@12))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3424| s0@@12 s1@@12))
)))
(assert (forall ((p@@4 T@Field_35865_35866) (v_1@@3 T@FrameType) (q T@Field_35865_35866) (w@@3 T@FrameType) (r T@Field_35865_35866) (u T@FrameType) ) (!  (=> (and (InsidePredicate_35865_35865 p@@4 v_1@@3 q w@@3) (InsidePredicate_35865_35865 q w@@3 r u)) (InsidePredicate_35865_35865 p@@4 v_1@@3 r u))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_35865 p@@4 v_1@@3 q w@@3) (InsidePredicate_35865_35865 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_35865_35866) (v_1@@4 T@FrameType) (q@@0 T@Field_35865_35866) (w@@4 T@FrameType) (r@@0 T@Field_34945_34946) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_35865 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_35865_34945 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_35865_34945 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_35865 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_35865_34945 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_35865_35866) (v_1@@5 T@FrameType) (q@@1 T@Field_35865_35866) (w@@5 T@FrameType) (r@@1 T@Field_34054_34055) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_35865 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_35865_34023 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_35865_34023 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_35865 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_35865_34023 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_35865_35866) (v_1@@6 T@FrameType) (q@@2 T@Field_35865_35866) (w@@6 T@FrameType) (r@@2 T@Field_17301_17332) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_35865 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_35865_27923 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_35865_27923 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_35865 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_35865_27923 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_35865_35866) (v_1@@7 T@FrameType) (q@@3 T@Field_34945_34946) (w@@7 T@FrameType) (r@@3 T@Field_35865_35866) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34945 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_34945_35865 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_35865_35865 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34945 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_34945_35865 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_35865_35866) (v_1@@8 T@FrameType) (q@@4 T@Field_34945_34946) (w@@8 T@FrameType) (r@@4 T@Field_34945_34946) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34945 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_34945_34945 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_35865_34945 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34945 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_34945_34945 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_35865_35866) (v_1@@9 T@FrameType) (q@@5 T@Field_34945_34946) (w@@9 T@FrameType) (r@@5 T@Field_34054_34055) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34945 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_34945_34023 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_35865_34023 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34945 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_34945_34023 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_35865_35866) (v_1@@10 T@FrameType) (q@@6 T@Field_34945_34946) (w@@10 T@FrameType) (r@@6 T@Field_17301_17332) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34945 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_34945_27923 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_35865_27923 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34945 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_34945_27923 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_35865_35866) (v_1@@11 T@FrameType) (q@@7 T@Field_34054_34055) (w@@11 T@FrameType) (r@@7 T@Field_35865_35866) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34023 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_34023_35865 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_35865_35865 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34023 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_34023_35865 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_35865_35866) (v_1@@12 T@FrameType) (q@@8 T@Field_34054_34055) (w@@12 T@FrameType) (r@@8 T@Field_34945_34946) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34023 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_34023_34945 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_35865_34945 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34023 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_34023_34945 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_35865_35866) (v_1@@13 T@FrameType) (q@@9 T@Field_34054_34055) (w@@13 T@FrameType) (r@@9 T@Field_34054_34055) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34023 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_34023_34023 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_35865_34023 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34023 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_34023_34023 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_35865_35866) (v_1@@14 T@FrameType) (q@@10 T@Field_34054_34055) (w@@14 T@FrameType) (r@@10 T@Field_17301_17332) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34023 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_34023_27923 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_35865_27923 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34023 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_34023_27923 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_35865_35866) (v_1@@15 T@FrameType) (q@@11 T@Field_17301_17332) (w@@15 T@FrameType) (r@@11 T@Field_35865_35866) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_27923 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_27923_35865 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_35865_35865 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_27923 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_27923_35865 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_35865_35866) (v_1@@16 T@FrameType) (q@@12 T@Field_17301_17332) (w@@16 T@FrameType) (r@@12 T@Field_34945_34946) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_27923 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_27923_34945 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_35865_34945 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_27923 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_27923_34945 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_35865_35866) (v_1@@17 T@FrameType) (q@@13 T@Field_17301_17332) (w@@17 T@FrameType) (r@@13 T@Field_34054_34055) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_27923 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_27923_34023 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_35865_34023 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_27923 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_27923_34023 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_35865_35866) (v_1@@18 T@FrameType) (q@@14 T@Field_17301_17332) (w@@18 T@FrameType) (r@@14 T@Field_17301_17332) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_27923 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_27923_27923 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_35865_27923 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_27923 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_27923_27923 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_34945_34946) (v_1@@19 T@FrameType) (q@@15 T@Field_35865_35866) (w@@19 T@FrameType) (r@@15 T@Field_35865_35866) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_35865 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_35865_35865 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_34945_35865 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_35865 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_35865_35865 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_34945_34946) (v_1@@20 T@FrameType) (q@@16 T@Field_35865_35866) (w@@20 T@FrameType) (r@@16 T@Field_34945_34946) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_35865 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_35865_34945 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_34945_34945 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_35865 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_35865_34945 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_34945_34946) (v_1@@21 T@FrameType) (q@@17 T@Field_35865_35866) (w@@21 T@FrameType) (r@@17 T@Field_34054_34055) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_35865 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_35865_34023 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_34945_34023 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_35865 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_35865_34023 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_34945_34946) (v_1@@22 T@FrameType) (q@@18 T@Field_35865_35866) (w@@22 T@FrameType) (r@@18 T@Field_17301_17332) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_35865 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_35865_27923 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_34945_27923 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_35865 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_35865_27923 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_34945_34946) (v_1@@23 T@FrameType) (q@@19 T@Field_34945_34946) (w@@23 T@FrameType) (r@@19 T@Field_35865_35866) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34945 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_34945_35865 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_34945_35865 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34945 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_34945_35865 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_34945_34946) (v_1@@24 T@FrameType) (q@@20 T@Field_34945_34946) (w@@24 T@FrameType) (r@@20 T@Field_34945_34946) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34945 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_34945_34945 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_34945_34945 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34945 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_34945_34945 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_34945_34946) (v_1@@25 T@FrameType) (q@@21 T@Field_34945_34946) (w@@25 T@FrameType) (r@@21 T@Field_34054_34055) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34945 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_34945_34023 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_34945_34023 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34945 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_34945_34023 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_34945_34946) (v_1@@26 T@FrameType) (q@@22 T@Field_34945_34946) (w@@26 T@FrameType) (r@@22 T@Field_17301_17332) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34945 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_34945_27923 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_34945_27923 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34945 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_34945_27923 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_34945_34946) (v_1@@27 T@FrameType) (q@@23 T@Field_34054_34055) (w@@27 T@FrameType) (r@@23 T@Field_35865_35866) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34023 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_34023_35865 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_34945_35865 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34023 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_34023_35865 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_34945_34946) (v_1@@28 T@FrameType) (q@@24 T@Field_34054_34055) (w@@28 T@FrameType) (r@@24 T@Field_34945_34946) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34023 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_34023_34945 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_34945_34945 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34023 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_34023_34945 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_34945_34946) (v_1@@29 T@FrameType) (q@@25 T@Field_34054_34055) (w@@29 T@FrameType) (r@@25 T@Field_34054_34055) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34023 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_34023_34023 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_34945_34023 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34023 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_34023_34023 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_34945_34946) (v_1@@30 T@FrameType) (q@@26 T@Field_34054_34055) (w@@30 T@FrameType) (r@@26 T@Field_17301_17332) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34023 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_34023_27923 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_34945_27923 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34023 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_34023_27923 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_34945_34946) (v_1@@31 T@FrameType) (q@@27 T@Field_17301_17332) (w@@31 T@FrameType) (r@@27 T@Field_35865_35866) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_27923 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_27923_35865 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_34945_35865 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_27923 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_27923_35865 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_34945_34946) (v_1@@32 T@FrameType) (q@@28 T@Field_17301_17332) (w@@32 T@FrameType) (r@@28 T@Field_34945_34946) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_27923 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_27923_34945 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_34945_34945 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_27923 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_27923_34945 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_34945_34946) (v_1@@33 T@FrameType) (q@@29 T@Field_17301_17332) (w@@33 T@FrameType) (r@@29 T@Field_34054_34055) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_27923 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_27923_34023 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_34945_34023 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_27923 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_27923_34023 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_34945_34946) (v_1@@34 T@FrameType) (q@@30 T@Field_17301_17332) (w@@34 T@FrameType) (r@@30 T@Field_17301_17332) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_27923 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_27923_27923 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_34945_27923 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_27923 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_27923_27923 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_34054_34055) (v_1@@35 T@FrameType) (q@@31 T@Field_35865_35866) (w@@35 T@FrameType) (r@@31 T@Field_35865_35866) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_35865 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_35865_35865 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_34023_35865 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_35865 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_35865_35865 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_34054_34055) (v_1@@36 T@FrameType) (q@@32 T@Field_35865_35866) (w@@36 T@FrameType) (r@@32 T@Field_34945_34946) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_35865 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_35865_34945 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_34023_34945 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_35865 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_35865_34945 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_34054_34055) (v_1@@37 T@FrameType) (q@@33 T@Field_35865_35866) (w@@37 T@FrameType) (r@@33 T@Field_34054_34055) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_35865 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_35865_34023 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_34023_34023 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_35865 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_35865_34023 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_34054_34055) (v_1@@38 T@FrameType) (q@@34 T@Field_35865_35866) (w@@38 T@FrameType) (r@@34 T@Field_17301_17332) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_35865 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_35865_27923 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_34023_27923 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_35865 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_35865_27923 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_34054_34055) (v_1@@39 T@FrameType) (q@@35 T@Field_34945_34946) (w@@39 T@FrameType) (r@@35 T@Field_35865_35866) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34945 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_34945_35865 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_34023_35865 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34945 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_34945_35865 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_34054_34055) (v_1@@40 T@FrameType) (q@@36 T@Field_34945_34946) (w@@40 T@FrameType) (r@@36 T@Field_34945_34946) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34945 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_34945_34945 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_34023_34945 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34945 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_34945_34945 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_34054_34055) (v_1@@41 T@FrameType) (q@@37 T@Field_34945_34946) (w@@41 T@FrameType) (r@@37 T@Field_34054_34055) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34945 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_34945_34023 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_34023_34023 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34945 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_34945_34023 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_34054_34055) (v_1@@42 T@FrameType) (q@@38 T@Field_34945_34946) (w@@42 T@FrameType) (r@@38 T@Field_17301_17332) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34945 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_34945_27923 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_34023_27923 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34945 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_34945_27923 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_34054_34055) (v_1@@43 T@FrameType) (q@@39 T@Field_34054_34055) (w@@43 T@FrameType) (r@@39 T@Field_35865_35866) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34023 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_34023_35865 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_34023_35865 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34023 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_34023_35865 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_34054_34055) (v_1@@44 T@FrameType) (q@@40 T@Field_34054_34055) (w@@44 T@FrameType) (r@@40 T@Field_34945_34946) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34023 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_34023_34945 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_34023_34945 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34023 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_34023_34945 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_34054_34055) (v_1@@45 T@FrameType) (q@@41 T@Field_34054_34055) (w@@45 T@FrameType) (r@@41 T@Field_34054_34055) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34023 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_34023_34023 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_34023_34023 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34023 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_34023_34023 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_34054_34055) (v_1@@46 T@FrameType) (q@@42 T@Field_34054_34055) (w@@46 T@FrameType) (r@@42 T@Field_17301_17332) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34023 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_34023_27923 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_34023_27923 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34023 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_34023_27923 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_34054_34055) (v_1@@47 T@FrameType) (q@@43 T@Field_17301_17332) (w@@47 T@FrameType) (r@@43 T@Field_35865_35866) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_27923 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_27923_35865 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_34023_35865 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_27923 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_27923_35865 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_34054_34055) (v_1@@48 T@FrameType) (q@@44 T@Field_17301_17332) (w@@48 T@FrameType) (r@@44 T@Field_34945_34946) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_27923 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_27923_34945 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_34023_34945 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_27923 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_27923_34945 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_34054_34055) (v_1@@49 T@FrameType) (q@@45 T@Field_17301_17332) (w@@49 T@FrameType) (r@@45 T@Field_34054_34055) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_27923 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_27923_34023 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_34023_34023 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_27923 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_27923_34023 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_34054_34055) (v_1@@50 T@FrameType) (q@@46 T@Field_17301_17332) (w@@50 T@FrameType) (r@@46 T@Field_17301_17332) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_27923 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_27923_27923 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_34023_27923 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_27923 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_27923_27923 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_17301_17332) (v_1@@51 T@FrameType) (q@@47 T@Field_35865_35866) (w@@51 T@FrameType) (r@@47 T@Field_35865_35866) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_35865 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_35865_35865 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_27923_35865 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_35865 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_35865_35865 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_17301_17332) (v_1@@52 T@FrameType) (q@@48 T@Field_35865_35866) (w@@52 T@FrameType) (r@@48 T@Field_34945_34946) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_35865 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_35865_34945 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_27923_34945 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_35865 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_35865_34945 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_17301_17332) (v_1@@53 T@FrameType) (q@@49 T@Field_35865_35866) (w@@53 T@FrameType) (r@@49 T@Field_34054_34055) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_35865 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_35865_34023 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_27923_34023 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_35865 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_35865_34023 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_17301_17332) (v_1@@54 T@FrameType) (q@@50 T@Field_35865_35866) (w@@54 T@FrameType) (r@@50 T@Field_17301_17332) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_35865 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_35865_27923 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_27923_27923 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_35865 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_35865_27923 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_17301_17332) (v_1@@55 T@FrameType) (q@@51 T@Field_34945_34946) (w@@55 T@FrameType) (r@@51 T@Field_35865_35866) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34945 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_34945_35865 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_27923_35865 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34945 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_34945_35865 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_17301_17332) (v_1@@56 T@FrameType) (q@@52 T@Field_34945_34946) (w@@56 T@FrameType) (r@@52 T@Field_34945_34946) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34945 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_34945_34945 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_27923_34945 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34945 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_34945_34945 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_17301_17332) (v_1@@57 T@FrameType) (q@@53 T@Field_34945_34946) (w@@57 T@FrameType) (r@@53 T@Field_34054_34055) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34945 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_34945_34023 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_27923_34023 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34945 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_34945_34023 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_17301_17332) (v_1@@58 T@FrameType) (q@@54 T@Field_34945_34946) (w@@58 T@FrameType) (r@@54 T@Field_17301_17332) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34945 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_34945_27923 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_27923_27923 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34945 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_34945_27923 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_17301_17332) (v_1@@59 T@FrameType) (q@@55 T@Field_34054_34055) (w@@59 T@FrameType) (r@@55 T@Field_35865_35866) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34023 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_34023_35865 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_27923_35865 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34023 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_34023_35865 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_17301_17332) (v_1@@60 T@FrameType) (q@@56 T@Field_34054_34055) (w@@60 T@FrameType) (r@@56 T@Field_34945_34946) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34023 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_34023_34945 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_27923_34945 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34023 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_34023_34945 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_17301_17332) (v_1@@61 T@FrameType) (q@@57 T@Field_34054_34055) (w@@61 T@FrameType) (r@@57 T@Field_34054_34055) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34023 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_34023_34023 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_27923_34023 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34023 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_34023_34023 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_17301_17332) (v_1@@62 T@FrameType) (q@@58 T@Field_34054_34055) (w@@62 T@FrameType) (r@@58 T@Field_17301_17332) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34023 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_34023_27923 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_27923_27923 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34023 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_34023_27923 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_17301_17332) (v_1@@63 T@FrameType) (q@@59 T@Field_17301_17332) (w@@63 T@FrameType) (r@@59 T@Field_35865_35866) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_27923 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_27923_35865 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_27923_35865 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_27923 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_27923_35865 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_17301_17332) (v_1@@64 T@FrameType) (q@@60 T@Field_17301_17332) (w@@64 T@FrameType) (r@@60 T@Field_34945_34946) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_27923 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_27923_34945 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_27923_34945 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_27923 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_27923_34945 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_17301_17332) (v_1@@65 T@FrameType) (q@@61 T@Field_17301_17332) (w@@65 T@FrameType) (r@@61 T@Field_34054_34055) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_27923 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_27923_34023 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_27923_34023 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_27923 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_27923_34023 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_17301_17332) (v_1@@66 T@FrameType) (q@@62 T@Field_17301_17332) (w@@66 T@FrameType) (r@@62 T@Field_17301_17332) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_27923 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_27923_27923 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_27923_27923 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_27923 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_27923_27923 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 Bool) (arg4@@1 T@Ref) (arg5@@1 Real) (arg6@@1 T@Ref) (arg7@@1 Int) ) (! (IsWandField_17243_3575 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
 :qid |stdinbpl.620:15|
 :skolemid |58|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 Bool) (arg4@@2 T@Ref) (arg5@@2 Real) (arg6@@2 T@Ref) (arg7@@2 Int) ) (! (IsWandField_17258_17259 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
 :qid |stdinbpl.624:15|
 :skolemid |59|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 Bool) (arg4@@3 T@Ref) (arg5@@3 Real) (arg6@@3 T@Ref) (arg7@@3 Int) ) (!  (not (IsPredicateField_17243_3575 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3)))
 :qid |stdinbpl.628:15|
 :skolemid |60|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 Bool) (arg4@@4 T@Ref) (arg5@@4 Real) (arg6@@4 T@Ref) (arg7@@4 Int) ) (!  (not (IsPredicateField_17258_17259 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4)))
 :qid |stdinbpl.632:15|
 :skolemid |61|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4))
)))
(assert (forall ((s@@31 T@Seq_36838) ) (!  (=> (= (|Seq#Length_36838| s@@31) 0) (= s@@31 |Seq#Empty_36838|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_36838| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3424) ) (!  (=> (= (|Seq#Length_3424| s@@32) 0) (= s@@32 |Seq#Empty_3424|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3424| s@@32))
)))
(assert (forall ((s@@33 T@Seq_36838) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_36838| s@@33 n@@25) |Seq#Empty_36838|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_36838| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3424) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3424| s@@34 n@@26) |Seq#Empty_3424|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3424| s@@34 n@@26))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 Bool) (arg4@@5 T@Ref) (arg5@@5 Real) (arg6@@5 T@Ref) (arg7@@5 Int) ) (! (= (getPredWandId_17243_3575 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5)) 2)
 :qid |stdinbpl.640:15|
 :skolemid |63|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |p1#definedness|)
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
(declare-sort T@Field_27923_53 0)
(declare-sort T@Field_27936_27937 0)
(declare-sort T@Field_35865_35866 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_34868_4039 0)
(declare-sort T@Field_35878_35883 0)
(declare-sort T@Field_34945_34946 0)
(declare-sort T@Field_34958_34963 0)
(declare-sort T@Field_34037_34042 0)
(declare-sort T@Field_17301_17332 0)
(declare-sort T@Field_17301_34042 0)
(declare-sort T@Field_17331_4039 0)
(declare-sort T@Field_17331_53 0)
(declare-sort T@Field_17331_27937 0)
(declare-sort T@Field_17306_4039 0)
(declare-sort T@Field_17306_53 0)
(declare-sort T@Field_17306_27937 0)
(declare-sort T@Field_34023_3575 0)
(declare-sort T@Field_34054_34055 0)
(declare-sort T@Field_34023_53 0)
(declare-sort T@Field_34023_27937 0)
(declare-datatypes ((T@PolymorphicMapType_27884 0)) (((PolymorphicMapType_27884 (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| (Array T@Ref T@Field_34868_4039 Real)) (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| (Array T@Ref T@Field_35865_35866 Real)) (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| (Array T@Ref T@Field_34945_34946 Real)) (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| (Array T@Ref T@Field_34023_3575 Real)) (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| (Array T@Ref T@Field_17301_17332 Real)) (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| (Array T@Ref T@Field_27923_53 Real)) (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| (Array T@Ref T@Field_27936_27937 Real)) (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| (Array T@Ref T@Field_17301_34042 Real)) (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| (Array T@Ref T@Field_17331_4039 Real)) (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| (Array T@Ref T@Field_17331_53 Real)) (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| (Array T@Ref T@Field_17331_27937 Real)) (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| (Array T@Ref T@Field_35878_35883 Real)) (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| (Array T@Ref T@Field_17306_4039 Real)) (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| (Array T@Ref T@Field_17306_53 Real)) (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| (Array T@Ref T@Field_17306_27937 Real)) (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| (Array T@Ref T@Field_34958_34963 Real)) (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| (Array T@Ref T@Field_34054_34055 Real)) (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| (Array T@Ref T@Field_34023_53 Real)) (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| (Array T@Ref T@Field_34023_27937 Real)) (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| (Array T@Ref T@Field_34037_34042 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_28412 0)) (((PolymorphicMapType_28412 (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (Array T@Ref T@Field_34868_4039 Bool)) (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (Array T@Ref T@Field_27923_53 Bool)) (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (Array T@Ref T@Field_27936_27937 Bool)) (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (Array T@Ref T@Field_17301_34042 Bool)) (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (Array T@Ref T@Field_17301_17332 Bool)) (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (Array T@Ref T@Field_34023_3575 Bool)) (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (Array T@Ref T@Field_34023_53 Bool)) (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (Array T@Ref T@Field_34023_27937 Bool)) (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (Array T@Ref T@Field_34037_34042 Bool)) (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (Array T@Ref T@Field_34054_34055 Bool)) (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (Array T@Ref T@Field_17306_4039 Bool)) (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (Array T@Ref T@Field_17306_53 Bool)) (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (Array T@Ref T@Field_17306_27937 Bool)) (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (Array T@Ref T@Field_34958_34963 Bool)) (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (Array T@Ref T@Field_34945_34946 Bool)) (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (Array T@Ref T@Field_17331_4039 Bool)) (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (Array T@Ref T@Field_17331_53 Bool)) (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (Array T@Ref T@Field_17331_27937 Bool)) (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (Array T@Ref T@Field_35878_35883 Bool)) (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (Array T@Ref T@Field_35865_35866 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27863 0)) (((PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| (Array T@Ref T@Field_27923_53 Bool)) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| (Array T@Ref T@Field_27936_27937 T@Ref)) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| (Array T@Ref T@Field_35865_35866 T@FrameType)) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| (Array T@Ref T@Field_34868_4039 Int)) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| (Array T@Ref T@Field_35878_35883 T@PolymorphicMapType_28412)) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| (Array T@Ref T@Field_34945_34946 T@FrameType)) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| (Array T@Ref T@Field_34958_34963 T@PolymorphicMapType_28412)) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| (Array T@Ref T@Field_34037_34042 T@PolymorphicMapType_28412)) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| (Array T@Ref T@Field_17301_17332 T@FrameType)) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| (Array T@Ref T@Field_17301_34042 T@PolymorphicMapType_28412)) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| (Array T@Ref T@Field_17331_4039 Int)) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| (Array T@Ref T@Field_17331_53 Bool)) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| (Array T@Ref T@Field_17331_27937 T@Ref)) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| (Array T@Ref T@Field_17306_4039 Int)) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| (Array T@Ref T@Field_17306_53 Bool)) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| (Array T@Ref T@Field_17306_27937 T@Ref)) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| (Array T@Ref T@Field_34023_3575 Int)) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| (Array T@Ref T@Field_34054_34055 T@FrameType)) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| (Array T@Ref T@Field_34023_53 Bool)) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| (Array T@Ref T@Field_34023_27937 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_27923_53)
(declare-fun f_7 () T@Field_34868_4039)
(declare-fun g () T@Field_34868_4039)
(declare-sort T@Seq_36838 0)
(declare-fun |Seq#Length_36838| (T@Seq_36838) Int)
(declare-fun |Seq#Drop_36838| (T@Seq_36838 Int) T@Seq_36838)
(declare-sort T@Seq_3424 0)
(declare-fun |Seq#Length_3424| (T@Seq_3424) Int)
(declare-fun |Seq#Drop_3424| (T@Seq_3424 Int) T@Seq_3424)
(declare-fun succHeap (T@PolymorphicMapType_27863 T@PolymorphicMapType_27863) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_27863 T@PolymorphicMapType_27863) Bool)
(declare-fun state (T@PolymorphicMapType_27863 T@PolymorphicMapType_27884) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_27884) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_28412)
(declare-fun p2 (T@Ref Int) T@Field_35865_35866)
(declare-fun IsPredicateField_17331_17332 (T@Field_35865_35866) Bool)
(declare-fun |p2#trigger_17331| (T@PolymorphicMapType_27863 T@Field_35865_35866) Bool)
(declare-fun |p2#everUsed_17331| (T@Field_35865_35866) Bool)
(declare-fun |Seq#Index_36838| (T@Seq_36838 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3424| (T@Seq_3424 Int) Int)
(declare-fun |Seq#Empty_36838| () T@Seq_36838)
(declare-fun |Seq#Empty_3424| () T@Seq_3424)
(declare-fun p1 (T@Ref) T@Field_34945_34946)
(declare-fun IsPredicateField_17306_17307 (T@Field_34945_34946) Bool)
(declare-fun |p1#trigger_17306| (T@PolymorphicMapType_27863 T@Field_34945_34946) Bool)
(declare-fun |p1#everUsed_17306| (T@Field_34945_34946) Bool)
(declare-fun |Seq#Update_36838| (T@Seq_36838 Int T@Ref) T@Seq_36838)
(declare-fun |Seq#Update_3424| (T@Seq_3424 Int Int) T@Seq_3424)
(declare-fun |Seq#Take_36838| (T@Seq_36838 Int) T@Seq_36838)
(declare-fun |Seq#Take_3424| (T@Seq_3424 Int) T@Seq_3424)
(declare-fun |Seq#Contains_3424| (T@Seq_3424 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3424)
(declare-fun |Seq#Contains_17359| (T@Seq_36838 T@Ref) Bool)
(declare-fun |Seq#Skolem_17359| (T@Seq_36838 T@Ref) Int)
(declare-fun |Seq#Skolem_3424| (T@Seq_3424 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_27863 T@PolymorphicMapType_27863 T@PolymorphicMapType_27884) Bool)
(declare-fun IsPredicateField_17258_17259 (T@Field_34054_34055) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_34023 (T@Field_34054_34055) T@Field_34037_34042)
(declare-fun HasDirectPerm_34023_17332 (T@PolymorphicMapType_27884 T@Ref T@Field_34054_34055) Bool)
(declare-fun PredicateMaskField_17306 (T@Field_34945_34946) T@Field_34958_34963)
(declare-fun HasDirectPerm_17306_17307 (T@PolymorphicMapType_27884 T@Ref T@Field_34945_34946) Bool)
(declare-fun PredicateMaskField_17331 (T@Field_35865_35866) T@Field_35878_35883)
(declare-fun HasDirectPerm_17331_17332 (T@PolymorphicMapType_27884 T@Ref T@Field_35865_35866) Bool)
(declare-fun IsPredicateField_17301_91021 (T@Field_17301_17332) Bool)
(declare-fun PredicateMaskField_17301 (T@Field_17301_17332) T@Field_17301_34042)
(declare-fun HasDirectPerm_17301_17332 (T@PolymorphicMapType_27884 T@Ref T@Field_17301_17332) Bool)
(declare-fun IsWandField_17258_17259 (T@Field_34054_34055) Bool)
(declare-fun WandMaskField_17258 (T@Field_34054_34055) T@Field_34037_34042)
(declare-fun IsWandField_17306_98396 (T@Field_34945_34946) Bool)
(declare-fun WandMaskField_17306 (T@Field_34945_34946) T@Field_34958_34963)
(declare-fun IsWandField_17331_98039 (T@Field_35865_35866) Bool)
(declare-fun WandMaskField_17331 (T@Field_35865_35866) T@Field_35878_35883)
(declare-fun IsWandField_17301_97682 (T@Field_17301_17332) Bool)
(declare-fun WandMaskField_17301 (T@Field_17301_17332) T@Field_17301_34042)
(declare-fun |Seq#Singleton_36838| (T@Ref) T@Seq_36838)
(declare-fun |Seq#Singleton_3424| (Int) T@Seq_3424)
(declare-fun |p2#sm| (T@Ref Int) T@Field_35878_35883)
(declare-fun |p1#sm| (T@Ref) T@Field_34958_34963)
(declare-fun |Seq#Append_36838| (T@Seq_36838 T@Seq_36838) T@Seq_36838)
(declare-fun |Seq#Append_3424| (T@Seq_3424 T@Seq_3424) T@Seq_3424)
(declare-fun dummyHeap () T@PolymorphicMapType_27863)
(declare-fun ZeroMask () T@PolymorphicMapType_27884)
(declare-fun InsidePredicate_35865_35865 (T@Field_35865_35866 T@FrameType T@Field_35865_35866 T@FrameType) Bool)
(declare-fun InsidePredicate_34945_34945 (T@Field_34945_34946 T@FrameType T@Field_34945_34946 T@FrameType) Bool)
(declare-fun InsidePredicate_34023_34023 (T@Field_34054_34055 T@FrameType T@Field_34054_34055 T@FrameType) Bool)
(declare-fun InsidePredicate_27923_27923 (T@Field_17301_17332 T@FrameType T@Field_17301_17332 T@FrameType) Bool)
(declare-fun IsPredicateField_17301_4039 (T@Field_34868_4039) Bool)
(declare-fun IsWandField_17301_4039 (T@Field_34868_4039) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17243_112414 (T@Field_34037_34042) Bool)
(declare-fun IsWandField_17243_112430 (T@Field_34037_34042) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_17243_27937 (T@Field_34023_27937) Bool)
(declare-fun IsWandField_17243_27937 (T@Field_34023_27937) Bool)
(declare-fun IsPredicateField_17243_53 (T@Field_34023_53) Bool)
(declare-fun IsWandField_17243_53 (T@Field_34023_53) Bool)
(declare-fun IsPredicateField_17243_3575 (T@Field_34023_3575) Bool)
(declare-fun IsWandField_17243_3575 (T@Field_34023_3575) Bool)
(declare-fun IsPredicateField_17306_111597 (T@Field_34958_34963) Bool)
(declare-fun IsWandField_17306_111613 (T@Field_34958_34963) Bool)
(declare-fun IsPredicateField_17306_27937 (T@Field_17306_27937) Bool)
(declare-fun IsWandField_17306_27937 (T@Field_17306_27937) Bool)
(declare-fun IsPredicateField_17306_53 (T@Field_17306_53) Bool)
(declare-fun IsWandField_17306_53 (T@Field_17306_53) Bool)
(declare-fun IsPredicateField_17306_4054 (T@Field_17306_4039) Bool)
(declare-fun IsWandField_17306_4054 (T@Field_17306_4039) Bool)
(declare-fun IsPredicateField_17331_110766 (T@Field_35878_35883) Bool)
(declare-fun IsWandField_17331_110782 (T@Field_35878_35883) Bool)
(declare-fun IsPredicateField_17331_27937 (T@Field_17331_27937) Bool)
(declare-fun IsWandField_17331_27937 (T@Field_17331_27937) Bool)
(declare-fun IsPredicateField_17331_53 (T@Field_17331_53) Bool)
(declare-fun IsWandField_17331_53 (T@Field_17331_53) Bool)
(declare-fun IsPredicateField_17331_4054 (T@Field_17331_4039) Bool)
(declare-fun IsWandField_17331_4054 (T@Field_17331_4039) Bool)
(declare-fun IsPredicateField_17303_109935 (T@Field_17301_34042) Bool)
(declare-fun IsWandField_17303_109951 (T@Field_17301_34042) Bool)
(declare-fun IsPredicateField_17303_27937 (T@Field_27936_27937) Bool)
(declare-fun IsWandField_17303_27937 (T@Field_27936_27937) Bool)
(declare-fun IsPredicateField_17303_53 (T@Field_27923_53) Bool)
(declare-fun IsWandField_17303_53 (T@Field_27923_53) Bool)
(declare-fun HasDirectPerm_34023_90776 (T@PolymorphicMapType_27884 T@Ref T@Field_34037_34042) Bool)
(declare-fun HasDirectPerm_34023_27937 (T@PolymorphicMapType_27884 T@Ref T@Field_34023_27937) Bool)
(declare-fun HasDirectPerm_34023_53 (T@PolymorphicMapType_27884 T@Ref T@Field_34023_53) Bool)
(declare-fun HasDirectPerm_34023_4039 (T@PolymorphicMapType_27884 T@Ref T@Field_34023_3575) Bool)
(declare-fun HasDirectPerm_17306_89642 (T@PolymorphicMapType_27884 T@Ref T@Field_34958_34963) Bool)
(declare-fun HasDirectPerm_17306_27937 (T@PolymorphicMapType_27884 T@Ref T@Field_17306_27937) Bool)
(declare-fun HasDirectPerm_17306_53 (T@PolymorphicMapType_27884 T@Ref T@Field_17306_53) Bool)
(declare-fun HasDirectPerm_17306_4039 (T@PolymorphicMapType_27884 T@Ref T@Field_17306_4039) Bool)
(declare-fun HasDirectPerm_17331_88544 (T@PolymorphicMapType_27884 T@Ref T@Field_35878_35883) Bool)
(declare-fun HasDirectPerm_17331_27937 (T@PolymorphicMapType_27884 T@Ref T@Field_17331_27937) Bool)
(declare-fun HasDirectPerm_17331_53 (T@PolymorphicMapType_27884 T@Ref T@Field_17331_53) Bool)
(declare-fun HasDirectPerm_17331_4039 (T@PolymorphicMapType_27884 T@Ref T@Field_17331_4039) Bool)
(declare-fun HasDirectPerm_17301_87403 (T@PolymorphicMapType_27884 T@Ref T@Field_17301_34042) Bool)
(declare-fun HasDirectPerm_17301_27937 (T@PolymorphicMapType_27884 T@Ref T@Field_27936_27937) Bool)
(declare-fun HasDirectPerm_17301_53 (T@PolymorphicMapType_27884 T@Ref T@Field_27923_53) Bool)
(declare-fun HasDirectPerm_17301_4039 (T@PolymorphicMapType_27884 T@Ref T@Field_34868_4039) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_27884 T@PolymorphicMapType_27884 T@PolymorphicMapType_27884) Bool)
(declare-fun |Seq#Equal_36838| (T@Seq_36838 T@Seq_36838) Bool)
(declare-fun |Seq#Equal_3424| (T@Seq_3424 T@Seq_3424) Bool)
(declare-fun |Seq#ContainsTrigger_17359| (T@Seq_36838 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3424| (T@Seq_3424 Int) Bool)
(declare-fun getPredWandId_17331_17332 (T@Field_35865_35866) Int)
(declare-fun wand (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_34023_3575)
(declare-fun getPredWandId_17306_17307 (T@Field_34945_34946) Int)
(declare-fun |wand#ft| (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_34054_34055)
(declare-fun |wand#sm| (T@Ref Real Bool T@Ref Real T@Ref Int) T@Field_34037_34042)
(declare-fun |Seq#SkolemDiff_36838| (T@Seq_36838 T@Seq_36838) Int)
(declare-fun |Seq#SkolemDiff_3424| (T@Seq_3424 T@Seq_3424) Int)
(declare-fun InsidePredicate_35865_34945 (T@Field_35865_35866 T@FrameType T@Field_34945_34946 T@FrameType) Bool)
(declare-fun InsidePredicate_35865_34023 (T@Field_35865_35866 T@FrameType T@Field_34054_34055 T@FrameType) Bool)
(declare-fun InsidePredicate_35865_27923 (T@Field_35865_35866 T@FrameType T@Field_17301_17332 T@FrameType) Bool)
(declare-fun InsidePredicate_34945_35865 (T@Field_34945_34946 T@FrameType T@Field_35865_35866 T@FrameType) Bool)
(declare-fun InsidePredicate_34945_34023 (T@Field_34945_34946 T@FrameType T@Field_34054_34055 T@FrameType) Bool)
(declare-fun InsidePredicate_34945_27923 (T@Field_34945_34946 T@FrameType T@Field_17301_17332 T@FrameType) Bool)
(declare-fun InsidePredicate_34023_35865 (T@Field_34054_34055 T@FrameType T@Field_35865_35866 T@FrameType) Bool)
(declare-fun InsidePredicate_34023_34945 (T@Field_34054_34055 T@FrameType T@Field_34945_34946 T@FrameType) Bool)
(declare-fun InsidePredicate_34023_27923 (T@Field_34054_34055 T@FrameType T@Field_17301_17332 T@FrameType) Bool)
(declare-fun InsidePredicate_27923_35865 (T@Field_17301_17332 T@FrameType T@Field_35865_35866 T@FrameType) Bool)
(declare-fun InsidePredicate_27923_34945 (T@Field_17301_17332 T@FrameType T@Field_34945_34946 T@FrameType) Bool)
(declare-fun InsidePredicate_27923_34023 (T@Field_17301_17332 T@FrameType T@Field_34054_34055 T@FrameType) Bool)
(declare-fun getPredWandId_17243_3575 (T@Field_34023_3575) Int)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_36838) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_36838| s)) (= (|Seq#Length_36838| (|Seq#Drop_36838| s n)) (- (|Seq#Length_36838| s) n))) (=> (< (|Seq#Length_36838| s) n) (= (|Seq#Length_36838| (|Seq#Drop_36838| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_36838| (|Seq#Drop_36838| s n)) (|Seq#Length_36838| s))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_36838| (|Seq#Drop_36838| s n)))
 :pattern ( (|Seq#Length_36838| s) (|Seq#Drop_36838| s n))
)))
(assert (forall ((s@@0 T@Seq_3424) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3424| s@@0)) (= (|Seq#Length_3424| (|Seq#Drop_3424| s@@0 n@@0)) (- (|Seq#Length_3424| s@@0) n@@0))) (=> (< (|Seq#Length_3424| s@@0) n@@0) (= (|Seq#Length_3424| (|Seq#Drop_3424| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3424| (|Seq#Drop_3424| s@@0 n@@0)) (|Seq#Length_3424| s@@0))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3424| (|Seq#Drop_3424| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3424| s@@0) (|Seq#Drop_3424| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_27863) (Heap1 T@PolymorphicMapType_27863) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_27863) (Mask T@PolymorphicMapType_27884) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_27863) (Heap1@@0 T@PolymorphicMapType_27863) (Heap2 T@PolymorphicMapType_27863) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_35865_35866) ) (!  (not (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_35878_35883) ) (!  (not (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17331_27937) ) (!  (not (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17331_53) ) (!  (not (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17331_4039) ) (!  (not (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_34945_34946) ) (!  (not (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_34958_34963) ) (!  (not (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_17306_27937) ) (!  (not (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_17306_53) ) (!  (not (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_17306_4039) ) (!  (not (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_34054_34055) ) (!  (not (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_34037_34042) ) (!  (not (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_34023_27937) ) (!  (not (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_34023_53) ) (!  (not (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_34023_3575) ) (!  (not (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17301_17332) ) (!  (not (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17301_34042) ) (!  (not (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_27936_27937) ) (!  (not (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_27923_53) ) (!  (not (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_34868_4039) ) (!  (not (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((a_2 T@Ref) (b_24 Int) ) (! (IsPredicateField_17331_17332 (p2 a_2 b_24))
 :qid |stdinbpl.725:15|
 :skolemid |72|
 :pattern ( (p2 a_2 b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_27863) (a_2@@0 T@Ref) (b_24@@0 Int) ) (! (|p2#everUsed_17331| (p2 a_2@@0 b_24@@0))
 :qid |stdinbpl.744:15|
 :skolemid |76|
 :pattern ( (|p2#trigger_17331| Heap@@0 (p2 a_2@@0 b_24@@0)))
)))
(assert (forall ((s@@1 T@Seq_36838) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_36838| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_36838| (|Seq#Drop_36838| s@@1 n@@1) j) (|Seq#Index_36838| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_36838| (|Seq#Drop_36838| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3424) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3424| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3424| (|Seq#Drop_3424| s@@2 n@@2) j@@0) (|Seq#Index_3424| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3424| (|Seq#Drop_3424| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_36838| |Seq#Empty_36838|) 0))
(assert (= (|Seq#Length_3424| |Seq#Empty_3424|) 0))
(assert (forall ((a_2@@1 T@Ref) ) (! (IsPredicateField_17306_17307 (p1 a_2@@1))
 :qid |stdinbpl.671:15|
 :skolemid |66|
 :pattern ( (p1 a_2@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_27863) (a_2@@2 T@Ref) ) (! (|p1#everUsed_17306| (p1 a_2@@2))
 :qid |stdinbpl.690:15|
 :skolemid |70|
 :pattern ( (|p1#trigger_17306| Heap@@1 (p1 a_2@@2)))
)))
(assert (forall ((s@@3 T@Seq_36838) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_36838| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_36838| (|Seq#Update_36838| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_36838| (|Seq#Update_36838| s@@3 i v) n@@3) (|Seq#Index_36838| s@@3 n@@3)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_36838| (|Seq#Update_36838| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_36838| s@@3 n@@3) (|Seq#Update_36838| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3424) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3424| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3424| (|Seq#Update_3424| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3424| (|Seq#Update_3424| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3424| s@@4 n@@4)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3424| (|Seq#Update_3424| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3424| s@@4 n@@4) (|Seq#Update_3424| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_36838) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_36838| s@@5)) (= (|Seq#Length_36838| (|Seq#Take_36838| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_36838| s@@5) n@@5) (= (|Seq#Length_36838| (|Seq#Take_36838| s@@5 n@@5)) (|Seq#Length_36838| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_36838| (|Seq#Take_36838| s@@5 n@@5)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_36838| (|Seq#Take_36838| s@@5 n@@5)))
 :pattern ( (|Seq#Take_36838| s@@5 n@@5) (|Seq#Length_36838| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3424) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3424| s@@6)) (= (|Seq#Length_3424| (|Seq#Take_3424| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3424| s@@6) n@@6) (= (|Seq#Length_3424| (|Seq#Take_3424| s@@6 n@@6)) (|Seq#Length_3424| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3424| (|Seq#Take_3424| s@@6 n@@6)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3424| (|Seq#Take_3424| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3424| s@@6 n@@6) (|Seq#Length_3424| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3424| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.606:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3424| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_36838) (x T@Ref) ) (!  (=> (|Seq#Contains_17359| s@@7 x) (and (and (<= 0 (|Seq#Skolem_17359| s@@7 x)) (< (|Seq#Skolem_17359| s@@7 x) (|Seq#Length_36838| s@@7))) (= (|Seq#Index_36838| s@@7 (|Seq#Skolem_17359| s@@7 x)) x)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_17359| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3424) (x@@0 Int) ) (!  (=> (|Seq#Contains_3424| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3424| s@@8 x@@0)) (< (|Seq#Skolem_3424| s@@8 x@@0) (|Seq#Length_3424| s@@8))) (= (|Seq#Index_3424| s@@8 (|Seq#Skolem_3424| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3424| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_36838) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_36838| s@@9 n@@7) s@@9))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_36838| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3424) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3424| s@@10 n@@8) s@@10))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3424| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.301:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.299:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_27863) (ExhaleHeap T@PolymorphicMapType_27863) (Mask@@0 T@PolymorphicMapType_27884) (pm_f_7 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_34023_17332 Mask@@0 null pm_f_7) (IsPredicateField_17258_17259 pm_f_7)) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@2) null (PredicateMaskField_34023 pm_f_7)) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap) null (PredicateMaskField_34023 pm_f_7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_17258_17259 pm_f_7) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap) null (PredicateMaskField_34023 pm_f_7)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_27863) (ExhaleHeap@@0 T@PolymorphicMapType_27863) (Mask@@1 T@PolymorphicMapType_27884) (pm_f_7@@0 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17306_17307 Mask@@1 null pm_f_7@@0) (IsPredicateField_17306_17307 pm_f_7@@0)) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@3) null (PredicateMaskField_17306 pm_f_7@@0)) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@0) null (PredicateMaskField_17306 pm_f_7@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_17306_17307 pm_f_7@@0) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@0) null (PredicateMaskField_17306 pm_f_7@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_27863) (ExhaleHeap@@1 T@PolymorphicMapType_27863) (Mask@@2 T@PolymorphicMapType_27884) (pm_f_7@@1 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_17331_17332 Mask@@2 null pm_f_7@@1) (IsPredicateField_17331_17332 pm_f_7@@1)) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@4) null (PredicateMaskField_17331 pm_f_7@@1)) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@1) null (PredicateMaskField_17331 pm_f_7@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_17331_17332 pm_f_7@@1) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@1) null (PredicateMaskField_17331 pm_f_7@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_27863) (ExhaleHeap@@2 T@PolymorphicMapType_27863) (Mask@@3 T@PolymorphicMapType_27884) (pm_f_7@@2 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_17301_17332 Mask@@3 null pm_f_7@@2) (IsPredicateField_17301_91021 pm_f_7@@2)) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@5) null (PredicateMaskField_17301 pm_f_7@@2)) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@2) null (PredicateMaskField_17301 pm_f_7@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_17301_91021 pm_f_7@@2) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@2) null (PredicateMaskField_17301 pm_f_7@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_27863) (ExhaleHeap@@3 T@PolymorphicMapType_27863) (Mask@@4 T@PolymorphicMapType_27884) (pm_f_7@@3 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_34023_17332 Mask@@4 null pm_f_7@@3) (IsWandField_17258_17259 pm_f_7@@3)) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@6) null (WandMaskField_17258 pm_f_7@@3)) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@3) null (WandMaskField_17258 pm_f_7@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_17258_17259 pm_f_7@@3) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@3) null (WandMaskField_17258 pm_f_7@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_27863) (ExhaleHeap@@4 T@PolymorphicMapType_27863) (Mask@@5 T@PolymorphicMapType_27884) (pm_f_7@@4 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_17306_17307 Mask@@5 null pm_f_7@@4) (IsWandField_17306_98396 pm_f_7@@4)) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@7) null (WandMaskField_17306 pm_f_7@@4)) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@4) null (WandMaskField_17306 pm_f_7@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_17306_98396 pm_f_7@@4) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@4) null (WandMaskField_17306 pm_f_7@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_27863) (ExhaleHeap@@5 T@PolymorphicMapType_27863) (Mask@@6 T@PolymorphicMapType_27884) (pm_f_7@@5 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_17331_17332 Mask@@6 null pm_f_7@@5) (IsWandField_17331_98039 pm_f_7@@5)) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@8) null (WandMaskField_17331 pm_f_7@@5)) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@5) null (WandMaskField_17331 pm_f_7@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_17331_98039 pm_f_7@@5) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@5) null (WandMaskField_17331 pm_f_7@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_27863) (ExhaleHeap@@6 T@PolymorphicMapType_27863) (Mask@@7 T@PolymorphicMapType_27884) (pm_f_7@@6 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_17301_17332 Mask@@7 null pm_f_7@@6) (IsWandField_17301_97682 pm_f_7@@6)) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@9) null (WandMaskField_17301 pm_f_7@@6)) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@6) null (WandMaskField_17301 pm_f_7@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_17301_97682 pm_f_7@@6) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@6) null (WandMaskField_17301 pm_f_7@@6)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_17359| (|Seq#Singleton_36838| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_17359| (|Seq#Singleton_36838| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3424| (|Seq#Singleton_3424| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3424| (|Seq#Singleton_3424| x@@2) y@@0))
)))
(assert (forall ((a_2@@3 T@Ref) (b_24@@1 Int) (a2 T@Ref) (b2 Int) ) (!  (=> (= (p2 a_2@@3 b_24@@1) (p2 a2 b2)) (and (= a_2@@3 a2) (= b_24@@1 b2)))
 :qid |stdinbpl.735:15|
 :skolemid |74|
 :pattern ( (p2 a_2@@3 b_24@@1) (p2 a2 b2))
)))
(assert (forall ((a_2@@4 T@Ref) (b_24@@2 Int) (a2@@0 T@Ref) (b2@@0 Int) ) (!  (=> (= (|p2#sm| a_2@@4 b_24@@2) (|p2#sm| a2@@0 b2@@0)) (and (= a_2@@4 a2@@0) (= b_24@@2 b2@@0)))
 :qid |stdinbpl.739:15|
 :skolemid |75|
 :pattern ( (|p2#sm| a_2@@4 b_24@@2) (|p2#sm| a2@@0 b2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_27863) (ExhaleHeap@@7 T@PolymorphicMapType_27863) (Mask@@8 T@PolymorphicMapType_27884) (pm_f_7@@7 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_34023_17332 Mask@@8 null pm_f_7@@7) (IsPredicateField_17258_17259 pm_f_7@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7 T@Ref) (f_27 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7 f_27) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@10) o2_7 f_27) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7 f_27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7 f_27))
)) (forall ((o2_7@@0 T@Ref) (f_27@@0 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@0 f_27@@0) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@10) o2_7@@0 f_27@@0) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@0 f_27@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@0 f_27@@0))
))) (forall ((o2_7@@1 T@Ref) (f_27@@1 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@1 f_27@@1) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@10) o2_7@@1 f_27@@1) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@1 f_27@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@1 f_27@@1))
))) (forall ((o2_7@@2 T@Ref) (f_27@@2 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@2 f_27@@2) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@10) o2_7@@2 f_27@@2) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@2 f_27@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@2 f_27@@2))
))) (forall ((o2_7@@3 T@Ref) (f_27@@3 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@3 f_27@@3) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@10) o2_7@@3 f_27@@3) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@3 f_27@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@3 f_27@@3))
))) (forall ((o2_7@@4 T@Ref) (f_27@@4 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@4 f_27@@4) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@10) o2_7@@4 f_27@@4) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@4 f_27@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@4 f_27@@4))
))) (forall ((o2_7@@5 T@Ref) (f_27@@5 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@5 f_27@@5) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@10) o2_7@@5 f_27@@5) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@5 f_27@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@5 f_27@@5))
))) (forall ((o2_7@@6 T@Ref) (f_27@@6 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@6 f_27@@6) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@10) o2_7@@6 f_27@@6) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@6 f_27@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@6 f_27@@6))
))) (forall ((o2_7@@7 T@Ref) (f_27@@7 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@7 f_27@@7) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) o2_7@@7 f_27@@7) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@7 f_27@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@7 f_27@@7))
))) (forall ((o2_7@@8 T@Ref) (f_27@@8 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@8 f_27@@8) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@10) o2_7@@8 f_27@@8) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@8 f_27@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@8 f_27@@8))
))) (forall ((o2_7@@9 T@Ref) (f_27@@9 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@9 f_27@@9) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@10) o2_7@@9 f_27@@9) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@9 f_27@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@9 f_27@@9))
))) (forall ((o2_7@@10 T@Ref) (f_27@@10 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@10 f_27@@10) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@10) o2_7@@10 f_27@@10) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@10 f_27@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@10 f_27@@10))
))) (forall ((o2_7@@11 T@Ref) (f_27@@11 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@11 f_27@@11) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@10) o2_7@@11 f_27@@11) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@11 f_27@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@11 f_27@@11))
))) (forall ((o2_7@@12 T@Ref) (f_27@@12 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@12 f_27@@12) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@10) o2_7@@12 f_27@@12) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@12 f_27@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@12 f_27@@12))
))) (forall ((o2_7@@13 T@Ref) (f_27@@13 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@13 f_27@@13) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@10) o2_7@@13 f_27@@13) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@13 f_27@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@13 f_27@@13))
))) (forall ((o2_7@@14 T@Ref) (f_27@@14 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@14 f_27@@14) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@10) o2_7@@14 f_27@@14) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@14 f_27@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@14 f_27@@14))
))) (forall ((o2_7@@15 T@Ref) (f_27@@15 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@15 f_27@@15) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@10) o2_7@@15 f_27@@15) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@15 f_27@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@15 f_27@@15))
))) (forall ((o2_7@@16 T@Ref) (f_27@@16 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@16 f_27@@16) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@10) o2_7@@16 f_27@@16) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@16 f_27@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@16 f_27@@16))
))) (forall ((o2_7@@17 T@Ref) (f_27@@17 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@17 f_27@@17) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@10) o2_7@@17 f_27@@17) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@17 f_27@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@17 f_27@@17))
))) (forall ((o2_7@@18 T@Ref) (f_27@@18 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@10) null (PredicateMaskField_34023 pm_f_7@@7))) o2_7@@18 f_27@@18) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@10) o2_7@@18 f_27@@18) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@18 f_27@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@7) o2_7@@18 f_27@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_17258_17259 pm_f_7@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_27863) (ExhaleHeap@@8 T@PolymorphicMapType_27863) (Mask@@9 T@PolymorphicMapType_27884) (pm_f_7@@8 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_17306_17307 Mask@@9 null pm_f_7@@8) (IsPredicateField_17306_17307 pm_f_7@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@19 T@Ref) (f_27@@19 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@19 f_27@@19) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@11) o2_7@@19 f_27@@19) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@19 f_27@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@19 f_27@@19))
)) (forall ((o2_7@@20 T@Ref) (f_27@@20 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@20 f_27@@20) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@11) o2_7@@20 f_27@@20) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@20 f_27@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@20 f_27@@20))
))) (forall ((o2_7@@21 T@Ref) (f_27@@21 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@21 f_27@@21) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@11) o2_7@@21 f_27@@21) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@21 f_27@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@21 f_27@@21))
))) (forall ((o2_7@@22 T@Ref) (f_27@@22 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@22 f_27@@22) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@11) o2_7@@22 f_27@@22) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@22 f_27@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@22 f_27@@22))
))) (forall ((o2_7@@23 T@Ref) (f_27@@23 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@23 f_27@@23) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@11) o2_7@@23 f_27@@23) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@23 f_27@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@23 f_27@@23))
))) (forall ((o2_7@@24 T@Ref) (f_27@@24 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@24 f_27@@24) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@11) o2_7@@24 f_27@@24) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@24 f_27@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@24 f_27@@24))
))) (forall ((o2_7@@25 T@Ref) (f_27@@25 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@25 f_27@@25) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@11) o2_7@@25 f_27@@25) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@25 f_27@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@25 f_27@@25))
))) (forall ((o2_7@@26 T@Ref) (f_27@@26 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@26 f_27@@26) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@11) o2_7@@26 f_27@@26) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@26 f_27@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@26 f_27@@26))
))) (forall ((o2_7@@27 T@Ref) (f_27@@27 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@27 f_27@@27) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@11) o2_7@@27 f_27@@27) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@27 f_27@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@27 f_27@@27))
))) (forall ((o2_7@@28 T@Ref) (f_27@@28 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@28 f_27@@28) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@11) o2_7@@28 f_27@@28) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@28 f_27@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@28 f_27@@28))
))) (forall ((o2_7@@29 T@Ref) (f_27@@29 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@29 f_27@@29) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@11) o2_7@@29 f_27@@29) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@29 f_27@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@29 f_27@@29))
))) (forall ((o2_7@@30 T@Ref) (f_27@@30 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@30 f_27@@30) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@11) o2_7@@30 f_27@@30) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@30 f_27@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@30 f_27@@30))
))) (forall ((o2_7@@31 T@Ref) (f_27@@31 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@31 f_27@@31) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@11) o2_7@@31 f_27@@31) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@31 f_27@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@31 f_27@@31))
))) (forall ((o2_7@@32 T@Ref) (f_27@@32 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@32 f_27@@32) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) o2_7@@32 f_27@@32) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@32 f_27@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@32 f_27@@32))
))) (forall ((o2_7@@33 T@Ref) (f_27@@33 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@33 f_27@@33) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@11) o2_7@@33 f_27@@33) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@33 f_27@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@33 f_27@@33))
))) (forall ((o2_7@@34 T@Ref) (f_27@@34 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@34 f_27@@34) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@11) o2_7@@34 f_27@@34) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@34 f_27@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@34 f_27@@34))
))) (forall ((o2_7@@35 T@Ref) (f_27@@35 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@35 f_27@@35) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@11) o2_7@@35 f_27@@35) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@35 f_27@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@35 f_27@@35))
))) (forall ((o2_7@@36 T@Ref) (f_27@@36 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@36 f_27@@36) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@11) o2_7@@36 f_27@@36) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@36 f_27@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@36 f_27@@36))
))) (forall ((o2_7@@37 T@Ref) (f_27@@37 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@37 f_27@@37) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@11) o2_7@@37 f_27@@37) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@37 f_27@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@37 f_27@@37))
))) (forall ((o2_7@@38 T@Ref) (f_27@@38 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@11) null (PredicateMaskField_17306 pm_f_7@@8))) o2_7@@38 f_27@@38) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@11) o2_7@@38 f_27@@38) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@38 f_27@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@8) o2_7@@38 f_27@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsPredicateField_17306_17307 pm_f_7@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_27863) (ExhaleHeap@@9 T@PolymorphicMapType_27863) (Mask@@10 T@PolymorphicMapType_27884) (pm_f_7@@9 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_17331_17332 Mask@@10 null pm_f_7@@9) (IsPredicateField_17331_17332 pm_f_7@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@39 T@Ref) (f_27@@39 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@39 f_27@@39) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@12) o2_7@@39 f_27@@39) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@39 f_27@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@39 f_27@@39))
)) (forall ((o2_7@@40 T@Ref) (f_27@@40 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@40 f_27@@40) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@12) o2_7@@40 f_27@@40) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@40 f_27@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@40 f_27@@40))
))) (forall ((o2_7@@41 T@Ref) (f_27@@41 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@41 f_27@@41) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@12) o2_7@@41 f_27@@41) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@41 f_27@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@41 f_27@@41))
))) (forall ((o2_7@@42 T@Ref) (f_27@@42 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@42 f_27@@42) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@12) o2_7@@42 f_27@@42) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@42 f_27@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@42 f_27@@42))
))) (forall ((o2_7@@43 T@Ref) (f_27@@43 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@43 f_27@@43) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@12) o2_7@@43 f_27@@43) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@43 f_27@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@43 f_27@@43))
))) (forall ((o2_7@@44 T@Ref) (f_27@@44 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@44 f_27@@44) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@12) o2_7@@44 f_27@@44) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@44 f_27@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@44 f_27@@44))
))) (forall ((o2_7@@45 T@Ref) (f_27@@45 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@45 f_27@@45) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@12) o2_7@@45 f_27@@45) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@45 f_27@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@45 f_27@@45))
))) (forall ((o2_7@@46 T@Ref) (f_27@@46 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@46 f_27@@46) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@12) o2_7@@46 f_27@@46) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@46 f_27@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@46 f_27@@46))
))) (forall ((o2_7@@47 T@Ref) (f_27@@47 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@47 f_27@@47) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@12) o2_7@@47 f_27@@47) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@47 f_27@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@47 f_27@@47))
))) (forall ((o2_7@@48 T@Ref) (f_27@@48 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@48 f_27@@48) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@12) o2_7@@48 f_27@@48) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@48 f_27@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@48 f_27@@48))
))) (forall ((o2_7@@49 T@Ref) (f_27@@49 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@49 f_27@@49) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@12) o2_7@@49 f_27@@49) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@49 f_27@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@49 f_27@@49))
))) (forall ((o2_7@@50 T@Ref) (f_27@@50 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@50 f_27@@50) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@12) o2_7@@50 f_27@@50) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@50 f_27@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@50 f_27@@50))
))) (forall ((o2_7@@51 T@Ref) (f_27@@51 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@51 f_27@@51) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@12) o2_7@@51 f_27@@51) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@51 f_27@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@51 f_27@@51))
))) (forall ((o2_7@@52 T@Ref) (f_27@@52 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@52 f_27@@52) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@12) o2_7@@52 f_27@@52) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@52 f_27@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@52 f_27@@52))
))) (forall ((o2_7@@53 T@Ref) (f_27@@53 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@53 f_27@@53) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@12) o2_7@@53 f_27@@53) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@53 f_27@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@53 f_27@@53))
))) (forall ((o2_7@@54 T@Ref) (f_27@@54 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@54 f_27@@54) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@12) o2_7@@54 f_27@@54) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@54 f_27@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@54 f_27@@54))
))) (forall ((o2_7@@55 T@Ref) (f_27@@55 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@55 f_27@@55) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@12) o2_7@@55 f_27@@55) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@55 f_27@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@55 f_27@@55))
))) (forall ((o2_7@@56 T@Ref) (f_27@@56 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@56 f_27@@56) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@12) o2_7@@56 f_27@@56) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@56 f_27@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@56 f_27@@56))
))) (forall ((o2_7@@57 T@Ref) (f_27@@57 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@57 f_27@@57) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) o2_7@@57 f_27@@57) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@57 f_27@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@57 f_27@@57))
))) (forall ((o2_7@@58 T@Ref) (f_27@@58 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@12) null (PredicateMaskField_17331 pm_f_7@@9))) o2_7@@58 f_27@@58) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@12) o2_7@@58 f_27@@58) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@58 f_27@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@9) o2_7@@58 f_27@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsPredicateField_17331_17332 pm_f_7@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_27863) (ExhaleHeap@@10 T@PolymorphicMapType_27863) (Mask@@11 T@PolymorphicMapType_27884) (pm_f_7@@10 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_17301_17332 Mask@@11 null pm_f_7@@10) (IsPredicateField_17301_91021 pm_f_7@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@59 T@Ref) (f_27@@59 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@59 f_27@@59) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@13) o2_7@@59 f_27@@59) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@59 f_27@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@59 f_27@@59))
)) (forall ((o2_7@@60 T@Ref) (f_27@@60 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@60 f_27@@60) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@13) o2_7@@60 f_27@@60) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@60 f_27@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@60 f_27@@60))
))) (forall ((o2_7@@61 T@Ref) (f_27@@61 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@61 f_27@@61) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@13) o2_7@@61 f_27@@61) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@61 f_27@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@61 f_27@@61))
))) (forall ((o2_7@@62 T@Ref) (f_27@@62 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@62 f_27@@62) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) o2_7@@62 f_27@@62) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@62 f_27@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@62 f_27@@62))
))) (forall ((o2_7@@63 T@Ref) (f_27@@63 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@63 f_27@@63) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@13) o2_7@@63 f_27@@63) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@63 f_27@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@63 f_27@@63))
))) (forall ((o2_7@@64 T@Ref) (f_27@@64 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@64 f_27@@64) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@13) o2_7@@64 f_27@@64) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@64 f_27@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@64 f_27@@64))
))) (forall ((o2_7@@65 T@Ref) (f_27@@65 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@65 f_27@@65) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@13) o2_7@@65 f_27@@65) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@65 f_27@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@65 f_27@@65))
))) (forall ((o2_7@@66 T@Ref) (f_27@@66 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@66 f_27@@66) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@13) o2_7@@66 f_27@@66) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@66 f_27@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@66 f_27@@66))
))) (forall ((o2_7@@67 T@Ref) (f_27@@67 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@67 f_27@@67) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@13) o2_7@@67 f_27@@67) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@67 f_27@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@67 f_27@@67))
))) (forall ((o2_7@@68 T@Ref) (f_27@@68 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@68 f_27@@68) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@13) o2_7@@68 f_27@@68) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@68 f_27@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@68 f_27@@68))
))) (forall ((o2_7@@69 T@Ref) (f_27@@69 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@69 f_27@@69) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@13) o2_7@@69 f_27@@69) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@69 f_27@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@69 f_27@@69))
))) (forall ((o2_7@@70 T@Ref) (f_27@@70 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@70 f_27@@70) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@13) o2_7@@70 f_27@@70) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@70 f_27@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@70 f_27@@70))
))) (forall ((o2_7@@71 T@Ref) (f_27@@71 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@71 f_27@@71) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@13) o2_7@@71 f_27@@71) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@71 f_27@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@71 f_27@@71))
))) (forall ((o2_7@@72 T@Ref) (f_27@@72 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@72 f_27@@72) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@13) o2_7@@72 f_27@@72) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@72 f_27@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@72 f_27@@72))
))) (forall ((o2_7@@73 T@Ref) (f_27@@73 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@73 f_27@@73) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@13) o2_7@@73 f_27@@73) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@73 f_27@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@73 f_27@@73))
))) (forall ((o2_7@@74 T@Ref) (f_27@@74 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@74 f_27@@74) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@13) o2_7@@74 f_27@@74) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@74 f_27@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@74 f_27@@74))
))) (forall ((o2_7@@75 T@Ref) (f_27@@75 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@75 f_27@@75) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@13) o2_7@@75 f_27@@75) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@75 f_27@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@75 f_27@@75))
))) (forall ((o2_7@@76 T@Ref) (f_27@@76 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@76 f_27@@76) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@13) o2_7@@76 f_27@@76) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@76 f_27@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@76 f_27@@76))
))) (forall ((o2_7@@77 T@Ref) (f_27@@77 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@77 f_27@@77) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@13) o2_7@@77 f_27@@77) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@77 f_27@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@77 f_27@@77))
))) (forall ((o2_7@@78 T@Ref) (f_27@@78 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@13) null (PredicateMaskField_17301 pm_f_7@@10))) o2_7@@78 f_27@@78) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@13) o2_7@@78 f_27@@78) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@78 f_27@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@10) o2_7@@78 f_27@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsPredicateField_17301_91021 pm_f_7@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_27863) (ExhaleHeap@@11 T@PolymorphicMapType_27863) (Mask@@12 T@PolymorphicMapType_27884) (pm_f_7@@11 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_34023_17332 Mask@@12 null pm_f_7@@11) (IsWandField_17258_17259 pm_f_7@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@79 T@Ref) (f_27@@79 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@79 f_27@@79) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@14) o2_7@@79 f_27@@79) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@79 f_27@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@79 f_27@@79))
)) (forall ((o2_7@@80 T@Ref) (f_27@@80 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@80 f_27@@80) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@14) o2_7@@80 f_27@@80) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@80 f_27@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@80 f_27@@80))
))) (forall ((o2_7@@81 T@Ref) (f_27@@81 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@81 f_27@@81) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@14) o2_7@@81 f_27@@81) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@81 f_27@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@81 f_27@@81))
))) (forall ((o2_7@@82 T@Ref) (f_27@@82 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@82 f_27@@82) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@14) o2_7@@82 f_27@@82) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@82 f_27@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@82 f_27@@82))
))) (forall ((o2_7@@83 T@Ref) (f_27@@83 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@83 f_27@@83) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@14) o2_7@@83 f_27@@83) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@83 f_27@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@83 f_27@@83))
))) (forall ((o2_7@@84 T@Ref) (f_27@@84 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@84 f_27@@84) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@14) o2_7@@84 f_27@@84) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@84 f_27@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@84 f_27@@84))
))) (forall ((o2_7@@85 T@Ref) (f_27@@85 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@85 f_27@@85) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@14) o2_7@@85 f_27@@85) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@85 f_27@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@85 f_27@@85))
))) (forall ((o2_7@@86 T@Ref) (f_27@@86 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@86 f_27@@86) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@14) o2_7@@86 f_27@@86) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@86 f_27@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@86 f_27@@86))
))) (forall ((o2_7@@87 T@Ref) (f_27@@87 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@87 f_27@@87) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) o2_7@@87 f_27@@87) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@87 f_27@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@87 f_27@@87))
))) (forall ((o2_7@@88 T@Ref) (f_27@@88 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@88 f_27@@88) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@14) o2_7@@88 f_27@@88) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@88 f_27@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@88 f_27@@88))
))) (forall ((o2_7@@89 T@Ref) (f_27@@89 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@89 f_27@@89) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@14) o2_7@@89 f_27@@89) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@89 f_27@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@89 f_27@@89))
))) (forall ((o2_7@@90 T@Ref) (f_27@@90 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@90 f_27@@90) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@14) o2_7@@90 f_27@@90) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@90 f_27@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@90 f_27@@90))
))) (forall ((o2_7@@91 T@Ref) (f_27@@91 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@91 f_27@@91) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@14) o2_7@@91 f_27@@91) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@91 f_27@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@91 f_27@@91))
))) (forall ((o2_7@@92 T@Ref) (f_27@@92 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@92 f_27@@92) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@14) o2_7@@92 f_27@@92) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@92 f_27@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@92 f_27@@92))
))) (forall ((o2_7@@93 T@Ref) (f_27@@93 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@93 f_27@@93) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@14) o2_7@@93 f_27@@93) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@93 f_27@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@93 f_27@@93))
))) (forall ((o2_7@@94 T@Ref) (f_27@@94 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@94 f_27@@94) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@14) o2_7@@94 f_27@@94) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@94 f_27@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@94 f_27@@94))
))) (forall ((o2_7@@95 T@Ref) (f_27@@95 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@95 f_27@@95) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@14) o2_7@@95 f_27@@95) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@95 f_27@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@95 f_27@@95))
))) (forall ((o2_7@@96 T@Ref) (f_27@@96 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@96 f_27@@96) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@14) o2_7@@96 f_27@@96) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@96 f_27@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@96 f_27@@96))
))) (forall ((o2_7@@97 T@Ref) (f_27@@97 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@97 f_27@@97) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@14) o2_7@@97 f_27@@97) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@97 f_27@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@97 f_27@@97))
))) (forall ((o2_7@@98 T@Ref) (f_27@@98 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@14) null (WandMaskField_17258 pm_f_7@@11))) o2_7@@98 f_27@@98) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@14) o2_7@@98 f_27@@98) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@98 f_27@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@11) o2_7@@98 f_27@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (IsWandField_17258_17259 pm_f_7@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_27863) (ExhaleHeap@@12 T@PolymorphicMapType_27863) (Mask@@13 T@PolymorphicMapType_27884) (pm_f_7@@12 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_17306_17307 Mask@@13 null pm_f_7@@12) (IsWandField_17306_98396 pm_f_7@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@99 T@Ref) (f_27@@99 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@99 f_27@@99) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@15) o2_7@@99 f_27@@99) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@99 f_27@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@99 f_27@@99))
)) (forall ((o2_7@@100 T@Ref) (f_27@@100 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@100 f_27@@100) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@15) o2_7@@100 f_27@@100) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@100 f_27@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@100 f_27@@100))
))) (forall ((o2_7@@101 T@Ref) (f_27@@101 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@101 f_27@@101) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@15) o2_7@@101 f_27@@101) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@101 f_27@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@101 f_27@@101))
))) (forall ((o2_7@@102 T@Ref) (f_27@@102 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@102 f_27@@102) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@15) o2_7@@102 f_27@@102) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@102 f_27@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@102 f_27@@102))
))) (forall ((o2_7@@103 T@Ref) (f_27@@103 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@103 f_27@@103) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@15) o2_7@@103 f_27@@103) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@103 f_27@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@103 f_27@@103))
))) (forall ((o2_7@@104 T@Ref) (f_27@@104 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@104 f_27@@104) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@15) o2_7@@104 f_27@@104) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@104 f_27@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@104 f_27@@104))
))) (forall ((o2_7@@105 T@Ref) (f_27@@105 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@105 f_27@@105) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@15) o2_7@@105 f_27@@105) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@105 f_27@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@105 f_27@@105))
))) (forall ((o2_7@@106 T@Ref) (f_27@@106 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@106 f_27@@106) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@15) o2_7@@106 f_27@@106) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@106 f_27@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@106 f_27@@106))
))) (forall ((o2_7@@107 T@Ref) (f_27@@107 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@107 f_27@@107) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@15) o2_7@@107 f_27@@107) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@107 f_27@@107)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@107 f_27@@107))
))) (forall ((o2_7@@108 T@Ref) (f_27@@108 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@108 f_27@@108) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@15) o2_7@@108 f_27@@108) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@108 f_27@@108)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@108 f_27@@108))
))) (forall ((o2_7@@109 T@Ref) (f_27@@109 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@109 f_27@@109) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@15) o2_7@@109 f_27@@109) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@109 f_27@@109)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@109 f_27@@109))
))) (forall ((o2_7@@110 T@Ref) (f_27@@110 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@110 f_27@@110) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@15) o2_7@@110 f_27@@110) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@110 f_27@@110)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@110 f_27@@110))
))) (forall ((o2_7@@111 T@Ref) (f_27@@111 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@111 f_27@@111) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@15) o2_7@@111 f_27@@111) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@111 f_27@@111)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@111 f_27@@111))
))) (forall ((o2_7@@112 T@Ref) (f_27@@112 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@112 f_27@@112) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) o2_7@@112 f_27@@112) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@112 f_27@@112)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@112 f_27@@112))
))) (forall ((o2_7@@113 T@Ref) (f_27@@113 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@113 f_27@@113) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@15) o2_7@@113 f_27@@113) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@113 f_27@@113)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@113 f_27@@113))
))) (forall ((o2_7@@114 T@Ref) (f_27@@114 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@114 f_27@@114) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@15) o2_7@@114 f_27@@114) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@114 f_27@@114)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@114 f_27@@114))
))) (forall ((o2_7@@115 T@Ref) (f_27@@115 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@115 f_27@@115) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@15) o2_7@@115 f_27@@115) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@115 f_27@@115)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@115 f_27@@115))
))) (forall ((o2_7@@116 T@Ref) (f_27@@116 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@116 f_27@@116) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@15) o2_7@@116 f_27@@116) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@116 f_27@@116)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@116 f_27@@116))
))) (forall ((o2_7@@117 T@Ref) (f_27@@117 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@117 f_27@@117) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@15) o2_7@@117 f_27@@117) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@117 f_27@@117)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@117 f_27@@117))
))) (forall ((o2_7@@118 T@Ref) (f_27@@118 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@15) null (WandMaskField_17306 pm_f_7@@12))) o2_7@@118 f_27@@118) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@15) o2_7@@118 f_27@@118) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@118 f_27@@118)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@12) o2_7@@118 f_27@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (IsWandField_17306_98396 pm_f_7@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_27863) (ExhaleHeap@@13 T@PolymorphicMapType_27863) (Mask@@14 T@PolymorphicMapType_27884) (pm_f_7@@13 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_17331_17332 Mask@@14 null pm_f_7@@13) (IsWandField_17331_98039 pm_f_7@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@119 T@Ref) (f_27@@119 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@119 f_27@@119) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@16) o2_7@@119 f_27@@119) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@119 f_27@@119)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@119 f_27@@119))
)) (forall ((o2_7@@120 T@Ref) (f_27@@120 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@120 f_27@@120) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@16) o2_7@@120 f_27@@120) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@120 f_27@@120)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@120 f_27@@120))
))) (forall ((o2_7@@121 T@Ref) (f_27@@121 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@121 f_27@@121) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@16) o2_7@@121 f_27@@121) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@121 f_27@@121)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@121 f_27@@121))
))) (forall ((o2_7@@122 T@Ref) (f_27@@122 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@122 f_27@@122) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@16) o2_7@@122 f_27@@122) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@122 f_27@@122)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@122 f_27@@122))
))) (forall ((o2_7@@123 T@Ref) (f_27@@123 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@123 f_27@@123) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@16) o2_7@@123 f_27@@123) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@123 f_27@@123)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@123 f_27@@123))
))) (forall ((o2_7@@124 T@Ref) (f_27@@124 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@124 f_27@@124) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@16) o2_7@@124 f_27@@124) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@124 f_27@@124)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@124 f_27@@124))
))) (forall ((o2_7@@125 T@Ref) (f_27@@125 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@125 f_27@@125) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@16) o2_7@@125 f_27@@125) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@125 f_27@@125)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@125 f_27@@125))
))) (forall ((o2_7@@126 T@Ref) (f_27@@126 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@126 f_27@@126) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@16) o2_7@@126 f_27@@126) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@126 f_27@@126)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@126 f_27@@126))
))) (forall ((o2_7@@127 T@Ref) (f_27@@127 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@127 f_27@@127) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@16) o2_7@@127 f_27@@127) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@127 f_27@@127)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@127 f_27@@127))
))) (forall ((o2_7@@128 T@Ref) (f_27@@128 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@128 f_27@@128) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@16) o2_7@@128 f_27@@128) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@128 f_27@@128)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@128 f_27@@128))
))) (forall ((o2_7@@129 T@Ref) (f_27@@129 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@129 f_27@@129) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@16) o2_7@@129 f_27@@129) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@129 f_27@@129)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@129 f_27@@129))
))) (forall ((o2_7@@130 T@Ref) (f_27@@130 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@130 f_27@@130) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@16) o2_7@@130 f_27@@130) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@130 f_27@@130)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@130 f_27@@130))
))) (forall ((o2_7@@131 T@Ref) (f_27@@131 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@131 f_27@@131) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@16) o2_7@@131 f_27@@131) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@131 f_27@@131)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@131 f_27@@131))
))) (forall ((o2_7@@132 T@Ref) (f_27@@132 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@132 f_27@@132) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@16) o2_7@@132 f_27@@132) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@132 f_27@@132)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@132 f_27@@132))
))) (forall ((o2_7@@133 T@Ref) (f_27@@133 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@133 f_27@@133) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@16) o2_7@@133 f_27@@133) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@133 f_27@@133)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@133 f_27@@133))
))) (forall ((o2_7@@134 T@Ref) (f_27@@134 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@134 f_27@@134) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@16) o2_7@@134 f_27@@134) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@134 f_27@@134)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@134 f_27@@134))
))) (forall ((o2_7@@135 T@Ref) (f_27@@135 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@135 f_27@@135) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@16) o2_7@@135 f_27@@135) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@135 f_27@@135)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@135 f_27@@135))
))) (forall ((o2_7@@136 T@Ref) (f_27@@136 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@136 f_27@@136) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@16) o2_7@@136 f_27@@136) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@136 f_27@@136)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@136 f_27@@136))
))) (forall ((o2_7@@137 T@Ref) (f_27@@137 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@137 f_27@@137) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) o2_7@@137 f_27@@137) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@137 f_27@@137)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@137 f_27@@137))
))) (forall ((o2_7@@138 T@Ref) (f_27@@138 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@16) null (WandMaskField_17331 pm_f_7@@13))) o2_7@@138 f_27@@138) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@16) o2_7@@138 f_27@@138) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@138 f_27@@138)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@13) o2_7@@138 f_27@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (IsWandField_17331_98039 pm_f_7@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_27863) (ExhaleHeap@@14 T@PolymorphicMapType_27863) (Mask@@15 T@PolymorphicMapType_27884) (pm_f_7@@14 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_17301_17332 Mask@@15 null pm_f_7@@14) (IsWandField_17301_97682 pm_f_7@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_7@@139 T@Ref) (f_27@@139 T@Field_34868_4039) ) (!  (=> (select (|PolymorphicMapType_28412_17303_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@139 f_27@@139) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@17) o2_7@@139 f_27@@139) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@139 f_27@@139)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@139 f_27@@139))
)) (forall ((o2_7@@140 T@Ref) (f_27@@140 T@Field_27923_53) ) (!  (=> (select (|PolymorphicMapType_28412_17303_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@140 f_27@@140) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@17) o2_7@@140 f_27@@140) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@140 f_27@@140)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@140 f_27@@140))
))) (forall ((o2_7@@141 T@Ref) (f_27@@141 T@Field_27936_27937) ) (!  (=> (select (|PolymorphicMapType_28412_17303_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@141 f_27@@141) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@17) o2_7@@141 f_27@@141) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@141 f_27@@141)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@141 f_27@@141))
))) (forall ((o2_7@@142 T@Ref) (f_27@@142 T@Field_17301_34042) ) (!  (=> (select (|PolymorphicMapType_28412_17303_92964#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@142 f_27@@142) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) o2_7@@142 f_27@@142) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@142 f_27@@142)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@142 f_27@@142))
))) (forall ((o2_7@@143 T@Ref) (f_27@@143 T@Field_17301_17332) ) (!  (=> (select (|PolymorphicMapType_28412_17303_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@143 f_27@@143) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@17) o2_7@@143 f_27@@143) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@143 f_27@@143)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@143 f_27@@143))
))) (forall ((o2_7@@144 T@Ref) (f_27@@144 T@Field_34023_3575) ) (!  (=> (select (|PolymorphicMapType_28412_34023_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@144 f_27@@144) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@17) o2_7@@144 f_27@@144) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@144 f_27@@144)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@144 f_27@@144))
))) (forall ((o2_7@@145 T@Ref) (f_27@@145 T@Field_34023_53) ) (!  (=> (select (|PolymorphicMapType_28412_34023_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@145 f_27@@145) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@17) o2_7@@145 f_27@@145) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@145 f_27@@145)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@145 f_27@@145))
))) (forall ((o2_7@@146 T@Ref) (f_27@@146 T@Field_34023_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34023_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@146 f_27@@146) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@17) o2_7@@146 f_27@@146) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@146 f_27@@146)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@146 f_27@@146))
))) (forall ((o2_7@@147 T@Ref) (f_27@@147 T@Field_34037_34042) ) (!  (=> (select (|PolymorphicMapType_28412_34023_94012#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@147 f_27@@147) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@17) o2_7@@147 f_27@@147) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@147 f_27@@147)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@147 f_27@@147))
))) (forall ((o2_7@@148 T@Ref) (f_27@@148 T@Field_34054_34055) ) (!  (=> (select (|PolymorphicMapType_28412_34023_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@148 f_27@@148) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@17) o2_7@@148 f_27@@148) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@148 f_27@@148)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@148 f_27@@148))
))) (forall ((o2_7@@149 T@Ref) (f_27@@149 T@Field_17306_4039) ) (!  (=> (select (|PolymorphicMapType_28412_34945_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@149 f_27@@149) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@17) o2_7@@149 f_27@@149) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@149 f_27@@149)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@149 f_27@@149))
))) (forall ((o2_7@@150 T@Ref) (f_27@@150 T@Field_17306_53) ) (!  (=> (select (|PolymorphicMapType_28412_34945_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@150 f_27@@150) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@17) o2_7@@150 f_27@@150) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@150 f_27@@150)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@150 f_27@@150))
))) (forall ((o2_7@@151 T@Ref) (f_27@@151 T@Field_17306_27937) ) (!  (=> (select (|PolymorphicMapType_28412_34945_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@151 f_27@@151) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@17) o2_7@@151 f_27@@151) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@151 f_27@@151)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@151 f_27@@151))
))) (forall ((o2_7@@152 T@Ref) (f_27@@152 T@Field_34958_34963) ) (!  (=> (select (|PolymorphicMapType_28412_34945_95060#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@152 f_27@@152) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@17) o2_7@@152 f_27@@152) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@152 f_27@@152)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@152 f_27@@152))
))) (forall ((o2_7@@153 T@Ref) (f_27@@153 T@Field_34945_34946) ) (!  (=> (select (|PolymorphicMapType_28412_34945_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@153 f_27@@153) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@17) o2_7@@153 f_27@@153) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@153 f_27@@153)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@153 f_27@@153))
))) (forall ((o2_7@@154 T@Ref) (f_27@@154 T@Field_17331_4039) ) (!  (=> (select (|PolymorphicMapType_28412_35865_4054#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@154 f_27@@154) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@17) o2_7@@154 f_27@@154) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@154 f_27@@154)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@154 f_27@@154))
))) (forall ((o2_7@@155 T@Ref) (f_27@@155 T@Field_17331_53) ) (!  (=> (select (|PolymorphicMapType_28412_35865_53#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@155 f_27@@155) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@17) o2_7@@155 f_27@@155) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@155 f_27@@155)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@155 f_27@@155))
))) (forall ((o2_7@@156 T@Ref) (f_27@@156 T@Field_17331_27937) ) (!  (=> (select (|PolymorphicMapType_28412_35865_27937#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@156 f_27@@156) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@17) o2_7@@156 f_27@@156) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@156 f_27@@156)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@156 f_27@@156))
))) (forall ((o2_7@@157 T@Ref) (f_27@@157 T@Field_35878_35883) ) (!  (=> (select (|PolymorphicMapType_28412_35865_96108#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@157 f_27@@157) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@17) o2_7@@157 f_27@@157) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@157 f_27@@157)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@157 f_27@@157))
))) (forall ((o2_7@@158 T@Ref) (f_27@@158 T@Field_35865_35866) ) (!  (=> (select (|PolymorphicMapType_28412_35865_34055#PolymorphicMapType_28412| (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@17) null (WandMaskField_17301 pm_f_7@@14))) o2_7@@158 f_27@@158) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@17) o2_7@@158 f_27@@158) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@158 f_27@@158)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@14) o2_7@@158 f_27@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (IsWandField_17301_97682 pm_f_7@@14))
)))
(assert (forall ((s@@11 T@Seq_36838) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_36838| s@@11))) (= (|Seq#Index_36838| (|Seq#Take_36838| s@@11 n@@9) j@@3) (|Seq#Index_36838| s@@11 j@@3)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_36838| (|Seq#Take_36838| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_36838| s@@11 j@@3) (|Seq#Take_36838| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3424) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3424| s@@12))) (= (|Seq#Index_3424| (|Seq#Take_3424| s@@12 n@@10) j@@4) (|Seq#Index_3424| s@@12 j@@4)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3424| (|Seq#Take_3424| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3424| s@@12 j@@4) (|Seq#Take_3424| s@@12 n@@10))
)))
(assert (forall ((a_2@@5 T@Ref) (a2@@1 T@Ref) ) (!  (=> (= (p1 a_2@@5) (p1 a2@@1)) (= a_2@@5 a2@@1))
 :qid |stdinbpl.681:15|
 :skolemid |68|
 :pattern ( (p1 a_2@@5) (p1 a2@@1))
)))
(assert (forall ((a_2@@6 T@Ref) (a2@@2 T@Ref) ) (!  (=> (= (|p1#sm| a_2@@6) (|p1#sm| a2@@2)) (= a_2@@6 a2@@2))
 :qid |stdinbpl.685:15|
 :skolemid |69|
 :pattern ( (|p1#sm| a_2@@6) (|p1#sm| a2@@2))
)))
(assert (forall ((s@@13 T@Seq_36838) (t T@Seq_36838) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_36838| s@@13))) (< n@@11 (|Seq#Length_36838| (|Seq#Append_36838| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_36838| s@@13)) (|Seq#Length_36838| s@@13)) n@@11) (= (|Seq#Take_36838| (|Seq#Append_36838| s@@13 t) n@@11) (|Seq#Append_36838| s@@13 (|Seq#Take_36838| t (|Seq#Sub| n@@11 (|Seq#Length_36838| s@@13)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_36838| (|Seq#Append_36838| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3424) (t@@0 T@Seq_3424) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3424| s@@14))) (< n@@12 (|Seq#Length_3424| (|Seq#Append_3424| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3424| s@@14)) (|Seq#Length_3424| s@@14)) n@@12) (= (|Seq#Take_3424| (|Seq#Append_3424| s@@14 t@@0) n@@12) (|Seq#Append_3424| s@@14 (|Seq#Take_3424| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3424| s@@14)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3424| (|Seq#Append_3424| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_27863) (ExhaleHeap@@15 T@PolymorphicMapType_27863) (Mask@@16 T@PolymorphicMapType_27884) (o_19 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@18) o_19 $allocated) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@15) o_19 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@15) o_19 $allocated))
)))
(assert (forall ((p T@Field_35865_35866) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_35865_35865 p v_1 p w))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35865_35865 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_34945_34946) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_34945_34945 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34945_34945 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_34054_34055) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_34023_34023 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34023_34023 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_17301_17332) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_27923_27923 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27923_27923 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((s0 T@Seq_36838) (s1 T@Seq_36838) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_36838|)) (not (= s1 |Seq#Empty_36838|))) (<= (|Seq#Length_36838| s0) n@@13)) (< n@@13 (|Seq#Length_36838| (|Seq#Append_36838| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_36838| s0)) (|Seq#Length_36838| s0)) n@@13) (= (|Seq#Index_36838| (|Seq#Append_36838| s0 s1) n@@13) (|Seq#Index_36838| s1 (|Seq#Sub| n@@13 (|Seq#Length_36838| s0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_36838| (|Seq#Append_36838| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3424) (s1@@0 T@Seq_3424) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3424|)) (not (= s1@@0 |Seq#Empty_3424|))) (<= (|Seq#Length_3424| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3424| (|Seq#Append_3424| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3424| s0@@0)) (|Seq#Length_3424| s0@@0)) n@@14) (= (|Seq#Index_3424| (|Seq#Append_3424| s0@@0 s1@@0) n@@14) (|Seq#Index_3424| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3424| s0@@0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3424| (|Seq#Append_3424| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_17301_4039 f_7)))
(assert  (not (IsWandField_17301_4039 f_7)))
(assert  (not (IsPredicateField_17301_4039 g)))
(assert  (not (IsWandField_17301_4039 g)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_27863) (ExhaleHeap@@16 T@PolymorphicMapType_27863) (Mask@@17 T@PolymorphicMapType_27884) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@19 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_27884) (o_2@@19 T@Ref) (f_4@@19 T@Field_34037_34042) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_17243_112414 f_4@@19))) (not (IsWandField_17243_112430 f_4@@19))) (<= (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_27884) (o_2@@20 T@Ref) (f_4@@20 T@Field_34023_27937) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_17243_27937 f_4@@20))) (not (IsWandField_17243_27937 f_4@@20))) (<= (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_27884) (o_2@@21 T@Ref) (f_4@@21 T@Field_34023_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_17243_53 f_4@@21))) (not (IsWandField_17243_53 f_4@@21))) (<= (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_27884) (o_2@@22 T@Ref) (f_4@@22 T@Field_34054_34055) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_17258_17259 f_4@@22))) (not (IsWandField_17258_17259 f_4@@22))) (<= (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_27884) (o_2@@23 T@Ref) (f_4@@23 T@Field_34023_3575) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_17243_3575 f_4@@23))) (not (IsWandField_17243_3575 f_4@@23))) (<= (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_27884) (o_2@@24 T@Ref) (f_4@@24 T@Field_34958_34963) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_17306_111597 f_4@@24))) (not (IsWandField_17306_111613 f_4@@24))) (<= (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_27884) (o_2@@25 T@Ref) (f_4@@25 T@Field_17306_27937) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_17306_27937 f_4@@25))) (not (IsWandField_17306_27937 f_4@@25))) (<= (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_27884) (o_2@@26 T@Ref) (f_4@@26 T@Field_17306_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_17306_53 f_4@@26))) (not (IsWandField_17306_53 f_4@@26))) (<= (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_27884) (o_2@@27 T@Ref) (f_4@@27 T@Field_34945_34946) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_17306_17307 f_4@@27))) (not (IsWandField_17306_98396 f_4@@27))) (<= (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_27884) (o_2@@28 T@Ref) (f_4@@28 T@Field_17306_4039) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_17306_4054 f_4@@28))) (not (IsWandField_17306_4054 f_4@@28))) (<= (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_27884) (o_2@@29 T@Ref) (f_4@@29 T@Field_35878_35883) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_17331_110766 f_4@@29))) (not (IsWandField_17331_110782 f_4@@29))) (<= (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_27884) (o_2@@30 T@Ref) (f_4@@30 T@Field_17331_27937) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_17331_27937 f_4@@30))) (not (IsWandField_17331_27937 f_4@@30))) (<= (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_27884) (o_2@@31 T@Ref) (f_4@@31 T@Field_17331_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_17331_53 f_4@@31))) (not (IsWandField_17331_53 f_4@@31))) (<= (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_27884) (o_2@@32 T@Ref) (f_4@@32 T@Field_35865_35866) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_17331_17332 f_4@@32))) (not (IsWandField_17331_98039 f_4@@32))) (<= (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_27884) (o_2@@33 T@Ref) (f_4@@33 T@Field_17331_4039) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_17331_4054 f_4@@33))) (not (IsWandField_17331_4054 f_4@@33))) (<= (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_27884) (o_2@@34 T@Ref) (f_4@@34 T@Field_17301_34042) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_17303_109935 f_4@@34))) (not (IsWandField_17303_109951 f_4@@34))) (<= (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_27884) (o_2@@35 T@Ref) (f_4@@35 T@Field_27936_27937) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_17303_27937 f_4@@35))) (not (IsWandField_17303_27937 f_4@@35))) (<= (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_27884) (o_2@@36 T@Ref) (f_4@@36 T@Field_27923_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_17303_53 f_4@@36))) (not (IsWandField_17303_53 f_4@@36))) (<= (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_27884) (o_2@@37 T@Ref) (f_4@@37 T@Field_17301_17332) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_17301_91021 f_4@@37))) (not (IsWandField_17301_97682 f_4@@37))) (<= (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_27884) (o_2@@38 T@Ref) (f_4@@38 T@Field_34868_4039) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_17301_4039 f_4@@38))) (not (IsWandField_17301_4039 f_4@@38))) (<= (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_27884) (o_2@@39 T@Ref) (f_4@@39 T@Field_34037_34042) ) (! (= (HasDirectPerm_34023_90776 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_90776 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_27884) (o_2@@40 T@Ref) (f_4@@40 T@Field_34023_27937) ) (! (= (HasDirectPerm_34023_27937 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_27937 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_27884) (o_2@@41 T@Ref) (f_4@@41 T@Field_34023_53) ) (! (= (HasDirectPerm_34023_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_27884) (o_2@@42 T@Ref) (f_4@@42 T@Field_34054_34055) ) (! (= (HasDirectPerm_34023_17332 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_17332 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_27884) (o_2@@43 T@Ref) (f_4@@43 T@Field_34023_3575) ) (! (= (HasDirectPerm_34023_4039 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34023_4039 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_27884) (o_2@@44 T@Ref) (f_4@@44 T@Field_34958_34963) ) (! (= (HasDirectPerm_17306_89642 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_89642 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_27884) (o_2@@45 T@Ref) (f_4@@45 T@Field_17306_27937) ) (! (= (HasDirectPerm_17306_27937 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_27937 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_27884) (o_2@@46 T@Ref) (f_4@@46 T@Field_17306_53) ) (! (= (HasDirectPerm_17306_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_27884) (o_2@@47 T@Ref) (f_4@@47 T@Field_34945_34946) ) (! (= (HasDirectPerm_17306_17307 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_17307 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_27884) (o_2@@48 T@Ref) (f_4@@48 T@Field_17306_4039) ) (! (= (HasDirectPerm_17306_4039 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17306_4039 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_27884) (o_2@@49 T@Ref) (f_4@@49 T@Field_35878_35883) ) (! (= (HasDirectPerm_17331_88544 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_88544 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_27884) (o_2@@50 T@Ref) (f_4@@50 T@Field_17331_27937) ) (! (= (HasDirectPerm_17331_27937 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_27937 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_27884) (o_2@@51 T@Ref) (f_4@@51 T@Field_17331_53) ) (! (= (HasDirectPerm_17331_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_27884) (o_2@@52 T@Ref) (f_4@@52 T@Field_35865_35866) ) (! (= (HasDirectPerm_17331_17332 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_17332 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_27884) (o_2@@53 T@Ref) (f_4@@53 T@Field_17331_4039) ) (! (= (HasDirectPerm_17331_4039 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17331_4039 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_27884) (o_2@@54 T@Ref) (f_4@@54 T@Field_17301_34042) ) (! (= (HasDirectPerm_17301_87403 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_87403 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_27884) (o_2@@55 T@Ref) (f_4@@55 T@Field_27936_27937) ) (! (= (HasDirectPerm_17301_27937 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_27937 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_27884) (o_2@@56 T@Ref) (f_4@@56 T@Field_27923_53) ) (! (= (HasDirectPerm_17301_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_27884) (o_2@@57 T@Ref) (f_4@@57 T@Field_17301_17332) ) (! (= (HasDirectPerm_17301_17332 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_17332 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_27884) (o_2@@58 T@Ref) (f_4@@58 T@Field_34868_4039) ) (! (= (HasDirectPerm_17301_4039 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17301_4039 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.231:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3424| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.604:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3424| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_27863) (ExhaleHeap@@17 T@PolymorphicMapType_27863) (Mask@@58 T@PolymorphicMapType_27884) (o_19@@0 T@Ref) (f_27@@159 T@Field_34037_34042) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_34023_90776 Mask@@58 o_19@@0 f_27@@159) (= (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@20) o_19@@0 f_27@@159) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@17) o_19@@0 f_27@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| ExhaleHeap@@17) o_19@@0 f_27@@159))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_27863) (ExhaleHeap@@18 T@PolymorphicMapType_27863) (Mask@@59 T@PolymorphicMapType_27884) (o_19@@1 T@Ref) (f_27@@160 T@Field_34023_27937) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_34023_27937 Mask@@59 o_19@@1 f_27@@160) (= (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@21) o_19@@1 f_27@@160) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@18) o_19@@1 f_27@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| ExhaleHeap@@18) o_19@@1 f_27@@160))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_27863) (ExhaleHeap@@19 T@PolymorphicMapType_27863) (Mask@@60 T@PolymorphicMapType_27884) (o_19@@2 T@Ref) (f_27@@161 T@Field_34023_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_34023_53 Mask@@60 o_19@@2 f_27@@161) (= (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@22) o_19@@2 f_27@@161) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@19) o_19@@2 f_27@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| ExhaleHeap@@19) o_19@@2 f_27@@161))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_27863) (ExhaleHeap@@20 T@PolymorphicMapType_27863) (Mask@@61 T@PolymorphicMapType_27884) (o_19@@3 T@Ref) (f_27@@162 T@Field_34054_34055) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_34023_17332 Mask@@61 o_19@@3 f_27@@162) (= (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@23) o_19@@3 f_27@@162) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@20) o_19@@3 f_27@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| ExhaleHeap@@20) o_19@@3 f_27@@162))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_27863) (ExhaleHeap@@21 T@PolymorphicMapType_27863) (Mask@@62 T@PolymorphicMapType_27884) (o_19@@4 T@Ref) (f_27@@163 T@Field_34023_3575) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_34023_4039 Mask@@62 o_19@@4 f_27@@163) (= (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@24) o_19@@4 f_27@@163) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@21) o_19@@4 f_27@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| ExhaleHeap@@21) o_19@@4 f_27@@163))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_27863) (ExhaleHeap@@22 T@PolymorphicMapType_27863) (Mask@@63 T@PolymorphicMapType_27884) (o_19@@5 T@Ref) (f_27@@164 T@Field_34958_34963) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_17306_89642 Mask@@63 o_19@@5 f_27@@164) (= (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@25) o_19@@5 f_27@@164) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@22) o_19@@5 f_27@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| ExhaleHeap@@22) o_19@@5 f_27@@164))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_27863) (ExhaleHeap@@23 T@PolymorphicMapType_27863) (Mask@@64 T@PolymorphicMapType_27884) (o_19@@6 T@Ref) (f_27@@165 T@Field_17306_27937) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_17306_27937 Mask@@64 o_19@@6 f_27@@165) (= (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@26) o_19@@6 f_27@@165) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@23) o_19@@6 f_27@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| ExhaleHeap@@23) o_19@@6 f_27@@165))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_27863) (ExhaleHeap@@24 T@PolymorphicMapType_27863) (Mask@@65 T@PolymorphicMapType_27884) (o_19@@7 T@Ref) (f_27@@166 T@Field_17306_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_17306_53 Mask@@65 o_19@@7 f_27@@166) (= (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@27) o_19@@7 f_27@@166) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@24) o_19@@7 f_27@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| ExhaleHeap@@24) o_19@@7 f_27@@166))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_27863) (ExhaleHeap@@25 T@PolymorphicMapType_27863) (Mask@@66 T@PolymorphicMapType_27884) (o_19@@8 T@Ref) (f_27@@167 T@Field_34945_34946) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_17306_17307 Mask@@66 o_19@@8 f_27@@167) (= (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@28) o_19@@8 f_27@@167) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@25) o_19@@8 f_27@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| ExhaleHeap@@25) o_19@@8 f_27@@167))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_27863) (ExhaleHeap@@26 T@PolymorphicMapType_27863) (Mask@@67 T@PolymorphicMapType_27884) (o_19@@9 T@Ref) (f_27@@168 T@Field_17306_4039) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_17306_4039 Mask@@67 o_19@@9 f_27@@168) (= (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@29) o_19@@9 f_27@@168) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@26) o_19@@9 f_27@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| ExhaleHeap@@26) o_19@@9 f_27@@168))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_27863) (ExhaleHeap@@27 T@PolymorphicMapType_27863) (Mask@@68 T@PolymorphicMapType_27884) (o_19@@10 T@Ref) (f_27@@169 T@Field_35878_35883) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_17331_88544 Mask@@68 o_19@@10 f_27@@169) (= (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@30) o_19@@10 f_27@@169) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@27) o_19@@10 f_27@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| ExhaleHeap@@27) o_19@@10 f_27@@169))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_27863) (ExhaleHeap@@28 T@PolymorphicMapType_27863) (Mask@@69 T@PolymorphicMapType_27884) (o_19@@11 T@Ref) (f_27@@170 T@Field_17331_27937) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_17331_27937 Mask@@69 o_19@@11 f_27@@170) (= (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@31) o_19@@11 f_27@@170) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@28) o_19@@11 f_27@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| ExhaleHeap@@28) o_19@@11 f_27@@170))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_27863) (ExhaleHeap@@29 T@PolymorphicMapType_27863) (Mask@@70 T@PolymorphicMapType_27884) (o_19@@12 T@Ref) (f_27@@171 T@Field_17331_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_17331_53 Mask@@70 o_19@@12 f_27@@171) (= (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@32) o_19@@12 f_27@@171) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@29) o_19@@12 f_27@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| ExhaleHeap@@29) o_19@@12 f_27@@171))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_27863) (ExhaleHeap@@30 T@PolymorphicMapType_27863) (Mask@@71 T@PolymorphicMapType_27884) (o_19@@13 T@Ref) (f_27@@172 T@Field_35865_35866) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_17331_17332 Mask@@71 o_19@@13 f_27@@172) (= (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@33) o_19@@13 f_27@@172) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@30) o_19@@13 f_27@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| ExhaleHeap@@30) o_19@@13 f_27@@172))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_27863) (ExhaleHeap@@31 T@PolymorphicMapType_27863) (Mask@@72 T@PolymorphicMapType_27884) (o_19@@14 T@Ref) (f_27@@173 T@Field_17331_4039) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_17331_4039 Mask@@72 o_19@@14 f_27@@173) (= (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@34) o_19@@14 f_27@@173) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@31) o_19@@14 f_27@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| ExhaleHeap@@31) o_19@@14 f_27@@173))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_27863) (ExhaleHeap@@32 T@PolymorphicMapType_27863) (Mask@@73 T@PolymorphicMapType_27884) (o_19@@15 T@Ref) (f_27@@174 T@Field_17301_34042) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_17301_87403 Mask@@73 o_19@@15 f_27@@174) (= (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@35) o_19@@15 f_27@@174) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@32) o_19@@15 f_27@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| ExhaleHeap@@32) o_19@@15 f_27@@174))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_27863) (ExhaleHeap@@33 T@PolymorphicMapType_27863) (Mask@@74 T@PolymorphicMapType_27884) (o_19@@16 T@Ref) (f_27@@175 T@Field_27936_27937) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_17301_27937 Mask@@74 o_19@@16 f_27@@175) (= (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@36) o_19@@16 f_27@@175) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@33) o_19@@16 f_27@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| ExhaleHeap@@33) o_19@@16 f_27@@175))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_27863) (ExhaleHeap@@34 T@PolymorphicMapType_27863) (Mask@@75 T@PolymorphicMapType_27884) (o_19@@17 T@Ref) (f_27@@176 T@Field_27923_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_17301_53 Mask@@75 o_19@@17 f_27@@176) (= (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@37) o_19@@17 f_27@@176) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@34) o_19@@17 f_27@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| ExhaleHeap@@34) o_19@@17 f_27@@176))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_27863) (ExhaleHeap@@35 T@PolymorphicMapType_27863) (Mask@@76 T@PolymorphicMapType_27884) (o_19@@18 T@Ref) (f_27@@177 T@Field_17301_17332) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_17301_17332 Mask@@76 o_19@@18 f_27@@177) (= (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@38) o_19@@18 f_27@@177) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@35) o_19@@18 f_27@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| ExhaleHeap@@35) o_19@@18 f_27@@177))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_27863) (ExhaleHeap@@36 T@PolymorphicMapType_27863) (Mask@@77 T@PolymorphicMapType_27884) (o_19@@19 T@Ref) (f_27@@178 T@Field_34868_4039) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_17301_4039 Mask@@77 o_19@@19 f_27@@178) (= (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@39) o_19@@19 f_27@@178) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@36) o_19@@19 f_27@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| ExhaleHeap@@36) o_19@@19 f_27@@178))
)))
(assert (forall ((s0@@1 T@Seq_36838) (s1@@1 T@Seq_36838) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_36838|)) (not (= s1@@1 |Seq#Empty_36838|))) (= (|Seq#Length_36838| (|Seq#Append_36838| s0@@1 s1@@1)) (+ (|Seq#Length_36838| s0@@1) (|Seq#Length_36838| s1@@1))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_36838| (|Seq#Append_36838| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3424) (s1@@2 T@Seq_3424) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3424|)) (not (= s1@@2 |Seq#Empty_3424|))) (= (|Seq#Length_3424| (|Seq#Append_3424| s0@@2 s1@@2)) (+ (|Seq#Length_3424| s0@@2) (|Seq#Length_3424| s1@@2))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3424| (|Seq#Append_3424| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_34037_34042) ) (! (= (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_34023_27937) ) (! (= (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_34023_53) ) (! (= (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_34054_34055) ) (! (= (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_34023_3575) ) (! (= (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_34958_34963) ) (! (= (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_17306_27937) ) (! (= (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_17306_53) ) (! (= (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_34945_34946) ) (! (= (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_17306_4039) ) (! (= (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_35878_35883) ) (! (= (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_17331_27937) ) (! (= (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_17331_53) ) (! (= (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_35865_35866) ) (! (= (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_17331_4039) ) (! (= (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_17301_34042) ) (! (= (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_27936_27937) ) (! (= (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_27923_53) ) (! (= (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_17301_17332) ) (! (= (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_34868_4039) ) (! (= (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((s@@15 T@Seq_36838) (t@@1 T@Seq_36838) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_36838| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_36838| s@@15)) (|Seq#Length_36838| s@@15)) n@@15) (= (|Seq#Drop_36838| (|Seq#Append_36838| s@@15 t@@1) n@@15) (|Seq#Drop_36838| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_36838| s@@15))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_36838| (|Seq#Append_36838| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3424) (t@@2 T@Seq_3424) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3424| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3424| s@@16)) (|Seq#Length_3424| s@@16)) n@@16) (= (|Seq#Drop_3424| (|Seq#Append_3424| s@@16 t@@2) n@@16) (|Seq#Drop_3424| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3424| s@@16))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3424| (|Seq#Append_3424| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_27884) (SummandMask1 T@PolymorphicMapType_27884) (SummandMask2 T@PolymorphicMapType_27884) (o_2@@79 T@Ref) (f_4@@79 T@Field_34037_34042) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27884_17243_107810#PolymorphicMapType_27884| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_27884) (SummandMask1@@0 T@PolymorphicMapType_27884) (SummandMask2@@0 T@PolymorphicMapType_27884) (o_2@@80 T@Ref) (f_4@@80 T@Field_34023_27937) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27884_17243_27937#PolymorphicMapType_27884| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_27884) (SummandMask1@@1 T@PolymorphicMapType_27884) (SummandMask2@@1 T@PolymorphicMapType_27884) (o_2@@81 T@Ref) (f_4@@81 T@Field_34023_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27884_17243_53#PolymorphicMapType_27884| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_27884) (SummandMask1@@2 T@PolymorphicMapType_27884) (SummandMask2@@2 T@PolymorphicMapType_27884) (o_2@@82 T@Ref) (f_4@@82 T@Field_34054_34055) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27884_17243_17332#PolymorphicMapType_27884| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_27884) (SummandMask1@@3 T@PolymorphicMapType_27884) (SummandMask2@@3 T@PolymorphicMapType_27884) (o_2@@83 T@Ref) (f_4@@83 T@Field_34023_3575) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27884_17243_3575#PolymorphicMapType_27884| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_27884) (SummandMask1@@4 T@PolymorphicMapType_27884) (SummandMask2@@4 T@PolymorphicMapType_27884) (o_2@@84 T@Ref) (f_4@@84 T@Field_34958_34963) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27884_17306_107396#PolymorphicMapType_27884| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_27884) (SummandMask1@@5 T@PolymorphicMapType_27884) (SummandMask2@@5 T@PolymorphicMapType_27884) (o_2@@85 T@Ref) (f_4@@85 T@Field_17306_27937) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27884_17306_27937#PolymorphicMapType_27884| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_27884) (SummandMask1@@6 T@PolymorphicMapType_27884) (SummandMask2@@6 T@PolymorphicMapType_27884) (o_2@@86 T@Ref) (f_4@@86 T@Field_17306_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27884_17306_53#PolymorphicMapType_27884| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_27884) (SummandMask1@@7 T@PolymorphicMapType_27884) (SummandMask2@@7 T@PolymorphicMapType_27884) (o_2@@87 T@Ref) (f_4@@87 T@Field_34945_34946) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_27884_17306_17307#PolymorphicMapType_27884| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_27884) (SummandMask1@@8 T@PolymorphicMapType_27884) (SummandMask2@@8 T@PolymorphicMapType_27884) (o_2@@88 T@Ref) (f_4@@88 T@Field_17306_4039) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_27884_17306_4054#PolymorphicMapType_27884| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_27884) (SummandMask1@@9 T@PolymorphicMapType_27884) (SummandMask2@@9 T@PolymorphicMapType_27884) (o_2@@89 T@Ref) (f_4@@89 T@Field_35878_35883) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_27884_17331_106985#PolymorphicMapType_27884| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_27884) (SummandMask1@@10 T@PolymorphicMapType_27884) (SummandMask2@@10 T@PolymorphicMapType_27884) (o_2@@90 T@Ref) (f_4@@90 T@Field_17331_27937) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_27884_17331_27937#PolymorphicMapType_27884| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_27884) (SummandMask1@@11 T@PolymorphicMapType_27884) (SummandMask2@@11 T@PolymorphicMapType_27884) (o_2@@91 T@Ref) (f_4@@91 T@Field_17331_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_27884_17331_53#PolymorphicMapType_27884| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_27884) (SummandMask1@@12 T@PolymorphicMapType_27884) (SummandMask2@@12 T@PolymorphicMapType_27884) (o_2@@92 T@Ref) (f_4@@92 T@Field_35865_35866) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_27884_17331_17332#PolymorphicMapType_27884| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_27884) (SummandMask1@@13 T@PolymorphicMapType_27884) (SummandMask2@@13 T@PolymorphicMapType_27884) (o_2@@93 T@Ref) (f_4@@93 T@Field_17331_4039) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_27884_17331_4054#PolymorphicMapType_27884| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_27884) (SummandMask1@@14 T@PolymorphicMapType_27884) (SummandMask2@@14 T@PolymorphicMapType_27884) (o_2@@94 T@Ref) (f_4@@94 T@Field_17301_34042) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_27884_17303_106574#PolymorphicMapType_27884| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_27884) (SummandMask1@@15 T@PolymorphicMapType_27884) (SummandMask2@@15 T@PolymorphicMapType_27884) (o_2@@95 T@Ref) (f_4@@95 T@Field_27936_27937) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_27884_17303_27937#PolymorphicMapType_27884| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_27884) (SummandMask1@@16 T@PolymorphicMapType_27884) (SummandMask2@@16 T@PolymorphicMapType_27884) (o_2@@96 T@Ref) (f_4@@96 T@Field_27923_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_27884_17303_53#PolymorphicMapType_27884| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_27884) (SummandMask1@@17 T@PolymorphicMapType_27884) (SummandMask2@@17 T@PolymorphicMapType_27884) (o_2@@97 T@Ref) (f_4@@97 T@Field_17301_17332) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_27884_17303_17332#PolymorphicMapType_27884| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_27884) (SummandMask1@@18 T@PolymorphicMapType_27884) (SummandMask2@@18 T@PolymorphicMapType_27884) (o_2@@98 T@Ref) (f_4@@98 T@Field_34868_4039) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_27884_17303_4054#PolymorphicMapType_27884| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3424| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3424| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.603:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3424| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_36838) (b T@Seq_36838) ) (!  (=> (|Seq#Equal_36838| a b) (= a b))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_36838| a b))
)))
(assert (forall ((a@@0 T@Seq_3424) (b@@0 T@Seq_3424) ) (!  (=> (|Seq#Equal_3424| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3424| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_36838) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_36838| s@@17))) (|Seq#ContainsTrigger_17359| s@@17 (|Seq#Index_36838| s@@17 i@@3)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_36838| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3424) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3424| s@@18))) (|Seq#ContainsTrigger_3424| s@@18 (|Seq#Index_3424| s@@18 i@@4)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3424| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_36838) (s1@@3 T@Seq_36838) ) (!  (and (=> (= s0@@3 |Seq#Empty_36838|) (= (|Seq#Append_36838| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_36838|) (= (|Seq#Append_36838| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_36838| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3424) (s1@@4 T@Seq_3424) ) (!  (and (=> (= s0@@4 |Seq#Empty_3424|) (= (|Seq#Append_3424| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3424|) (= (|Seq#Append_3424| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3424| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_36838| (|Seq#Singleton_36838| t@@3) 0) t@@3)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_36838| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3424| (|Seq#Singleton_3424| t@@4) 0) t@@4)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3424| t@@4))
)))
(assert (forall ((s@@19 T@Seq_36838) ) (! (<= 0 (|Seq#Length_36838| s@@19))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_36838| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3424) ) (! (<= 0 (|Seq#Length_3424| s@@20))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3424| s@@20))
)))
(assert (forall ((a_2@@7 T@Ref) (b_24@@3 Int) ) (! (= (getPredWandId_17331_17332 (p2 a_2@@7 b_24@@3)) 1)
 :qid |stdinbpl.729:15|
 :skolemid |73|
 :pattern ( (p2 a_2@@7 b_24@@3))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 Bool) (arg4 T@Ref) (arg5 Real) (arg6 T@Ref) (arg7 Int) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 Bool) (arg4_2 T@Ref) (arg5_2 Real) (arg6_2 T@Ref) (arg7_2 Int) ) (!  (=> (= (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (and (= arg5 arg5_2) (and (= arg6 arg6_2) (= arg7 arg7_2))))))))
 :qid |stdinbpl.644:15|
 :skolemid |64|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2))
)))
(assert (forall ((s0@@5 T@Seq_36838) (s1@@5 T@Seq_36838) ) (!  (=> (|Seq#Equal_36838| s0@@5 s1@@5) (and (= (|Seq#Length_36838| s0@@5) (|Seq#Length_36838| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_36838| s0@@5))) (= (|Seq#Index_36838| s0@@5 j@@6) (|Seq#Index_36838| s1@@5 j@@6)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_36838| s0@@5 j@@6))
 :pattern ( (|Seq#Index_36838| s1@@5 j@@6))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_36838| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3424) (s1@@6 T@Seq_3424) ) (!  (=> (|Seq#Equal_3424| s0@@6 s1@@6) (and (= (|Seq#Length_3424| s0@@6) (|Seq#Length_3424| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3424| s0@@6))) (= (|Seq#Index_3424| s0@@6 j@@7) (|Seq#Index_3424| s1@@6 j@@7)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3424| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3424| s1@@6 j@@7))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3424| s0@@6 s1@@6))
)))
(assert (forall ((a_2@@8 T@Ref) ) (! (= (getPredWandId_17306_17307 (p1 a_2@@8)) 0)
 :qid |stdinbpl.675:15|
 :skolemid |67|
 :pattern ( (p1 a_2@@8))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_36838| (|Seq#Singleton_36838| t@@5)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_36838| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3424| (|Seq#Singleton_3424| t@@6)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3424| t@@6))
)))
(assert (forall ((a_2@@9 T@Ref) (b_24@@4 Int) ) (! (= (PredicateMaskField_17331 (p2 a_2@@9 b_24@@4)) (|p2#sm| a_2@@9 b_24@@4))
 :qid |stdinbpl.721:15|
 :skolemid |71|
 :pattern ( (PredicateMaskField_17331 (p2 a_2@@9 b_24@@4)))
)))
(assert (forall ((s@@21 T@Seq_36838) (t@@7 T@Seq_36838) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_36838| s@@21))) (= (|Seq#Take_36838| (|Seq#Append_36838| s@@21 t@@7) n@@17) (|Seq#Take_36838| s@@21 n@@17)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_36838| (|Seq#Append_36838| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3424) (t@@8 T@Seq_3424) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3424| s@@22))) (= (|Seq#Take_3424| (|Seq#Append_3424| s@@22 t@@8) n@@18) (|Seq#Take_3424| s@@22 n@@18)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3424| (|Seq#Append_3424| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_36838) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_36838| s@@23))) (= (|Seq#Length_36838| (|Seq#Update_36838| s@@23 i@@5 v@@2)) (|Seq#Length_36838| s@@23)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_36838| (|Seq#Update_36838| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_36838| s@@23) (|Seq#Update_36838| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3424) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3424| s@@24))) (= (|Seq#Length_3424| (|Seq#Update_3424| s@@24 i@@6 v@@3)) (|Seq#Length_3424| s@@24)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3424| (|Seq#Update_3424| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3424| s@@24) (|Seq#Update_3424| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_27863) (o_18 T@Ref) (f_28 T@Field_34037_34042) (v@@4 T@PolymorphicMapType_28412) ) (! (succHeap Heap@@40 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@40) (store (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@40) o_18 f_28 v@@4) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@40) (store (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@40) o_18 f_28 v@@4) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@40) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_27863) (o_18@@0 T@Ref) (f_28@@0 T@Field_34023_3575) (v@@5 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@41) (store (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@41) o_18@@0 f_28@@0 v@@5) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@41) (store (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@41) o_18@@0 f_28@@0 v@@5) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@41) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_27863) (o_18@@1 T@Ref) (f_28@@1 T@Field_34054_34055) (v@@6 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@42) (store (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@42) o_18@@1 f_28@@1 v@@6) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@42) (store (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@42) o_18@@1 f_28@@1 v@@6) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@42) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_27863) (o_18@@2 T@Ref) (f_28@@2 T@Field_34023_27937) (v@@7 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@43) (store (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@43) o_18@@2 f_28@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@43) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@43) (store (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@43) o_18@@2 f_28@@2 v@@7)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_27863) (o_18@@3 T@Ref) (f_28@@3 T@Field_34023_53) (v@@8 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@44) (store (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@44) o_18@@3 f_28@@3 v@@8) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@44) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@44) (store (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@44) o_18@@3 f_28@@3 v@@8) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_27863) (o_18@@4 T@Ref) (f_28@@4 T@Field_34958_34963) (v@@9 T@PolymorphicMapType_28412) ) (! (succHeap Heap@@45 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@45) (store (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@45) o_18@@4 f_28@@4 v@@9) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@45) (store (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@45) o_18@@4 f_28@@4 v@@9) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@45) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_27863) (o_18@@5 T@Ref) (f_28@@5 T@Field_17306_4039) (v@@10 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@46) (store (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@46) o_18@@5 f_28@@5 v@@10) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@46) (store (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@46) o_18@@5 f_28@@5 v@@10) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@46) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_27863) (o_18@@6 T@Ref) (f_28@@6 T@Field_34945_34946) (v@@11 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@47) (store (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@47) o_18@@6 f_28@@6 v@@11) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@47) (store (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@47) o_18@@6 f_28@@6 v@@11) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@47) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_27863) (o_18@@7 T@Ref) (f_28@@7 T@Field_17306_27937) (v@@12 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@48) (store (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@48) o_18@@7 f_28@@7 v@@12) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@48) (store (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@48) o_18@@7 f_28@@7 v@@12) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@48) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_27863) (o_18@@8 T@Ref) (f_28@@8 T@Field_17306_53) (v@@13 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@49) (store (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@49) o_18@@8 f_28@@8 v@@13) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@49) (store (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@49) o_18@@8 f_28@@8 v@@13) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@49) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_27863) (o_18@@9 T@Ref) (f_28@@9 T@Field_35878_35883) (v@@14 T@PolymorphicMapType_28412) ) (! (succHeap Heap@@50 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@50) (store (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@50) o_18@@9 f_28@@9 v@@14) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@50) (store (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@50) o_18@@9 f_28@@9 v@@14) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@50) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_27863) (o_18@@10 T@Ref) (f_28@@10 T@Field_17331_4039) (v@@15 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@51) (store (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@51) o_18@@10 f_28@@10 v@@15) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@51) (store (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@51) o_18@@10 f_28@@10 v@@15) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@51) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_27863) (o_18@@11 T@Ref) (f_28@@11 T@Field_35865_35866) (v@@16 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@52) (store (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@52) o_18@@11 f_28@@11 v@@16) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@52) (store (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@52) o_18@@11 f_28@@11 v@@16) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@52) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_27863) (o_18@@12 T@Ref) (f_28@@12 T@Field_17331_27937) (v@@17 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@53) (store (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@53) o_18@@12 f_28@@12 v@@17) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@53) (store (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@53) o_18@@12 f_28@@12 v@@17) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@53) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_27863) (o_18@@13 T@Ref) (f_28@@13 T@Field_17331_53) (v@@18 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@54) (store (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@54) o_18@@13 f_28@@13 v@@18) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@54) (store (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@54) o_18@@13 f_28@@13 v@@18) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@54) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_27863) (o_18@@14 T@Ref) (f_28@@14 T@Field_17301_34042) (v@@19 T@PolymorphicMapType_28412) ) (! (succHeap Heap@@55 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@55) (store (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@55) o_18@@14 f_28@@14 v@@19) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@55) (store (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@55) o_18@@14 f_28@@14 v@@19) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@55) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_27863) (o_18@@15 T@Ref) (f_28@@15 T@Field_34868_4039) (v@@20 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@56) (store (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@56) o_18@@15 f_28@@15 v@@20) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@56) (store (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@56) o_18@@15 f_28@@15 v@@20) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@56) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_27863) (o_18@@16 T@Ref) (f_28@@16 T@Field_17301_17332) (v@@21 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@57) (store (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@57) o_18@@16 f_28@@16 v@@21) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@57) (store (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@57) o_18@@16 f_28@@16 v@@21) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@57) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_27863) (o_18@@17 T@Ref) (f_28@@17 T@Field_27936_27937) (v@@22 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@58) (store (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@58) o_18@@17 f_28@@17 v@@22) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@58) (store (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@58) o_18@@17 f_28@@17 v@@22) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@58) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_27863) (o_18@@18 T@Ref) (f_28@@18 T@Field_27923_53) (v@@23 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_27863 (store (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@59) o_18@@18 f_28@@18 v@@23) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27863 (store (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@59) o_18@@18 f_28@@18 v@@23) (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17335_46621#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_17307#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17310_66039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17250_79280#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17301_87445#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17331_27937#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_17306_27937#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_4039#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_17332#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_53#PolymorphicMapType_27863| Heap@@59) (|PolymorphicMapType_27863_34023_27937#PolymorphicMapType_27863| Heap@@59)))
)))
(assert (forall ((a_2@@10 T@Ref) ) (! (= (PredicateMaskField_17306 (p1 a_2@@10)) (|p1#sm| a_2@@10))
 :qid |stdinbpl.667:15|
 :skolemid |65|
 :pattern ( (PredicateMaskField_17306 (p1 a_2@@10)))
)))
(assert (forall ((s@@25 T@Seq_36838) (t@@9 T@Seq_36838) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_36838| s@@25))) (= (|Seq#Drop_36838| (|Seq#Append_36838| s@@25 t@@9) n@@19) (|Seq#Append_36838| (|Seq#Drop_36838| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_36838| (|Seq#Append_36838| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3424) (t@@10 T@Seq_3424) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3424| s@@26))) (= (|Seq#Drop_3424| (|Seq#Append_3424| s@@26 t@@10) n@@20) (|Seq#Append_3424| (|Seq#Drop_3424| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3424| (|Seq#Append_3424| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_36838) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_36838| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_36838| (|Seq#Drop_36838| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_36838| s@@27 i@@7))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_36838| s@@27 n@@21) (|Seq#Index_36838| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3424) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3424| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3424| (|Seq#Drop_3424| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3424| s@@28 i@@8))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3424| s@@28 n@@22) (|Seq#Index_3424| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_36838) (s1@@7 T@Seq_36838) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_36838|)) (not (= s1@@7 |Seq#Empty_36838|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_36838| s0@@7))) (= (|Seq#Index_36838| (|Seq#Append_36838| s0@@7 s1@@7) n@@23) (|Seq#Index_36838| s0@@7 n@@23)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_36838| (|Seq#Append_36838| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_36838| s0@@7 n@@23) (|Seq#Append_36838| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3424) (s1@@8 T@Seq_3424) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3424|)) (not (= s1@@8 |Seq#Empty_3424|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3424| s0@@8))) (= (|Seq#Index_3424| (|Seq#Append_3424| s0@@8 s1@@8) n@@24) (|Seq#Index_3424| s0@@8 n@@24)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3424| (|Seq#Append_3424| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3424| s0@@8 n@@24) (|Seq#Append_3424| s0@@8 s1@@8))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 Bool) (arg4@@0 T@Ref) (arg5@@0 Real) (arg6@@0 T@Ref) (arg7@@0 Int) ) (! (= (|wand#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0) (WandMaskField_17258 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
 :qid |stdinbpl.636:15|
 :skolemid |62|
 :pattern ( (WandMaskField_17258 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
)))
(assert (forall ((s0@@9 T@Seq_36838) (s1@@9 T@Seq_36838) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_36838|)) (not (= s1@@9 |Seq#Empty_36838|))) (<= 0 m)) (< m (|Seq#Length_36838| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_36838| s0@@9)) (|Seq#Length_36838| s0@@9)) m) (= (|Seq#Index_36838| (|Seq#Append_36838| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_36838| s0@@9))) (|Seq#Index_36838| s1@@9 m))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_36838| s1@@9 m) (|Seq#Append_36838| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3424) (s1@@10 T@Seq_3424) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3424|)) (not (= s1@@10 |Seq#Empty_3424|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3424| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3424| s0@@10)) (|Seq#Length_3424| s0@@10)) m@@0) (= (|Seq#Index_3424| (|Seq#Append_3424| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3424| s0@@10))) (|Seq#Index_3424| s1@@10 m@@0))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3424| s1@@10 m@@0) (|Seq#Append_3424| s0@@10 s1@@10))
)))
(assert (forall ((o_18@@19 T@Ref) (f_26 T@Field_27936_27937) (Heap@@60 T@PolymorphicMapType_27863) ) (!  (=> (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@60) o_18@@19 $allocated) (select (|PolymorphicMapType_27863_16970_53#PolymorphicMapType_27863| Heap@@60) (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@60) o_18@@19 f_26) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_27863_16973_16974#PolymorphicMapType_27863| Heap@@60) o_18@@19 f_26))
)))
(assert (forall ((s@@29 T@Seq_36838) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_36838| s@@29))) (= (|Seq#Index_36838| s@@29 i@@9) x@@3)) (|Seq#Contains_17359| s@@29 x@@3))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_17359| s@@29 x@@3) (|Seq#Index_36838| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3424) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3424| s@@30))) (= (|Seq#Index_3424| s@@30 i@@10) x@@4)) (|Seq#Contains_3424| s@@30 x@@4))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3424| s@@30 x@@4) (|Seq#Index_3424| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_36838) (s1@@11 T@Seq_36838) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_36838| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36838| s0@@11 s1@@11))) (not (= (|Seq#Length_36838| s0@@11) (|Seq#Length_36838| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36838| s0@@11 s1@@11))) (= (|Seq#Length_36838| s0@@11) (|Seq#Length_36838| s1@@11))) (= (|Seq#SkolemDiff_36838| s0@@11 s1@@11) (|Seq#SkolemDiff_36838| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_36838| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_36838| s0@@11 s1@@11) (|Seq#Length_36838| s0@@11))) (not (= (|Seq#Index_36838| s0@@11 (|Seq#SkolemDiff_36838| s0@@11 s1@@11)) (|Seq#Index_36838| s1@@11 (|Seq#SkolemDiff_36838| s0@@11 s1@@11))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_36838| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3424) (s1@@12 T@Seq_3424) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3424| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3424| s0@@12 s1@@12))) (not (= (|Seq#Length_3424| s0@@12) (|Seq#Length_3424| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3424| s0@@12 s1@@12))) (= (|Seq#Length_3424| s0@@12) (|Seq#Length_3424| s1@@12))) (= (|Seq#SkolemDiff_3424| s0@@12 s1@@12) (|Seq#SkolemDiff_3424| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3424| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3424| s0@@12 s1@@12) (|Seq#Length_3424| s0@@12))) (not (= (|Seq#Index_3424| s0@@12 (|Seq#SkolemDiff_3424| s0@@12 s1@@12)) (|Seq#Index_3424| s1@@12 (|Seq#SkolemDiff_3424| s0@@12 s1@@12))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3424| s0@@12 s1@@12))
)))
(assert (forall ((p@@4 T@Field_35865_35866) (v_1@@3 T@FrameType) (q T@Field_35865_35866) (w@@3 T@FrameType) (r T@Field_35865_35866) (u T@FrameType) ) (!  (=> (and (InsidePredicate_35865_35865 p@@4 v_1@@3 q w@@3) (InsidePredicate_35865_35865 q w@@3 r u)) (InsidePredicate_35865_35865 p@@4 v_1@@3 r u))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_35865 p@@4 v_1@@3 q w@@3) (InsidePredicate_35865_35865 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_35865_35866) (v_1@@4 T@FrameType) (q@@0 T@Field_35865_35866) (w@@4 T@FrameType) (r@@0 T@Field_34945_34946) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_35865 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_35865_34945 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_35865_34945 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_35865 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_35865_34945 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_35865_35866) (v_1@@5 T@FrameType) (q@@1 T@Field_35865_35866) (w@@5 T@FrameType) (r@@1 T@Field_34054_34055) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_35865 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_35865_34023 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_35865_34023 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_35865 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_35865_34023 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_35865_35866) (v_1@@6 T@FrameType) (q@@2 T@Field_35865_35866) (w@@6 T@FrameType) (r@@2 T@Field_17301_17332) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_35865 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_35865_27923 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_35865_27923 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_35865 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_35865_27923 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_35865_35866) (v_1@@7 T@FrameType) (q@@3 T@Field_34945_34946) (w@@7 T@FrameType) (r@@3 T@Field_35865_35866) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34945 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_34945_35865 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_35865_35865 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34945 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_34945_35865 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_35865_35866) (v_1@@8 T@FrameType) (q@@4 T@Field_34945_34946) (w@@8 T@FrameType) (r@@4 T@Field_34945_34946) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34945 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_34945_34945 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_35865_34945 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34945 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_34945_34945 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_35865_35866) (v_1@@9 T@FrameType) (q@@5 T@Field_34945_34946) (w@@9 T@FrameType) (r@@5 T@Field_34054_34055) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34945 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_34945_34023 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_35865_34023 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34945 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_34945_34023 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_35865_35866) (v_1@@10 T@FrameType) (q@@6 T@Field_34945_34946) (w@@10 T@FrameType) (r@@6 T@Field_17301_17332) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34945 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_34945_27923 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_35865_27923 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34945 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_34945_27923 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_35865_35866) (v_1@@11 T@FrameType) (q@@7 T@Field_34054_34055) (w@@11 T@FrameType) (r@@7 T@Field_35865_35866) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34023 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_34023_35865 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_35865_35865 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34023 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_34023_35865 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_35865_35866) (v_1@@12 T@FrameType) (q@@8 T@Field_34054_34055) (w@@12 T@FrameType) (r@@8 T@Field_34945_34946) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34023 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_34023_34945 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_35865_34945 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34023 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_34023_34945 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_35865_35866) (v_1@@13 T@FrameType) (q@@9 T@Field_34054_34055) (w@@13 T@FrameType) (r@@9 T@Field_34054_34055) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34023 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_34023_34023 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_35865_34023 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34023 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_34023_34023 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_35865_35866) (v_1@@14 T@FrameType) (q@@10 T@Field_34054_34055) (w@@14 T@FrameType) (r@@10 T@Field_17301_17332) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_34023 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_34023_27923 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_35865_27923 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_34023 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_34023_27923 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_35865_35866) (v_1@@15 T@FrameType) (q@@11 T@Field_17301_17332) (w@@15 T@FrameType) (r@@11 T@Field_35865_35866) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_27923 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_27923_35865 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_35865_35865 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_27923 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_27923_35865 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_35865_35866) (v_1@@16 T@FrameType) (q@@12 T@Field_17301_17332) (w@@16 T@FrameType) (r@@12 T@Field_34945_34946) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_27923 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_27923_34945 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_35865_34945 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_27923 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_27923_34945 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_35865_35866) (v_1@@17 T@FrameType) (q@@13 T@Field_17301_17332) (w@@17 T@FrameType) (r@@13 T@Field_34054_34055) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_27923 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_27923_34023 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_35865_34023 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_27923 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_27923_34023 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_35865_35866) (v_1@@18 T@FrameType) (q@@14 T@Field_17301_17332) (w@@18 T@FrameType) (r@@14 T@Field_17301_17332) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_35865_27923 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_27923_27923 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_35865_27923 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35865_27923 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_27923_27923 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_34945_34946) (v_1@@19 T@FrameType) (q@@15 T@Field_35865_35866) (w@@19 T@FrameType) (r@@15 T@Field_35865_35866) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_35865 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_35865_35865 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_34945_35865 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_35865 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_35865_35865 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_34945_34946) (v_1@@20 T@FrameType) (q@@16 T@Field_35865_35866) (w@@20 T@FrameType) (r@@16 T@Field_34945_34946) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_35865 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_35865_34945 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_34945_34945 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_35865 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_35865_34945 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_34945_34946) (v_1@@21 T@FrameType) (q@@17 T@Field_35865_35866) (w@@21 T@FrameType) (r@@17 T@Field_34054_34055) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_35865 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_35865_34023 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_34945_34023 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_35865 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_35865_34023 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_34945_34946) (v_1@@22 T@FrameType) (q@@18 T@Field_35865_35866) (w@@22 T@FrameType) (r@@18 T@Field_17301_17332) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_35865 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_35865_27923 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_34945_27923 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_35865 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_35865_27923 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_34945_34946) (v_1@@23 T@FrameType) (q@@19 T@Field_34945_34946) (w@@23 T@FrameType) (r@@19 T@Field_35865_35866) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34945 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_34945_35865 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_34945_35865 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34945 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_34945_35865 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_34945_34946) (v_1@@24 T@FrameType) (q@@20 T@Field_34945_34946) (w@@24 T@FrameType) (r@@20 T@Field_34945_34946) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34945 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_34945_34945 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_34945_34945 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34945 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_34945_34945 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_34945_34946) (v_1@@25 T@FrameType) (q@@21 T@Field_34945_34946) (w@@25 T@FrameType) (r@@21 T@Field_34054_34055) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34945 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_34945_34023 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_34945_34023 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34945 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_34945_34023 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_34945_34946) (v_1@@26 T@FrameType) (q@@22 T@Field_34945_34946) (w@@26 T@FrameType) (r@@22 T@Field_17301_17332) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34945 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_34945_27923 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_34945_27923 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34945 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_34945_27923 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_34945_34946) (v_1@@27 T@FrameType) (q@@23 T@Field_34054_34055) (w@@27 T@FrameType) (r@@23 T@Field_35865_35866) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34023 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_34023_35865 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_34945_35865 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34023 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_34023_35865 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_34945_34946) (v_1@@28 T@FrameType) (q@@24 T@Field_34054_34055) (w@@28 T@FrameType) (r@@24 T@Field_34945_34946) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34023 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_34023_34945 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_34945_34945 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34023 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_34023_34945 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_34945_34946) (v_1@@29 T@FrameType) (q@@25 T@Field_34054_34055) (w@@29 T@FrameType) (r@@25 T@Field_34054_34055) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34023 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_34023_34023 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_34945_34023 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34023 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_34023_34023 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_34945_34946) (v_1@@30 T@FrameType) (q@@26 T@Field_34054_34055) (w@@30 T@FrameType) (r@@26 T@Field_17301_17332) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_34023 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_34023_27923 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_34945_27923 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_34023 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_34023_27923 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_34945_34946) (v_1@@31 T@FrameType) (q@@27 T@Field_17301_17332) (w@@31 T@FrameType) (r@@27 T@Field_35865_35866) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_27923 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_27923_35865 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_34945_35865 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_27923 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_27923_35865 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_34945_34946) (v_1@@32 T@FrameType) (q@@28 T@Field_17301_17332) (w@@32 T@FrameType) (r@@28 T@Field_34945_34946) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_27923 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_27923_34945 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_34945_34945 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_27923 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_27923_34945 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_34945_34946) (v_1@@33 T@FrameType) (q@@29 T@Field_17301_17332) (w@@33 T@FrameType) (r@@29 T@Field_34054_34055) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_27923 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_27923_34023 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_34945_34023 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_27923 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_27923_34023 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_34945_34946) (v_1@@34 T@FrameType) (q@@30 T@Field_17301_17332) (w@@34 T@FrameType) (r@@30 T@Field_17301_17332) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_34945_27923 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_27923_27923 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_34945_27923 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34945_27923 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_27923_27923 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_34054_34055) (v_1@@35 T@FrameType) (q@@31 T@Field_35865_35866) (w@@35 T@FrameType) (r@@31 T@Field_35865_35866) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_35865 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_35865_35865 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_34023_35865 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_35865 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_35865_35865 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_34054_34055) (v_1@@36 T@FrameType) (q@@32 T@Field_35865_35866) (w@@36 T@FrameType) (r@@32 T@Field_34945_34946) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_35865 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_35865_34945 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_34023_34945 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_35865 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_35865_34945 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_34054_34055) (v_1@@37 T@FrameType) (q@@33 T@Field_35865_35866) (w@@37 T@FrameType) (r@@33 T@Field_34054_34055) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_35865 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_35865_34023 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_34023_34023 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_35865 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_35865_34023 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_34054_34055) (v_1@@38 T@FrameType) (q@@34 T@Field_35865_35866) (w@@38 T@FrameType) (r@@34 T@Field_17301_17332) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_35865 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_35865_27923 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_34023_27923 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_35865 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_35865_27923 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_34054_34055) (v_1@@39 T@FrameType) (q@@35 T@Field_34945_34946) (w@@39 T@FrameType) (r@@35 T@Field_35865_35866) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34945 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_34945_35865 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_34023_35865 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34945 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_34945_35865 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_34054_34055) (v_1@@40 T@FrameType) (q@@36 T@Field_34945_34946) (w@@40 T@FrameType) (r@@36 T@Field_34945_34946) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34945 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_34945_34945 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_34023_34945 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34945 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_34945_34945 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_34054_34055) (v_1@@41 T@FrameType) (q@@37 T@Field_34945_34946) (w@@41 T@FrameType) (r@@37 T@Field_34054_34055) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34945 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_34945_34023 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_34023_34023 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34945 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_34945_34023 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_34054_34055) (v_1@@42 T@FrameType) (q@@38 T@Field_34945_34946) (w@@42 T@FrameType) (r@@38 T@Field_17301_17332) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34945 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_34945_27923 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_34023_27923 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34945 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_34945_27923 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_34054_34055) (v_1@@43 T@FrameType) (q@@39 T@Field_34054_34055) (w@@43 T@FrameType) (r@@39 T@Field_35865_35866) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34023 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_34023_35865 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_34023_35865 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34023 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_34023_35865 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_34054_34055) (v_1@@44 T@FrameType) (q@@40 T@Field_34054_34055) (w@@44 T@FrameType) (r@@40 T@Field_34945_34946) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34023 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_34023_34945 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_34023_34945 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34023 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_34023_34945 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_34054_34055) (v_1@@45 T@FrameType) (q@@41 T@Field_34054_34055) (w@@45 T@FrameType) (r@@41 T@Field_34054_34055) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34023 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_34023_34023 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_34023_34023 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34023 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_34023_34023 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_34054_34055) (v_1@@46 T@FrameType) (q@@42 T@Field_34054_34055) (w@@46 T@FrameType) (r@@42 T@Field_17301_17332) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_34023 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_34023_27923 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_34023_27923 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_34023 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_34023_27923 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_34054_34055) (v_1@@47 T@FrameType) (q@@43 T@Field_17301_17332) (w@@47 T@FrameType) (r@@43 T@Field_35865_35866) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_27923 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_27923_35865 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_34023_35865 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_27923 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_27923_35865 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_34054_34055) (v_1@@48 T@FrameType) (q@@44 T@Field_17301_17332) (w@@48 T@FrameType) (r@@44 T@Field_34945_34946) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_27923 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_27923_34945 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_34023_34945 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_27923 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_27923_34945 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_34054_34055) (v_1@@49 T@FrameType) (q@@45 T@Field_17301_17332) (w@@49 T@FrameType) (r@@45 T@Field_34054_34055) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_27923 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_27923_34023 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_34023_34023 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_27923 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_27923_34023 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_34054_34055) (v_1@@50 T@FrameType) (q@@46 T@Field_17301_17332) (w@@50 T@FrameType) (r@@46 T@Field_17301_17332) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_34023_27923 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_27923_27923 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_34023_27923 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34023_27923 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_27923_27923 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_17301_17332) (v_1@@51 T@FrameType) (q@@47 T@Field_35865_35866) (w@@51 T@FrameType) (r@@47 T@Field_35865_35866) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_35865 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_35865_35865 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_27923_35865 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_35865 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_35865_35865 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_17301_17332) (v_1@@52 T@FrameType) (q@@48 T@Field_35865_35866) (w@@52 T@FrameType) (r@@48 T@Field_34945_34946) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_35865 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_35865_34945 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_27923_34945 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_35865 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_35865_34945 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_17301_17332) (v_1@@53 T@FrameType) (q@@49 T@Field_35865_35866) (w@@53 T@FrameType) (r@@49 T@Field_34054_34055) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_35865 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_35865_34023 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_27923_34023 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_35865 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_35865_34023 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_17301_17332) (v_1@@54 T@FrameType) (q@@50 T@Field_35865_35866) (w@@54 T@FrameType) (r@@50 T@Field_17301_17332) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_35865 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_35865_27923 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_27923_27923 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_35865 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_35865_27923 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_17301_17332) (v_1@@55 T@FrameType) (q@@51 T@Field_34945_34946) (w@@55 T@FrameType) (r@@51 T@Field_35865_35866) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34945 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_34945_35865 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_27923_35865 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34945 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_34945_35865 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_17301_17332) (v_1@@56 T@FrameType) (q@@52 T@Field_34945_34946) (w@@56 T@FrameType) (r@@52 T@Field_34945_34946) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34945 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_34945_34945 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_27923_34945 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34945 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_34945_34945 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_17301_17332) (v_1@@57 T@FrameType) (q@@53 T@Field_34945_34946) (w@@57 T@FrameType) (r@@53 T@Field_34054_34055) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34945 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_34945_34023 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_27923_34023 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34945 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_34945_34023 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_17301_17332) (v_1@@58 T@FrameType) (q@@54 T@Field_34945_34946) (w@@58 T@FrameType) (r@@54 T@Field_17301_17332) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34945 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_34945_27923 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_27923_27923 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34945 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_34945_27923 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_17301_17332) (v_1@@59 T@FrameType) (q@@55 T@Field_34054_34055) (w@@59 T@FrameType) (r@@55 T@Field_35865_35866) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34023 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_34023_35865 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_27923_35865 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34023 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_34023_35865 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_17301_17332) (v_1@@60 T@FrameType) (q@@56 T@Field_34054_34055) (w@@60 T@FrameType) (r@@56 T@Field_34945_34946) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34023 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_34023_34945 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_27923_34945 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34023 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_34023_34945 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_17301_17332) (v_1@@61 T@FrameType) (q@@57 T@Field_34054_34055) (w@@61 T@FrameType) (r@@57 T@Field_34054_34055) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34023 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_34023_34023 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_27923_34023 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34023 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_34023_34023 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_17301_17332) (v_1@@62 T@FrameType) (q@@58 T@Field_34054_34055) (w@@62 T@FrameType) (r@@58 T@Field_17301_17332) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_34023 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_34023_27923 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_27923_27923 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_34023 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_34023_27923 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_17301_17332) (v_1@@63 T@FrameType) (q@@59 T@Field_17301_17332) (w@@63 T@FrameType) (r@@59 T@Field_35865_35866) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_27923 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_27923_35865 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_27923_35865 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_27923 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_27923_35865 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_17301_17332) (v_1@@64 T@FrameType) (q@@60 T@Field_17301_17332) (w@@64 T@FrameType) (r@@60 T@Field_34945_34946) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_27923 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_27923_34945 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_27923_34945 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_27923 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_27923_34945 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_17301_17332) (v_1@@65 T@FrameType) (q@@61 T@Field_17301_17332) (w@@65 T@FrameType) (r@@61 T@Field_34054_34055) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_27923 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_27923_34023 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_27923_34023 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_27923 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_27923_34023 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_17301_17332) (v_1@@66 T@FrameType) (q@@62 T@Field_17301_17332) (w@@66 T@FrameType) (r@@62 T@Field_17301_17332) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_27923_27923 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_27923_27923 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_27923_27923 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27923_27923 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_27923_27923 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 Bool) (arg4@@1 T@Ref) (arg5@@1 Real) (arg6@@1 T@Ref) (arg7@@1 Int) ) (! (IsWandField_17243_3575 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
 :qid |stdinbpl.620:15|
 :skolemid |58|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 Bool) (arg4@@2 T@Ref) (arg5@@2 Real) (arg6@@2 T@Ref) (arg7@@2 Int) ) (! (IsWandField_17258_17259 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
 :qid |stdinbpl.624:15|
 :skolemid |59|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 Bool) (arg4@@3 T@Ref) (arg5@@3 Real) (arg6@@3 T@Ref) (arg7@@3 Int) ) (!  (not (IsPredicateField_17243_3575 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3)))
 :qid |stdinbpl.628:15|
 :skolemid |60|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 Bool) (arg4@@4 T@Ref) (arg5@@4 Real) (arg6@@4 T@Ref) (arg7@@4 Int) ) (!  (not (IsPredicateField_17258_17259 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4)))
 :qid |stdinbpl.632:15|
 :skolemid |61|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4))
)))
(assert (forall ((s@@31 T@Seq_36838) ) (!  (=> (= (|Seq#Length_36838| s@@31) 0) (= s@@31 |Seq#Empty_36838|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_36838| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3424) ) (!  (=> (= (|Seq#Length_3424| s@@32) 0) (= s@@32 |Seq#Empty_3424|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3424| s@@32))
)))
(assert (forall ((s@@33 T@Seq_36838) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_36838| s@@33 n@@25) |Seq#Empty_36838|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_36838| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3424) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3424| s@@34 n@@26) |Seq#Empty_3424|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3424| s@@34 n@@26))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 Bool) (arg4@@5 T@Ref) (arg5@@5 Real) (arg6@@5 T@Ref) (arg7@@5 Int) ) (! (= (getPredWandId_17243_3575 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5)) 2)
 :qid |stdinbpl.640:15|
 :skolemid |63|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

