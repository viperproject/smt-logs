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
(declare-sort T@Field_6621_53 0)
(declare-sort T@Field_6634_6635 0)
(declare-sort T@Field_12345_2417 0)
(declare-sort T@Field_6621_9965 0)
(declare-sort T@Field_6621_9976 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9948_53 0)
(declare-sort T@Field_9948_6635 0)
(declare-sort T@Field_9948_1203 0)
(declare-sort T@Field_9960_9965 0)
(declare-sort T@Field_9975_9976 0)
(declare-sort T@Field_10562_53 0)
(declare-sort T@Field_10562_6635 0)
(declare-sort T@Field_10562_1521 0)
(declare-sort T@Field_10574_10579 0)
(declare-sort T@Field_10589_10590 0)
(declare-sort T@Field_11118_53 0)
(declare-sort T@Field_11118_6635 0)
(declare-sort T@Field_11118_1790 0)
(declare-sort T@Field_11130_11135 0)
(declare-sort T@Field_11145_11146 0)
(declare-sort T@Field_11732_53 0)
(declare-sort T@Field_11732_6635 0)
(declare-sort T@Field_11732_2112 0)
(declare-sort T@Field_11744_11749 0)
(declare-sort T@Field_11759_11760 0)
(declare-datatypes ((T@PolymorphicMapType_6582 0)) (((PolymorphicMapType_6582 (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| (Array T@Ref T@Field_12345_2417 Real)) (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| (Array T@Ref T@Field_9948_1203 Real)) (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| (Array T@Ref T@Field_10562_1521 Real)) (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| (Array T@Ref T@Field_11118_1790 Real)) (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| (Array T@Ref T@Field_11732_2112 Real)) (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| (Array T@Ref T@Field_6621_53 Real)) (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| (Array T@Ref T@Field_6634_6635 Real)) (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| (Array T@Ref T@Field_6621_9965 Real)) (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| (Array T@Ref T@Field_6621_9976 Real)) (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| (Array T@Ref T@Field_9948_53 Real)) (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| (Array T@Ref T@Field_9948_6635 Real)) (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| (Array T@Ref T@Field_9960_9965 Real)) (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| (Array T@Ref T@Field_9975_9976 Real)) (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| (Array T@Ref T@Field_10562_53 Real)) (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| (Array T@Ref T@Field_10562_6635 Real)) (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| (Array T@Ref T@Field_10574_10579 Real)) (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| (Array T@Ref T@Field_10589_10590 Real)) (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| (Array T@Ref T@Field_11118_53 Real)) (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| (Array T@Ref T@Field_11118_6635 Real)) (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| (Array T@Ref T@Field_11130_11135 Real)) (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| (Array T@Ref T@Field_11145_11146 Real)) (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| (Array T@Ref T@Field_11732_53 Real)) (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| (Array T@Ref T@Field_11732_6635 Real)) (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| (Array T@Ref T@Field_11744_11749 Real)) (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| (Array T@Ref T@Field_11759_11760 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7110 0)) (((PolymorphicMapType_7110 (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (Array T@Ref T@Field_6621_53 Bool)) (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (Array T@Ref T@Field_6634_6635 Bool)) (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (Array T@Ref T@Field_12345_2417 Bool)) (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (Array T@Ref T@Field_6621_9965 Bool)) (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (Array T@Ref T@Field_6621_9976 Bool)) (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (Array T@Ref T@Field_9948_53 Bool)) (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (Array T@Ref T@Field_9948_6635 Bool)) (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (Array T@Ref T@Field_9948_1203 Bool)) (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (Array T@Ref T@Field_9960_9965 Bool)) (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (Array T@Ref T@Field_9975_9976 Bool)) (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (Array T@Ref T@Field_10562_53 Bool)) (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (Array T@Ref T@Field_10562_6635 Bool)) (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (Array T@Ref T@Field_10562_1521 Bool)) (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (Array T@Ref T@Field_10574_10579 Bool)) (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (Array T@Ref T@Field_10589_10590 Bool)) (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (Array T@Ref T@Field_11118_53 Bool)) (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (Array T@Ref T@Field_11118_6635 Bool)) (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (Array T@Ref T@Field_11118_1790 Bool)) (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (Array T@Ref T@Field_11130_11135 Bool)) (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (Array T@Ref T@Field_11145_11146 Bool)) (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (Array T@Ref T@Field_11732_53 Bool)) (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (Array T@Ref T@Field_11732_6635 Bool)) (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (Array T@Ref T@Field_11732_2112 Bool)) (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (Array T@Ref T@Field_11744_11749 Bool)) (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (Array T@Ref T@Field_11759_11760 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6561 0)) (((PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| (Array T@Ref T@Field_6621_53 Bool)) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| (Array T@Ref T@Field_6634_6635 T@Ref)) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| (Array T@Ref T@Field_12345_2417 Int)) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| (Array T@Ref T@Field_6621_9965 T@PolymorphicMapType_7110)) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| (Array T@Ref T@Field_6621_9976 T@FrameType)) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| (Array T@Ref T@Field_9948_53 Bool)) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| (Array T@Ref T@Field_9948_6635 T@Ref)) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| (Array T@Ref T@Field_9948_1203 Int)) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| (Array T@Ref T@Field_9960_9965 T@PolymorphicMapType_7110)) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| (Array T@Ref T@Field_9975_9976 T@FrameType)) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| (Array T@Ref T@Field_10562_53 Bool)) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| (Array T@Ref T@Field_10562_6635 T@Ref)) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| (Array T@Ref T@Field_10562_1521 Int)) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| (Array T@Ref T@Field_10574_10579 T@PolymorphicMapType_7110)) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| (Array T@Ref T@Field_10589_10590 T@FrameType)) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| (Array T@Ref T@Field_11118_53 Bool)) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| (Array T@Ref T@Field_11118_6635 T@Ref)) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| (Array T@Ref T@Field_11118_1790 Int)) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| (Array T@Ref T@Field_11130_11135 T@PolymorphicMapType_7110)) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| (Array T@Ref T@Field_11145_11146 T@FrameType)) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| (Array T@Ref T@Field_11732_53 Bool)) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| (Array T@Ref T@Field_11732_6635 T@Ref)) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| (Array T@Ref T@Field_11732_2112 Int)) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| (Array T@Ref T@Field_11744_11749 T@PolymorphicMapType_7110)) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| (Array T@Ref T@Field_11759_11760 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6621_53)
(declare-fun val () T@Field_12345_2417)
(declare-fun succHeap (T@PolymorphicMapType_6561 T@PolymorphicMapType_6561) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6561 T@PolymorphicMapType_6561) Bool)
(declare-fun wand (Int T@Ref Real Bool) T@Field_9948_1203)
(declare-fun getPredWandId_3872_1203 (T@Field_9948_1203) Int)
(declare-fun wand_2 (T@Ref Int Real Bool) T@Field_11118_1790)
(declare-fun getPredWandId_3932_1790 (T@Field_11118_1790) Int)
(declare-fun wand_3 (Int T@Ref Real Bool) T@Field_11732_2112)
(declare-fun getPredWandId_3962_2112 (T@Field_11732_2112) Int)
(declare-fun state (T@PolymorphicMapType_6561 T@PolymorphicMapType_6582) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6582) Bool)
(declare-fun wand_1 (T@Ref Real Bool) T@Field_10562_1521)
(declare-fun IsWandField_3902_1521 (T@Field_10562_1521) Bool)
(declare-fun |wand_1#ft| (T@Ref Real Bool) T@Field_10589_10590)
(declare-fun IsWandField_3911_3912 (T@Field_10589_10590) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7110)
(declare-fun getPredWandId_3902_1521 (T@Field_10562_1521) Int)
(declare-fun IsPredicateField_3902_1521 (T@Field_10562_1521) Bool)
(declare-fun IsPredicateField_3911_3912 (T@Field_10589_10590) Bool)
(declare-fun WandMaskField_3911 (T@Field_10589_10590) T@Field_10574_10579)
(declare-fun |wand_1#sm| (T@Ref Real Bool) T@Field_10574_10579)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6561 T@PolymorphicMapType_6561 T@PolymorphicMapType_6582) Bool)
(declare-fun IsPredicateField_3971_3972 (T@Field_11759_11760) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11732 (T@Field_11759_11760) T@Field_11744_11749)
(declare-fun HasDirectPerm_11732_9976 (T@PolymorphicMapType_6582 T@Ref T@Field_11759_11760) Bool)
(declare-fun IsPredicateField_3941_3942 (T@Field_11145_11146) Bool)
(declare-fun PredicateMaskField_11118 (T@Field_11145_11146) T@Field_11130_11135)
(declare-fun HasDirectPerm_11118_9976 (T@PolymorphicMapType_6582 T@Ref T@Field_11145_11146) Bool)
(declare-fun PredicateMaskField_10562 (T@Field_10589_10590) T@Field_10574_10579)
(declare-fun HasDirectPerm_10562_9976 (T@PolymorphicMapType_6582 T@Ref T@Field_10589_10590) Bool)
(declare-fun IsPredicateField_3881_3882 (T@Field_9975_9976) Bool)
(declare-fun PredicateMaskField_9948 (T@Field_9975_9976) T@Field_9960_9965)
(declare-fun HasDirectPerm_9948_9976 (T@PolymorphicMapType_6582 T@Ref T@Field_9975_9976) Bool)
(declare-fun IsPredicateField_6621_24527 (T@Field_6621_9976) Bool)
(declare-fun PredicateMaskField_6621 (T@Field_6621_9976) T@Field_6621_9965)
(declare-fun HasDirectPerm_6621_9976 (T@PolymorphicMapType_6582 T@Ref T@Field_6621_9976) Bool)
(declare-fun IsWandField_3971_3972 (T@Field_11759_11760) Bool)
(declare-fun WandMaskField_3971 (T@Field_11759_11760) T@Field_11744_11749)
(declare-fun IsWandField_3941_3942 (T@Field_11145_11146) Bool)
(declare-fun WandMaskField_3941 (T@Field_11145_11146) T@Field_11130_11135)
(declare-fun IsWandField_3881_3882 (T@Field_9975_9976) Bool)
(declare-fun WandMaskField_3881 (T@Field_9975_9976) T@Field_9960_9965)
(declare-fun IsWandField_6621_32929 (T@Field_6621_9976) Bool)
(declare-fun WandMaskField_6621 (T@Field_6621_9976) T@Field_6621_9965)
(declare-fun dummyHeap () T@PolymorphicMapType_6561)
(declare-fun ZeroMask () T@PolymorphicMapType_6582)
(declare-fun InsidePredicate_11732_11732 (T@Field_11759_11760 T@FrameType T@Field_11759_11760 T@FrameType) Bool)
(declare-fun InsidePredicate_11118_11118 (T@Field_11145_11146 T@FrameType T@Field_11145_11146 T@FrameType) Bool)
(declare-fun InsidePredicate_10562_10562 (T@Field_10589_10590 T@FrameType T@Field_10589_10590 T@FrameType) Bool)
(declare-fun InsidePredicate_9948_9948 (T@Field_9975_9976 T@FrameType T@Field_9975_9976 T@FrameType) Bool)
(declare-fun InsidePredicate_6621_6621 (T@Field_6621_9976 T@FrameType T@Field_6621_9976 T@FrameType) Bool)
(declare-fun IsPredicateField_3990_2417 (T@Field_12345_2417) Bool)
(declare-fun IsWandField_3990_2417 (T@Field_12345_2417) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3962_51121 (T@Field_11744_11749) Bool)
(declare-fun IsWandField_3962_51137 (T@Field_11744_11749) Bool)
(declare-fun IsPredicateField_3962_6635 (T@Field_11732_6635) Bool)
(declare-fun IsWandField_3962_6635 (T@Field_11732_6635) Bool)
(declare-fun IsPredicateField_3962_53 (T@Field_11732_53) Bool)
(declare-fun IsWandField_3962_53 (T@Field_11732_53) Bool)
(declare-fun IsPredicateField_3962_2112 (T@Field_11732_2112) Bool)
(declare-fun IsWandField_3962_2112 (T@Field_11732_2112) Bool)
(declare-fun IsPredicateField_3932_50304 (T@Field_11130_11135) Bool)
(declare-fun IsWandField_3932_50320 (T@Field_11130_11135) Bool)
(declare-fun IsPredicateField_3932_6635 (T@Field_11118_6635) Bool)
(declare-fun IsWandField_3932_6635 (T@Field_11118_6635) Bool)
(declare-fun IsPredicateField_3932_53 (T@Field_11118_53) Bool)
(declare-fun IsWandField_3932_53 (T@Field_11118_53) Bool)
(declare-fun IsPredicateField_3932_1790 (T@Field_11118_1790) Bool)
(declare-fun IsWandField_3932_1790 (T@Field_11118_1790) Bool)
(declare-fun IsPredicateField_3902_49487 (T@Field_10574_10579) Bool)
(declare-fun IsWandField_3902_49503 (T@Field_10574_10579) Bool)
(declare-fun IsPredicateField_3902_6635 (T@Field_10562_6635) Bool)
(declare-fun IsWandField_3902_6635 (T@Field_10562_6635) Bool)
(declare-fun IsPredicateField_3902_53 (T@Field_10562_53) Bool)
(declare-fun IsWandField_3902_53 (T@Field_10562_53) Bool)
(declare-fun IsPredicateField_3872_48670 (T@Field_9960_9965) Bool)
(declare-fun IsWandField_3872_48686 (T@Field_9960_9965) Bool)
(declare-fun IsPredicateField_3872_6635 (T@Field_9948_6635) Bool)
(declare-fun IsWandField_3872_6635 (T@Field_9948_6635) Bool)
(declare-fun IsPredicateField_3872_53 (T@Field_9948_53) Bool)
(declare-fun IsWandField_3872_53 (T@Field_9948_53) Bool)
(declare-fun IsPredicateField_3872_1203 (T@Field_9948_1203) Bool)
(declare-fun IsWandField_3872_1203 (T@Field_9948_1203) Bool)
(declare-fun IsPredicateField_3990_47853 (T@Field_6621_9965) Bool)
(declare-fun IsWandField_3990_47869 (T@Field_6621_9965) Bool)
(declare-fun IsPredicateField_3990_6635 (T@Field_6634_6635) Bool)
(declare-fun IsWandField_3990_6635 (T@Field_6634_6635) Bool)
(declare-fun IsPredicateField_3990_53 (T@Field_6621_53) Bool)
(declare-fun IsWandField_3990_53 (T@Field_6621_53) Bool)
(declare-fun HasDirectPerm_11732_24011 (T@PolymorphicMapType_6582 T@Ref T@Field_11744_11749) Bool)
(declare-fun HasDirectPerm_11732_1203 (T@PolymorphicMapType_6582 T@Ref T@Field_11732_2112) Bool)
(declare-fun HasDirectPerm_11732_6635 (T@PolymorphicMapType_6582 T@Ref T@Field_11732_6635) Bool)
(declare-fun HasDirectPerm_11732_53 (T@PolymorphicMapType_6582 T@Ref T@Field_11732_53) Bool)
(declare-fun HasDirectPerm_11118_22834 (T@PolymorphicMapType_6582 T@Ref T@Field_11130_11135) Bool)
(declare-fun HasDirectPerm_11118_1203 (T@PolymorphicMapType_6582 T@Ref T@Field_11118_1790) Bool)
(declare-fun HasDirectPerm_11118_6635 (T@PolymorphicMapType_6582 T@Ref T@Field_11118_6635) Bool)
(declare-fun HasDirectPerm_11118_53 (T@PolymorphicMapType_6582 T@Ref T@Field_11118_53) Bool)
(declare-fun HasDirectPerm_10562_21657 (T@PolymorphicMapType_6582 T@Ref T@Field_10574_10579) Bool)
(declare-fun HasDirectPerm_10562_1203 (T@PolymorphicMapType_6582 T@Ref T@Field_10562_1521) Bool)
(declare-fun HasDirectPerm_10562_6635 (T@PolymorphicMapType_6582 T@Ref T@Field_10562_6635) Bool)
(declare-fun HasDirectPerm_10562_53 (T@PolymorphicMapType_6582 T@Ref T@Field_10562_53) Bool)
(declare-fun HasDirectPerm_9948_20480 (T@PolymorphicMapType_6582 T@Ref T@Field_9960_9965) Bool)
(declare-fun HasDirectPerm_9948_1203 (T@PolymorphicMapType_6582 T@Ref T@Field_9948_1203) Bool)
(declare-fun HasDirectPerm_9948_6635 (T@PolymorphicMapType_6582 T@Ref T@Field_9948_6635) Bool)
(declare-fun HasDirectPerm_9948_53 (T@PolymorphicMapType_6582 T@Ref T@Field_9948_53) Bool)
(declare-fun HasDirectPerm_6621_19302 (T@PolymorphicMapType_6582 T@Ref T@Field_6621_9965) Bool)
(declare-fun HasDirectPerm_6621_1203 (T@PolymorphicMapType_6582 T@Ref T@Field_12345_2417) Bool)
(declare-fun HasDirectPerm_6621_6635 (T@PolymorphicMapType_6582 T@Ref T@Field_6634_6635) Bool)
(declare-fun HasDirectPerm_6621_53 (T@PolymorphicMapType_6582 T@Ref T@Field_6621_53) Bool)
(declare-fun |wand#ft| (Int T@Ref Real Bool) T@Field_9975_9976)
(declare-fun |wand_2#ft| (T@Ref Int Real Bool) T@Field_11145_11146)
(declare-fun |wand_3#ft| (Int T@Ref Real Bool) T@Field_11759_11760)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (Int T@Ref Real Bool) T@Field_9960_9965)
(declare-fun |wand_2#sm| (T@Ref Int Real Bool) T@Field_11130_11135)
(declare-fun |wand_3#sm| (Int T@Ref Real Bool) T@Field_11744_11749)
(declare-fun sumMask (T@PolymorphicMapType_6582 T@PolymorphicMapType_6582 T@PolymorphicMapType_6582) Bool)
(declare-fun InsidePredicate_11732_11118 (T@Field_11759_11760 T@FrameType T@Field_11145_11146 T@FrameType) Bool)
(declare-fun InsidePredicate_11732_10562 (T@Field_11759_11760 T@FrameType T@Field_10589_10590 T@FrameType) Bool)
(declare-fun InsidePredicate_11732_9948 (T@Field_11759_11760 T@FrameType T@Field_9975_9976 T@FrameType) Bool)
(declare-fun InsidePredicate_11732_6621 (T@Field_11759_11760 T@FrameType T@Field_6621_9976 T@FrameType) Bool)
(declare-fun InsidePredicate_11118_11732 (T@Field_11145_11146 T@FrameType T@Field_11759_11760 T@FrameType) Bool)
(declare-fun InsidePredicate_11118_10562 (T@Field_11145_11146 T@FrameType T@Field_10589_10590 T@FrameType) Bool)
(declare-fun InsidePredicate_11118_9948 (T@Field_11145_11146 T@FrameType T@Field_9975_9976 T@FrameType) Bool)
(declare-fun InsidePredicate_11118_6621 (T@Field_11145_11146 T@FrameType T@Field_6621_9976 T@FrameType) Bool)
(declare-fun InsidePredicate_10562_11732 (T@Field_10589_10590 T@FrameType T@Field_11759_11760 T@FrameType) Bool)
(declare-fun InsidePredicate_10562_11118 (T@Field_10589_10590 T@FrameType T@Field_11145_11146 T@FrameType) Bool)
(declare-fun InsidePredicate_10562_9948 (T@Field_10589_10590 T@FrameType T@Field_9975_9976 T@FrameType) Bool)
(declare-fun InsidePredicate_10562_6621 (T@Field_10589_10590 T@FrameType T@Field_6621_9976 T@FrameType) Bool)
(declare-fun InsidePredicate_9948_11732 (T@Field_9975_9976 T@FrameType T@Field_11759_11760 T@FrameType) Bool)
(declare-fun InsidePredicate_9948_11118 (T@Field_9975_9976 T@FrameType T@Field_11145_11146 T@FrameType) Bool)
(declare-fun InsidePredicate_9948_10562 (T@Field_9975_9976 T@FrameType T@Field_10589_10590 T@FrameType) Bool)
(declare-fun InsidePredicate_9948_6621 (T@Field_9975_9976 T@FrameType T@Field_6621_9976 T@FrameType) Bool)
(declare-fun InsidePredicate_6621_11732 (T@Field_6621_9976 T@FrameType T@Field_11759_11760 T@FrameType) Bool)
(declare-fun InsidePredicate_6621_11118 (T@Field_6621_9976 T@FrameType T@Field_11145_11146 T@FrameType) Bool)
(declare-fun InsidePredicate_6621_10562 (T@Field_6621_9976 T@FrameType T@Field_10589_10590 T@FrameType) Bool)
(declare-fun InsidePredicate_6621_9948 (T@Field_6621_9976 T@FrameType T@Field_9975_9976 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6561) (Heap1 T@PolymorphicMapType_6561) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 Int) (arg2 T@Ref) (arg3 Real) (arg4 Bool) ) (! (= (getPredWandId_3872_1203 (wand arg1 arg2 arg3 arg4)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Int) (arg3@@0 Real) (arg4@@0 Bool) ) (! (= (getPredWandId_3932_1790 (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0)) 2)
 :qid |stdinbpl.268:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((arg1@@1 Int) (arg2@@1 T@Ref) (arg3@@1 Real) (arg4@@1 Bool) ) (! (= (getPredWandId_3962_2112 (wand_3 arg1@@1 arg2@@1 arg3@@1 arg4@@1)) 3)
 :qid |stdinbpl.300:15|
 :skolemid |48|
 :pattern ( (wand_3 arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6561) (Mask T@PolymorphicMapType_6582) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6561) (Heap1@@0 T@PolymorphicMapType_6561) (Heap2 T@PolymorphicMapType_6561) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 Bool) ) (! (IsWandField_3902_1521 (wand_1 arg1@@2 arg2@@2 arg3@@2))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@2 arg2@@2 arg3@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 Bool) ) (! (IsWandField_3911_3912 (|wand_1#ft| arg1@@3 arg2@@3 arg3@@3))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@3 arg2@@3 arg3@@3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11759_11760) ) (!  (not (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11744_11749) ) (!  (not (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11732_2112) ) (!  (not (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11732_6635) ) (!  (not (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11732_53) ) (!  (not (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11145_11146) ) (!  (not (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_11130_11135) ) (!  (not (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11118_1790) ) (!  (not (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11118_6635) ) (!  (not (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11118_53) ) (!  (not (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_10589_10590) ) (!  (not (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_10574_10579) ) (!  (not (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10562_1521) ) (!  (not (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10562_6635) ) (!  (not (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10562_53) ) (!  (not (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9975_9976) ) (!  (not (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9960_9965) ) (!  (not (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9948_1203) ) (!  (not (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9948_6635) ) (!  (not (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9948_53) ) (!  (not (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_6621_9976) ) (!  (not (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_6621_9965) ) (!  (not (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_12345_2417) ) (!  (not (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_6634_6635) ) (!  (not (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_6621_53) ) (!  (not (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 Bool) ) (! (= (getPredWandId_3902_1521 (wand_1 arg1@@4 arg2@@4 arg3@@4)) 1)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 Bool) ) (!  (not (IsPredicateField_3902_1521 (wand_1 arg1@@5 arg2@@5 arg3@@5)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@5 arg2@@5 arg3@@5))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 Bool) ) (!  (not (IsPredicateField_3911_3912 (|wand_1#ft| arg1@@6 arg2@@6 arg3@@6)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@6 arg2@@6 arg3@@6))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@7 Bool) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 Bool) ) (!  (=> (= (wand_1 arg1@@7 arg2@@7 arg3@@7) (wand_1 arg1_2 arg2_2 arg3_2)) (and (= arg1@@7 arg1_2) (and (= arg2@@7 arg2_2) (= arg3@@7 arg3_2))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@7) (wand_1 arg1_2 arg2_2 arg3_2))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 Bool) ) (! (= (|wand_1#sm| arg1@@8 arg2@@8 arg3@@8) (WandMaskField_3911 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_3911 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6561) (ExhaleHeap T@PolymorphicMapType_6561) (Mask@@0 T@PolymorphicMapType_6582) (pm_f T@Field_11759_11760) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11732_9976 Mask@@0 null pm_f) (IsPredicateField_3971_3972 pm_f)) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@0) null (PredicateMaskField_11732 pm_f)) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap) null (PredicateMaskField_11732 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3971_3972 pm_f) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap) null (PredicateMaskField_11732 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6561) (ExhaleHeap@@0 T@PolymorphicMapType_6561) (Mask@@1 T@PolymorphicMapType_6582) (pm_f@@0 T@Field_11145_11146) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11118_9976 Mask@@1 null pm_f@@0) (IsPredicateField_3941_3942 pm_f@@0)) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@1) null (PredicateMaskField_11118 pm_f@@0)) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@0) null (PredicateMaskField_11118 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3941_3942 pm_f@@0) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@0) null (PredicateMaskField_11118 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6561) (ExhaleHeap@@1 T@PolymorphicMapType_6561) (Mask@@2 T@PolymorphicMapType_6582) (pm_f@@1 T@Field_10589_10590) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10562_9976 Mask@@2 null pm_f@@1) (IsPredicateField_3911_3912 pm_f@@1)) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@2) null (PredicateMaskField_10562 pm_f@@1)) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@1) null (PredicateMaskField_10562 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3911_3912 pm_f@@1) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@1) null (PredicateMaskField_10562 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6561) (ExhaleHeap@@2 T@PolymorphicMapType_6561) (Mask@@3 T@PolymorphicMapType_6582) (pm_f@@2 T@Field_9975_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9948_9976 Mask@@3 null pm_f@@2) (IsPredicateField_3881_3882 pm_f@@2)) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@3) null (PredicateMaskField_9948 pm_f@@2)) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@2) null (PredicateMaskField_9948 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsPredicateField_3881_3882 pm_f@@2) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@2) null (PredicateMaskField_9948 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6561) (ExhaleHeap@@3 T@PolymorphicMapType_6561) (Mask@@4 T@PolymorphicMapType_6582) (pm_f@@3 T@Field_6621_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6621_9976 Mask@@4 null pm_f@@3) (IsPredicateField_6621_24527 pm_f@@3)) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@4) null (PredicateMaskField_6621 pm_f@@3)) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@3) null (PredicateMaskField_6621 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6621_24527 pm_f@@3) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@3) null (PredicateMaskField_6621 pm_f@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6561) (ExhaleHeap@@4 T@PolymorphicMapType_6561) (Mask@@5 T@PolymorphicMapType_6582) (pm_f@@4 T@Field_11759_11760) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_11732_9976 Mask@@5 null pm_f@@4) (IsWandField_3971_3972 pm_f@@4)) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@5) null (WandMaskField_3971 pm_f@@4)) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@4) null (WandMaskField_3971 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_3971_3972 pm_f@@4) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@4) null (WandMaskField_3971 pm_f@@4)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6561) (ExhaleHeap@@5 T@PolymorphicMapType_6561) (Mask@@6 T@PolymorphicMapType_6582) (pm_f@@5 T@Field_11145_11146) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11118_9976 Mask@@6 null pm_f@@5) (IsWandField_3941_3942 pm_f@@5)) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@6) null (WandMaskField_3941 pm_f@@5)) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@5) null (WandMaskField_3941 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_3941_3942 pm_f@@5) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@5) null (WandMaskField_3941 pm_f@@5)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6561) (ExhaleHeap@@6 T@PolymorphicMapType_6561) (Mask@@7 T@PolymorphicMapType_6582) (pm_f@@6 T@Field_10589_10590) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_10562_9976 Mask@@7 null pm_f@@6) (IsWandField_3911_3912 pm_f@@6)) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@7) null (WandMaskField_3911 pm_f@@6)) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@6) null (WandMaskField_3911 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_3911_3912 pm_f@@6) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@6) null (WandMaskField_3911 pm_f@@6)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6561) (ExhaleHeap@@7 T@PolymorphicMapType_6561) (Mask@@8 T@PolymorphicMapType_6582) (pm_f@@7 T@Field_9975_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_9948_9976 Mask@@8 null pm_f@@7) (IsWandField_3881_3882 pm_f@@7)) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@8) null (WandMaskField_3881 pm_f@@7)) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@7) null (WandMaskField_3881 pm_f@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (IsWandField_3881_3882 pm_f@@7) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@7) null (WandMaskField_3881 pm_f@@7)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6561) (ExhaleHeap@@8 T@PolymorphicMapType_6561) (Mask@@9 T@PolymorphicMapType_6582) (pm_f@@8 T@Field_6621_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_6621_9976 Mask@@9 null pm_f@@8) (IsWandField_6621_32929 pm_f@@8)) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@9) null (WandMaskField_6621 pm_f@@8)) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@8) null (WandMaskField_6621 pm_f@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (IsWandField_6621_32929 pm_f@@8) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@8) null (WandMaskField_6621 pm_f@@8)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6561) (ExhaleHeap@@9 T@PolymorphicMapType_6561) (Mask@@10 T@PolymorphicMapType_6582) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@10) o_1 $allocated) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@9) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@9) o_1 $allocated))
)))
(assert (forall ((p T@Field_11759_11760) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11732_11732 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11732_11732 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_11145_11146) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_11118_11118 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11118_11118 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_10589_10590) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_10562_10562 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10562_10562 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_9975_9976) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_9948_9948 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9948_9948 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_6621_9976) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_6621_6621 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6621_6621 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert  (not (IsPredicateField_3990_2417 val)))
(assert  (not (IsWandField_3990_2417 val)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6561) (ExhaleHeap@@10 T@PolymorphicMapType_6561) (Mask@@11 T@PolymorphicMapType_6582) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@11) (succHeap Heap@@11 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6582) (o_2@@24 T@Ref) (f_4@@24 T@Field_11759_11760) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| Mask@@12) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3971_3972 f_4@@24))) (not (IsWandField_3971_3972 f_4@@24))) (<= (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| Mask@@12) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| Mask@@12) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6582) (o_2@@25 T@Ref) (f_4@@25 T@Field_11744_11749) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| Mask@@13) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3962_51121 f_4@@25))) (not (IsWandField_3962_51137 f_4@@25))) (<= (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| Mask@@13) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| Mask@@13) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6582) (o_2@@26 T@Ref) (f_4@@26 T@Field_11732_6635) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| Mask@@14) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3962_6635 f_4@@26))) (not (IsWandField_3962_6635 f_4@@26))) (<= (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| Mask@@14) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| Mask@@14) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6582) (o_2@@27 T@Ref) (f_4@@27 T@Field_11732_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| Mask@@15) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3962_53 f_4@@27))) (not (IsWandField_3962_53 f_4@@27))) (<= (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| Mask@@15) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| Mask@@15) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6582) (o_2@@28 T@Ref) (f_4@@28 T@Field_11732_2112) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| Mask@@16) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3962_2112 f_4@@28))) (not (IsWandField_3962_2112 f_4@@28))) (<= (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| Mask@@16) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| Mask@@16) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6582) (o_2@@29 T@Ref) (f_4@@29 T@Field_11145_11146) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| Mask@@17) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3941_3942 f_4@@29))) (not (IsWandField_3941_3942 f_4@@29))) (<= (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| Mask@@17) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| Mask@@17) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6582) (o_2@@30 T@Ref) (f_4@@30 T@Field_11130_11135) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| Mask@@18) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3932_50304 f_4@@30))) (not (IsWandField_3932_50320 f_4@@30))) (<= (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| Mask@@18) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| Mask@@18) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6582) (o_2@@31 T@Ref) (f_4@@31 T@Field_11118_6635) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| Mask@@19) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3932_6635 f_4@@31))) (not (IsWandField_3932_6635 f_4@@31))) (<= (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| Mask@@19) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| Mask@@19) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6582) (o_2@@32 T@Ref) (f_4@@32 T@Field_11118_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| Mask@@20) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3932_53 f_4@@32))) (not (IsWandField_3932_53 f_4@@32))) (<= (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| Mask@@20) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| Mask@@20) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6582) (o_2@@33 T@Ref) (f_4@@33 T@Field_11118_1790) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| Mask@@21) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3932_1790 f_4@@33))) (not (IsWandField_3932_1790 f_4@@33))) (<= (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| Mask@@21) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| Mask@@21) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6582) (o_2@@34 T@Ref) (f_4@@34 T@Field_10589_10590) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| Mask@@22) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3911_3912 f_4@@34))) (not (IsWandField_3911_3912 f_4@@34))) (<= (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| Mask@@22) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| Mask@@22) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6582) (o_2@@35 T@Ref) (f_4@@35 T@Field_10574_10579) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| Mask@@23) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_3902_49487 f_4@@35))) (not (IsWandField_3902_49503 f_4@@35))) (<= (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| Mask@@23) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| Mask@@23) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6582) (o_2@@36 T@Ref) (f_4@@36 T@Field_10562_6635) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| Mask@@24) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_3902_6635 f_4@@36))) (not (IsWandField_3902_6635 f_4@@36))) (<= (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| Mask@@24) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| Mask@@24) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6582) (o_2@@37 T@Ref) (f_4@@37 T@Field_10562_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| Mask@@25) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_3902_53 f_4@@37))) (not (IsWandField_3902_53 f_4@@37))) (<= (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| Mask@@25) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| Mask@@25) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6582) (o_2@@38 T@Ref) (f_4@@38 T@Field_10562_1521) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| Mask@@26) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_3902_1521 f_4@@38))) (not (IsWandField_3902_1521 f_4@@38))) (<= (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| Mask@@26) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| Mask@@26) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6582) (o_2@@39 T@Ref) (f_4@@39 T@Field_9975_9976) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| Mask@@27) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_3881_3882 f_4@@39))) (not (IsWandField_3881_3882 f_4@@39))) (<= (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| Mask@@27) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| Mask@@27) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6582) (o_2@@40 T@Ref) (f_4@@40 T@Field_9960_9965) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| Mask@@28) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_3872_48670 f_4@@40))) (not (IsWandField_3872_48686 f_4@@40))) (<= (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| Mask@@28) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| Mask@@28) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6582) (o_2@@41 T@Ref) (f_4@@41 T@Field_9948_6635) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| Mask@@29) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_3872_6635 f_4@@41))) (not (IsWandField_3872_6635 f_4@@41))) (<= (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| Mask@@29) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| Mask@@29) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6582) (o_2@@42 T@Ref) (f_4@@42 T@Field_9948_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| Mask@@30) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_3872_53 f_4@@42))) (not (IsWandField_3872_53 f_4@@42))) (<= (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| Mask@@30) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| Mask@@30) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_6582) (o_2@@43 T@Ref) (f_4@@43 T@Field_9948_1203) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| Mask@@31) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_3872_1203 f_4@@43))) (not (IsWandField_3872_1203 f_4@@43))) (<= (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| Mask@@31) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| Mask@@31) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_6582) (o_2@@44 T@Ref) (f_4@@44 T@Field_6621_9976) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| Mask@@32) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_6621_24527 f_4@@44))) (not (IsWandField_6621_32929 f_4@@44))) (<= (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| Mask@@32) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| Mask@@32) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_6582) (o_2@@45 T@Ref) (f_4@@45 T@Field_6621_9965) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| Mask@@33) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_3990_47853 f_4@@45))) (not (IsWandField_3990_47869 f_4@@45))) (<= (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| Mask@@33) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| Mask@@33) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_6582) (o_2@@46 T@Ref) (f_4@@46 T@Field_6634_6635) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| Mask@@34) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_3990_6635 f_4@@46))) (not (IsWandField_3990_6635 f_4@@46))) (<= (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| Mask@@34) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| Mask@@34) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_6582) (o_2@@47 T@Ref) (f_4@@47 T@Field_6621_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| Mask@@35) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_3990_53 f_4@@47))) (not (IsWandField_3990_53 f_4@@47))) (<= (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| Mask@@35) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| Mask@@35) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_6582) (o_2@@48 T@Ref) (f_4@@48 T@Field_12345_2417) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| Mask@@36) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_3990_2417 f_4@@48))) (not (IsWandField_3990_2417 f_4@@48))) (<= (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| Mask@@36) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| Mask@@36) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_6582) (o_2@@49 T@Ref) (f_4@@49 T@Field_11759_11760) ) (! (= (HasDirectPerm_11732_9976 Mask@@37 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| Mask@@37) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11732_9976 Mask@@37 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_6582) (o_2@@50 T@Ref) (f_4@@50 T@Field_11744_11749) ) (! (= (HasDirectPerm_11732_24011 Mask@@38 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| Mask@@38) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11732_24011 Mask@@38 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_6582) (o_2@@51 T@Ref) (f_4@@51 T@Field_11732_2112) ) (! (= (HasDirectPerm_11732_1203 Mask@@39 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| Mask@@39) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11732_1203 Mask@@39 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_6582) (o_2@@52 T@Ref) (f_4@@52 T@Field_11732_6635) ) (! (= (HasDirectPerm_11732_6635 Mask@@40 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| Mask@@40) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11732_6635 Mask@@40 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_6582) (o_2@@53 T@Ref) (f_4@@53 T@Field_11732_53) ) (! (= (HasDirectPerm_11732_53 Mask@@41 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| Mask@@41) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11732_53 Mask@@41 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_6582) (o_2@@54 T@Ref) (f_4@@54 T@Field_11145_11146) ) (! (= (HasDirectPerm_11118_9976 Mask@@42 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| Mask@@42) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11118_9976 Mask@@42 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_6582) (o_2@@55 T@Ref) (f_4@@55 T@Field_11130_11135) ) (! (= (HasDirectPerm_11118_22834 Mask@@43 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| Mask@@43) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11118_22834 Mask@@43 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_6582) (o_2@@56 T@Ref) (f_4@@56 T@Field_11118_1790) ) (! (= (HasDirectPerm_11118_1203 Mask@@44 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| Mask@@44) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11118_1203 Mask@@44 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_6582) (o_2@@57 T@Ref) (f_4@@57 T@Field_11118_6635) ) (! (= (HasDirectPerm_11118_6635 Mask@@45 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| Mask@@45) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11118_6635 Mask@@45 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_6582) (o_2@@58 T@Ref) (f_4@@58 T@Field_11118_53) ) (! (= (HasDirectPerm_11118_53 Mask@@46 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| Mask@@46) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11118_53 Mask@@46 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_6582) (o_2@@59 T@Ref) (f_4@@59 T@Field_10589_10590) ) (! (= (HasDirectPerm_10562_9976 Mask@@47 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| Mask@@47) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10562_9976 Mask@@47 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_6582) (o_2@@60 T@Ref) (f_4@@60 T@Field_10574_10579) ) (! (= (HasDirectPerm_10562_21657 Mask@@48 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| Mask@@48) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10562_21657 Mask@@48 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_6582) (o_2@@61 T@Ref) (f_4@@61 T@Field_10562_1521) ) (! (= (HasDirectPerm_10562_1203 Mask@@49 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| Mask@@49) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10562_1203 Mask@@49 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_6582) (o_2@@62 T@Ref) (f_4@@62 T@Field_10562_6635) ) (! (= (HasDirectPerm_10562_6635 Mask@@50 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| Mask@@50) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10562_6635 Mask@@50 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_6582) (o_2@@63 T@Ref) (f_4@@63 T@Field_10562_53) ) (! (= (HasDirectPerm_10562_53 Mask@@51 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| Mask@@51) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10562_53 Mask@@51 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_6582) (o_2@@64 T@Ref) (f_4@@64 T@Field_9975_9976) ) (! (= (HasDirectPerm_9948_9976 Mask@@52 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| Mask@@52) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9948_9976 Mask@@52 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_6582) (o_2@@65 T@Ref) (f_4@@65 T@Field_9960_9965) ) (! (= (HasDirectPerm_9948_20480 Mask@@53 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| Mask@@53) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9948_20480 Mask@@53 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_6582) (o_2@@66 T@Ref) (f_4@@66 T@Field_9948_1203) ) (! (= (HasDirectPerm_9948_1203 Mask@@54 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| Mask@@54) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9948_1203 Mask@@54 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_6582) (o_2@@67 T@Ref) (f_4@@67 T@Field_9948_6635) ) (! (= (HasDirectPerm_9948_6635 Mask@@55 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| Mask@@55) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9948_6635 Mask@@55 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_6582) (o_2@@68 T@Ref) (f_4@@68 T@Field_9948_53) ) (! (= (HasDirectPerm_9948_53 Mask@@56 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| Mask@@56) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9948_53 Mask@@56 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_6582) (o_2@@69 T@Ref) (f_4@@69 T@Field_6621_9976) ) (! (= (HasDirectPerm_6621_9976 Mask@@57 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| Mask@@57) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6621_9976 Mask@@57 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_6582) (o_2@@70 T@Ref) (f_4@@70 T@Field_6621_9965) ) (! (= (HasDirectPerm_6621_19302 Mask@@58 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| Mask@@58) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6621_19302 Mask@@58 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_6582) (o_2@@71 T@Ref) (f_4@@71 T@Field_12345_2417) ) (! (= (HasDirectPerm_6621_1203 Mask@@59 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| Mask@@59) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6621_1203 Mask@@59 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_6582) (o_2@@72 T@Ref) (f_4@@72 T@Field_6634_6635) ) (! (= (HasDirectPerm_6621_6635 Mask@@60 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| Mask@@60) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6621_6635 Mask@@60 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_6582) (o_2@@73 T@Ref) (f_4@@73 T@Field_6621_53) ) (! (= (HasDirectPerm_6621_53 Mask@@61 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| Mask@@61) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6621_53 Mask@@61 o_2@@73 f_4@@73))
)))
(assert (forall ((arg1@@9 Int) (arg2@@9 T@Ref) (arg3@@9 Real) (arg4@@2 Bool) ) (! (IsWandField_3872_1203 (wand arg1@@9 arg2@@9 arg3@@9 arg4@@2))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@9 arg2@@9 arg3@@9 arg4@@2))
)))
(assert (forall ((arg1@@10 Int) (arg2@@10 T@Ref) (arg3@@10 Real) (arg4@@3 Bool) ) (! (IsWandField_3881_3882 (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@3))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@3))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Int) (arg3@@11 Real) (arg4@@4 Bool) ) (! (IsWandField_3932_1790 (wand_2 arg1@@11 arg2@@11 arg3@@11 arg4@@4))
 :qid |stdinbpl.248:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@11 arg2@@11 arg3@@11 arg4@@4))
)))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Int) (arg3@@12 Real) (arg4@@5 Bool) ) (! (IsWandField_3941_3942 (|wand_2#ft| arg1@@12 arg2@@12 arg3@@12 arg4@@5))
 :qid |stdinbpl.252:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@12 arg2@@12 arg3@@12 arg4@@5))
)))
(assert (forall ((arg1@@13 Int) (arg2@@13 T@Ref) (arg3@@13 Real) (arg4@@6 Bool) ) (! (IsWandField_3962_2112 (wand_3 arg1@@13 arg2@@13 arg3@@13 arg4@@6))
 :qid |stdinbpl.280:15|
 :skolemid |43|
 :pattern ( (wand_3 arg1@@13 arg2@@13 arg3@@13 arg4@@6))
)))
(assert (forall ((arg1@@14 Int) (arg2@@14 T@Ref) (arg3@@14 Real) (arg4@@7 Bool) ) (! (IsWandField_3971_3972 (|wand_3#ft| arg1@@14 arg2@@14 arg3@@14 arg4@@7))
 :qid |stdinbpl.284:15|
 :skolemid |44|
 :pattern ( (|wand_3#ft| arg1@@14 arg2@@14 arg3@@14 arg4@@7))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6561) (ExhaleHeap@@11 T@PolymorphicMapType_6561) (Mask@@62 T@PolymorphicMapType_6582) (o_1@@0 T@Ref) (f_2 T@Field_11759_11760) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_11732_9976 Mask@@62 o_1@@0 f_2) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@12) o_1@@0 f_2) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@11) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@11) o_1@@0 f_2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6561) (ExhaleHeap@@12 T@PolymorphicMapType_6561) (Mask@@63 T@PolymorphicMapType_6582) (o_1@@1 T@Ref) (f_2@@0 T@Field_11744_11749) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_11732_24011 Mask@@63 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@13) o_1@@1 f_2@@0) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@12) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@12) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6561) (ExhaleHeap@@13 T@PolymorphicMapType_6561) (Mask@@64 T@PolymorphicMapType_6582) (o_1@@2 T@Ref) (f_2@@1 T@Field_11732_2112) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_11732_1203 Mask@@64 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@14) o_1@@2 f_2@@1) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@13) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@13) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6561) (ExhaleHeap@@14 T@PolymorphicMapType_6561) (Mask@@65 T@PolymorphicMapType_6582) (o_1@@3 T@Ref) (f_2@@2 T@Field_11732_6635) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_11732_6635 Mask@@65 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@15) o_1@@3 f_2@@2) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@14) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@14) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6561) (ExhaleHeap@@15 T@PolymorphicMapType_6561) (Mask@@66 T@PolymorphicMapType_6582) (o_1@@4 T@Ref) (f_2@@3 T@Field_11732_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_11732_53 Mask@@66 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@16) o_1@@4 f_2@@3) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@15) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@15) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6561) (ExhaleHeap@@16 T@PolymorphicMapType_6561) (Mask@@67 T@PolymorphicMapType_6582) (o_1@@5 T@Ref) (f_2@@4 T@Field_11145_11146) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_11118_9976 Mask@@67 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@17) o_1@@5 f_2@@4) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@16) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@16) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6561) (ExhaleHeap@@17 T@PolymorphicMapType_6561) (Mask@@68 T@PolymorphicMapType_6582) (o_1@@6 T@Ref) (f_2@@5 T@Field_11130_11135) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_11118_22834 Mask@@68 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@18) o_1@@6 f_2@@5) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@17) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@17) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6561) (ExhaleHeap@@18 T@PolymorphicMapType_6561) (Mask@@69 T@PolymorphicMapType_6582) (o_1@@7 T@Ref) (f_2@@6 T@Field_11118_1790) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_11118_1203 Mask@@69 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@19) o_1@@7 f_2@@6) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@18) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@18) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6561) (ExhaleHeap@@19 T@PolymorphicMapType_6561) (Mask@@70 T@PolymorphicMapType_6582) (o_1@@8 T@Ref) (f_2@@7 T@Field_11118_6635) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_11118_6635 Mask@@70 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@20) o_1@@8 f_2@@7) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@19) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@19) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6561) (ExhaleHeap@@20 T@PolymorphicMapType_6561) (Mask@@71 T@PolymorphicMapType_6582) (o_1@@9 T@Ref) (f_2@@8 T@Field_11118_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_11118_53 Mask@@71 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@21) o_1@@9 f_2@@8) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@20) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@20) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6561) (ExhaleHeap@@21 T@PolymorphicMapType_6561) (Mask@@72 T@PolymorphicMapType_6582) (o_1@@10 T@Ref) (f_2@@9 T@Field_10589_10590) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_10562_9976 Mask@@72 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@22) o_1@@10 f_2@@9) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@21) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@21) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6561) (ExhaleHeap@@22 T@PolymorphicMapType_6561) (Mask@@73 T@PolymorphicMapType_6582) (o_1@@11 T@Ref) (f_2@@10 T@Field_10574_10579) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_10562_21657 Mask@@73 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@23) o_1@@11 f_2@@10) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@22) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@22) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6561) (ExhaleHeap@@23 T@PolymorphicMapType_6561) (Mask@@74 T@PolymorphicMapType_6582) (o_1@@12 T@Ref) (f_2@@11 T@Field_10562_1521) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_10562_1203 Mask@@74 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@24) o_1@@12 f_2@@11) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@23) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@23) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6561) (ExhaleHeap@@24 T@PolymorphicMapType_6561) (Mask@@75 T@PolymorphicMapType_6582) (o_1@@13 T@Ref) (f_2@@12 T@Field_10562_6635) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_10562_6635 Mask@@75 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@25) o_1@@13 f_2@@12) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@24) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@24) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6561) (ExhaleHeap@@25 T@PolymorphicMapType_6561) (Mask@@76 T@PolymorphicMapType_6582) (o_1@@14 T@Ref) (f_2@@13 T@Field_10562_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_10562_53 Mask@@76 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@26) o_1@@14 f_2@@13) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@25) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@25) o_1@@14 f_2@@13))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6561) (ExhaleHeap@@26 T@PolymorphicMapType_6561) (Mask@@77 T@PolymorphicMapType_6582) (o_1@@15 T@Ref) (f_2@@14 T@Field_9975_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_9948_9976 Mask@@77 o_1@@15 f_2@@14) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@27) o_1@@15 f_2@@14) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@26) o_1@@15 f_2@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@26) o_1@@15 f_2@@14))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6561) (ExhaleHeap@@27 T@PolymorphicMapType_6561) (Mask@@78 T@PolymorphicMapType_6582) (o_1@@16 T@Ref) (f_2@@15 T@Field_9960_9965) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_9948_20480 Mask@@78 o_1@@16 f_2@@15) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@28) o_1@@16 f_2@@15) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@27) o_1@@16 f_2@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@27) o_1@@16 f_2@@15))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6561) (ExhaleHeap@@28 T@PolymorphicMapType_6561) (Mask@@79 T@PolymorphicMapType_6582) (o_1@@17 T@Ref) (f_2@@16 T@Field_9948_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_9948_1203 Mask@@79 o_1@@17 f_2@@16) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@29) o_1@@17 f_2@@16) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@28) o_1@@17 f_2@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@28) o_1@@17 f_2@@16))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6561) (ExhaleHeap@@29 T@PolymorphicMapType_6561) (Mask@@80 T@PolymorphicMapType_6582) (o_1@@18 T@Ref) (f_2@@17 T@Field_9948_6635) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_9948_6635 Mask@@80 o_1@@18 f_2@@17) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@30) o_1@@18 f_2@@17) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@29) o_1@@18 f_2@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@29) o_1@@18 f_2@@17))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6561) (ExhaleHeap@@30 T@PolymorphicMapType_6561) (Mask@@81 T@PolymorphicMapType_6582) (o_1@@19 T@Ref) (f_2@@18 T@Field_9948_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_9948_53 Mask@@81 o_1@@19 f_2@@18) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@31) o_1@@19 f_2@@18) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@30) o_1@@19 f_2@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@30) o_1@@19 f_2@@18))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6561) (ExhaleHeap@@31 T@PolymorphicMapType_6561) (Mask@@82 T@PolymorphicMapType_6582) (o_1@@20 T@Ref) (f_2@@19 T@Field_6621_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_6621_9976 Mask@@82 o_1@@20 f_2@@19) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@32) o_1@@20 f_2@@19) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@31) o_1@@20 f_2@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@31) o_1@@20 f_2@@19))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6561) (ExhaleHeap@@32 T@PolymorphicMapType_6561) (Mask@@83 T@PolymorphicMapType_6582) (o_1@@21 T@Ref) (f_2@@20 T@Field_6621_9965) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_6621_19302 Mask@@83 o_1@@21 f_2@@20) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@33) o_1@@21 f_2@@20) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@32) o_1@@21 f_2@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@32) o_1@@21 f_2@@20))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6561) (ExhaleHeap@@33 T@PolymorphicMapType_6561) (Mask@@84 T@PolymorphicMapType_6582) (o_1@@22 T@Ref) (f_2@@21 T@Field_12345_2417) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_6621_1203 Mask@@84 o_1@@22 f_2@@21) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@34) o_1@@22 f_2@@21) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@33) o_1@@22 f_2@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@33) o_1@@22 f_2@@21))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6561) (ExhaleHeap@@34 T@PolymorphicMapType_6561) (Mask@@85 T@PolymorphicMapType_6582) (o_1@@23 T@Ref) (f_2@@22 T@Field_6634_6635) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_6621_6635 Mask@@85 o_1@@23 f_2@@22) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@35) o_1@@23 f_2@@22) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@34) o_1@@23 f_2@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@34) o_1@@23 f_2@@22))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6561) (ExhaleHeap@@35 T@PolymorphicMapType_6561) (Mask@@86 T@PolymorphicMapType_6582) (o_1@@24 T@Ref) (f_2@@23 T@Field_6621_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_6621_53 Mask@@86 o_1@@24 f_2@@23) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@36) o_1@@24 f_2@@23) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@35) o_1@@24 f_2@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@35) o_1@@24 f_2@@23))
)))
(assert (forall ((arg1@@15 Int) (arg2@@15 T@Ref) (arg3@@15 Real) (arg4@@8 Bool) ) (!  (not (IsPredicateField_3872_1203 (wand arg1@@15 arg2@@15 arg3@@15 arg4@@8)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@15 arg2@@15 arg3@@15 arg4@@8))
)))
(assert (forall ((arg1@@16 Int) (arg2@@16 T@Ref) (arg3@@16 Real) (arg4@@9 Bool) ) (!  (not (IsPredicateField_3881_3882 (|wand#ft| arg1@@16 arg2@@16 arg3@@16 arg4@@9)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@16 arg2@@16 arg3@@16 arg4@@9))
)))
(assert (forall ((arg1@@17 T@Ref) (arg2@@17 Int) (arg3@@17 Real) (arg4@@10 Bool) ) (!  (not (IsPredicateField_3932_1790 (wand_2 arg1@@17 arg2@@17 arg3@@17 arg4@@10)))
 :qid |stdinbpl.256:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@17 arg2@@17 arg3@@17 arg4@@10))
)))
(assert (forall ((arg1@@18 T@Ref) (arg2@@18 Int) (arg3@@18 Real) (arg4@@11 Bool) ) (!  (not (IsPredicateField_3941_3942 (|wand_2#ft| arg1@@18 arg2@@18 arg3@@18 arg4@@11)))
 :qid |stdinbpl.260:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@18 arg2@@18 arg3@@18 arg4@@11))
)))
(assert (forall ((arg1@@19 Int) (arg2@@19 T@Ref) (arg3@@19 Real) (arg4@@12 Bool) ) (!  (not (IsPredicateField_3962_2112 (wand_3 arg1@@19 arg2@@19 arg3@@19 arg4@@12)))
 :qid |stdinbpl.288:15|
 :skolemid |45|
 :pattern ( (wand_3 arg1@@19 arg2@@19 arg3@@19 arg4@@12))
)))
(assert (forall ((arg1@@20 Int) (arg2@@20 T@Ref) (arg3@@20 Real) (arg4@@13 Bool) ) (!  (not (IsPredicateField_3971_3972 (|wand_3#ft| arg1@@20 arg2@@20 arg3@@20 arg4@@13)))
 :qid |stdinbpl.292:15|
 :skolemid |46|
 :pattern ( (|wand_3#ft| arg1@@20 arg2@@20 arg3@@20 arg4@@13))
)))
(assert (forall ((arg1@@21 Int) (arg2@@21 T@Ref) (arg3@@21 Real) (arg4@@14 Bool) ) (! (= (|wand#sm| arg1@@21 arg2@@21 arg3@@21 arg4@@14) (WandMaskField_3881 (|wand#ft| arg1@@21 arg2@@21 arg3@@21 arg4@@14)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_3881 (|wand#ft| arg1@@21 arg2@@21 arg3@@21 arg4@@14)))
)))
(assert (forall ((arg1@@22 T@Ref) (arg2@@22 Int) (arg3@@22 Real) (arg4@@15 Bool) ) (! (= (|wand_2#sm| arg1@@22 arg2@@22 arg3@@22 arg4@@15) (WandMaskField_3941 (|wand_2#ft| arg1@@22 arg2@@22 arg3@@22 arg4@@15)))
 :qid |stdinbpl.264:15|
 :skolemid |40|
 :pattern ( (WandMaskField_3941 (|wand_2#ft| arg1@@22 arg2@@22 arg3@@22 arg4@@15)))
)))
(assert (forall ((arg1@@23 Int) (arg2@@23 T@Ref) (arg3@@23 Real) (arg4@@16 Bool) ) (! (= (|wand_3#sm| arg1@@23 arg2@@23 arg3@@23 arg4@@16) (WandMaskField_3971 (|wand_3#ft| arg1@@23 arg2@@23 arg3@@23 arg4@@16)))
 :qid |stdinbpl.296:15|
 :skolemid |47|
 :pattern ( (WandMaskField_3971 (|wand_3#ft| arg1@@23 arg2@@23 arg3@@23 arg4@@16)))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_11759_11760) ) (! (= (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_11744_11749) ) (! (= (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_11732_6635) ) (! (= (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_11732_53) ) (! (= (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_11732_2112) ) (! (= (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_11145_11146) ) (! (= (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_11130_11135) ) (! (= (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_11118_6635) ) (! (= (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_11118_53) ) (! (= (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_11118_1790) ) (! (= (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_10589_10590) ) (! (= (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_10574_10579) ) (! (= (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_10562_6635) ) (! (= (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_10562_53) ) (! (= (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_10562_1521) ) (! (= (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_9975_9976) ) (! (= (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_9960_9965) ) (! (= (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_9948_6635) ) (! (= (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_9948_53) ) (! (= (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_9948_1203) ) (! (= (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_6621_9976) ) (! (= (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_6621_9965) ) (! (= (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_6634_6635) ) (! (= (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_6621_53) ) (! (= (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_12345_2417) ) (! (= (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6582) (SummandMask1 T@PolymorphicMapType_6582) (SummandMask2 T@PolymorphicMapType_6582) (o_2@@99 T@Ref) (f_4@@99 T@Field_11759_11760) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6582) (SummandMask1@@0 T@PolymorphicMapType_6582) (SummandMask2@@0 T@PolymorphicMapType_6582) (o_2@@100 T@Ref) (f_4@@100 T@Field_11744_11749) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6582) (SummandMask1@@1 T@PolymorphicMapType_6582) (SummandMask2@@1 T@PolymorphicMapType_6582) (o_2@@101 T@Ref) (f_4@@101 T@Field_11732_6635) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6582) (SummandMask1@@2 T@PolymorphicMapType_6582) (SummandMask2@@2 T@PolymorphicMapType_6582) (o_2@@102 T@Ref) (f_4@@102 T@Field_11732_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6582) (SummandMask1@@3 T@PolymorphicMapType_6582) (SummandMask2@@3 T@PolymorphicMapType_6582) (o_2@@103 T@Ref) (f_4@@103 T@Field_11732_2112) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6582) (SummandMask1@@4 T@PolymorphicMapType_6582) (SummandMask2@@4 T@PolymorphicMapType_6582) (o_2@@104 T@Ref) (f_4@@104 T@Field_11145_11146) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6582) (SummandMask1@@5 T@PolymorphicMapType_6582) (SummandMask2@@5 T@PolymorphicMapType_6582) (o_2@@105 T@Ref) (f_4@@105 T@Field_11130_11135) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6582) (SummandMask1@@6 T@PolymorphicMapType_6582) (SummandMask2@@6 T@PolymorphicMapType_6582) (o_2@@106 T@Ref) (f_4@@106 T@Field_11118_6635) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6582) (SummandMask1@@7 T@PolymorphicMapType_6582) (SummandMask2@@7 T@PolymorphicMapType_6582) (o_2@@107 T@Ref) (f_4@@107 T@Field_11118_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6582) (SummandMask1@@8 T@PolymorphicMapType_6582) (SummandMask2@@8 T@PolymorphicMapType_6582) (o_2@@108 T@Ref) (f_4@@108 T@Field_11118_1790) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_6582) (SummandMask1@@9 T@PolymorphicMapType_6582) (SummandMask2@@9 T@PolymorphicMapType_6582) (o_2@@109 T@Ref) (f_4@@109 T@Field_10589_10590) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_6582) (SummandMask1@@10 T@PolymorphicMapType_6582) (SummandMask2@@10 T@PolymorphicMapType_6582) (o_2@@110 T@Ref) (f_4@@110 T@Field_10574_10579) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_6582) (SummandMask1@@11 T@PolymorphicMapType_6582) (SummandMask2@@11 T@PolymorphicMapType_6582) (o_2@@111 T@Ref) (f_4@@111 T@Field_10562_6635) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_6582) (SummandMask1@@12 T@PolymorphicMapType_6582) (SummandMask2@@12 T@PolymorphicMapType_6582) (o_2@@112 T@Ref) (f_4@@112 T@Field_10562_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_6582) (SummandMask1@@13 T@PolymorphicMapType_6582) (SummandMask2@@13 T@PolymorphicMapType_6582) (o_2@@113 T@Ref) (f_4@@113 T@Field_10562_1521) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_6582) (SummandMask1@@14 T@PolymorphicMapType_6582) (SummandMask2@@14 T@PolymorphicMapType_6582) (o_2@@114 T@Ref) (f_4@@114 T@Field_9975_9976) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_6582) (SummandMask1@@15 T@PolymorphicMapType_6582) (SummandMask2@@15 T@PolymorphicMapType_6582) (o_2@@115 T@Ref) (f_4@@115 T@Field_9960_9965) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_6582) (SummandMask1@@16 T@PolymorphicMapType_6582) (SummandMask2@@16 T@PolymorphicMapType_6582) (o_2@@116 T@Ref) (f_4@@116 T@Field_9948_6635) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_6582) (SummandMask1@@17 T@PolymorphicMapType_6582) (SummandMask2@@17 T@PolymorphicMapType_6582) (o_2@@117 T@Ref) (f_4@@117 T@Field_9948_53) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_6582) (SummandMask1@@18 T@PolymorphicMapType_6582) (SummandMask2@@18 T@PolymorphicMapType_6582) (o_2@@118 T@Ref) (f_4@@118 T@Field_9948_1203) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_6582) (SummandMask1@@19 T@PolymorphicMapType_6582) (SummandMask2@@19 T@PolymorphicMapType_6582) (o_2@@119 T@Ref) (f_4@@119 T@Field_6621_9976) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_6582) (SummandMask1@@20 T@PolymorphicMapType_6582) (SummandMask2@@20 T@PolymorphicMapType_6582) (o_2@@120 T@Ref) (f_4@@120 T@Field_6621_9965) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_6582) (SummandMask1@@21 T@PolymorphicMapType_6582) (SummandMask2@@21 T@PolymorphicMapType_6582) (o_2@@121 T@Ref) (f_4@@121 T@Field_6634_6635) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_6582) (SummandMask1@@22 T@PolymorphicMapType_6582) (SummandMask2@@22 T@PolymorphicMapType_6582) (o_2@@122 T@Ref) (f_4@@122 T@Field_6621_53) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_6582) (SummandMask1@@23 T@PolymorphicMapType_6582) (SummandMask2@@23 T@PolymorphicMapType_6582) (o_2@@123 T@Ref) (f_4@@123 T@Field_12345_2417) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6561) (o T@Ref) (f_3 T@Field_11759_11760) (v T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@37) (store (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@37) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@37) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@37) (store (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@37) o f_3 v)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6561) (o@@0 T@Ref) (f_3@@0 T@Field_11744_11749) (v@@0 T@PolymorphicMapType_7110) ) (! (succHeap Heap@@38 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@38) (store (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@38) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@38) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@38) (store (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@38) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6561) (o@@1 T@Ref) (f_3@@1 T@Field_11732_2112) (v@@1 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@39) (store (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@39) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@39) (store (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@39) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@39) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6561) (o@@2 T@Ref) (f_3@@2 T@Field_11732_6635) (v@@2 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@40) (store (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@40) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@40) (store (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@40) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@40) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_6561) (o@@3 T@Ref) (f_3@@3 T@Field_11732_53) (v@@3 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@41) (store (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@41) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@41) (store (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@41) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@41) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6561) (o@@4 T@Ref) (f_3@@4 T@Field_11145_11146) (v@@4 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@42) (store (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@42) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@42) (store (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@42) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@42) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_6561) (o@@5 T@Ref) (f_3@@5 T@Field_11130_11135) (v@@5 T@PolymorphicMapType_7110) ) (! (succHeap Heap@@43 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@43) (store (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@43) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@43) (store (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@43) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@43) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_6561) (o@@6 T@Ref) (f_3@@6 T@Field_11118_1790) (v@@6 Int) ) (! (succHeap Heap@@44 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@44) (store (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@44) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@44) (store (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@44) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@44) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_6561) (o@@7 T@Ref) (f_3@@7 T@Field_11118_6635) (v@@7 T@Ref) ) (! (succHeap Heap@@45 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@45) (store (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@45) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@45) (store (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@45) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@45) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_6561) (o@@8 T@Ref) (f_3@@8 T@Field_11118_53) (v@@8 Bool) ) (! (succHeap Heap@@46 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@46) (store (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@46) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@46) (store (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@46) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@46) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_6561) (o@@9 T@Ref) (f_3@@9 T@Field_10589_10590) (v@@9 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@47) (store (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@47) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@47) (store (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@47) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@47) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_6561) (o@@10 T@Ref) (f_3@@10 T@Field_10574_10579) (v@@10 T@PolymorphicMapType_7110) ) (! (succHeap Heap@@48 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@48) (store (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@48) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@48) (store (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@48) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@48) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_6561) (o@@11 T@Ref) (f_3@@11 T@Field_10562_1521) (v@@11 Int) ) (! (succHeap Heap@@49 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@49) (store (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@49) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@49) (store (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@49) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@49) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_6561) (o@@12 T@Ref) (f_3@@12 T@Field_10562_6635) (v@@12 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@50) (store (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@50) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@50) (store (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@50) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@50) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_6561) (o@@13 T@Ref) (f_3@@13 T@Field_10562_53) (v@@13 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@51) (store (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@51) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@51) (store (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@51) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@51) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_6561) (o@@14 T@Ref) (f_3@@14 T@Field_9975_9976) (v@@14 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@52) (store (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@52) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@52) (store (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@52) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@52) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_6561) (o@@15 T@Ref) (f_3@@15 T@Field_9960_9965) (v@@15 T@PolymorphicMapType_7110) ) (! (succHeap Heap@@53 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@53) (store (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@53) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@53) (store (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@53) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@53) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_6561) (o@@16 T@Ref) (f_3@@16 T@Field_9948_1203) (v@@16 Int) ) (! (succHeap Heap@@54 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@54) (store (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@54) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@54) (store (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@54) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@54) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_6561) (o@@17 T@Ref) (f_3@@17 T@Field_9948_6635) (v@@17 T@Ref) ) (! (succHeap Heap@@55 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@55) (store (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@55) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@55) (store (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@55) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@55) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_6561) (o@@18 T@Ref) (f_3@@18 T@Field_9948_53) (v@@18 Bool) ) (! (succHeap Heap@@56 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@56) (store (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@56) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@56) (store (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@56) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@56) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_6561) (o@@19 T@Ref) (f_3@@19 T@Field_6621_9976) (v@@19 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@57) (store (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@57) o@@19 f_3@@19 v@@19) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@57) (store (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@57) o@@19 f_3@@19 v@@19) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@57) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_6561) (o@@20 T@Ref) (f_3@@20 T@Field_6621_9965) (v@@20 T@PolymorphicMapType_7110) ) (! (succHeap Heap@@58 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@58) (store (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@58) o@@20 f_3@@20 v@@20) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@58) (store (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@58) o@@20 f_3@@20 v@@20) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@58) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_6561) (o@@21 T@Ref) (f_3@@21 T@Field_12345_2417) (v@@21 Int) ) (! (succHeap Heap@@59 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@59) (store (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@59) o@@21 f_3@@21 v@@21) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@59) (store (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@59) o@@21 f_3@@21 v@@21) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@59) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_6561) (o@@22 T@Ref) (f_3@@22 T@Field_6634_6635) (v@@22 T@Ref) ) (! (succHeap Heap@@60 (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@60) (store (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@60) o@@22 f_3@@22 v@@22) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@60) (store (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@60) o@@22 f_3@@22 v@@22) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@60) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_6561) (o@@23 T@Ref) (f_3@@23 T@Field_6621_53) (v@@23 Bool) ) (! (succHeap Heap@@61 (PolymorphicMapType_6561 (store (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@61) o@@23 f_3@@23 v@@23) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6561 (store (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@61) o@@23 f_3@@23 v@@23) (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@61) (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@61)))
)))
(assert (forall ((o@@24 T@Ref) (f T@Field_6634_6635) (Heap@@62 T@PolymorphicMapType_6561) ) (!  (=> (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@62) o@@24 $allocated) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@62) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@62) o@@24 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@62) o@@24 f))
)))
(assert (forall ((p@@5 T@Field_11759_11760) (v_1@@4 T@FrameType) (q T@Field_11759_11760) (w@@4 T@FrameType) (r T@Field_11759_11760) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11732 p@@5 v_1@@4 q w@@4) (InsidePredicate_11732_11732 q w@@4 r u)) (InsidePredicate_11732_11732 p@@5 v_1@@4 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11732 p@@5 v_1@@4 q w@@4) (InsidePredicate_11732_11732 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_11759_11760) (v_1@@5 T@FrameType) (q@@0 T@Field_11759_11760) (w@@5 T@FrameType) (r@@0 T@Field_11145_11146) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11732 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_11732_11118 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_11732_11118 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11732 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_11732_11118 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_11759_11760) (v_1@@6 T@FrameType) (q@@1 T@Field_11759_11760) (w@@6 T@FrameType) (r@@1 T@Field_10589_10590) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11732 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_11732_10562 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_11732_10562 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11732 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_11732_10562 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_11759_11760) (v_1@@7 T@FrameType) (q@@2 T@Field_11759_11760) (w@@7 T@FrameType) (r@@2 T@Field_9975_9976) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11732 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_11732_9948 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_11732_9948 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11732 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_11732_9948 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_11759_11760) (v_1@@8 T@FrameType) (q@@3 T@Field_11759_11760) (w@@8 T@FrameType) (r@@3 T@Field_6621_9976) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11732 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_11732_6621 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_11732_6621 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11732 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_11732_6621 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_11759_11760) (v_1@@9 T@FrameType) (q@@4 T@Field_11145_11146) (w@@9 T@FrameType) (r@@4 T@Field_11759_11760) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11118 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_11118_11732 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_11732_11732 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11118 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_11118_11732 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_11759_11760) (v_1@@10 T@FrameType) (q@@5 T@Field_11145_11146) (w@@10 T@FrameType) (r@@5 T@Field_11145_11146) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11118 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_11118_11118 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_11732_11118 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11118 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_11118_11118 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_11759_11760) (v_1@@11 T@FrameType) (q@@6 T@Field_11145_11146) (w@@11 T@FrameType) (r@@6 T@Field_10589_10590) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11118 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_11118_10562 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_11732_10562 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11118 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_11118_10562 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_11759_11760) (v_1@@12 T@FrameType) (q@@7 T@Field_11145_11146) (w@@12 T@FrameType) (r@@7 T@Field_9975_9976) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11118 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_11118_9948 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_11732_9948 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11118 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_11118_9948 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_11759_11760) (v_1@@13 T@FrameType) (q@@8 T@Field_11145_11146) (w@@13 T@FrameType) (r@@8 T@Field_6621_9976) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_11118 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_11118_6621 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_11732_6621 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_11118 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_11118_6621 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_11759_11760) (v_1@@14 T@FrameType) (q@@9 T@Field_10589_10590) (w@@14 T@FrameType) (r@@9 T@Field_11759_11760) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_10562 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_10562_11732 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_11732_11732 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_10562 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_10562_11732 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_11759_11760) (v_1@@15 T@FrameType) (q@@10 T@Field_10589_10590) (w@@15 T@FrameType) (r@@10 T@Field_11145_11146) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_10562 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_10562_11118 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_11732_11118 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_10562 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_10562_11118 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_11759_11760) (v_1@@16 T@FrameType) (q@@11 T@Field_10589_10590) (w@@16 T@FrameType) (r@@11 T@Field_10589_10590) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_10562 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_10562_10562 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_11732_10562 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_10562 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_10562_10562 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_11759_11760) (v_1@@17 T@FrameType) (q@@12 T@Field_10589_10590) (w@@17 T@FrameType) (r@@12 T@Field_9975_9976) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_10562 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_10562_9948 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_11732_9948 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_10562 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_10562_9948 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_11759_11760) (v_1@@18 T@FrameType) (q@@13 T@Field_10589_10590) (w@@18 T@FrameType) (r@@13 T@Field_6621_9976) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_10562 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_10562_6621 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_11732_6621 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_10562 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_10562_6621 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_11759_11760) (v_1@@19 T@FrameType) (q@@14 T@Field_9975_9976) (w@@19 T@FrameType) (r@@14 T@Field_11759_11760) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_9948 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_9948_11732 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_11732_11732 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_9948 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_9948_11732 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_11759_11760) (v_1@@20 T@FrameType) (q@@15 T@Field_9975_9976) (w@@20 T@FrameType) (r@@15 T@Field_11145_11146) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_9948 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_9948_11118 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_11732_11118 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_9948 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_9948_11118 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_11759_11760) (v_1@@21 T@FrameType) (q@@16 T@Field_9975_9976) (w@@21 T@FrameType) (r@@16 T@Field_10589_10590) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_9948 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_9948_10562 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_11732_10562 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_9948 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_9948_10562 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_11759_11760) (v_1@@22 T@FrameType) (q@@17 T@Field_9975_9976) (w@@22 T@FrameType) (r@@17 T@Field_9975_9976) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_9948 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_9948_9948 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_11732_9948 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_9948 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_9948_9948 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_11759_11760) (v_1@@23 T@FrameType) (q@@18 T@Field_9975_9976) (w@@23 T@FrameType) (r@@18 T@Field_6621_9976) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_9948 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_9948_6621 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_11732_6621 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_9948 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_9948_6621 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_11759_11760) (v_1@@24 T@FrameType) (q@@19 T@Field_6621_9976) (w@@24 T@FrameType) (r@@19 T@Field_11759_11760) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_6621 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_6621_11732 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_11732_11732 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_6621 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_6621_11732 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_11759_11760) (v_1@@25 T@FrameType) (q@@20 T@Field_6621_9976) (w@@25 T@FrameType) (r@@20 T@Field_11145_11146) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_6621 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_6621_11118 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_11732_11118 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_6621 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_6621_11118 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_11759_11760) (v_1@@26 T@FrameType) (q@@21 T@Field_6621_9976) (w@@26 T@FrameType) (r@@21 T@Field_10589_10590) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_6621 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_6621_10562 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_11732_10562 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_6621 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_6621_10562 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_11759_11760) (v_1@@27 T@FrameType) (q@@22 T@Field_6621_9976) (w@@27 T@FrameType) (r@@22 T@Field_9975_9976) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_6621 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_6621_9948 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_11732_9948 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_6621 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_6621_9948 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_11759_11760) (v_1@@28 T@FrameType) (q@@23 T@Field_6621_9976) (w@@28 T@FrameType) (r@@23 T@Field_6621_9976) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_11732_6621 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_6621_6621 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_11732_6621 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11732_6621 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_6621_6621 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_11145_11146) (v_1@@29 T@FrameType) (q@@24 T@Field_11759_11760) (w@@29 T@FrameType) (r@@24 T@Field_11759_11760) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11732 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_11732_11732 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_11118_11732 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11732 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_11732_11732 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_11145_11146) (v_1@@30 T@FrameType) (q@@25 T@Field_11759_11760) (w@@30 T@FrameType) (r@@25 T@Field_11145_11146) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11732 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_11732_11118 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_11118_11118 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11732 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_11732_11118 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_11145_11146) (v_1@@31 T@FrameType) (q@@26 T@Field_11759_11760) (w@@31 T@FrameType) (r@@26 T@Field_10589_10590) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11732 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_11732_10562 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_11118_10562 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11732 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_11732_10562 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_11145_11146) (v_1@@32 T@FrameType) (q@@27 T@Field_11759_11760) (w@@32 T@FrameType) (r@@27 T@Field_9975_9976) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11732 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_11732_9948 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_11118_9948 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11732 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_11732_9948 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_11145_11146) (v_1@@33 T@FrameType) (q@@28 T@Field_11759_11760) (w@@33 T@FrameType) (r@@28 T@Field_6621_9976) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11732 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_11732_6621 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_11118_6621 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11732 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_11732_6621 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_11145_11146) (v_1@@34 T@FrameType) (q@@29 T@Field_11145_11146) (w@@34 T@FrameType) (r@@29 T@Field_11759_11760) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11118 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_11118_11732 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_11118_11732 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11118 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_11118_11732 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_11145_11146) (v_1@@35 T@FrameType) (q@@30 T@Field_11145_11146) (w@@35 T@FrameType) (r@@30 T@Field_11145_11146) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11118 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_11118_11118 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_11118_11118 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11118 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_11118_11118 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_11145_11146) (v_1@@36 T@FrameType) (q@@31 T@Field_11145_11146) (w@@36 T@FrameType) (r@@31 T@Field_10589_10590) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11118 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_11118_10562 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_11118_10562 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11118 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_11118_10562 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_11145_11146) (v_1@@37 T@FrameType) (q@@32 T@Field_11145_11146) (w@@37 T@FrameType) (r@@32 T@Field_9975_9976) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11118 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_11118_9948 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_11118_9948 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11118 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_11118_9948 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_11145_11146) (v_1@@38 T@FrameType) (q@@33 T@Field_11145_11146) (w@@38 T@FrameType) (r@@33 T@Field_6621_9976) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_11118 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_11118_6621 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_11118_6621 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_11118 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_11118_6621 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_11145_11146) (v_1@@39 T@FrameType) (q@@34 T@Field_10589_10590) (w@@39 T@FrameType) (r@@34 T@Field_11759_11760) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_10562 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_10562_11732 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_11118_11732 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_10562 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_10562_11732 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_11145_11146) (v_1@@40 T@FrameType) (q@@35 T@Field_10589_10590) (w@@40 T@FrameType) (r@@35 T@Field_11145_11146) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_10562 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_10562_11118 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_11118_11118 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_10562 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_10562_11118 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_11145_11146) (v_1@@41 T@FrameType) (q@@36 T@Field_10589_10590) (w@@41 T@FrameType) (r@@36 T@Field_10589_10590) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_10562 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_10562_10562 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_11118_10562 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_10562 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_10562_10562 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_11145_11146) (v_1@@42 T@FrameType) (q@@37 T@Field_10589_10590) (w@@42 T@FrameType) (r@@37 T@Field_9975_9976) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_10562 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_10562_9948 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_11118_9948 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_10562 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_10562_9948 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_11145_11146) (v_1@@43 T@FrameType) (q@@38 T@Field_10589_10590) (w@@43 T@FrameType) (r@@38 T@Field_6621_9976) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_10562 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_10562_6621 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_11118_6621 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_10562 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_10562_6621 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_11145_11146) (v_1@@44 T@FrameType) (q@@39 T@Field_9975_9976) (w@@44 T@FrameType) (r@@39 T@Field_11759_11760) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_9948 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_9948_11732 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_11118_11732 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_9948 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_9948_11732 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_11145_11146) (v_1@@45 T@FrameType) (q@@40 T@Field_9975_9976) (w@@45 T@FrameType) (r@@40 T@Field_11145_11146) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_9948 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_9948_11118 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_11118_11118 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_9948 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_9948_11118 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_11145_11146) (v_1@@46 T@FrameType) (q@@41 T@Field_9975_9976) (w@@46 T@FrameType) (r@@41 T@Field_10589_10590) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_9948 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_9948_10562 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_11118_10562 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_9948 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_9948_10562 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_11145_11146) (v_1@@47 T@FrameType) (q@@42 T@Field_9975_9976) (w@@47 T@FrameType) (r@@42 T@Field_9975_9976) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_9948 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_9948_9948 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_11118_9948 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_9948 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_9948_9948 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_11145_11146) (v_1@@48 T@FrameType) (q@@43 T@Field_9975_9976) (w@@48 T@FrameType) (r@@43 T@Field_6621_9976) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_9948 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_9948_6621 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_11118_6621 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_9948 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_9948_6621 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_11145_11146) (v_1@@49 T@FrameType) (q@@44 T@Field_6621_9976) (w@@49 T@FrameType) (r@@44 T@Field_11759_11760) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_6621 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_6621_11732 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_11118_11732 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_6621 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_6621_11732 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_11145_11146) (v_1@@50 T@FrameType) (q@@45 T@Field_6621_9976) (w@@50 T@FrameType) (r@@45 T@Field_11145_11146) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_6621 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_6621_11118 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_11118_11118 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_6621 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_6621_11118 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_11145_11146) (v_1@@51 T@FrameType) (q@@46 T@Field_6621_9976) (w@@51 T@FrameType) (r@@46 T@Field_10589_10590) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_6621 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_6621_10562 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_11118_10562 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_6621 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_6621_10562 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_11145_11146) (v_1@@52 T@FrameType) (q@@47 T@Field_6621_9976) (w@@52 T@FrameType) (r@@47 T@Field_9975_9976) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_6621 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_6621_9948 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_11118_9948 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_6621 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_6621_9948 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_11145_11146) (v_1@@53 T@FrameType) (q@@48 T@Field_6621_9976) (w@@53 T@FrameType) (r@@48 T@Field_6621_9976) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_11118_6621 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_6621_6621 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_11118_6621 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11118_6621 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_6621_6621 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_10589_10590) (v_1@@54 T@FrameType) (q@@49 T@Field_11759_11760) (w@@54 T@FrameType) (r@@49 T@Field_11759_11760) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11732 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_11732_11732 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_10562_11732 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11732 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_11732_11732 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_10589_10590) (v_1@@55 T@FrameType) (q@@50 T@Field_11759_11760) (w@@55 T@FrameType) (r@@50 T@Field_11145_11146) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11732 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_11732_11118 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_10562_11118 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11732 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_11732_11118 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_10589_10590) (v_1@@56 T@FrameType) (q@@51 T@Field_11759_11760) (w@@56 T@FrameType) (r@@51 T@Field_10589_10590) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11732 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_11732_10562 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_10562_10562 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11732 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_11732_10562 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_10589_10590) (v_1@@57 T@FrameType) (q@@52 T@Field_11759_11760) (w@@57 T@FrameType) (r@@52 T@Field_9975_9976) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11732 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_11732_9948 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_10562_9948 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11732 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_11732_9948 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_10589_10590) (v_1@@58 T@FrameType) (q@@53 T@Field_11759_11760) (w@@58 T@FrameType) (r@@53 T@Field_6621_9976) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11732 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_11732_6621 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_10562_6621 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11732 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_11732_6621 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_10589_10590) (v_1@@59 T@FrameType) (q@@54 T@Field_11145_11146) (w@@59 T@FrameType) (r@@54 T@Field_11759_11760) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11118 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_11118_11732 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_10562_11732 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11118 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_11118_11732 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_10589_10590) (v_1@@60 T@FrameType) (q@@55 T@Field_11145_11146) (w@@60 T@FrameType) (r@@55 T@Field_11145_11146) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11118 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_11118_11118 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_10562_11118 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11118 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_11118_11118 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_10589_10590) (v_1@@61 T@FrameType) (q@@56 T@Field_11145_11146) (w@@61 T@FrameType) (r@@56 T@Field_10589_10590) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11118 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_11118_10562 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_10562_10562 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11118 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_11118_10562 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_10589_10590) (v_1@@62 T@FrameType) (q@@57 T@Field_11145_11146) (w@@62 T@FrameType) (r@@57 T@Field_9975_9976) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11118 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_11118_9948 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_10562_9948 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11118 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_11118_9948 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_10589_10590) (v_1@@63 T@FrameType) (q@@58 T@Field_11145_11146) (w@@63 T@FrameType) (r@@58 T@Field_6621_9976) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_11118 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_11118_6621 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_10562_6621 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_11118 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_11118_6621 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_10589_10590) (v_1@@64 T@FrameType) (q@@59 T@Field_10589_10590) (w@@64 T@FrameType) (r@@59 T@Field_11759_11760) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_10562 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_10562_11732 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_10562_11732 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_10562 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_10562_11732 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_10589_10590) (v_1@@65 T@FrameType) (q@@60 T@Field_10589_10590) (w@@65 T@FrameType) (r@@60 T@Field_11145_11146) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_10562 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_10562_11118 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_10562_11118 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_10562 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_10562_11118 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_10589_10590) (v_1@@66 T@FrameType) (q@@61 T@Field_10589_10590) (w@@66 T@FrameType) (r@@61 T@Field_10589_10590) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_10562 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_10562_10562 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_10562_10562 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_10562 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_10562_10562 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_10589_10590) (v_1@@67 T@FrameType) (q@@62 T@Field_10589_10590) (w@@67 T@FrameType) (r@@62 T@Field_9975_9976) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_10562 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_10562_9948 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_10562_9948 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_10562 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_10562_9948 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_10589_10590) (v_1@@68 T@FrameType) (q@@63 T@Field_10589_10590) (w@@68 T@FrameType) (r@@63 T@Field_6621_9976) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_10562 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_10562_6621 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_10562_6621 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_10562 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_10562_6621 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_10589_10590) (v_1@@69 T@FrameType) (q@@64 T@Field_9975_9976) (w@@69 T@FrameType) (r@@64 T@Field_11759_11760) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_9948 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_9948_11732 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_10562_11732 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_9948 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_9948_11732 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_10589_10590) (v_1@@70 T@FrameType) (q@@65 T@Field_9975_9976) (w@@70 T@FrameType) (r@@65 T@Field_11145_11146) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_9948 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_9948_11118 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_10562_11118 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_9948 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_9948_11118 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_10589_10590) (v_1@@71 T@FrameType) (q@@66 T@Field_9975_9976) (w@@71 T@FrameType) (r@@66 T@Field_10589_10590) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_9948 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_9948_10562 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_10562_10562 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_9948 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_9948_10562 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_10589_10590) (v_1@@72 T@FrameType) (q@@67 T@Field_9975_9976) (w@@72 T@FrameType) (r@@67 T@Field_9975_9976) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_9948 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_9948_9948 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_10562_9948 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_9948 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_9948_9948 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_10589_10590) (v_1@@73 T@FrameType) (q@@68 T@Field_9975_9976) (w@@73 T@FrameType) (r@@68 T@Field_6621_9976) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_9948 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_9948_6621 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_10562_6621 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_9948 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_9948_6621 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_10589_10590) (v_1@@74 T@FrameType) (q@@69 T@Field_6621_9976) (w@@74 T@FrameType) (r@@69 T@Field_11759_11760) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_6621 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_6621_11732 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_10562_11732 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_6621 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_6621_11732 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_10589_10590) (v_1@@75 T@FrameType) (q@@70 T@Field_6621_9976) (w@@75 T@FrameType) (r@@70 T@Field_11145_11146) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_6621 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_6621_11118 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_10562_11118 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_6621 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_6621_11118 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_10589_10590) (v_1@@76 T@FrameType) (q@@71 T@Field_6621_9976) (w@@76 T@FrameType) (r@@71 T@Field_10589_10590) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_6621 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_6621_10562 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_10562_10562 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_6621 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_6621_10562 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_10589_10590) (v_1@@77 T@FrameType) (q@@72 T@Field_6621_9976) (w@@77 T@FrameType) (r@@72 T@Field_9975_9976) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_6621 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_6621_9948 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_10562_9948 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_6621 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_6621_9948 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_10589_10590) (v_1@@78 T@FrameType) (q@@73 T@Field_6621_9976) (w@@78 T@FrameType) (r@@73 T@Field_6621_9976) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_10562_6621 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_6621_6621 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_10562_6621 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10562_6621 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_6621_6621 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_9975_9976) (v_1@@79 T@FrameType) (q@@74 T@Field_11759_11760) (w@@79 T@FrameType) (r@@74 T@Field_11759_11760) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11732 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_11732_11732 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_9948_11732 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11732 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_11732_11732 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_9975_9976) (v_1@@80 T@FrameType) (q@@75 T@Field_11759_11760) (w@@80 T@FrameType) (r@@75 T@Field_11145_11146) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11732 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_11732_11118 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_9948_11118 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11732 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_11732_11118 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_9975_9976) (v_1@@81 T@FrameType) (q@@76 T@Field_11759_11760) (w@@81 T@FrameType) (r@@76 T@Field_10589_10590) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11732 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_11732_10562 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_9948_10562 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11732 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_11732_10562 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_9975_9976) (v_1@@82 T@FrameType) (q@@77 T@Field_11759_11760) (w@@82 T@FrameType) (r@@77 T@Field_9975_9976) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11732 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_11732_9948 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_9948_9948 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11732 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_11732_9948 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_9975_9976) (v_1@@83 T@FrameType) (q@@78 T@Field_11759_11760) (w@@83 T@FrameType) (r@@78 T@Field_6621_9976) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11732 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_11732_6621 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_9948_6621 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11732 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_11732_6621 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_9975_9976) (v_1@@84 T@FrameType) (q@@79 T@Field_11145_11146) (w@@84 T@FrameType) (r@@79 T@Field_11759_11760) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11118 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_11118_11732 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_9948_11732 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11118 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_11118_11732 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_9975_9976) (v_1@@85 T@FrameType) (q@@80 T@Field_11145_11146) (w@@85 T@FrameType) (r@@80 T@Field_11145_11146) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11118 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_11118_11118 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_9948_11118 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11118 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_11118_11118 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_9975_9976) (v_1@@86 T@FrameType) (q@@81 T@Field_11145_11146) (w@@86 T@FrameType) (r@@81 T@Field_10589_10590) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11118 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_11118_10562 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_9948_10562 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11118 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_11118_10562 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_9975_9976) (v_1@@87 T@FrameType) (q@@82 T@Field_11145_11146) (w@@87 T@FrameType) (r@@82 T@Field_9975_9976) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11118 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_11118_9948 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_9948_9948 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11118 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_11118_9948 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_9975_9976) (v_1@@88 T@FrameType) (q@@83 T@Field_11145_11146) (w@@88 T@FrameType) (r@@83 T@Field_6621_9976) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_11118 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_11118_6621 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_9948_6621 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_11118 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_11118_6621 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_9975_9976) (v_1@@89 T@FrameType) (q@@84 T@Field_10589_10590) (w@@89 T@FrameType) (r@@84 T@Field_11759_11760) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_10562 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_10562_11732 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_9948_11732 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_10562 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_10562_11732 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_9975_9976) (v_1@@90 T@FrameType) (q@@85 T@Field_10589_10590) (w@@90 T@FrameType) (r@@85 T@Field_11145_11146) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_10562 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_10562_11118 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_9948_11118 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_10562 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_10562_11118 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_9975_9976) (v_1@@91 T@FrameType) (q@@86 T@Field_10589_10590) (w@@91 T@FrameType) (r@@86 T@Field_10589_10590) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_10562 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_10562_10562 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_9948_10562 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_10562 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_10562_10562 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_9975_9976) (v_1@@92 T@FrameType) (q@@87 T@Field_10589_10590) (w@@92 T@FrameType) (r@@87 T@Field_9975_9976) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_10562 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_10562_9948 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_9948_9948 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_10562 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_10562_9948 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_9975_9976) (v_1@@93 T@FrameType) (q@@88 T@Field_10589_10590) (w@@93 T@FrameType) (r@@88 T@Field_6621_9976) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_10562 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_10562_6621 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_9948_6621 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_10562 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_10562_6621 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_9975_9976) (v_1@@94 T@FrameType) (q@@89 T@Field_9975_9976) (w@@94 T@FrameType) (r@@89 T@Field_11759_11760) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_9948 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_9948_11732 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_9948_11732 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_9948 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_9948_11732 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_9975_9976) (v_1@@95 T@FrameType) (q@@90 T@Field_9975_9976) (w@@95 T@FrameType) (r@@90 T@Field_11145_11146) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_9948 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_9948_11118 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_9948_11118 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_9948 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_9948_11118 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_9975_9976) (v_1@@96 T@FrameType) (q@@91 T@Field_9975_9976) (w@@96 T@FrameType) (r@@91 T@Field_10589_10590) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_9948 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_9948_10562 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_9948_10562 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_9948 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_9948_10562 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_9975_9976) (v_1@@97 T@FrameType) (q@@92 T@Field_9975_9976) (w@@97 T@FrameType) (r@@92 T@Field_9975_9976) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_9948 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_9948_9948 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_9948_9948 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_9948 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_9948_9948 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_9975_9976) (v_1@@98 T@FrameType) (q@@93 T@Field_9975_9976) (w@@98 T@FrameType) (r@@93 T@Field_6621_9976) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_9948 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_9948_6621 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_9948_6621 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_9948 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_9948_6621 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_9975_9976) (v_1@@99 T@FrameType) (q@@94 T@Field_6621_9976) (w@@99 T@FrameType) (r@@94 T@Field_11759_11760) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_6621 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_6621_11732 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_9948_11732 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_6621 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_6621_11732 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_9975_9976) (v_1@@100 T@FrameType) (q@@95 T@Field_6621_9976) (w@@100 T@FrameType) (r@@95 T@Field_11145_11146) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_6621 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_6621_11118 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_9948_11118 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_6621 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_6621_11118 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_9975_9976) (v_1@@101 T@FrameType) (q@@96 T@Field_6621_9976) (w@@101 T@FrameType) (r@@96 T@Field_10589_10590) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_6621 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_6621_10562 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_9948_10562 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_6621 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_6621_10562 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_9975_9976) (v_1@@102 T@FrameType) (q@@97 T@Field_6621_9976) (w@@102 T@FrameType) (r@@97 T@Field_9975_9976) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_6621 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_6621_9948 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_9948_9948 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_6621 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_6621_9948 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_9975_9976) (v_1@@103 T@FrameType) (q@@98 T@Field_6621_9976) (w@@103 T@FrameType) (r@@98 T@Field_6621_9976) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_9948_6621 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_6621_6621 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_9948_6621 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9948_6621 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_6621_6621 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_6621_9976) (v_1@@104 T@FrameType) (q@@99 T@Field_11759_11760) (w@@104 T@FrameType) (r@@99 T@Field_11759_11760) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11732 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_11732_11732 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_6621_11732 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11732 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_11732_11732 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_6621_9976) (v_1@@105 T@FrameType) (q@@100 T@Field_11759_11760) (w@@105 T@FrameType) (r@@100 T@Field_11145_11146) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11732 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_11732_11118 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_6621_11118 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11732 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_11732_11118 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_6621_9976) (v_1@@106 T@FrameType) (q@@101 T@Field_11759_11760) (w@@106 T@FrameType) (r@@101 T@Field_10589_10590) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11732 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_11732_10562 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_6621_10562 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11732 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_11732_10562 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_6621_9976) (v_1@@107 T@FrameType) (q@@102 T@Field_11759_11760) (w@@107 T@FrameType) (r@@102 T@Field_9975_9976) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11732 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_11732_9948 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_6621_9948 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11732 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_11732_9948 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_6621_9976) (v_1@@108 T@FrameType) (q@@103 T@Field_11759_11760) (w@@108 T@FrameType) (r@@103 T@Field_6621_9976) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11732 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_11732_6621 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_6621_6621 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11732 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_11732_6621 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_6621_9976) (v_1@@109 T@FrameType) (q@@104 T@Field_11145_11146) (w@@109 T@FrameType) (r@@104 T@Field_11759_11760) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11118 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_11118_11732 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_6621_11732 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11118 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_11118_11732 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_6621_9976) (v_1@@110 T@FrameType) (q@@105 T@Field_11145_11146) (w@@110 T@FrameType) (r@@105 T@Field_11145_11146) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11118 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_11118_11118 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_6621_11118 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11118 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_11118_11118 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_6621_9976) (v_1@@111 T@FrameType) (q@@106 T@Field_11145_11146) (w@@111 T@FrameType) (r@@106 T@Field_10589_10590) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11118 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_11118_10562 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_6621_10562 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11118 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_11118_10562 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_6621_9976) (v_1@@112 T@FrameType) (q@@107 T@Field_11145_11146) (w@@112 T@FrameType) (r@@107 T@Field_9975_9976) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11118 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_11118_9948 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_6621_9948 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11118 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_11118_9948 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_6621_9976) (v_1@@113 T@FrameType) (q@@108 T@Field_11145_11146) (w@@113 T@FrameType) (r@@108 T@Field_6621_9976) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_11118 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_11118_6621 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_6621_6621 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_11118 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_11118_6621 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_6621_9976) (v_1@@114 T@FrameType) (q@@109 T@Field_10589_10590) (w@@114 T@FrameType) (r@@109 T@Field_11759_11760) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_10562 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_10562_11732 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_6621_11732 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_10562 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_10562_11732 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_6621_9976) (v_1@@115 T@FrameType) (q@@110 T@Field_10589_10590) (w@@115 T@FrameType) (r@@110 T@Field_11145_11146) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_10562 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_10562_11118 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_6621_11118 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_10562 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_10562_11118 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_6621_9976) (v_1@@116 T@FrameType) (q@@111 T@Field_10589_10590) (w@@116 T@FrameType) (r@@111 T@Field_10589_10590) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_10562 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_10562_10562 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_6621_10562 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_10562 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_10562_10562 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_6621_9976) (v_1@@117 T@FrameType) (q@@112 T@Field_10589_10590) (w@@117 T@FrameType) (r@@112 T@Field_9975_9976) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_10562 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_10562_9948 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_6621_9948 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_10562 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_10562_9948 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_6621_9976) (v_1@@118 T@FrameType) (q@@113 T@Field_10589_10590) (w@@118 T@FrameType) (r@@113 T@Field_6621_9976) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_10562 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_10562_6621 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_6621_6621 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_10562 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_10562_6621 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_6621_9976) (v_1@@119 T@FrameType) (q@@114 T@Field_9975_9976) (w@@119 T@FrameType) (r@@114 T@Field_11759_11760) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_9948 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_9948_11732 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_6621_11732 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_9948 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_9948_11732 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_6621_9976) (v_1@@120 T@FrameType) (q@@115 T@Field_9975_9976) (w@@120 T@FrameType) (r@@115 T@Field_11145_11146) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_9948 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_9948_11118 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_6621_11118 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_9948 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_9948_11118 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_6621_9976) (v_1@@121 T@FrameType) (q@@116 T@Field_9975_9976) (w@@121 T@FrameType) (r@@116 T@Field_10589_10590) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_9948 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_9948_10562 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_6621_10562 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_9948 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_9948_10562 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_6621_9976) (v_1@@122 T@FrameType) (q@@117 T@Field_9975_9976) (w@@122 T@FrameType) (r@@117 T@Field_9975_9976) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_9948 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_9948_9948 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_6621_9948 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_9948 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_9948_9948 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_6621_9976) (v_1@@123 T@FrameType) (q@@118 T@Field_9975_9976) (w@@123 T@FrameType) (r@@118 T@Field_6621_9976) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_9948 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_9948_6621 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_6621_6621 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_9948 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_9948_6621 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_6621_9976) (v_1@@124 T@FrameType) (q@@119 T@Field_6621_9976) (w@@124 T@FrameType) (r@@119 T@Field_11759_11760) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_6621 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_6621_11732 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_6621_11732 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_6621 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_6621_11732 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_6621_9976) (v_1@@125 T@FrameType) (q@@120 T@Field_6621_9976) (w@@125 T@FrameType) (r@@120 T@Field_11145_11146) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_6621 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_6621_11118 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_6621_11118 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_6621 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_6621_11118 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_6621_9976) (v_1@@126 T@FrameType) (q@@121 T@Field_6621_9976) (w@@126 T@FrameType) (r@@121 T@Field_10589_10590) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_6621 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_6621_10562 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_6621_10562 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_6621 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_6621_10562 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_6621_9976) (v_1@@127 T@FrameType) (q@@122 T@Field_6621_9976) (w@@127 T@FrameType) (r@@122 T@Field_9975_9976) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_6621 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_6621_9948 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_6621_9948 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_6621 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_6621_9948 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_6621_9976) (v_1@@128 T@FrameType) (q@@123 T@Field_6621_9976) (w@@128 T@FrameType) (r@@123 T@Field_6621_9976) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_6621_6621 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_6621_6621 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_6621_6621 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6621_6621 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_6621_6621 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_6561) (ExhaleHeap@@36 T@PolymorphicMapType_6561) (Mask@@87 T@PolymorphicMapType_6582) (pm_f@@9 T@Field_11759_11760) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_11732_9976 Mask@@87 null pm_f@@9) (IsPredicateField_3971_3972 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@24 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2 f_2@@24) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@63) o2 f_2@@24) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2 f_2@@24))
)) (forall ((o2@@0 T@Ref) (f_2@@25 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@0 f_2@@25) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@63) o2@@0 f_2@@25) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@0 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@0 f_2@@25))
))) (forall ((o2@@1 T@Ref) (f_2@@26 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@1 f_2@@26) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@63) o2@@1 f_2@@26) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@1 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@1 f_2@@26))
))) (forall ((o2@@2 T@Ref) (f_2@@27 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@2 f_2@@27) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@63) o2@@2 f_2@@27) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@2 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@2 f_2@@27))
))) (forall ((o2@@3 T@Ref) (f_2@@28 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@3 f_2@@28) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@63) o2@@3 f_2@@28) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@3 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@3 f_2@@28))
))) (forall ((o2@@4 T@Ref) (f_2@@29 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@4 f_2@@29) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@63) o2@@4 f_2@@29) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@4 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@4 f_2@@29))
))) (forall ((o2@@5 T@Ref) (f_2@@30 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@5 f_2@@30) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@63) o2@@5 f_2@@30) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@5 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@5 f_2@@30))
))) (forall ((o2@@6 T@Ref) (f_2@@31 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@6 f_2@@31) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@63) o2@@6 f_2@@31) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@6 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@6 f_2@@31))
))) (forall ((o2@@7 T@Ref) (f_2@@32 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@7 f_2@@32) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@63) o2@@7 f_2@@32) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@7 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@7 f_2@@32))
))) (forall ((o2@@8 T@Ref) (f_2@@33 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@8 f_2@@33) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@63) o2@@8 f_2@@33) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@8 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@8 f_2@@33))
))) (forall ((o2@@9 T@Ref) (f_2@@34 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@9 f_2@@34) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@63) o2@@9 f_2@@34) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@9 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@9 f_2@@34))
))) (forall ((o2@@10 T@Ref) (f_2@@35 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@10 f_2@@35) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@63) o2@@10 f_2@@35) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@10 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@10 f_2@@35))
))) (forall ((o2@@11 T@Ref) (f_2@@36 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@11 f_2@@36) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@63) o2@@11 f_2@@36) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@11 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@11 f_2@@36))
))) (forall ((o2@@12 T@Ref) (f_2@@37 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@12 f_2@@37) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@63) o2@@12 f_2@@37) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@12 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@12 f_2@@37))
))) (forall ((o2@@13 T@Ref) (f_2@@38 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@13 f_2@@38) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@63) o2@@13 f_2@@38) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@13 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@13 f_2@@38))
))) (forall ((o2@@14 T@Ref) (f_2@@39 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@14 f_2@@39) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@63) o2@@14 f_2@@39) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@14 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@14 f_2@@39))
))) (forall ((o2@@15 T@Ref) (f_2@@40 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@15 f_2@@40) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@63) o2@@15 f_2@@40) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@15 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@15 f_2@@40))
))) (forall ((o2@@16 T@Ref) (f_2@@41 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@16 f_2@@41) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@63) o2@@16 f_2@@41) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@16 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@16 f_2@@41))
))) (forall ((o2@@17 T@Ref) (f_2@@42 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@17 f_2@@42) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@63) o2@@17 f_2@@42) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@17 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@17 f_2@@42))
))) (forall ((o2@@18 T@Ref) (f_2@@43 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@18 f_2@@43) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@63) o2@@18 f_2@@43) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@18 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@18 f_2@@43))
))) (forall ((o2@@19 T@Ref) (f_2@@44 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@19 f_2@@44) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@63) o2@@19 f_2@@44) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@19 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@19 f_2@@44))
))) (forall ((o2@@20 T@Ref) (f_2@@45 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@20 f_2@@45) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@63) o2@@20 f_2@@45) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@20 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@20 f_2@@45))
))) (forall ((o2@@21 T@Ref) (f_2@@46 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@21 f_2@@46) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@63) o2@@21 f_2@@46) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@21 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@21 f_2@@46))
))) (forall ((o2@@22 T@Ref) (f_2@@47 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@22 f_2@@47) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) o2@@22 f_2@@47) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@22 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@22 f_2@@47))
))) (forall ((o2@@23 T@Ref) (f_2@@48 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@63) null (PredicateMaskField_11732 pm_f@@9))) o2@@23 f_2@@48) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@63) o2@@23 f_2@@48) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@23 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@36) o2@@23 f_2@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@36 Mask@@87) (IsPredicateField_3971_3972 pm_f@@9))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_6561) (ExhaleHeap@@37 T@PolymorphicMapType_6561) (Mask@@88 T@PolymorphicMapType_6582) (pm_f@@10 T@Field_11145_11146) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_11118_9976 Mask@@88 null pm_f@@10) (IsPredicateField_3941_3942 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@24 T@Ref) (f_2@@49 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@24 f_2@@49) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@64) o2@@24 f_2@@49) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@24 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@24 f_2@@49))
)) (forall ((o2@@25 T@Ref) (f_2@@50 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@25 f_2@@50) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@64) o2@@25 f_2@@50) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@25 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@25 f_2@@50))
))) (forall ((o2@@26 T@Ref) (f_2@@51 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@26 f_2@@51) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@64) o2@@26 f_2@@51) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@26 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@26 f_2@@51))
))) (forall ((o2@@27 T@Ref) (f_2@@52 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@27 f_2@@52) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@64) o2@@27 f_2@@52) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@27 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@27 f_2@@52))
))) (forall ((o2@@28 T@Ref) (f_2@@53 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@28 f_2@@53) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@64) o2@@28 f_2@@53) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@28 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@28 f_2@@53))
))) (forall ((o2@@29 T@Ref) (f_2@@54 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@29 f_2@@54) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@64) o2@@29 f_2@@54) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@29 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@29 f_2@@54))
))) (forall ((o2@@30 T@Ref) (f_2@@55 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@30 f_2@@55) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@64) o2@@30 f_2@@55) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@30 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@30 f_2@@55))
))) (forall ((o2@@31 T@Ref) (f_2@@56 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@31 f_2@@56) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@64) o2@@31 f_2@@56) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@31 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@31 f_2@@56))
))) (forall ((o2@@32 T@Ref) (f_2@@57 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@32 f_2@@57) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@64) o2@@32 f_2@@57) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@32 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@32 f_2@@57))
))) (forall ((o2@@33 T@Ref) (f_2@@58 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@33 f_2@@58) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@64) o2@@33 f_2@@58) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@33 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@33 f_2@@58))
))) (forall ((o2@@34 T@Ref) (f_2@@59 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@34 f_2@@59) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@64) o2@@34 f_2@@59) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@34 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@34 f_2@@59))
))) (forall ((o2@@35 T@Ref) (f_2@@60 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@35 f_2@@60) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@64) o2@@35 f_2@@60) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@35 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@35 f_2@@60))
))) (forall ((o2@@36 T@Ref) (f_2@@61 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@36 f_2@@61) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@64) o2@@36 f_2@@61) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@36 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@36 f_2@@61))
))) (forall ((o2@@37 T@Ref) (f_2@@62 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@37 f_2@@62) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@64) o2@@37 f_2@@62) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@37 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@37 f_2@@62))
))) (forall ((o2@@38 T@Ref) (f_2@@63 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@38 f_2@@63) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@64) o2@@38 f_2@@63) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@38 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@38 f_2@@63))
))) (forall ((o2@@39 T@Ref) (f_2@@64 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@39 f_2@@64) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@64) o2@@39 f_2@@64) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@39 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@39 f_2@@64))
))) (forall ((o2@@40 T@Ref) (f_2@@65 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@40 f_2@@65) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@64) o2@@40 f_2@@65) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@40 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@40 f_2@@65))
))) (forall ((o2@@41 T@Ref) (f_2@@66 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@41 f_2@@66) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@64) o2@@41 f_2@@66) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@41 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@41 f_2@@66))
))) (forall ((o2@@42 T@Ref) (f_2@@67 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@42 f_2@@67) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) o2@@42 f_2@@67) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@42 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@42 f_2@@67))
))) (forall ((o2@@43 T@Ref) (f_2@@68 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@43 f_2@@68) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@64) o2@@43 f_2@@68) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@43 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@43 f_2@@68))
))) (forall ((o2@@44 T@Ref) (f_2@@69 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@44 f_2@@69) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@64) o2@@44 f_2@@69) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@44 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@44 f_2@@69))
))) (forall ((o2@@45 T@Ref) (f_2@@70 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@45 f_2@@70) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@64) o2@@45 f_2@@70) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@45 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@45 f_2@@70))
))) (forall ((o2@@46 T@Ref) (f_2@@71 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@46 f_2@@71) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@64) o2@@46 f_2@@71) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@46 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@46 f_2@@71))
))) (forall ((o2@@47 T@Ref) (f_2@@72 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@47 f_2@@72) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@64) o2@@47 f_2@@72) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@47 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@47 f_2@@72))
))) (forall ((o2@@48 T@Ref) (f_2@@73 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@64) null (PredicateMaskField_11118 pm_f@@10))) o2@@48 f_2@@73) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@64) o2@@48 f_2@@73) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@48 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@37) o2@@48 f_2@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@37 Mask@@88) (IsPredicateField_3941_3942 pm_f@@10))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_6561) (ExhaleHeap@@38 T@PolymorphicMapType_6561) (Mask@@89 T@PolymorphicMapType_6582) (pm_f@@11 T@Field_10589_10590) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_10562_9976 Mask@@89 null pm_f@@11) (IsPredicateField_3911_3912 pm_f@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@49 T@Ref) (f_2@@74 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@49 f_2@@74) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@65) o2@@49 f_2@@74) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@49 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@49 f_2@@74))
)) (forall ((o2@@50 T@Ref) (f_2@@75 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@50 f_2@@75) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@65) o2@@50 f_2@@75) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@50 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@50 f_2@@75))
))) (forall ((o2@@51 T@Ref) (f_2@@76 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@51 f_2@@76) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@65) o2@@51 f_2@@76) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@51 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@51 f_2@@76))
))) (forall ((o2@@52 T@Ref) (f_2@@77 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@52 f_2@@77) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@65) o2@@52 f_2@@77) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@52 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@52 f_2@@77))
))) (forall ((o2@@53 T@Ref) (f_2@@78 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@53 f_2@@78) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@65) o2@@53 f_2@@78) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@53 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@53 f_2@@78))
))) (forall ((o2@@54 T@Ref) (f_2@@79 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@54 f_2@@79) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@65) o2@@54 f_2@@79) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@54 f_2@@79)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@54 f_2@@79))
))) (forall ((o2@@55 T@Ref) (f_2@@80 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@55 f_2@@80) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@65) o2@@55 f_2@@80) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@55 f_2@@80)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@55 f_2@@80))
))) (forall ((o2@@56 T@Ref) (f_2@@81 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@56 f_2@@81) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@65) o2@@56 f_2@@81) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@56 f_2@@81)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@56 f_2@@81))
))) (forall ((o2@@57 T@Ref) (f_2@@82 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@57 f_2@@82) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@65) o2@@57 f_2@@82) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@57 f_2@@82)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@57 f_2@@82))
))) (forall ((o2@@58 T@Ref) (f_2@@83 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@58 f_2@@83) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@65) o2@@58 f_2@@83) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@58 f_2@@83)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@58 f_2@@83))
))) (forall ((o2@@59 T@Ref) (f_2@@84 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@59 f_2@@84) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@65) o2@@59 f_2@@84) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@59 f_2@@84)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@59 f_2@@84))
))) (forall ((o2@@60 T@Ref) (f_2@@85 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@60 f_2@@85) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@65) o2@@60 f_2@@85) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@60 f_2@@85)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@60 f_2@@85))
))) (forall ((o2@@61 T@Ref) (f_2@@86 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@61 f_2@@86) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@65) o2@@61 f_2@@86) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@61 f_2@@86)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@61 f_2@@86))
))) (forall ((o2@@62 T@Ref) (f_2@@87 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@62 f_2@@87) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) o2@@62 f_2@@87) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@62 f_2@@87)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@62 f_2@@87))
))) (forall ((o2@@63 T@Ref) (f_2@@88 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@63 f_2@@88) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@65) o2@@63 f_2@@88) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@63 f_2@@88)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@63 f_2@@88))
))) (forall ((o2@@64 T@Ref) (f_2@@89 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@64 f_2@@89) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@65) o2@@64 f_2@@89) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@64 f_2@@89)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@64 f_2@@89))
))) (forall ((o2@@65 T@Ref) (f_2@@90 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@65 f_2@@90) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@65) o2@@65 f_2@@90) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@65 f_2@@90)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@65 f_2@@90))
))) (forall ((o2@@66 T@Ref) (f_2@@91 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@66 f_2@@91) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@65) o2@@66 f_2@@91) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@66 f_2@@91)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@66 f_2@@91))
))) (forall ((o2@@67 T@Ref) (f_2@@92 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@67 f_2@@92) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@65) o2@@67 f_2@@92) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@67 f_2@@92)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@67 f_2@@92))
))) (forall ((o2@@68 T@Ref) (f_2@@93 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@68 f_2@@93) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@65) o2@@68 f_2@@93) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@68 f_2@@93)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@68 f_2@@93))
))) (forall ((o2@@69 T@Ref) (f_2@@94 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@69 f_2@@94) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@65) o2@@69 f_2@@94) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@69 f_2@@94)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@69 f_2@@94))
))) (forall ((o2@@70 T@Ref) (f_2@@95 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@70 f_2@@95) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@65) o2@@70 f_2@@95) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@70 f_2@@95)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@70 f_2@@95))
))) (forall ((o2@@71 T@Ref) (f_2@@96 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@71 f_2@@96) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@65) o2@@71 f_2@@96) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@71 f_2@@96)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@71 f_2@@96))
))) (forall ((o2@@72 T@Ref) (f_2@@97 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@72 f_2@@97) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@65) o2@@72 f_2@@97) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@72 f_2@@97)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@72 f_2@@97))
))) (forall ((o2@@73 T@Ref) (f_2@@98 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@65) null (PredicateMaskField_10562 pm_f@@11))) o2@@73 f_2@@98) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@65) o2@@73 f_2@@98) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@73 f_2@@98)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@38) o2@@73 f_2@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@38 Mask@@89) (IsPredicateField_3911_3912 pm_f@@11))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_6561) (ExhaleHeap@@39 T@PolymorphicMapType_6561) (Mask@@90 T@PolymorphicMapType_6582) (pm_f@@12 T@Field_9975_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_9948_9976 Mask@@90 null pm_f@@12) (IsPredicateField_3881_3882 pm_f@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@99 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@74 f_2@@99) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@66) o2@@74 f_2@@99) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@74 f_2@@99)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@74 f_2@@99))
)) (forall ((o2@@75 T@Ref) (f_2@@100 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@75 f_2@@100) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@66) o2@@75 f_2@@100) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@75 f_2@@100)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@75 f_2@@100))
))) (forall ((o2@@76 T@Ref) (f_2@@101 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@76 f_2@@101) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@66) o2@@76 f_2@@101) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@76 f_2@@101)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@76 f_2@@101))
))) (forall ((o2@@77 T@Ref) (f_2@@102 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@77 f_2@@102) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@66) o2@@77 f_2@@102) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@77 f_2@@102)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@77 f_2@@102))
))) (forall ((o2@@78 T@Ref) (f_2@@103 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@78 f_2@@103) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@66) o2@@78 f_2@@103) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@78 f_2@@103)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@78 f_2@@103))
))) (forall ((o2@@79 T@Ref) (f_2@@104 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@79 f_2@@104) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@66) o2@@79 f_2@@104) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@79 f_2@@104)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@79 f_2@@104))
))) (forall ((o2@@80 T@Ref) (f_2@@105 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@80 f_2@@105) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@66) o2@@80 f_2@@105) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@80 f_2@@105)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@80 f_2@@105))
))) (forall ((o2@@81 T@Ref) (f_2@@106 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@81 f_2@@106) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@66) o2@@81 f_2@@106) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@81 f_2@@106)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@81 f_2@@106))
))) (forall ((o2@@82 T@Ref) (f_2@@107 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@82 f_2@@107) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) o2@@82 f_2@@107) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@82 f_2@@107)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@82 f_2@@107))
))) (forall ((o2@@83 T@Ref) (f_2@@108 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@83 f_2@@108) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@66) o2@@83 f_2@@108) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@83 f_2@@108)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@83 f_2@@108))
))) (forall ((o2@@84 T@Ref) (f_2@@109 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@84 f_2@@109) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@66) o2@@84 f_2@@109) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@84 f_2@@109)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@84 f_2@@109))
))) (forall ((o2@@85 T@Ref) (f_2@@110 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@85 f_2@@110) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@66) o2@@85 f_2@@110) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@85 f_2@@110)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@85 f_2@@110))
))) (forall ((o2@@86 T@Ref) (f_2@@111 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@86 f_2@@111) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@66) o2@@86 f_2@@111) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@86 f_2@@111)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@86 f_2@@111))
))) (forall ((o2@@87 T@Ref) (f_2@@112 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@87 f_2@@112) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@66) o2@@87 f_2@@112) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@87 f_2@@112)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@87 f_2@@112))
))) (forall ((o2@@88 T@Ref) (f_2@@113 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@88 f_2@@113) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@66) o2@@88 f_2@@113) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@88 f_2@@113)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@88 f_2@@113))
))) (forall ((o2@@89 T@Ref) (f_2@@114 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@89 f_2@@114) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@66) o2@@89 f_2@@114) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@89 f_2@@114)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@89 f_2@@114))
))) (forall ((o2@@90 T@Ref) (f_2@@115 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@90 f_2@@115) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@66) o2@@90 f_2@@115) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@90 f_2@@115)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@90 f_2@@115))
))) (forall ((o2@@91 T@Ref) (f_2@@116 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@91 f_2@@116) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@66) o2@@91 f_2@@116) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@91 f_2@@116)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@91 f_2@@116))
))) (forall ((o2@@92 T@Ref) (f_2@@117 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@92 f_2@@117) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@66) o2@@92 f_2@@117) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@92 f_2@@117)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@92 f_2@@117))
))) (forall ((o2@@93 T@Ref) (f_2@@118 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@93 f_2@@118) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@66) o2@@93 f_2@@118) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@93 f_2@@118)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@93 f_2@@118))
))) (forall ((o2@@94 T@Ref) (f_2@@119 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@94 f_2@@119) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@66) o2@@94 f_2@@119) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@94 f_2@@119)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@94 f_2@@119))
))) (forall ((o2@@95 T@Ref) (f_2@@120 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@95 f_2@@120) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@66) o2@@95 f_2@@120) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@95 f_2@@120)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@95 f_2@@120))
))) (forall ((o2@@96 T@Ref) (f_2@@121 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@96 f_2@@121) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@66) o2@@96 f_2@@121) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@96 f_2@@121)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@96 f_2@@121))
))) (forall ((o2@@97 T@Ref) (f_2@@122 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@97 f_2@@122) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@66) o2@@97 f_2@@122) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@97 f_2@@122)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@97 f_2@@122))
))) (forall ((o2@@98 T@Ref) (f_2@@123 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@66) null (PredicateMaskField_9948 pm_f@@12))) o2@@98 f_2@@123) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@66) o2@@98 f_2@@123) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@98 f_2@@123)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@39) o2@@98 f_2@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@39 Mask@@90) (IsPredicateField_3881_3882 pm_f@@12))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_6561) (ExhaleHeap@@40 T@PolymorphicMapType_6561) (Mask@@91 T@PolymorphicMapType_6582) (pm_f@@13 T@Field_6621_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_6621_9976 Mask@@91 null pm_f@@13) (IsPredicateField_6621_24527 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@99 T@Ref) (f_2@@124 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@99 f_2@@124) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@67) o2@@99 f_2@@124) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@99 f_2@@124)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@99 f_2@@124))
)) (forall ((o2@@100 T@Ref) (f_2@@125 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@100 f_2@@125) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@67) o2@@100 f_2@@125) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@100 f_2@@125)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@100 f_2@@125))
))) (forall ((o2@@101 T@Ref) (f_2@@126 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@101 f_2@@126) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@67) o2@@101 f_2@@126) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@101 f_2@@126)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@101 f_2@@126))
))) (forall ((o2@@102 T@Ref) (f_2@@127 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@102 f_2@@127) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) o2@@102 f_2@@127) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@102 f_2@@127)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@102 f_2@@127))
))) (forall ((o2@@103 T@Ref) (f_2@@128 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@103 f_2@@128) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@67) o2@@103 f_2@@128) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@103 f_2@@128)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@103 f_2@@128))
))) (forall ((o2@@104 T@Ref) (f_2@@129 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@104 f_2@@129) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@67) o2@@104 f_2@@129) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@104 f_2@@129)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@104 f_2@@129))
))) (forall ((o2@@105 T@Ref) (f_2@@130 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@105 f_2@@130) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@67) o2@@105 f_2@@130) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@105 f_2@@130)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@105 f_2@@130))
))) (forall ((o2@@106 T@Ref) (f_2@@131 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@106 f_2@@131) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@67) o2@@106 f_2@@131) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@106 f_2@@131)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@106 f_2@@131))
))) (forall ((o2@@107 T@Ref) (f_2@@132 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@107 f_2@@132) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@67) o2@@107 f_2@@132) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@107 f_2@@132)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@107 f_2@@132))
))) (forall ((o2@@108 T@Ref) (f_2@@133 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@108 f_2@@133) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@67) o2@@108 f_2@@133) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@108 f_2@@133)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@108 f_2@@133))
))) (forall ((o2@@109 T@Ref) (f_2@@134 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@109 f_2@@134) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@67) o2@@109 f_2@@134) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@109 f_2@@134)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@109 f_2@@134))
))) (forall ((o2@@110 T@Ref) (f_2@@135 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@110 f_2@@135) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@67) o2@@110 f_2@@135) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@110 f_2@@135)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@110 f_2@@135))
))) (forall ((o2@@111 T@Ref) (f_2@@136 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@111 f_2@@136) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@67) o2@@111 f_2@@136) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@111 f_2@@136)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@111 f_2@@136))
))) (forall ((o2@@112 T@Ref) (f_2@@137 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@112 f_2@@137) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@67) o2@@112 f_2@@137) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@112 f_2@@137)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@112 f_2@@137))
))) (forall ((o2@@113 T@Ref) (f_2@@138 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@113 f_2@@138) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@67) o2@@113 f_2@@138) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@113 f_2@@138)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@113 f_2@@138))
))) (forall ((o2@@114 T@Ref) (f_2@@139 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@114 f_2@@139) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@67) o2@@114 f_2@@139) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@114 f_2@@139)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@114 f_2@@139))
))) (forall ((o2@@115 T@Ref) (f_2@@140 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@115 f_2@@140) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@67) o2@@115 f_2@@140) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@115 f_2@@140)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@115 f_2@@140))
))) (forall ((o2@@116 T@Ref) (f_2@@141 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@116 f_2@@141) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@67) o2@@116 f_2@@141) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@116 f_2@@141)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@116 f_2@@141))
))) (forall ((o2@@117 T@Ref) (f_2@@142 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@117 f_2@@142) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@67) o2@@117 f_2@@142) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@117 f_2@@142)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@117 f_2@@142))
))) (forall ((o2@@118 T@Ref) (f_2@@143 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@118 f_2@@143) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@67) o2@@118 f_2@@143) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@118 f_2@@143)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@118 f_2@@143))
))) (forall ((o2@@119 T@Ref) (f_2@@144 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@119 f_2@@144) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@67) o2@@119 f_2@@144) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@119 f_2@@144)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@119 f_2@@144))
))) (forall ((o2@@120 T@Ref) (f_2@@145 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@120 f_2@@145) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@67) o2@@120 f_2@@145) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@120 f_2@@145)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@120 f_2@@145))
))) (forall ((o2@@121 T@Ref) (f_2@@146 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@121 f_2@@146) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@67) o2@@121 f_2@@146) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@121 f_2@@146)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@121 f_2@@146))
))) (forall ((o2@@122 T@Ref) (f_2@@147 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@122 f_2@@147) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@67) o2@@122 f_2@@147) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@122 f_2@@147)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@122 f_2@@147))
))) (forall ((o2@@123 T@Ref) (f_2@@148 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@67) null (PredicateMaskField_6621 pm_f@@13))) o2@@123 f_2@@148) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@67) o2@@123 f_2@@148) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@123 f_2@@148)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@40) o2@@123 f_2@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@40 Mask@@91) (IsPredicateField_6621_24527 pm_f@@13))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_6561) (ExhaleHeap@@41 T@PolymorphicMapType_6561) (Mask@@92 T@PolymorphicMapType_6582) (pm_f@@14 T@Field_11759_11760) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_11732_9976 Mask@@92 null pm_f@@14) (IsWandField_3971_3972 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@124 T@Ref) (f_2@@149 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@124 f_2@@149) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@68) o2@@124 f_2@@149) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@124 f_2@@149)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@124 f_2@@149))
)) (forall ((o2@@125 T@Ref) (f_2@@150 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@125 f_2@@150) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@68) o2@@125 f_2@@150) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@125 f_2@@150)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@125 f_2@@150))
))) (forall ((o2@@126 T@Ref) (f_2@@151 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@126 f_2@@151) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@68) o2@@126 f_2@@151) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@126 f_2@@151)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@126 f_2@@151))
))) (forall ((o2@@127 T@Ref) (f_2@@152 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@127 f_2@@152) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@68) o2@@127 f_2@@152) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@127 f_2@@152)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@127 f_2@@152))
))) (forall ((o2@@128 T@Ref) (f_2@@153 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@128 f_2@@153) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@68) o2@@128 f_2@@153) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@128 f_2@@153)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@128 f_2@@153))
))) (forall ((o2@@129 T@Ref) (f_2@@154 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@129 f_2@@154) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@68) o2@@129 f_2@@154) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@129 f_2@@154)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@129 f_2@@154))
))) (forall ((o2@@130 T@Ref) (f_2@@155 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@130 f_2@@155) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@68) o2@@130 f_2@@155) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@130 f_2@@155)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@130 f_2@@155))
))) (forall ((o2@@131 T@Ref) (f_2@@156 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@131 f_2@@156) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@68) o2@@131 f_2@@156) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@131 f_2@@156)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@131 f_2@@156))
))) (forall ((o2@@132 T@Ref) (f_2@@157 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@132 f_2@@157) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@68) o2@@132 f_2@@157) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@132 f_2@@157)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@132 f_2@@157))
))) (forall ((o2@@133 T@Ref) (f_2@@158 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@133 f_2@@158) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@68) o2@@133 f_2@@158) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@133 f_2@@158)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@133 f_2@@158))
))) (forall ((o2@@134 T@Ref) (f_2@@159 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@134 f_2@@159) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@68) o2@@134 f_2@@159) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@134 f_2@@159)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@134 f_2@@159))
))) (forall ((o2@@135 T@Ref) (f_2@@160 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@135 f_2@@160) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@68) o2@@135 f_2@@160) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@135 f_2@@160)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@135 f_2@@160))
))) (forall ((o2@@136 T@Ref) (f_2@@161 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@136 f_2@@161) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@68) o2@@136 f_2@@161) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@136 f_2@@161)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@136 f_2@@161))
))) (forall ((o2@@137 T@Ref) (f_2@@162 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@137 f_2@@162) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@68) o2@@137 f_2@@162) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@137 f_2@@162)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@137 f_2@@162))
))) (forall ((o2@@138 T@Ref) (f_2@@163 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@138 f_2@@163) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@68) o2@@138 f_2@@163) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@138 f_2@@163)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@138 f_2@@163))
))) (forall ((o2@@139 T@Ref) (f_2@@164 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@139 f_2@@164) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@68) o2@@139 f_2@@164) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@139 f_2@@164)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@139 f_2@@164))
))) (forall ((o2@@140 T@Ref) (f_2@@165 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@140 f_2@@165) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@68) o2@@140 f_2@@165) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@140 f_2@@165)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@140 f_2@@165))
))) (forall ((o2@@141 T@Ref) (f_2@@166 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@141 f_2@@166) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@68) o2@@141 f_2@@166) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@141 f_2@@166)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@141 f_2@@166))
))) (forall ((o2@@142 T@Ref) (f_2@@167 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@142 f_2@@167) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@68) o2@@142 f_2@@167) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@142 f_2@@167)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@142 f_2@@167))
))) (forall ((o2@@143 T@Ref) (f_2@@168 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@143 f_2@@168) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@68) o2@@143 f_2@@168) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@143 f_2@@168)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@143 f_2@@168))
))) (forall ((o2@@144 T@Ref) (f_2@@169 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@144 f_2@@169) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@68) o2@@144 f_2@@169) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@144 f_2@@169)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@144 f_2@@169))
))) (forall ((o2@@145 T@Ref) (f_2@@170 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@145 f_2@@170) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@68) o2@@145 f_2@@170) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@145 f_2@@170)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@145 f_2@@170))
))) (forall ((o2@@146 T@Ref) (f_2@@171 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@146 f_2@@171) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@68) o2@@146 f_2@@171) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@146 f_2@@171)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@146 f_2@@171))
))) (forall ((o2@@147 T@Ref) (f_2@@172 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@147 f_2@@172) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) o2@@147 f_2@@172) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@147 f_2@@172)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@147 f_2@@172))
))) (forall ((o2@@148 T@Ref) (f_2@@173 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@68) null (WandMaskField_3971 pm_f@@14))) o2@@148 f_2@@173) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@68) o2@@148 f_2@@173) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@148 f_2@@173)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@41) o2@@148 f_2@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@41 Mask@@92) (IsWandField_3971_3972 pm_f@@14))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_6561) (ExhaleHeap@@42 T@PolymorphicMapType_6561) (Mask@@93 T@PolymorphicMapType_6582) (pm_f@@15 T@Field_11145_11146) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_11118_9976 Mask@@93 null pm_f@@15) (IsWandField_3941_3942 pm_f@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@149 T@Ref) (f_2@@174 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@149 f_2@@174) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@69) o2@@149 f_2@@174) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@149 f_2@@174)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@149 f_2@@174))
)) (forall ((o2@@150 T@Ref) (f_2@@175 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@150 f_2@@175) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@69) o2@@150 f_2@@175) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@150 f_2@@175)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@150 f_2@@175))
))) (forall ((o2@@151 T@Ref) (f_2@@176 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@151 f_2@@176) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@69) o2@@151 f_2@@176) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@151 f_2@@176)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@151 f_2@@176))
))) (forall ((o2@@152 T@Ref) (f_2@@177 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@152 f_2@@177) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@69) o2@@152 f_2@@177) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@152 f_2@@177)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@152 f_2@@177))
))) (forall ((o2@@153 T@Ref) (f_2@@178 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@153 f_2@@178) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@69) o2@@153 f_2@@178) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@153 f_2@@178)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@153 f_2@@178))
))) (forall ((o2@@154 T@Ref) (f_2@@179 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@154 f_2@@179) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@69) o2@@154 f_2@@179) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@154 f_2@@179)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@154 f_2@@179))
))) (forall ((o2@@155 T@Ref) (f_2@@180 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@155 f_2@@180) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@69) o2@@155 f_2@@180) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@155 f_2@@180)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@155 f_2@@180))
))) (forall ((o2@@156 T@Ref) (f_2@@181 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@156 f_2@@181) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@69) o2@@156 f_2@@181) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@156 f_2@@181)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@156 f_2@@181))
))) (forall ((o2@@157 T@Ref) (f_2@@182 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@157 f_2@@182) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@69) o2@@157 f_2@@182) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@157 f_2@@182)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@157 f_2@@182))
))) (forall ((o2@@158 T@Ref) (f_2@@183 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@158 f_2@@183) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@69) o2@@158 f_2@@183) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@158 f_2@@183)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@158 f_2@@183))
))) (forall ((o2@@159 T@Ref) (f_2@@184 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@159 f_2@@184) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@69) o2@@159 f_2@@184) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@159 f_2@@184)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@159 f_2@@184))
))) (forall ((o2@@160 T@Ref) (f_2@@185 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@160 f_2@@185) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@69) o2@@160 f_2@@185) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@160 f_2@@185)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@160 f_2@@185))
))) (forall ((o2@@161 T@Ref) (f_2@@186 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@161 f_2@@186) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@69) o2@@161 f_2@@186) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@161 f_2@@186)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@161 f_2@@186))
))) (forall ((o2@@162 T@Ref) (f_2@@187 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@162 f_2@@187) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@69) o2@@162 f_2@@187) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@162 f_2@@187)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@162 f_2@@187))
))) (forall ((o2@@163 T@Ref) (f_2@@188 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@163 f_2@@188) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@69) o2@@163 f_2@@188) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@163 f_2@@188)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@163 f_2@@188))
))) (forall ((o2@@164 T@Ref) (f_2@@189 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@164 f_2@@189) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@69) o2@@164 f_2@@189) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@164 f_2@@189)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@164 f_2@@189))
))) (forall ((o2@@165 T@Ref) (f_2@@190 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@165 f_2@@190) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@69) o2@@165 f_2@@190) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@165 f_2@@190)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@165 f_2@@190))
))) (forall ((o2@@166 T@Ref) (f_2@@191 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@166 f_2@@191) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@69) o2@@166 f_2@@191) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@166 f_2@@191)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@166 f_2@@191))
))) (forall ((o2@@167 T@Ref) (f_2@@192 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@167 f_2@@192) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) o2@@167 f_2@@192) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@167 f_2@@192)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@167 f_2@@192))
))) (forall ((o2@@168 T@Ref) (f_2@@193 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@168 f_2@@193) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@69) o2@@168 f_2@@193) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@168 f_2@@193)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@168 f_2@@193))
))) (forall ((o2@@169 T@Ref) (f_2@@194 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@169 f_2@@194) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@69) o2@@169 f_2@@194) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@169 f_2@@194)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@169 f_2@@194))
))) (forall ((o2@@170 T@Ref) (f_2@@195 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@170 f_2@@195) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@69) o2@@170 f_2@@195) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@170 f_2@@195)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@170 f_2@@195))
))) (forall ((o2@@171 T@Ref) (f_2@@196 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@171 f_2@@196) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@69) o2@@171 f_2@@196) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@171 f_2@@196)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@171 f_2@@196))
))) (forall ((o2@@172 T@Ref) (f_2@@197 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@172 f_2@@197) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@69) o2@@172 f_2@@197) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@172 f_2@@197)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@172 f_2@@197))
))) (forall ((o2@@173 T@Ref) (f_2@@198 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@69) null (WandMaskField_3941 pm_f@@15))) o2@@173 f_2@@198) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@69) o2@@173 f_2@@198) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@173 f_2@@198)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@42) o2@@173 f_2@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@42 Mask@@93) (IsWandField_3941_3942 pm_f@@15))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_6561) (ExhaleHeap@@43 T@PolymorphicMapType_6561) (Mask@@94 T@PolymorphicMapType_6582) (pm_f@@16 T@Field_10589_10590) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_10562_9976 Mask@@94 null pm_f@@16) (IsWandField_3911_3912 pm_f@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@174 T@Ref) (f_2@@199 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@174 f_2@@199) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@70) o2@@174 f_2@@199) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@174 f_2@@199)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@174 f_2@@199))
)) (forall ((o2@@175 T@Ref) (f_2@@200 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@175 f_2@@200) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@70) o2@@175 f_2@@200) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@175 f_2@@200)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@175 f_2@@200))
))) (forall ((o2@@176 T@Ref) (f_2@@201 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@176 f_2@@201) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@70) o2@@176 f_2@@201) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@176 f_2@@201)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@176 f_2@@201))
))) (forall ((o2@@177 T@Ref) (f_2@@202 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@177 f_2@@202) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@70) o2@@177 f_2@@202) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@177 f_2@@202)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@177 f_2@@202))
))) (forall ((o2@@178 T@Ref) (f_2@@203 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@178 f_2@@203) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@70) o2@@178 f_2@@203) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@178 f_2@@203)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@178 f_2@@203))
))) (forall ((o2@@179 T@Ref) (f_2@@204 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@179 f_2@@204) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@70) o2@@179 f_2@@204) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@179 f_2@@204)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@179 f_2@@204))
))) (forall ((o2@@180 T@Ref) (f_2@@205 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@180 f_2@@205) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@70) o2@@180 f_2@@205) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@180 f_2@@205)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@180 f_2@@205))
))) (forall ((o2@@181 T@Ref) (f_2@@206 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@181 f_2@@206) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@70) o2@@181 f_2@@206) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@181 f_2@@206)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@181 f_2@@206))
))) (forall ((o2@@182 T@Ref) (f_2@@207 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@182 f_2@@207) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@70) o2@@182 f_2@@207) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@182 f_2@@207)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@182 f_2@@207))
))) (forall ((o2@@183 T@Ref) (f_2@@208 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@183 f_2@@208) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@70) o2@@183 f_2@@208) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@183 f_2@@208)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@183 f_2@@208))
))) (forall ((o2@@184 T@Ref) (f_2@@209 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@184 f_2@@209) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@70) o2@@184 f_2@@209) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@184 f_2@@209)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@184 f_2@@209))
))) (forall ((o2@@185 T@Ref) (f_2@@210 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@185 f_2@@210) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@70) o2@@185 f_2@@210) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@185 f_2@@210)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@185 f_2@@210))
))) (forall ((o2@@186 T@Ref) (f_2@@211 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@186 f_2@@211) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@70) o2@@186 f_2@@211) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@186 f_2@@211)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@186 f_2@@211))
))) (forall ((o2@@187 T@Ref) (f_2@@212 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@187 f_2@@212) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) o2@@187 f_2@@212) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@187 f_2@@212)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@187 f_2@@212))
))) (forall ((o2@@188 T@Ref) (f_2@@213 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@188 f_2@@213) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@70) o2@@188 f_2@@213) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@188 f_2@@213)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@188 f_2@@213))
))) (forall ((o2@@189 T@Ref) (f_2@@214 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@189 f_2@@214) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@70) o2@@189 f_2@@214) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@189 f_2@@214)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@189 f_2@@214))
))) (forall ((o2@@190 T@Ref) (f_2@@215 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@190 f_2@@215) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@70) o2@@190 f_2@@215) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@190 f_2@@215)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@190 f_2@@215))
))) (forall ((o2@@191 T@Ref) (f_2@@216 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@191 f_2@@216) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@70) o2@@191 f_2@@216) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@191 f_2@@216)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@191 f_2@@216))
))) (forall ((o2@@192 T@Ref) (f_2@@217 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@192 f_2@@217) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@70) o2@@192 f_2@@217) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@192 f_2@@217)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@192 f_2@@217))
))) (forall ((o2@@193 T@Ref) (f_2@@218 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@193 f_2@@218) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@70) o2@@193 f_2@@218) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@193 f_2@@218)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@193 f_2@@218))
))) (forall ((o2@@194 T@Ref) (f_2@@219 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@194 f_2@@219) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@70) o2@@194 f_2@@219) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@194 f_2@@219)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@194 f_2@@219))
))) (forall ((o2@@195 T@Ref) (f_2@@220 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@195 f_2@@220) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@70) o2@@195 f_2@@220) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@195 f_2@@220)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@195 f_2@@220))
))) (forall ((o2@@196 T@Ref) (f_2@@221 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@196 f_2@@221) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@70) o2@@196 f_2@@221) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@196 f_2@@221)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@196 f_2@@221))
))) (forall ((o2@@197 T@Ref) (f_2@@222 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@197 f_2@@222) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@70) o2@@197 f_2@@222) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@197 f_2@@222)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@197 f_2@@222))
))) (forall ((o2@@198 T@Ref) (f_2@@223 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@70) null (WandMaskField_3911 pm_f@@16))) o2@@198 f_2@@223) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@70) o2@@198 f_2@@223) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@198 f_2@@223)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@43) o2@@198 f_2@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@43 Mask@@94) (IsWandField_3911_3912 pm_f@@16))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_6561) (ExhaleHeap@@44 T@PolymorphicMapType_6561) (Mask@@95 T@PolymorphicMapType_6582) (pm_f@@17 T@Field_9975_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_9948_9976 Mask@@95 null pm_f@@17) (IsWandField_3881_3882 pm_f@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@199 T@Ref) (f_2@@224 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@199 f_2@@224) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@71) o2@@199 f_2@@224) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@199 f_2@@224)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@199 f_2@@224))
)) (forall ((o2@@200 T@Ref) (f_2@@225 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@200 f_2@@225) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@71) o2@@200 f_2@@225) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@200 f_2@@225)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@200 f_2@@225))
))) (forall ((o2@@201 T@Ref) (f_2@@226 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@201 f_2@@226) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@71) o2@@201 f_2@@226) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@201 f_2@@226)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@201 f_2@@226))
))) (forall ((o2@@202 T@Ref) (f_2@@227 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@202 f_2@@227) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@71) o2@@202 f_2@@227) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@202 f_2@@227)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@202 f_2@@227))
))) (forall ((o2@@203 T@Ref) (f_2@@228 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@203 f_2@@228) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@71) o2@@203 f_2@@228) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@203 f_2@@228)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@203 f_2@@228))
))) (forall ((o2@@204 T@Ref) (f_2@@229 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@204 f_2@@229) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@71) o2@@204 f_2@@229) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@204 f_2@@229)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@204 f_2@@229))
))) (forall ((o2@@205 T@Ref) (f_2@@230 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@205 f_2@@230) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@71) o2@@205 f_2@@230) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@205 f_2@@230)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@205 f_2@@230))
))) (forall ((o2@@206 T@Ref) (f_2@@231 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@206 f_2@@231) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@71) o2@@206 f_2@@231) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@206 f_2@@231)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@206 f_2@@231))
))) (forall ((o2@@207 T@Ref) (f_2@@232 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@207 f_2@@232) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) o2@@207 f_2@@232) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@207 f_2@@232)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@207 f_2@@232))
))) (forall ((o2@@208 T@Ref) (f_2@@233 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@208 f_2@@233) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@71) o2@@208 f_2@@233) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@208 f_2@@233)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@208 f_2@@233))
))) (forall ((o2@@209 T@Ref) (f_2@@234 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@209 f_2@@234) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@71) o2@@209 f_2@@234) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@209 f_2@@234)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@209 f_2@@234))
))) (forall ((o2@@210 T@Ref) (f_2@@235 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@210 f_2@@235) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@71) o2@@210 f_2@@235) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@210 f_2@@235)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@210 f_2@@235))
))) (forall ((o2@@211 T@Ref) (f_2@@236 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@211 f_2@@236) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@71) o2@@211 f_2@@236) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@211 f_2@@236)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@211 f_2@@236))
))) (forall ((o2@@212 T@Ref) (f_2@@237 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@212 f_2@@237) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@71) o2@@212 f_2@@237) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@212 f_2@@237)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@212 f_2@@237))
))) (forall ((o2@@213 T@Ref) (f_2@@238 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@213 f_2@@238) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@71) o2@@213 f_2@@238) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@213 f_2@@238)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@213 f_2@@238))
))) (forall ((o2@@214 T@Ref) (f_2@@239 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@214 f_2@@239) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@71) o2@@214 f_2@@239) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@214 f_2@@239)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@214 f_2@@239))
))) (forall ((o2@@215 T@Ref) (f_2@@240 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@215 f_2@@240) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@71) o2@@215 f_2@@240) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@215 f_2@@240)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@215 f_2@@240))
))) (forall ((o2@@216 T@Ref) (f_2@@241 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@216 f_2@@241) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@71) o2@@216 f_2@@241) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@216 f_2@@241)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@216 f_2@@241))
))) (forall ((o2@@217 T@Ref) (f_2@@242 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@217 f_2@@242) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@71) o2@@217 f_2@@242) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@217 f_2@@242)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@217 f_2@@242))
))) (forall ((o2@@218 T@Ref) (f_2@@243 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@218 f_2@@243) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@71) o2@@218 f_2@@243) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@218 f_2@@243)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@218 f_2@@243))
))) (forall ((o2@@219 T@Ref) (f_2@@244 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@219 f_2@@244) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@71) o2@@219 f_2@@244) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@219 f_2@@244)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@219 f_2@@244))
))) (forall ((o2@@220 T@Ref) (f_2@@245 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@220 f_2@@245) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@71) o2@@220 f_2@@245) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@220 f_2@@245)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@220 f_2@@245))
))) (forall ((o2@@221 T@Ref) (f_2@@246 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@221 f_2@@246) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@71) o2@@221 f_2@@246) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@221 f_2@@246)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@221 f_2@@246))
))) (forall ((o2@@222 T@Ref) (f_2@@247 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@222 f_2@@247) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@71) o2@@222 f_2@@247) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@222 f_2@@247)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@222 f_2@@247))
))) (forall ((o2@@223 T@Ref) (f_2@@248 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@71) null (WandMaskField_3881 pm_f@@17))) o2@@223 f_2@@248) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@71) o2@@223 f_2@@248) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@223 f_2@@248)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@44) o2@@223 f_2@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@44 Mask@@95) (IsWandField_3881_3882 pm_f@@17))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_6561) (ExhaleHeap@@45 T@PolymorphicMapType_6561) (Mask@@96 T@PolymorphicMapType_6582) (pm_f@@18 T@Field_6621_9976) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_6621_9976 Mask@@96 null pm_f@@18) (IsWandField_6621_32929 pm_f@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@224 T@Ref) (f_2@@249 T@Field_6621_53) ) (!  (=> (select (|PolymorphicMapType_7110_6621_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@224 f_2@@249) (= (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@72) o2@@224 f_2@@249) (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@224 f_2@@249)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@224 f_2@@249))
)) (forall ((o2@@225 T@Ref) (f_2@@250 T@Field_6634_6635) ) (!  (=> (select (|PolymorphicMapType_7110_6621_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@225 f_2@@250) (= (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| Heap@@72) o2@@225 f_2@@250) (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@225 f_2@@250)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_3745_3746#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@225 f_2@@250))
))) (forall ((o2@@226 T@Ref) (f_2@@251 T@Field_12345_2417) ) (!  (=> (select (|PolymorphicMapType_7110_6621_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@226 f_2@@251) (= (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| Heap@@72) o2@@226 f_2@@251) (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@226 f_2@@251)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@226 f_2@@251))
))) (forall ((o2@@227 T@Ref) (f_2@@252 T@Field_6621_9965) ) (!  (=> (select (|PolymorphicMapType_7110_6621_26882#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@227 f_2@@252) (= (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) o2@@227 f_2@@252) (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@227 f_2@@252)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@227 f_2@@252))
))) (forall ((o2@@228 T@Ref) (f_2@@253 T@Field_6621_9976) ) (!  (=> (select (|PolymorphicMapType_7110_6621_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@228 f_2@@253) (= (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| Heap@@72) o2@@228 f_2@@253) (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@228 f_2@@253)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_6621_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@228 f_2@@253))
))) (forall ((o2@@229 T@Ref) (f_2@@254 T@Field_9948_53) ) (!  (=> (select (|PolymorphicMapType_7110_9948_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@229 f_2@@254) (= (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| Heap@@72) o2@@229 f_2@@254) (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@229 f_2@@254)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@229 f_2@@254))
))) (forall ((o2@@230 T@Ref) (f_2@@255 T@Field_9948_6635) ) (!  (=> (select (|PolymorphicMapType_7110_9948_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@230 f_2@@255) (= (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| Heap@@72) o2@@230 f_2@@255) (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@230 f_2@@255)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_6635#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@230 f_2@@255))
))) (forall ((o2@@231 T@Ref) (f_2@@256 T@Field_9948_1203) ) (!  (=> (select (|PolymorphicMapType_7110_9948_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@231 f_2@@256) (= (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| Heap@@72) o2@@231 f_2@@256) (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@231 f_2@@256)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@231 f_2@@256))
))) (forall ((o2@@232 T@Ref) (f_2@@257 T@Field_9960_9965) ) (!  (=> (select (|PolymorphicMapType_7110_9948_27930#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@232 f_2@@257) (= (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| Heap@@72) o2@@232 f_2@@257) (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@232 f_2@@257)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_20522#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@232 f_2@@257))
))) (forall ((o2@@233 T@Ref) (f_2@@258 T@Field_9975_9976) ) (!  (=> (select (|PolymorphicMapType_7110_9948_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@233 f_2@@258) (= (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| Heap@@72) o2@@233 f_2@@258) (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@233 f_2@@258)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_9948_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@233 f_2@@258))
))) (forall ((o2@@234 T@Ref) (f_2@@259 T@Field_10562_53) ) (!  (=> (select (|PolymorphicMapType_7110_10562_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@234 f_2@@259) (= (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| Heap@@72) o2@@234 f_2@@259) (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@234 f_2@@259)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@234 f_2@@259))
))) (forall ((o2@@235 T@Ref) (f_2@@260 T@Field_10562_6635) ) (!  (=> (select (|PolymorphicMapType_7110_10562_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@235 f_2@@260) (= (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| Heap@@72) o2@@235 f_2@@260) (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@235 f_2@@260)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_6635#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@235 f_2@@260))
))) (forall ((o2@@236 T@Ref) (f_2@@261 T@Field_10562_1521) ) (!  (=> (select (|PolymorphicMapType_7110_10562_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@236 f_2@@261) (= (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| Heap@@72) o2@@236 f_2@@261) (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@236 f_2@@261)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@236 f_2@@261))
))) (forall ((o2@@237 T@Ref) (f_2@@262 T@Field_10574_10579) ) (!  (=> (select (|PolymorphicMapType_7110_10562_28978#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@237 f_2@@262) (= (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| Heap@@72) o2@@237 f_2@@262) (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@237 f_2@@262)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_21699#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@237 f_2@@262))
))) (forall ((o2@@238 T@Ref) (f_2@@263 T@Field_10589_10590) ) (!  (=> (select (|PolymorphicMapType_7110_10562_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@238 f_2@@263) (= (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| Heap@@72) o2@@238 f_2@@263) (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@238 f_2@@263)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_10562_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@238 f_2@@263))
))) (forall ((o2@@239 T@Ref) (f_2@@264 T@Field_11118_53) ) (!  (=> (select (|PolymorphicMapType_7110_11118_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@239 f_2@@264) (= (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| Heap@@72) o2@@239 f_2@@264) (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@239 f_2@@264)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@239 f_2@@264))
))) (forall ((o2@@240 T@Ref) (f_2@@265 T@Field_11118_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11118_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@240 f_2@@265) (= (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| Heap@@72) o2@@240 f_2@@265) (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@240 f_2@@265)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_6635#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@240 f_2@@265))
))) (forall ((o2@@241 T@Ref) (f_2@@266 T@Field_11118_1790) ) (!  (=> (select (|PolymorphicMapType_7110_11118_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@241 f_2@@266) (= (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| Heap@@72) o2@@241 f_2@@266) (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@241 f_2@@266)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@241 f_2@@266))
))) (forall ((o2@@242 T@Ref) (f_2@@267 T@Field_11130_11135) ) (!  (=> (select (|PolymorphicMapType_7110_11118_30026#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@242 f_2@@267) (= (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| Heap@@72) o2@@242 f_2@@267) (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@242 f_2@@267)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_22876#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@242 f_2@@267))
))) (forall ((o2@@243 T@Ref) (f_2@@268 T@Field_11145_11146) ) (!  (=> (select (|PolymorphicMapType_7110_11118_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@243 f_2@@268) (= (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| Heap@@72) o2@@243 f_2@@268) (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@243 f_2@@268)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11118_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@243 f_2@@268))
))) (forall ((o2@@244 T@Ref) (f_2@@269 T@Field_11732_53) ) (!  (=> (select (|PolymorphicMapType_7110_11732_53#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@244 f_2@@269) (= (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| Heap@@72) o2@@244 f_2@@269) (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@244 f_2@@269)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_53#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@244 f_2@@269))
))) (forall ((o2@@245 T@Ref) (f_2@@270 T@Field_11732_6635) ) (!  (=> (select (|PolymorphicMapType_7110_11732_6635#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@245 f_2@@270) (= (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| Heap@@72) o2@@245 f_2@@270) (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@245 f_2@@270)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_6635#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@245 f_2@@270))
))) (forall ((o2@@246 T@Ref) (f_2@@271 T@Field_11732_2112) ) (!  (=> (select (|PolymorphicMapType_7110_11732_1203#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@246 f_2@@271) (= (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| Heap@@72) o2@@246 f_2@@271) (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@246 f_2@@271)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_1203#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@246 f_2@@271))
))) (forall ((o2@@247 T@Ref) (f_2@@272 T@Field_11744_11749) ) (!  (=> (select (|PolymorphicMapType_7110_11732_31074#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@247 f_2@@272) (= (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| Heap@@72) o2@@247 f_2@@272) (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@247 f_2@@272)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_24053#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@247 f_2@@272))
))) (forall ((o2@@248 T@Ref) (f_2@@273 T@Field_11759_11760) ) (!  (=> (select (|PolymorphicMapType_7110_11732_9976#PolymorphicMapType_7110| (select (|PolymorphicMapType_6561_6621_19344#PolymorphicMapType_6561| Heap@@72) null (WandMaskField_6621 pm_f@@18))) o2@@248 f_2@@273) (= (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| Heap@@72) o2@@248 f_2@@273) (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@248 f_2@@273)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6561_11732_9976#PolymorphicMapType_6561| ExhaleHeap@@45) o2@@248 f_2@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@45 Mask@@96) (IsWandField_6621_32929 pm_f@@18))
)))
(assert (forall ((arg1@@24 Int) (arg2@@24 T@Ref) (arg3@@24 Real) (arg4@@17 Bool) (arg1_2@@0 Int) (arg2_2@@0 T@Ref) (arg3_2@@0 Real) (arg4_2 Bool) ) (!  (=> (= (wand arg1@@24 arg2@@24 arg3@@24 arg4@@17) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2)) (and (= arg1@@24 arg1_2@@0) (and (= arg2@@24 arg2_2@@0) (and (= arg3@@24 arg3_2@@0) (= arg4@@17 arg4_2)))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@24 arg2@@24 arg3@@24 arg4@@17) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2))
)))
(assert (forall ((arg1@@25 T@Ref) (arg2@@25 Int) (arg3@@25 Real) (arg4@@18 Bool) (arg1_2@@1 T@Ref) (arg2_2@@1 Int) (arg3_2@@1 Real) (arg4_2@@0 Bool) ) (!  (=> (= (wand_2 arg1@@25 arg2@@25 arg3@@25 arg4@@18) (wand_2 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@0)) (and (= arg1@@25 arg1_2@@1) (and (= arg2@@25 arg2_2@@1) (and (= arg3@@25 arg3_2@@1) (= arg4@@18 arg4_2@@0)))))
 :qid |stdinbpl.272:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@25 arg2@@25 arg3@@25 arg4@@18) (wand_2 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@0))
)))
(assert (forall ((arg1@@26 Int) (arg2@@26 T@Ref) (arg3@@26 Real) (arg4@@19 Bool) (arg1_2@@2 Int) (arg2_2@@2 T@Ref) (arg3_2@@2 Real) (arg4_2@@1 Bool) ) (!  (=> (= (wand_3 arg1@@26 arg2@@26 arg3@@26 arg4@@19) (wand_3 arg1_2@@2 arg2_2@@2 arg3_2@@2 arg4_2@@1)) (and (= arg1@@26 arg1_2@@2) (and (= arg2@@26 arg2_2@@2) (and (= arg3@@26 arg3_2@@2) (= arg4@@19 arg4_2@@1)))))
 :qid |stdinbpl.304:15|
 :skolemid |49|
 :pattern ( (wand_3 arg1@@26 arg2@@26 arg3@@26 arg4@@19) (wand_3 arg1_2@@2 arg2_2@@2 arg3_2@@2 arg4_2@@1))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_6582)
(declare-fun head_1 () T@Ref)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_1_1 () Bool)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_6561)
(declare-fun Ops_1Mask () T@PolymorphicMapType_6582)
(declare-fun b_1_1@4 () Bool)
(declare-fun b_2_1@0 () Bool)
(declare-fun b_2_1 () Bool)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_6561)
(declare-fun Heap@@73 () T@PolymorphicMapType_6561)
(declare-fun b_1_1@0 () Bool)
(declare-fun b_1_1@1 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_6582)
(declare-fun b_1_1@2 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_6561)
(set-info :boogie-vc-id test1_1)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon8_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (<= FullPerm (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| Mask@0) null (wand 0 head_1 FullPerm true))))))
(let ((anon8_Then_correct true))
(let ((anon3_correct  (=> (= b_1_1@3  (and b_1_1 (state Ops_1Heap@0 Ops_1Mask))) (=> (and (= b_1_1@4  (and b_1_1@3 (state Ops_1Heap@0 Ops_1Mask))) (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask)))) (=> (and (and (= Mask@0 (PolymorphicMapType_6582 (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| ZeroMask) (store (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| ZeroMask) null (wand 0 head_1 FullPerm true) (+ (select (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| ZeroMask) null (wand 0 head_1 FullPerm true)) FullPerm)) (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| ZeroMask))) (state Heap@@73 Mask@0)) (and (state Heap@@73 Mask@0) (state Heap@@73 Mask@0))) (and (=> (= (ControlFlow 0 4) 1) anon8_Then_correct) (=> (= (ControlFlow 0 4) 3) anon8_Else_correct)))))))
(let ((anon7_Else_correct  (=> (and (not b_1_1@0) (= (ControlFlow 0 7) 4)) anon3_correct)))
(let ((anon7_Then_correct  (=> b_1_1@0 (=> (and (and (= b_1_1@1  (and b_1_1@0 (not (= head_1 null)))) (= Ops_1Mask@0 (PolymorphicMapType_6582 (store (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| ZeroMask) head_1 val (+ (select (|PolymorphicMapType_6582_3990_2417#PolymorphicMapType_6582| ZeroMask) head_1 val) FullPerm)) (|PolymorphicMapType_6582_3872_1203#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3902_1521#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_1790#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_2112#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3990_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3990_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3990_43811#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3990_9976#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3872_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3872_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3872_44225#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3872_9976#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3902_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3902_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3902_44639#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3902_9976#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_45053#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3932_9976#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_53#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_6635#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_45467#PolymorphicMapType_6582| ZeroMask) (|PolymorphicMapType_6582_3962_9976#PolymorphicMapType_6582| ZeroMask)))) (and (= b_1_1@2  (and b_1_1@1 (state Ops_1Heap@0 Ops_1Mask@0))) (= (ControlFlow 0 6) 4))) anon3_correct))))
(let ((anon6_Then_correct  (=> b_1_1@0 (and (=> (= (ControlFlow 0 8) 6) anon7_Then_correct) (=> (= (ControlFlow 0 8) 7) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (not b_1_1@0) (= (ControlFlow 0 5) 4)) anon3_correct)))
(let ((anon0_correct  (=> (state Heap@@73 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_6561_3742_53#PolymorphicMapType_6561| Heap@@73) head_1 $allocated)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 9) 8) anon6_Then_correct) (=> (= (ControlFlow 0 9) 5) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
