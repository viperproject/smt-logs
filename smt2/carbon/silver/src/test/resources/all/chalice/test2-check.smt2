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
(declare-sort T@Field_13850_53 0)
(declare-sort T@Field_13863_13864 0)
(declare-sort T@Field_17177_1189 0)
(declare-sort T@Field_17605_17606 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18855_18860 0)
(declare-sort T@Field_19449_19450 0)
(declare-sort T@Field_20661_20666 0)
(declare-sort T@Field_21243_21244 0)
(declare-sort T@Field_22455_22460 0)
(declare-sort T@Field_6843_6931 0)
(declare-sort T@Field_6843_18860 0)
(declare-sort T@Field_6930_1189 0)
(declare-sort T@Field_6930_53 0)
(declare-sort T@Field_6930_13864 0)
(declare-sort T@Field_6955_1189 0)
(declare-sort T@Field_6955_53 0)
(declare-sort T@Field_6955_13864 0)
(declare-sort T@Field_6980_1189 0)
(declare-sort T@Field_6980_53 0)
(declare-sort T@Field_6980_13864 0)
(declare-datatypes ((T@PolymorphicMapType_13811 0)) (((PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| (Array T@Ref T@Field_17605_17606 Real)) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| (Array T@Ref T@Field_17177_1189 Real)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| (Array T@Ref T@Field_19449_19450 Real)) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| (Array T@Ref T@Field_21243_21244 Real)) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| (Array T@Ref T@Field_6930_1189 Real)) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| (Array T@Ref T@Field_6930_53 Real)) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| (Array T@Ref T@Field_6930_13864 Real)) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| (Array T@Ref T@Field_18855_18860 Real)) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| (Array T@Ref T@Field_6843_6931 Real)) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| (Array T@Ref T@Field_13850_53 Real)) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| (Array T@Ref T@Field_13863_13864 Real)) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| (Array T@Ref T@Field_6843_18860 Real)) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| (Array T@Ref T@Field_6955_1189 Real)) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| (Array T@Ref T@Field_6955_53 Real)) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| (Array T@Ref T@Field_6955_13864 Real)) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| (Array T@Ref T@Field_20661_20666 Real)) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| (Array T@Ref T@Field_6980_1189 Real)) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| (Array T@Ref T@Field_6980_53 Real)) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| (Array T@Ref T@Field_6980_13864 Real)) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| (Array T@Ref T@Field_22455_22460 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14339 0)) (((PolymorphicMapType_14339 (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (Array T@Ref T@Field_17177_1189 Bool)) (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (Array T@Ref T@Field_13850_53 Bool)) (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (Array T@Ref T@Field_13863_13864 Bool)) (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (Array T@Ref T@Field_6843_6931 Bool)) (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (Array T@Ref T@Field_6843_18860 Bool)) (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (Array T@Ref T@Field_6930_1189 Bool)) (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (Array T@Ref T@Field_6930_53 Bool)) (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (Array T@Ref T@Field_6930_13864 Bool)) (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (Array T@Ref T@Field_17605_17606 Bool)) (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (Array T@Ref T@Field_18855_18860 Bool)) (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (Array T@Ref T@Field_6955_1189 Bool)) (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (Array T@Ref T@Field_6955_53 Bool)) (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (Array T@Ref T@Field_6955_13864 Bool)) (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (Array T@Ref T@Field_19449_19450 Bool)) (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (Array T@Ref T@Field_20661_20666 Bool)) (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (Array T@Ref T@Field_6980_1189 Bool)) (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (Array T@Ref T@Field_6980_53 Bool)) (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (Array T@Ref T@Field_6980_13864 Bool)) (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (Array T@Ref T@Field_21243_21244 Bool)) (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (Array T@Ref T@Field_22455_22460 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13790 0)) (((PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| (Array T@Ref T@Field_13850_53 Bool)) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| (Array T@Ref T@Field_13863_13864 T@Ref)) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| (Array T@Ref T@Field_17177_1189 Int)) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| (Array T@Ref T@Field_17605_17606 T@FrameType)) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| (Array T@Ref T@Field_18855_18860 T@PolymorphicMapType_14339)) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| (Array T@Ref T@Field_19449_19450 T@FrameType)) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| (Array T@Ref T@Field_20661_20666 T@PolymorphicMapType_14339)) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| (Array T@Ref T@Field_21243_21244 T@FrameType)) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| (Array T@Ref T@Field_22455_22460 T@PolymorphicMapType_14339)) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| (Array T@Ref T@Field_6843_6931 T@FrameType)) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| (Array T@Ref T@Field_6843_18860 T@PolymorphicMapType_14339)) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| (Array T@Ref T@Field_6930_1189 Int)) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| (Array T@Ref T@Field_6930_53 Bool)) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| (Array T@Ref T@Field_6930_13864 T@Ref)) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| (Array T@Ref T@Field_6955_1189 Int)) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| (Array T@Ref T@Field_6955_53 Bool)) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| (Array T@Ref T@Field_6955_13864 T@Ref)) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| (Array T@Ref T@Field_6980_1189 Int)) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| (Array T@Ref T@Field_6980_53 Bool)) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| (Array T@Ref T@Field_6980_13864 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_13850_53)
(declare-fun x_42 () T@Field_17177_1189)
(declare-fun y_22 () T@Field_17177_1189)
(declare-fun z_24 () T@Field_17177_1189)
(declare-fun w_11 () T@Field_17177_1189)
(declare-fun succHeap (T@PolymorphicMapType_13790 T@PolymorphicMapType_13790) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13790 T@PolymorphicMapType_13790) Bool)
(declare-fun state (T@PolymorphicMapType_13790 T@PolymorphicMapType_13811) Bool)
(declare-fun getY (T@PolymorphicMapType_13790 T@Ref) Int)
(declare-fun |getY#triggerStateless| (T@Ref) Int)
(declare-fun |Y#trigger_6955| (T@PolymorphicMapType_13790 T@Field_19449_19450) Bool)
(declare-fun Y (T@Ref) T@Field_19449_19450)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun getZ (T@PolymorphicMapType_13790 T@Ref) Int)
(declare-fun |getZ#triggerStateless| (T@Ref) Int)
(declare-fun |Z#trigger_6980| (T@PolymorphicMapType_13790 T@Field_21243_21244) Bool)
(declare-fun Z_2 (T@Ref) T@Field_21243_21244)
(declare-fun getX (T@PolymorphicMapType_13790 T@Ref) Int)
(declare-fun |getX#triggerStateless| (T@Ref) Int)
(declare-fun |X#trigger_6930| (T@PolymorphicMapType_13790 T@Field_17605_17606) Bool)
(declare-fun X_1 (T@Ref) T@Field_17605_17606)
(declare-fun GoodMask (T@PolymorphicMapType_13811) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14339)
(declare-fun IsPredicateField_6930_6931 (T@Field_17605_17606) Bool)
(declare-fun IsPredicateField_6955_6956 (T@Field_19449_19450) Bool)
(declare-fun IsPredicateField_6980_6981 (T@Field_21243_21244) Bool)
(declare-fun |getX'| (T@PolymorphicMapType_13790 T@Ref) Int)
(declare-fun dummyFunction_1437 (Int) Bool)
(declare-fun |getY'| (T@PolymorphicMapType_13790 T@Ref) Int)
(declare-fun |getZ'| (T@PolymorphicMapType_13790 T@Ref) Int)
(declare-fun |X#everUsed_6930| (T@Field_17605_17606) Bool)
(declare-fun |Y#everUsed_6955| (T@Field_19449_19450) Bool)
(declare-fun |Z#everUsed_6980| (T@Field_21243_21244) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13790 T@PolymorphicMapType_13790 T@PolymorphicMapType_13811) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6980 (T@Field_21243_21244) T@Field_22455_22460)
(declare-fun HasDirectPerm_6980_6981 (T@PolymorphicMapType_13811 T@Ref T@Field_21243_21244) Bool)
(declare-fun PredicateMaskField_6955 (T@Field_19449_19450) T@Field_20661_20666)
(declare-fun HasDirectPerm_6955_6956 (T@PolymorphicMapType_13811 T@Ref T@Field_19449_19450) Bool)
(declare-fun PredicateMaskField_6930 (T@Field_17605_17606) T@Field_18855_18860)
(declare-fun HasDirectPerm_6930_6931 (T@PolymorphicMapType_13811 T@Ref T@Field_17605_17606) Bool)
(declare-fun IsPredicateField_6843_50026 (T@Field_6843_6931) Bool)
(declare-fun PredicateMaskField_6843 (T@Field_6843_6931) T@Field_6843_18860)
(declare-fun HasDirectPerm_6843_6931 (T@PolymorphicMapType_13811 T@Ref T@Field_6843_6931) Bool)
(declare-fun IsWandField_6980_57733 (T@Field_21243_21244) Bool)
(declare-fun WandMaskField_6980 (T@Field_21243_21244) T@Field_22455_22460)
(declare-fun IsWandField_6955_57376 (T@Field_19449_19450) Bool)
(declare-fun WandMaskField_6955 (T@Field_19449_19450) T@Field_20661_20666)
(declare-fun IsWandField_6930_57019 (T@Field_17605_17606) Bool)
(declare-fun WandMaskField_6930 (T@Field_17605_17606) T@Field_18855_18860)
(declare-fun IsWandField_6843_56662 (T@Field_6843_6931) Bool)
(declare-fun WandMaskField_6843 (T@Field_6843_6931) T@Field_6843_18860)
(declare-fun |X#sm| (T@Ref) T@Field_18855_18860)
(declare-fun |Y#sm| (T@Ref) T@Field_20661_20666)
(declare-fun |Z#sm| (T@Ref) T@Field_22455_22460)
(declare-fun dummyHeap () T@PolymorphicMapType_13790)
(declare-fun ZeroMask () T@PolymorphicMapType_13811)
(declare-fun InsidePredicate_21243_21243 (T@Field_21243_21244 T@FrameType T@Field_21243_21244 T@FrameType) Bool)
(declare-fun InsidePredicate_19449_19449 (T@Field_19449_19450 T@FrameType T@Field_19449_19450 T@FrameType) Bool)
(declare-fun InsidePredicate_17605_17605 (T@Field_17605_17606 T@FrameType T@Field_17605_17606 T@FrameType) Bool)
(declare-fun InsidePredicate_13850_13850 (T@Field_6843_6931 T@FrameType T@Field_6843_6931 T@FrameType) Bool)
(declare-fun IsPredicateField_6843_1189 (T@Field_17177_1189) Bool)
(declare-fun IsWandField_6843_1189 (T@Field_17177_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6980_71437 (T@Field_22455_22460) Bool)
(declare-fun IsWandField_6980_71453 (T@Field_22455_22460) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6980_13864 (T@Field_6980_13864) Bool)
(declare-fun IsWandField_6980_13864 (T@Field_6980_13864) Bool)
(declare-fun IsPredicateField_6980_53 (T@Field_6980_53) Bool)
(declare-fun IsWandField_6980_53 (T@Field_6980_53) Bool)
(declare-fun IsPredicateField_6980_1189 (T@Field_6980_1189) Bool)
(declare-fun IsWandField_6980_1189 (T@Field_6980_1189) Bool)
(declare-fun IsPredicateField_6955_70606 (T@Field_20661_20666) Bool)
(declare-fun IsWandField_6955_70622 (T@Field_20661_20666) Bool)
(declare-fun IsPredicateField_6955_13864 (T@Field_6955_13864) Bool)
(declare-fun IsWandField_6955_13864 (T@Field_6955_13864) Bool)
(declare-fun IsPredicateField_6955_53 (T@Field_6955_53) Bool)
(declare-fun IsWandField_6955_53 (T@Field_6955_53) Bool)
(declare-fun IsPredicateField_6955_1189 (T@Field_6955_1189) Bool)
(declare-fun IsWandField_6955_1189 (T@Field_6955_1189) Bool)
(declare-fun IsPredicateField_6843_69775 (T@Field_6843_18860) Bool)
(declare-fun IsWandField_6843_69791 (T@Field_6843_18860) Bool)
(declare-fun IsPredicateField_6843_13864 (T@Field_13863_13864) Bool)
(declare-fun IsWandField_6843_13864 (T@Field_13863_13864) Bool)
(declare-fun IsPredicateField_6843_53 (T@Field_13850_53) Bool)
(declare-fun IsWandField_6843_53 (T@Field_13850_53) Bool)
(declare-fun IsPredicateField_6930_68958 (T@Field_18855_18860) Bool)
(declare-fun IsWandField_6930_68974 (T@Field_18855_18860) Bool)
(declare-fun IsPredicateField_6930_13864 (T@Field_6930_13864) Bool)
(declare-fun IsWandField_6930_13864 (T@Field_6930_13864) Bool)
(declare-fun IsPredicateField_6930_53 (T@Field_6930_53) Bool)
(declare-fun IsWandField_6930_53 (T@Field_6930_53) Bool)
(declare-fun IsPredicateField_6930_1189 (T@Field_6930_1189) Bool)
(declare-fun IsWandField_6930_1189 (T@Field_6930_1189) Bool)
(declare-fun HasDirectPerm_6980_49781 (T@PolymorphicMapType_13811 T@Ref T@Field_22455_22460) Bool)
(declare-fun HasDirectPerm_6980_13864 (T@PolymorphicMapType_13811 T@Ref T@Field_6980_13864) Bool)
(declare-fun HasDirectPerm_6980_53 (T@PolymorphicMapType_13811 T@Ref T@Field_6980_53) Bool)
(declare-fun HasDirectPerm_6980_1189 (T@PolymorphicMapType_13811 T@Ref T@Field_6980_1189) Bool)
(declare-fun HasDirectPerm_6955_48683 (T@PolymorphicMapType_13811 T@Ref T@Field_20661_20666) Bool)
(declare-fun HasDirectPerm_6955_13864 (T@PolymorphicMapType_13811 T@Ref T@Field_6955_13864) Bool)
(declare-fun HasDirectPerm_6955_53 (T@PolymorphicMapType_13811 T@Ref T@Field_6955_53) Bool)
(declare-fun HasDirectPerm_6955_1189 (T@PolymorphicMapType_13811 T@Ref T@Field_6955_1189) Bool)
(declare-fun HasDirectPerm_6930_47585 (T@PolymorphicMapType_13811 T@Ref T@Field_18855_18860) Bool)
(declare-fun HasDirectPerm_6930_13864 (T@PolymorphicMapType_13811 T@Ref T@Field_6930_13864) Bool)
(declare-fun HasDirectPerm_6930_53 (T@PolymorphicMapType_13811 T@Ref T@Field_6930_53) Bool)
(declare-fun HasDirectPerm_6930_1189 (T@PolymorphicMapType_13811 T@Ref T@Field_6930_1189) Bool)
(declare-fun HasDirectPerm_6843_46444 (T@PolymorphicMapType_13811 T@Ref T@Field_6843_18860) Bool)
(declare-fun HasDirectPerm_6843_13864 (T@PolymorphicMapType_13811 T@Ref T@Field_13863_13864) Bool)
(declare-fun HasDirectPerm_6843_53 (T@PolymorphicMapType_13811 T@Ref T@Field_13850_53) Bool)
(declare-fun HasDirectPerm_6843_1189 (T@PolymorphicMapType_13811 T@Ref T@Field_17177_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_13811 T@PolymorphicMapType_13811 T@PolymorphicMapType_13811) Bool)
(declare-fun |getX#frame| (T@FrameType T@Ref) Int)
(declare-fun |getY#frame| (T@FrameType T@Ref) Int)
(declare-fun |getZ#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_6930_6931 (T@Field_17605_17606) Int)
(declare-fun getPredWandId_6955_6956 (T@Field_19449_19450) Int)
(declare-fun getPredWandId_6980_6981 (T@Field_21243_21244) Int)
(declare-fun InsidePredicate_21243_19449 (T@Field_21243_21244 T@FrameType T@Field_19449_19450 T@FrameType) Bool)
(declare-fun InsidePredicate_21243_17605 (T@Field_21243_21244 T@FrameType T@Field_17605_17606 T@FrameType) Bool)
(declare-fun InsidePredicate_21243_13850 (T@Field_21243_21244 T@FrameType T@Field_6843_6931 T@FrameType) Bool)
(declare-fun InsidePredicate_19449_21243 (T@Field_19449_19450 T@FrameType T@Field_21243_21244 T@FrameType) Bool)
(declare-fun InsidePredicate_19449_17605 (T@Field_19449_19450 T@FrameType T@Field_17605_17606 T@FrameType) Bool)
(declare-fun InsidePredicate_19449_13850 (T@Field_19449_19450 T@FrameType T@Field_6843_6931 T@FrameType) Bool)
(declare-fun InsidePredicate_17605_21243 (T@Field_17605_17606 T@FrameType T@Field_21243_21244 T@FrameType) Bool)
(declare-fun InsidePredicate_17605_19449 (T@Field_17605_17606 T@FrameType T@Field_19449_19450 T@FrameType) Bool)
(declare-fun InsidePredicate_17605_13850 (T@Field_17605_17606 T@FrameType T@Field_6843_6931 T@FrameType) Bool)
(declare-fun InsidePredicate_13850_21243 (T@Field_6843_6931 T@FrameType T@Field_21243_21244 T@FrameType) Bool)
(declare-fun InsidePredicate_13850_19449 (T@Field_6843_6931 T@FrameType T@Field_19449_19450 T@FrameType) Bool)
(declare-fun InsidePredicate_13850_17605 (T@Field_6843_6931 T@FrameType T@Field_17605_17606 T@FrameType) Bool)
(assert (distinct x_42 y_22 z_24 w_11)
)
(assert (forall ((Heap0 T@PolymorphicMapType_13790) (Heap1 T@PolymorphicMapType_13790) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_13790) (Mask T@PolymorphicMapType_13811) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (getY Heap this) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap) this y_22)))
 :qid |stdinbpl.301:15|
 :skolemid |28|
 :pattern ( (state Heap Mask) (getY Heap this))
 :pattern ( (state Heap Mask) (|getY#triggerStateless| this) (|Y#trigger_6955| Heap (Y this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13790) (Mask@@0 T@PolymorphicMapType_13811) (this@@0 T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (= (getZ Heap@@0 this@@0) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@0) this@@0 z_24)))
 :qid |stdinbpl.387:15|
 :skolemid |32|
 :pattern ( (state Heap@@0 Mask@@0) (getZ Heap@@0 this@@0))
 :pattern ( (state Heap@@0 Mask@@0) (|getZ#triggerStateless| this@@0) (|Z#trigger_6980| Heap@@0 (Z_2 this@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13790) (Mask@@1 T@PolymorphicMapType_13811) (this@@1 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 2)) (= (getX Heap@@1 this@@1) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@1) this@@1 x_42)))
 :qid |stdinbpl.215:15|
 :skolemid |24|
 :pattern ( (state Heap@@1 Mask@@1) (getX Heap@@1 this@@1))
 :pattern ( (state Heap@@1 Mask@@1) (|getX#triggerStateless| this@@1) (|X#trigger_6930| Heap@@1 (X_1 this@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13790) (Mask@@2 T@PolymorphicMapType_13811) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13790) (Heap1@@0 T@PolymorphicMapType_13790) (Heap2 T@PolymorphicMapType_13790) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22455_22460) ) (!  (not (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_21243_21244) ) (!  (not (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6980_13864) ) (!  (not (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6980_53) ) (!  (not (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6980_1189) ) (!  (not (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_20661_20666) ) (!  (not (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19449_19450) ) (!  (not (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6955_13864) ) (!  (not (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_6955_53) ) (!  (not (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_6955_1189) ) (!  (not (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_18855_18860) ) (!  (not (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_17605_17606) ) (!  (not (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6930_13864) ) (!  (not (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6930_53) ) (!  (not (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6930_1189) ) (!  (not (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6843_18860) ) (!  (not (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6843_6931) ) (!  (not (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_13863_13864) ) (!  (not (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_13850_53) ) (!  (not (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17177_1189) ) (!  (not (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((this@@2 T@Ref) ) (! (IsPredicateField_6930_6931 (X_1 this@@2))
 :qid |stdinbpl.467:15|
 :skolemid |35|
 :pattern ( (X_1 this@@2))
)))
(assert (forall ((this@@3 T@Ref) ) (! (IsPredicateField_6955_6956 (Y this@@3))
 :qid |stdinbpl.522:15|
 :skolemid |41|
 :pattern ( (Y this@@3))
)))
(assert (forall ((this@@4 T@Ref) ) (! (IsPredicateField_6980_6981 (Z_2 this@@4))
 :qid |stdinbpl.577:15|
 :skolemid |47|
 :pattern ( (Z_2 this@@4))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13790) (this@@5 T@Ref) ) (! (dummyFunction_1437 (|getX#triggerStateless| this@@5))
 :qid |stdinbpl.209:15|
 :skolemid |23|
 :pattern ( (|getX'| Heap@@3 this@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13790) (this@@6 T@Ref) ) (! (dummyFunction_1437 (|getY#triggerStateless| this@@6))
 :qid |stdinbpl.295:15|
 :skolemid |27|
 :pattern ( (|getY'| Heap@@4 this@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13790) (this@@7 T@Ref) ) (! (dummyFunction_1437 (|getZ#triggerStateless| this@@7))
 :qid |stdinbpl.381:15|
 :skolemid |31|
 :pattern ( (|getZ'| Heap@@5 this@@7))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13790) (this@@8 T@Ref) ) (! (|X#everUsed_6930| (X_1 this@@8))
 :qid |stdinbpl.486:15|
 :skolemid |39|
 :pattern ( (|X#trigger_6930| Heap@@6 (X_1 this@@8)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13790) (this@@9 T@Ref) ) (! (|Y#everUsed_6955| (Y this@@9))
 :qid |stdinbpl.541:15|
 :skolemid |45|
 :pattern ( (|Y#trigger_6955| Heap@@7 (Y this@@9)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13790) (this@@10 T@Ref) ) (! (|Z#everUsed_6980| (Z_2 this@@10))
 :qid |stdinbpl.596:15|
 :skolemid |51|
 :pattern ( (|Z#trigger_6980| Heap@@8 (Z_2 this@@10)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13790) (this@@11 T@Ref) ) (!  (and (= (getX Heap@@9 this@@11) (|getX'| Heap@@9 this@@11)) (dummyFunction_1437 (|getX#triggerStateless| this@@11)))
 :qid |stdinbpl.205:15|
 :skolemid |22|
 :pattern ( (getX Heap@@9 this@@11))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13790) (this@@12 T@Ref) ) (!  (and (= (getY Heap@@10 this@@12) (|getY'| Heap@@10 this@@12)) (dummyFunction_1437 (|getY#triggerStateless| this@@12)))
 :qid |stdinbpl.291:15|
 :skolemid |26|
 :pattern ( (getY Heap@@10 this@@12))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13790) (this@@13 T@Ref) ) (!  (and (= (getZ Heap@@11 this@@13) (|getZ'| Heap@@11 this@@13)) (dummyFunction_1437 (|getZ#triggerStateless| this@@13)))
 :qid |stdinbpl.377:15|
 :skolemid |30|
 :pattern ( (getZ Heap@@11 this@@13))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13790) (ExhaleHeap T@PolymorphicMapType_13790) (Mask@@3 T@PolymorphicMapType_13811) (pm_f T@Field_21243_21244) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_6980_6981 Mask@@3 null pm_f) (IsPredicateField_6980_6981 pm_f)) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@12) null (PredicateMaskField_6980 pm_f)) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap) null (PredicateMaskField_6980 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (IsPredicateField_6980_6981 pm_f) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap) null (PredicateMaskField_6980 pm_f)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13790) (ExhaleHeap@@0 T@PolymorphicMapType_13790) (Mask@@4 T@PolymorphicMapType_13811) (pm_f@@0 T@Field_19449_19450) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_6955_6956 Mask@@4 null pm_f@@0) (IsPredicateField_6955_6956 pm_f@@0)) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@13) null (PredicateMaskField_6955 pm_f@@0)) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@0) null (PredicateMaskField_6955 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (IsPredicateField_6955_6956 pm_f@@0) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@0) null (PredicateMaskField_6955 pm_f@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13790) (ExhaleHeap@@1 T@PolymorphicMapType_13790) (Mask@@5 T@PolymorphicMapType_13811) (pm_f@@1 T@Field_17605_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_6930_6931 Mask@@5 null pm_f@@1) (IsPredicateField_6930_6931 pm_f@@1)) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@14) null (PredicateMaskField_6930 pm_f@@1)) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@1) null (PredicateMaskField_6930 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@5) (IsPredicateField_6930_6931 pm_f@@1) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@1) null (PredicateMaskField_6930 pm_f@@1)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13790) (ExhaleHeap@@2 T@PolymorphicMapType_13790) (Mask@@6 T@PolymorphicMapType_13811) (pm_f@@2 T@Field_6843_6931) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_6843_6931 Mask@@6 null pm_f@@2) (IsPredicateField_6843_50026 pm_f@@2)) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@15) null (PredicateMaskField_6843 pm_f@@2)) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@2) null (PredicateMaskField_6843 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@6) (IsPredicateField_6843_50026 pm_f@@2) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@2) null (PredicateMaskField_6843 pm_f@@2)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13790) (ExhaleHeap@@3 T@PolymorphicMapType_13790) (Mask@@7 T@PolymorphicMapType_13811) (pm_f@@3 T@Field_21243_21244) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_6980_6981 Mask@@7 null pm_f@@3) (IsWandField_6980_57733 pm_f@@3)) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@16) null (WandMaskField_6980 pm_f@@3)) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@3) null (WandMaskField_6980 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@7) (IsWandField_6980_57733 pm_f@@3) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@3) null (WandMaskField_6980 pm_f@@3)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13790) (ExhaleHeap@@4 T@PolymorphicMapType_13790) (Mask@@8 T@PolymorphicMapType_13811) (pm_f@@4 T@Field_19449_19450) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_6955_6956 Mask@@8 null pm_f@@4) (IsWandField_6955_57376 pm_f@@4)) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@17) null (WandMaskField_6955 pm_f@@4)) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@4) null (WandMaskField_6955 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@8) (IsWandField_6955_57376 pm_f@@4) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@4) null (WandMaskField_6955 pm_f@@4)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13790) (ExhaleHeap@@5 T@PolymorphicMapType_13790) (Mask@@9 T@PolymorphicMapType_13811) (pm_f@@5 T@Field_17605_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@9) (=> (and (HasDirectPerm_6930_6931 Mask@@9 null pm_f@@5) (IsWandField_6930_57019 pm_f@@5)) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@18) null (WandMaskField_6930 pm_f@@5)) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@5) null (WandMaskField_6930 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@9) (IsWandField_6930_57019 pm_f@@5) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@5) null (WandMaskField_6930 pm_f@@5)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13790) (ExhaleHeap@@6 T@PolymorphicMapType_13790) (Mask@@10 T@PolymorphicMapType_13811) (pm_f@@6 T@Field_6843_6931) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@10) (=> (and (HasDirectPerm_6843_6931 Mask@@10 null pm_f@@6) (IsWandField_6843_56662 pm_f@@6)) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@19) null (WandMaskField_6843 pm_f@@6)) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@6) null (WandMaskField_6843 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@10) (IsWandField_6843_56662 pm_f@@6) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@6) null (WandMaskField_6843 pm_f@@6)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13790) (ExhaleHeap@@7 T@PolymorphicMapType_13790) (Mask@@11 T@PolymorphicMapType_13811) (pm_f@@7 T@Field_21243_21244) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@11) (=> (and (HasDirectPerm_6980_6981 Mask@@11 null pm_f@@7) (IsPredicateField_6980_6981 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_17177_1189) ) (!  (=> (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2 f_2) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@20) o2 f_2) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@7) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@7) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_13850_53) ) (!  (=> (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@20) o2@@0 f_2@@0) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_13863_13864) ) (!  (=> (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@20) o2@@1 f_2@@1) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6843_6931) ) (!  (=> (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@20) o2@@2 f_2@@2) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6843_18860) ) (!  (=> (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@20) o2@@3 f_2@@3) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6930_1189) ) (!  (=> (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@20) o2@@4 f_2@@4) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6930_53) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@20) o2@@5 f_2@@5) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6930_13864) ) (!  (=> (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@20) o2@@6 f_2@@6) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_17605_17606) ) (!  (=> (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@20) o2@@7 f_2@@7) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_18855_18860) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@20) o2@@8 f_2@@8) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_6955_1189) ) (!  (=> (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@20) o2@@9 f_2@@9) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_6955_53) ) (!  (=> (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@20) o2@@10 f_2@@10) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_6955_13864) ) (!  (=> (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@20) o2@@11 f_2@@11) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_19449_19450) ) (!  (=> (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@20) o2@@12 f_2@@12) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_20661_20666) ) (!  (=> (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@20) o2@@13 f_2@@13) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_6980_1189) ) (!  (=> (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@20) o2@@14 f_2@@14) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_6980_53) ) (!  (=> (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@20) o2@@15 f_2@@15) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_6980_13864) ) (!  (=> (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@20) o2@@16 f_2@@16) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_21243_21244) ) (!  (=> (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@20) o2@@17 f_2@@17) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_22455_22460) ) (!  (=> (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) null (PredicateMaskField_6980 pm_f@@7))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@20) o2@@18 f_2@@18) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@7) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@11) (IsPredicateField_6980_6981 pm_f@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13790) (ExhaleHeap@@8 T@PolymorphicMapType_13790) (Mask@@12 T@PolymorphicMapType_13811) (pm_f@@8 T@Field_19449_19450) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@12) (=> (and (HasDirectPerm_6955_6956 Mask@@12 null pm_f@@8) (IsPredicateField_6955_6956 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_17177_1189) ) (!  (=> (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@21) o2@@19 f_2@@19) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_13850_53) ) (!  (=> (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@21) o2@@20 f_2@@20) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_13863_13864) ) (!  (=> (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@21) o2@@21 f_2@@21) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_6843_6931) ) (!  (=> (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@21) o2@@22 f_2@@22) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_6843_18860) ) (!  (=> (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@21) o2@@23 f_2@@23) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@23 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_6930_1189) ) (!  (=> (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@21) o2@@24 f_2@@24) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@24 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_6930_53) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@21) o2@@25 f_2@@25) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@25 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_6930_13864) ) (!  (=> (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@21) o2@@26 f_2@@26) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@26 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_17605_17606) ) (!  (=> (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@21) o2@@27 f_2@@27) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@27 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_18855_18860) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@21) o2@@28 f_2@@28) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@28 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_6955_1189) ) (!  (=> (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@21) o2@@29 f_2@@29) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@29 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_6955_53) ) (!  (=> (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@21) o2@@30 f_2@@30) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@30 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_6955_13864) ) (!  (=> (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@21) o2@@31 f_2@@31) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@31 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_19449_19450) ) (!  (=> (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@21) o2@@32 f_2@@32) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@32 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_20661_20666) ) (!  (=> (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) o2@@33 f_2@@33) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@33 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_6980_1189) ) (!  (=> (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@21) o2@@34 f_2@@34) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@34 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_6980_53) ) (!  (=> (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@21) o2@@35 f_2@@35) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@35 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_6980_13864) ) (!  (=> (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@21) o2@@36 f_2@@36) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@36 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_21243_21244) ) (!  (=> (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@21) o2@@37 f_2@@37) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@37 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_22455_22460) ) (!  (=> (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@21) null (PredicateMaskField_6955 pm_f@@8))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@21) o2@@38 f_2@@38) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@38 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@8) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@12) (IsPredicateField_6955_6956 pm_f@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13790) (ExhaleHeap@@9 T@PolymorphicMapType_13790) (Mask@@13 T@PolymorphicMapType_13811) (pm_f@@9 T@Field_17605_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@13) (=> (and (HasDirectPerm_6930_6931 Mask@@13 null pm_f@@9) (IsPredicateField_6930_6931 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_17177_1189) ) (!  (=> (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@22) o2@@39 f_2@@39) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@39 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@39 f_2@@39))
)) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_13850_53) ) (!  (=> (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@22) o2@@40 f_2@@40) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@40 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_13863_13864) ) (!  (=> (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@22) o2@@41 f_2@@41) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@41 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_6843_6931) ) (!  (=> (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@22) o2@@42 f_2@@42) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@42 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_6843_18860) ) (!  (=> (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@22) o2@@43 f_2@@43) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@43 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_6930_1189) ) (!  (=> (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@22) o2@@44 f_2@@44) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@44 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_6930_53) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@22) o2@@45 f_2@@45) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@45 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_6930_13864) ) (!  (=> (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@22) o2@@46 f_2@@46) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@46 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@46 f_2@@46))
))) (forall ((o2@@47 T@Ref) (f_2@@47 T@Field_17605_17606) ) (!  (=> (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@47 f_2@@47) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@22) o2@@47 f_2@@47) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@47 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@47 f_2@@47))
))) (forall ((o2@@48 T@Ref) (f_2@@48 T@Field_18855_18860) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@48 f_2@@48) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) o2@@48 f_2@@48) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@48 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@48 f_2@@48))
))) (forall ((o2@@49 T@Ref) (f_2@@49 T@Field_6955_1189) ) (!  (=> (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@49 f_2@@49) (= (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@22) o2@@49 f_2@@49) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@49 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@49 f_2@@49))
))) (forall ((o2@@50 T@Ref) (f_2@@50 T@Field_6955_53) ) (!  (=> (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@50 f_2@@50) (= (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@22) o2@@50 f_2@@50) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@50 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@50 f_2@@50))
))) (forall ((o2@@51 T@Ref) (f_2@@51 T@Field_6955_13864) ) (!  (=> (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@51 f_2@@51) (= (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@22) o2@@51 f_2@@51) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@51 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@51 f_2@@51))
))) (forall ((o2@@52 T@Ref) (f_2@@52 T@Field_19449_19450) ) (!  (=> (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@52 f_2@@52) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@22) o2@@52 f_2@@52) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@52 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@52 f_2@@52))
))) (forall ((o2@@53 T@Ref) (f_2@@53 T@Field_20661_20666) ) (!  (=> (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@53 f_2@@53) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@22) o2@@53 f_2@@53) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@53 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@53 f_2@@53))
))) (forall ((o2@@54 T@Ref) (f_2@@54 T@Field_6980_1189) ) (!  (=> (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@54 f_2@@54) (= (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@22) o2@@54 f_2@@54) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@54 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@54 f_2@@54))
))) (forall ((o2@@55 T@Ref) (f_2@@55 T@Field_6980_53) ) (!  (=> (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@55 f_2@@55) (= (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@22) o2@@55 f_2@@55) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@55 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@55 f_2@@55))
))) (forall ((o2@@56 T@Ref) (f_2@@56 T@Field_6980_13864) ) (!  (=> (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@56 f_2@@56) (= (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@22) o2@@56 f_2@@56) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@56 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@56 f_2@@56))
))) (forall ((o2@@57 T@Ref) (f_2@@57 T@Field_21243_21244) ) (!  (=> (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@57 f_2@@57) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@22) o2@@57 f_2@@57) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@57 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@57 f_2@@57))
))) (forall ((o2@@58 T@Ref) (f_2@@58 T@Field_22455_22460) ) (!  (=> (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@22) null (PredicateMaskField_6930 pm_f@@9))) o2@@58 f_2@@58) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@22) o2@@58 f_2@@58) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@58 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@9) o2@@58 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@13) (IsPredicateField_6930_6931 pm_f@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13790) (ExhaleHeap@@10 T@PolymorphicMapType_13790) (Mask@@14 T@PolymorphicMapType_13811) (pm_f@@10 T@Field_6843_6931) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@14) (=> (and (HasDirectPerm_6843_6931 Mask@@14 null pm_f@@10) (IsPredicateField_6843_50026 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@59 T@Field_17177_1189) ) (!  (=> (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@59 f_2@@59) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@23) o2@@59 f_2@@59) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@59 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@59 f_2@@59))
)) (forall ((o2@@60 T@Ref) (f_2@@60 T@Field_13850_53) ) (!  (=> (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@60 f_2@@60) (= (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@23) o2@@60 f_2@@60) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@60 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@60 f_2@@60))
))) (forall ((o2@@61 T@Ref) (f_2@@61 T@Field_13863_13864) ) (!  (=> (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@61 f_2@@61) (= (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@23) o2@@61 f_2@@61) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@61 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@61 f_2@@61))
))) (forall ((o2@@62 T@Ref) (f_2@@62 T@Field_6843_6931) ) (!  (=> (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@62 f_2@@62) (= (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@23) o2@@62 f_2@@62) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@62 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@62 f_2@@62))
))) (forall ((o2@@63 T@Ref) (f_2@@63 T@Field_6843_18860) ) (!  (=> (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@63 f_2@@63) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) o2@@63 f_2@@63) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@63 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@63 f_2@@63))
))) (forall ((o2@@64 T@Ref) (f_2@@64 T@Field_6930_1189) ) (!  (=> (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@64 f_2@@64) (= (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@23) o2@@64 f_2@@64) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@64 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@64 f_2@@64))
))) (forall ((o2@@65 T@Ref) (f_2@@65 T@Field_6930_53) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@65 f_2@@65) (= (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@23) o2@@65 f_2@@65) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@65 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@65 f_2@@65))
))) (forall ((o2@@66 T@Ref) (f_2@@66 T@Field_6930_13864) ) (!  (=> (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@66 f_2@@66) (= (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@23) o2@@66 f_2@@66) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@66 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@66 f_2@@66))
))) (forall ((o2@@67 T@Ref) (f_2@@67 T@Field_17605_17606) ) (!  (=> (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@67 f_2@@67) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@23) o2@@67 f_2@@67) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@67 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@67 f_2@@67))
))) (forall ((o2@@68 T@Ref) (f_2@@68 T@Field_18855_18860) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@68 f_2@@68) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@23) o2@@68 f_2@@68) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@68 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@68 f_2@@68))
))) (forall ((o2@@69 T@Ref) (f_2@@69 T@Field_6955_1189) ) (!  (=> (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@69 f_2@@69) (= (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@23) o2@@69 f_2@@69) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@69 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@69 f_2@@69))
))) (forall ((o2@@70 T@Ref) (f_2@@70 T@Field_6955_53) ) (!  (=> (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@70 f_2@@70) (= (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@23) o2@@70 f_2@@70) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@70 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@70 f_2@@70))
))) (forall ((o2@@71 T@Ref) (f_2@@71 T@Field_6955_13864) ) (!  (=> (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@71 f_2@@71) (= (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@23) o2@@71 f_2@@71) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@71 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@71 f_2@@71))
))) (forall ((o2@@72 T@Ref) (f_2@@72 T@Field_19449_19450) ) (!  (=> (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@72 f_2@@72) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@23) o2@@72 f_2@@72) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@72 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@72 f_2@@72))
))) (forall ((o2@@73 T@Ref) (f_2@@73 T@Field_20661_20666) ) (!  (=> (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@73 f_2@@73) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@23) o2@@73 f_2@@73) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@73 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@73 f_2@@73))
))) (forall ((o2@@74 T@Ref) (f_2@@74 T@Field_6980_1189) ) (!  (=> (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@74 f_2@@74) (= (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@23) o2@@74 f_2@@74) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@74 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@74 f_2@@74))
))) (forall ((o2@@75 T@Ref) (f_2@@75 T@Field_6980_53) ) (!  (=> (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@75 f_2@@75) (= (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@23) o2@@75 f_2@@75) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@75 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@75 f_2@@75))
))) (forall ((o2@@76 T@Ref) (f_2@@76 T@Field_6980_13864) ) (!  (=> (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@76 f_2@@76) (= (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@23) o2@@76 f_2@@76) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@76 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@76 f_2@@76))
))) (forall ((o2@@77 T@Ref) (f_2@@77 T@Field_21243_21244) ) (!  (=> (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@77 f_2@@77) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@23) o2@@77 f_2@@77) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@77 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@77 f_2@@77))
))) (forall ((o2@@78 T@Ref) (f_2@@78 T@Field_22455_22460) ) (!  (=> (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@23) null (PredicateMaskField_6843 pm_f@@10))) o2@@78 f_2@@78) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@23) o2@@78 f_2@@78) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@78 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@10) o2@@78 f_2@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@14) (IsPredicateField_6843_50026 pm_f@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13790) (ExhaleHeap@@11 T@PolymorphicMapType_13790) (Mask@@15 T@PolymorphicMapType_13811) (pm_f@@11 T@Field_21243_21244) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@15) (=> (and (HasDirectPerm_6980_6981 Mask@@15 null pm_f@@11) (IsWandField_6980_57733 pm_f@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@79 T@Ref) (f_2@@79 T@Field_17177_1189) ) (!  (=> (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@79 f_2@@79) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@24) o2@@79 f_2@@79) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@79 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@79 f_2@@79))
)) (forall ((o2@@80 T@Ref) (f_2@@80 T@Field_13850_53) ) (!  (=> (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@80 f_2@@80) (= (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@24) o2@@80 f_2@@80) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@80 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@80 f_2@@80))
))) (forall ((o2@@81 T@Ref) (f_2@@81 T@Field_13863_13864) ) (!  (=> (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@81 f_2@@81) (= (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@24) o2@@81 f_2@@81) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@81 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@81 f_2@@81))
))) (forall ((o2@@82 T@Ref) (f_2@@82 T@Field_6843_6931) ) (!  (=> (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@82 f_2@@82) (= (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@24) o2@@82 f_2@@82) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@82 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@82 f_2@@82))
))) (forall ((o2@@83 T@Ref) (f_2@@83 T@Field_6843_18860) ) (!  (=> (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@83 f_2@@83) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@24) o2@@83 f_2@@83) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@83 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@83 f_2@@83))
))) (forall ((o2@@84 T@Ref) (f_2@@84 T@Field_6930_1189) ) (!  (=> (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@84 f_2@@84) (= (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@24) o2@@84 f_2@@84) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@84 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@84 f_2@@84))
))) (forall ((o2@@85 T@Ref) (f_2@@85 T@Field_6930_53) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@85 f_2@@85) (= (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@24) o2@@85 f_2@@85) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@85 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@85 f_2@@85))
))) (forall ((o2@@86 T@Ref) (f_2@@86 T@Field_6930_13864) ) (!  (=> (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@86 f_2@@86) (= (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@24) o2@@86 f_2@@86) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@86 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@86 f_2@@86))
))) (forall ((o2@@87 T@Ref) (f_2@@87 T@Field_17605_17606) ) (!  (=> (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@87 f_2@@87) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@24) o2@@87 f_2@@87) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@87 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@87 f_2@@87))
))) (forall ((o2@@88 T@Ref) (f_2@@88 T@Field_18855_18860) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@88 f_2@@88) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@24) o2@@88 f_2@@88) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@88 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@88 f_2@@88))
))) (forall ((o2@@89 T@Ref) (f_2@@89 T@Field_6955_1189) ) (!  (=> (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@89 f_2@@89) (= (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@24) o2@@89 f_2@@89) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@89 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@89 f_2@@89))
))) (forall ((o2@@90 T@Ref) (f_2@@90 T@Field_6955_53) ) (!  (=> (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@90 f_2@@90) (= (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@24) o2@@90 f_2@@90) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@90 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@90 f_2@@90))
))) (forall ((o2@@91 T@Ref) (f_2@@91 T@Field_6955_13864) ) (!  (=> (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@91 f_2@@91) (= (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@24) o2@@91 f_2@@91) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@91 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@91 f_2@@91))
))) (forall ((o2@@92 T@Ref) (f_2@@92 T@Field_19449_19450) ) (!  (=> (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@92 f_2@@92) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@24) o2@@92 f_2@@92) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@92 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@92 f_2@@92))
))) (forall ((o2@@93 T@Ref) (f_2@@93 T@Field_20661_20666) ) (!  (=> (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@93 f_2@@93) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@24) o2@@93 f_2@@93) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@93 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@93 f_2@@93))
))) (forall ((o2@@94 T@Ref) (f_2@@94 T@Field_6980_1189) ) (!  (=> (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@94 f_2@@94) (= (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@24) o2@@94 f_2@@94) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@94 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@94 f_2@@94))
))) (forall ((o2@@95 T@Ref) (f_2@@95 T@Field_6980_53) ) (!  (=> (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@95 f_2@@95) (= (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@24) o2@@95 f_2@@95) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@95 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@95 f_2@@95))
))) (forall ((o2@@96 T@Ref) (f_2@@96 T@Field_6980_13864) ) (!  (=> (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@96 f_2@@96) (= (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@24) o2@@96 f_2@@96) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@96 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@96 f_2@@96))
))) (forall ((o2@@97 T@Ref) (f_2@@97 T@Field_21243_21244) ) (!  (=> (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@97 f_2@@97) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@24) o2@@97 f_2@@97) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@97 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@97 f_2@@97))
))) (forall ((o2@@98 T@Ref) (f_2@@98 T@Field_22455_22460) ) (!  (=> (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) null (WandMaskField_6980 pm_f@@11))) o2@@98 f_2@@98) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@24) o2@@98 f_2@@98) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@98 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@11) o2@@98 f_2@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@15) (IsWandField_6980_57733 pm_f@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13790) (ExhaleHeap@@12 T@PolymorphicMapType_13790) (Mask@@16 T@PolymorphicMapType_13811) (pm_f@@12 T@Field_19449_19450) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@16) (=> (and (HasDirectPerm_6955_6956 Mask@@16 null pm_f@@12) (IsWandField_6955_57376 pm_f@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@99 T@Ref) (f_2@@99 T@Field_17177_1189) ) (!  (=> (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@99 f_2@@99) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@25) o2@@99 f_2@@99) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@99 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@99 f_2@@99))
)) (forall ((o2@@100 T@Ref) (f_2@@100 T@Field_13850_53) ) (!  (=> (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@100 f_2@@100) (= (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@25) o2@@100 f_2@@100) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@100 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@100 f_2@@100))
))) (forall ((o2@@101 T@Ref) (f_2@@101 T@Field_13863_13864) ) (!  (=> (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@101 f_2@@101) (= (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@25) o2@@101 f_2@@101) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@101 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@101 f_2@@101))
))) (forall ((o2@@102 T@Ref) (f_2@@102 T@Field_6843_6931) ) (!  (=> (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@102 f_2@@102) (= (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@25) o2@@102 f_2@@102) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@102 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@102 f_2@@102))
))) (forall ((o2@@103 T@Ref) (f_2@@103 T@Field_6843_18860) ) (!  (=> (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@103 f_2@@103) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@25) o2@@103 f_2@@103) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@103 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@103 f_2@@103))
))) (forall ((o2@@104 T@Ref) (f_2@@104 T@Field_6930_1189) ) (!  (=> (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@104 f_2@@104) (= (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@25) o2@@104 f_2@@104) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@104 f_2@@104)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@104 f_2@@104))
))) (forall ((o2@@105 T@Ref) (f_2@@105 T@Field_6930_53) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@105 f_2@@105) (= (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@25) o2@@105 f_2@@105) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@105 f_2@@105)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@105 f_2@@105))
))) (forall ((o2@@106 T@Ref) (f_2@@106 T@Field_6930_13864) ) (!  (=> (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@106 f_2@@106) (= (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@25) o2@@106 f_2@@106) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@106 f_2@@106)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@106 f_2@@106))
))) (forall ((o2@@107 T@Ref) (f_2@@107 T@Field_17605_17606) ) (!  (=> (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@107 f_2@@107) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@25) o2@@107 f_2@@107) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@107 f_2@@107)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@107 f_2@@107))
))) (forall ((o2@@108 T@Ref) (f_2@@108 T@Field_18855_18860) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@108 f_2@@108) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@25) o2@@108 f_2@@108) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@108 f_2@@108)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@108 f_2@@108))
))) (forall ((o2@@109 T@Ref) (f_2@@109 T@Field_6955_1189) ) (!  (=> (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@109 f_2@@109) (= (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@25) o2@@109 f_2@@109) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@109 f_2@@109)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@109 f_2@@109))
))) (forall ((o2@@110 T@Ref) (f_2@@110 T@Field_6955_53) ) (!  (=> (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@110 f_2@@110) (= (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@25) o2@@110 f_2@@110) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@110 f_2@@110)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@110 f_2@@110))
))) (forall ((o2@@111 T@Ref) (f_2@@111 T@Field_6955_13864) ) (!  (=> (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@111 f_2@@111) (= (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@25) o2@@111 f_2@@111) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@111 f_2@@111)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@111 f_2@@111))
))) (forall ((o2@@112 T@Ref) (f_2@@112 T@Field_19449_19450) ) (!  (=> (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@112 f_2@@112) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@25) o2@@112 f_2@@112) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@112 f_2@@112)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@112 f_2@@112))
))) (forall ((o2@@113 T@Ref) (f_2@@113 T@Field_20661_20666) ) (!  (=> (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@113 f_2@@113) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) o2@@113 f_2@@113) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@113 f_2@@113)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@113 f_2@@113))
))) (forall ((o2@@114 T@Ref) (f_2@@114 T@Field_6980_1189) ) (!  (=> (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@114 f_2@@114) (= (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@25) o2@@114 f_2@@114) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@114 f_2@@114)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@114 f_2@@114))
))) (forall ((o2@@115 T@Ref) (f_2@@115 T@Field_6980_53) ) (!  (=> (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@115 f_2@@115) (= (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@25) o2@@115 f_2@@115) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@115 f_2@@115)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@115 f_2@@115))
))) (forall ((o2@@116 T@Ref) (f_2@@116 T@Field_6980_13864) ) (!  (=> (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@116 f_2@@116) (= (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@25) o2@@116 f_2@@116) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@116 f_2@@116)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@116 f_2@@116))
))) (forall ((o2@@117 T@Ref) (f_2@@117 T@Field_21243_21244) ) (!  (=> (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@117 f_2@@117) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@25) o2@@117 f_2@@117) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@117 f_2@@117)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@117 f_2@@117))
))) (forall ((o2@@118 T@Ref) (f_2@@118 T@Field_22455_22460) ) (!  (=> (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@25) null (WandMaskField_6955 pm_f@@12))) o2@@118 f_2@@118) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@25) o2@@118 f_2@@118) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@118 f_2@@118)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@12) o2@@118 f_2@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@16) (IsWandField_6955_57376 pm_f@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13790) (ExhaleHeap@@13 T@PolymorphicMapType_13790) (Mask@@17 T@PolymorphicMapType_13811) (pm_f@@13 T@Field_17605_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@17) (=> (and (HasDirectPerm_6930_6931 Mask@@17 null pm_f@@13) (IsWandField_6930_57019 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@119 T@Ref) (f_2@@119 T@Field_17177_1189) ) (!  (=> (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@119 f_2@@119) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@26) o2@@119 f_2@@119) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@119 f_2@@119)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@119 f_2@@119))
)) (forall ((o2@@120 T@Ref) (f_2@@120 T@Field_13850_53) ) (!  (=> (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@120 f_2@@120) (= (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@26) o2@@120 f_2@@120) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@120 f_2@@120)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@120 f_2@@120))
))) (forall ((o2@@121 T@Ref) (f_2@@121 T@Field_13863_13864) ) (!  (=> (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@121 f_2@@121) (= (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@26) o2@@121 f_2@@121) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@121 f_2@@121)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@121 f_2@@121))
))) (forall ((o2@@122 T@Ref) (f_2@@122 T@Field_6843_6931) ) (!  (=> (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@122 f_2@@122) (= (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@26) o2@@122 f_2@@122) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@122 f_2@@122)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@122 f_2@@122))
))) (forall ((o2@@123 T@Ref) (f_2@@123 T@Field_6843_18860) ) (!  (=> (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@123 f_2@@123) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@26) o2@@123 f_2@@123) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@123 f_2@@123)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@123 f_2@@123))
))) (forall ((o2@@124 T@Ref) (f_2@@124 T@Field_6930_1189) ) (!  (=> (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@124 f_2@@124) (= (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@26) o2@@124 f_2@@124) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@124 f_2@@124)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@124 f_2@@124))
))) (forall ((o2@@125 T@Ref) (f_2@@125 T@Field_6930_53) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@125 f_2@@125) (= (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@26) o2@@125 f_2@@125) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@125 f_2@@125)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@125 f_2@@125))
))) (forall ((o2@@126 T@Ref) (f_2@@126 T@Field_6930_13864) ) (!  (=> (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@126 f_2@@126) (= (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@26) o2@@126 f_2@@126) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@126 f_2@@126)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@126 f_2@@126))
))) (forall ((o2@@127 T@Ref) (f_2@@127 T@Field_17605_17606) ) (!  (=> (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@127 f_2@@127) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@26) o2@@127 f_2@@127) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@127 f_2@@127)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@127 f_2@@127))
))) (forall ((o2@@128 T@Ref) (f_2@@128 T@Field_18855_18860) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@128 f_2@@128) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) o2@@128 f_2@@128) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@128 f_2@@128)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@128 f_2@@128))
))) (forall ((o2@@129 T@Ref) (f_2@@129 T@Field_6955_1189) ) (!  (=> (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@129 f_2@@129) (= (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@26) o2@@129 f_2@@129) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@129 f_2@@129)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@129 f_2@@129))
))) (forall ((o2@@130 T@Ref) (f_2@@130 T@Field_6955_53) ) (!  (=> (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@130 f_2@@130) (= (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@26) o2@@130 f_2@@130) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@130 f_2@@130)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@130 f_2@@130))
))) (forall ((o2@@131 T@Ref) (f_2@@131 T@Field_6955_13864) ) (!  (=> (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@131 f_2@@131) (= (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@26) o2@@131 f_2@@131) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@131 f_2@@131)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@131 f_2@@131))
))) (forall ((o2@@132 T@Ref) (f_2@@132 T@Field_19449_19450) ) (!  (=> (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@132 f_2@@132) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@26) o2@@132 f_2@@132) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@132 f_2@@132)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@132 f_2@@132))
))) (forall ((o2@@133 T@Ref) (f_2@@133 T@Field_20661_20666) ) (!  (=> (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@133 f_2@@133) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@26) o2@@133 f_2@@133) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@133 f_2@@133)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@133 f_2@@133))
))) (forall ((o2@@134 T@Ref) (f_2@@134 T@Field_6980_1189) ) (!  (=> (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@134 f_2@@134) (= (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@26) o2@@134 f_2@@134) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@134 f_2@@134)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@134 f_2@@134))
))) (forall ((o2@@135 T@Ref) (f_2@@135 T@Field_6980_53) ) (!  (=> (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@135 f_2@@135) (= (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@26) o2@@135 f_2@@135) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@135 f_2@@135)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@135 f_2@@135))
))) (forall ((o2@@136 T@Ref) (f_2@@136 T@Field_6980_13864) ) (!  (=> (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@136 f_2@@136) (= (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@26) o2@@136 f_2@@136) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@136 f_2@@136)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@136 f_2@@136))
))) (forall ((o2@@137 T@Ref) (f_2@@137 T@Field_21243_21244) ) (!  (=> (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@137 f_2@@137) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@26) o2@@137 f_2@@137) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@137 f_2@@137)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@137 f_2@@137))
))) (forall ((o2@@138 T@Ref) (f_2@@138 T@Field_22455_22460) ) (!  (=> (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@26) null (WandMaskField_6930 pm_f@@13))) o2@@138 f_2@@138) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@26) o2@@138 f_2@@138) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@138 f_2@@138)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@13) o2@@138 f_2@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@17) (IsWandField_6930_57019 pm_f@@13))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13790) (ExhaleHeap@@14 T@PolymorphicMapType_13790) (Mask@@18 T@PolymorphicMapType_13811) (pm_f@@14 T@Field_6843_6931) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@18) (=> (and (HasDirectPerm_6843_6931 Mask@@18 null pm_f@@14) (IsWandField_6843_56662 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@139 T@Ref) (f_2@@139 T@Field_17177_1189) ) (!  (=> (select (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@139 f_2@@139) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@27) o2@@139 f_2@@139) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@139 f_2@@139)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@139 f_2@@139))
)) (forall ((o2@@140 T@Ref) (f_2@@140 T@Field_13850_53) ) (!  (=> (select (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@140 f_2@@140) (= (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@27) o2@@140 f_2@@140) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@140 f_2@@140)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@140 f_2@@140))
))) (forall ((o2@@141 T@Ref) (f_2@@141 T@Field_13863_13864) ) (!  (=> (select (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@141 f_2@@141) (= (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@27) o2@@141 f_2@@141) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@141 f_2@@141)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@141 f_2@@141))
))) (forall ((o2@@142 T@Ref) (f_2@@142 T@Field_6843_6931) ) (!  (=> (select (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@142 f_2@@142) (= (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@27) o2@@142 f_2@@142) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@142 f_2@@142)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@142 f_2@@142))
))) (forall ((o2@@143 T@Ref) (f_2@@143 T@Field_6843_18860) ) (!  (=> (select (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@143 f_2@@143) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) o2@@143 f_2@@143) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@143 f_2@@143)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@143 f_2@@143))
))) (forall ((o2@@144 T@Ref) (f_2@@144 T@Field_6930_1189) ) (!  (=> (select (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@144 f_2@@144) (= (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@27) o2@@144 f_2@@144) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@144 f_2@@144)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@144 f_2@@144))
))) (forall ((o2@@145 T@Ref) (f_2@@145 T@Field_6930_53) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@145 f_2@@145) (= (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@27) o2@@145 f_2@@145) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@145 f_2@@145)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@145 f_2@@145))
))) (forall ((o2@@146 T@Ref) (f_2@@146 T@Field_6930_13864) ) (!  (=> (select (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@146 f_2@@146) (= (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@27) o2@@146 f_2@@146) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@146 f_2@@146)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@146 f_2@@146))
))) (forall ((o2@@147 T@Ref) (f_2@@147 T@Field_17605_17606) ) (!  (=> (select (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@147 f_2@@147) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@27) o2@@147 f_2@@147) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@147 f_2@@147)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@147 f_2@@147))
))) (forall ((o2@@148 T@Ref) (f_2@@148 T@Field_18855_18860) ) (!  (=> (select (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@148 f_2@@148) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@27) o2@@148 f_2@@148) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@148 f_2@@148)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@148 f_2@@148))
))) (forall ((o2@@149 T@Ref) (f_2@@149 T@Field_6955_1189) ) (!  (=> (select (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@149 f_2@@149) (= (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@27) o2@@149 f_2@@149) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@149 f_2@@149)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@149 f_2@@149))
))) (forall ((o2@@150 T@Ref) (f_2@@150 T@Field_6955_53) ) (!  (=> (select (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@150 f_2@@150) (= (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@27) o2@@150 f_2@@150) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@150 f_2@@150)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@150 f_2@@150))
))) (forall ((o2@@151 T@Ref) (f_2@@151 T@Field_6955_13864) ) (!  (=> (select (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@151 f_2@@151) (= (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@27) o2@@151 f_2@@151) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@151 f_2@@151)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@151 f_2@@151))
))) (forall ((o2@@152 T@Ref) (f_2@@152 T@Field_19449_19450) ) (!  (=> (select (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@152 f_2@@152) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@27) o2@@152 f_2@@152) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@152 f_2@@152)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@152 f_2@@152))
))) (forall ((o2@@153 T@Ref) (f_2@@153 T@Field_20661_20666) ) (!  (=> (select (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@153 f_2@@153) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@27) o2@@153 f_2@@153) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@153 f_2@@153)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@153 f_2@@153))
))) (forall ((o2@@154 T@Ref) (f_2@@154 T@Field_6980_1189) ) (!  (=> (select (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@154 f_2@@154) (= (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@27) o2@@154 f_2@@154) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@154 f_2@@154)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@154 f_2@@154))
))) (forall ((o2@@155 T@Ref) (f_2@@155 T@Field_6980_53) ) (!  (=> (select (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@155 f_2@@155) (= (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@27) o2@@155 f_2@@155) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@155 f_2@@155)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@155 f_2@@155))
))) (forall ((o2@@156 T@Ref) (f_2@@156 T@Field_6980_13864) ) (!  (=> (select (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@156 f_2@@156) (= (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@27) o2@@156 f_2@@156) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@156 f_2@@156)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@156 f_2@@156))
))) (forall ((o2@@157 T@Ref) (f_2@@157 T@Field_21243_21244) ) (!  (=> (select (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@157 f_2@@157) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@27) o2@@157 f_2@@157) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@157 f_2@@157)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@157 f_2@@157))
))) (forall ((o2@@158 T@Ref) (f_2@@158 T@Field_22455_22460) ) (!  (=> (select (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@27) null (WandMaskField_6843 pm_f@@14))) o2@@158 f_2@@158) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@27) o2@@158 f_2@@158) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@158 f_2@@158)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@14) o2@@158 f_2@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@18) (IsWandField_6843_56662 pm_f@@14))
)))
(assert (forall ((this@@14 T@Ref) (this2 T@Ref) ) (!  (=> (= (X_1 this@@14) (X_1 this2)) (= this@@14 this2))
 :qid |stdinbpl.477:15|
 :skolemid |37|
 :pattern ( (X_1 this@@14) (X_1 this2))
)))
(assert (forall ((this@@15 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|X#sm| this@@15) (|X#sm| this2@@0)) (= this@@15 this2@@0))
 :qid |stdinbpl.481:15|
 :skolemid |38|
 :pattern ( (|X#sm| this@@15) (|X#sm| this2@@0))
)))
(assert (forall ((this@@16 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (Y this@@16) (Y this2@@1)) (= this@@16 this2@@1))
 :qid |stdinbpl.532:15|
 :skolemid |43|
 :pattern ( (Y this@@16) (Y this2@@1))
)))
(assert (forall ((this@@17 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|Y#sm| this@@17) (|Y#sm| this2@@2)) (= this@@17 this2@@2))
 :qid |stdinbpl.536:15|
 :skolemid |44|
 :pattern ( (|Y#sm| this@@17) (|Y#sm| this2@@2))
)))
(assert (forall ((this@@18 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (Z_2 this@@18) (Z_2 this2@@3)) (= this@@18 this2@@3))
 :qid |stdinbpl.587:15|
 :skolemid |49|
 :pattern ( (Z_2 this@@18) (Z_2 this2@@3))
)))
(assert (forall ((this@@19 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|Z#sm| this@@19) (|Z#sm| this2@@4)) (= this@@19 this2@@4))
 :qid |stdinbpl.591:15|
 :skolemid |50|
 :pattern ( (|Z#sm| this@@19) (|Z#sm| this2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13790) (ExhaleHeap@@15 T@PolymorphicMapType_13790) (Mask@@19 T@PolymorphicMapType_13811) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@19) (=> (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@28) o_1 $allocated) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@15) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@19) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@15) o_1 $allocated))
)))
(assert (forall ((p T@Field_21243_21244) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_21243_21243 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21243_21243 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19449_19450) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_19449_19449 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19449_19449 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_17605_17606) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_17605_17605 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17605_17605 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_6843_6931) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_13850_13850 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13850_13850 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_6843_1189 x_42)))
(assert  (not (IsWandField_6843_1189 x_42)))
(assert  (not (IsPredicateField_6843_1189 y_22)))
(assert  (not (IsWandField_6843_1189 y_22)))
(assert  (not (IsPredicateField_6843_1189 z_24)))
(assert  (not (IsWandField_6843_1189 z_24)))
(assert  (not (IsPredicateField_6843_1189 w_11)))
(assert  (not (IsWandField_6843_1189 w_11)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13790) (ExhaleHeap@@16 T@PolymorphicMapType_13790) (Mask@@20 T@PolymorphicMapType_13811) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@20) (succHeap Heap@@29 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@20))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13811) (o_2@@19 T@Ref) (f_4@@19 T@Field_22455_22460) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@@21) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6980_71437 f_4@@19))) (not (IsWandField_6980_71453 f_4@@19))) (<= (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@@21) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@@21) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13811) (o_2@@20 T@Ref) (f_4@@20 T@Field_6980_13864) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@@22) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6980_13864 f_4@@20))) (not (IsWandField_6980_13864 f_4@@20))) (<= (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@@22) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@@22) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13811) (o_2@@21 T@Ref) (f_4@@21 T@Field_6980_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@@23) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6980_53 f_4@@21))) (not (IsWandField_6980_53 f_4@@21))) (<= (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@@23) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@@23) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13811) (o_2@@22 T@Ref) (f_4@@22 T@Field_6980_1189) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@@24) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_6980_1189 f_4@@22))) (not (IsWandField_6980_1189 f_4@@22))) (<= (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@@24) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@@24) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13811) (o_2@@23 T@Ref) (f_4@@23 T@Field_21243_21244) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@@25) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_6980_6981 f_4@@23))) (not (IsWandField_6980_57733 f_4@@23))) (<= (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@@25) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@@25) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13811) (o_2@@24 T@Ref) (f_4@@24 T@Field_20661_20666) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@@26) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_6955_70606 f_4@@24))) (not (IsWandField_6955_70622 f_4@@24))) (<= (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@@26) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@@26) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13811) (o_2@@25 T@Ref) (f_4@@25 T@Field_6955_13864) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@@27) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_6955_13864 f_4@@25))) (not (IsWandField_6955_13864 f_4@@25))) (<= (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@@27) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@@27) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13811) (o_2@@26 T@Ref) (f_4@@26 T@Field_6955_53) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@@28) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_6955_53 f_4@@26))) (not (IsWandField_6955_53 f_4@@26))) (<= (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@@28) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@@28) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13811) (o_2@@27 T@Ref) (f_4@@27 T@Field_6955_1189) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@@29) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_6955_1189 f_4@@27))) (not (IsWandField_6955_1189 f_4@@27))) (<= (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@@29) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@@29) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_13811) (o_2@@28 T@Ref) (f_4@@28 T@Field_19449_19450) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@@30) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_6955_6956 f_4@@28))) (not (IsWandField_6955_57376 f_4@@28))) (<= (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@@30) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@@30) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_13811) (o_2@@29 T@Ref) (f_4@@29 T@Field_6843_18860) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@@31) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_6843_69775 f_4@@29))) (not (IsWandField_6843_69791 f_4@@29))) (<= (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@@31) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@@31) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_13811) (o_2@@30 T@Ref) (f_4@@30 T@Field_13863_13864) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@@32) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_6843_13864 f_4@@30))) (not (IsWandField_6843_13864 f_4@@30))) (<= (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@@32) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@@32) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_13811) (o_2@@31 T@Ref) (f_4@@31 T@Field_13850_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@@33) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_6843_53 f_4@@31))) (not (IsWandField_6843_53 f_4@@31))) (<= (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@@33) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@@33) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_13811) (o_2@@32 T@Ref) (f_4@@32 T@Field_17177_1189) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@@34) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_6843_1189 f_4@@32))) (not (IsWandField_6843_1189 f_4@@32))) (<= (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@@34) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@@34) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_13811) (o_2@@33 T@Ref) (f_4@@33 T@Field_6843_6931) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@@35) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_6843_50026 f_4@@33))) (not (IsWandField_6843_56662 f_4@@33))) (<= (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@@35) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@@35) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_13811) (o_2@@34 T@Ref) (f_4@@34 T@Field_18855_18860) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@@36) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_6930_68958 f_4@@34))) (not (IsWandField_6930_68974 f_4@@34))) (<= (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@@36) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@@36) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_13811) (o_2@@35 T@Ref) (f_4@@35 T@Field_6930_13864) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@@37) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_6930_13864 f_4@@35))) (not (IsWandField_6930_13864 f_4@@35))) (<= (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@@37) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@@37) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_13811) (o_2@@36 T@Ref) (f_4@@36 T@Field_6930_53) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@@38) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_6930_53 f_4@@36))) (not (IsWandField_6930_53 f_4@@36))) (<= (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@@38) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@@38) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_13811) (o_2@@37 T@Ref) (f_4@@37 T@Field_6930_1189) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@@39) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_6930_1189 f_4@@37))) (not (IsWandField_6930_1189 f_4@@37))) (<= (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@@39) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@@39) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_13811) (o_2@@38 T@Ref) (f_4@@38 T@Field_17605_17606) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@@40) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_6930_6931 f_4@@38))) (not (IsWandField_6930_57019 f_4@@38))) (<= (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@@40) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@@40) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_13811) (o_2@@39 T@Ref) (f_4@@39 T@Field_22455_22460) ) (! (= (HasDirectPerm_6980_49781 Mask@@41 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@@41) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6980_49781 Mask@@41 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_13811) (o_2@@40 T@Ref) (f_4@@40 T@Field_6980_13864) ) (! (= (HasDirectPerm_6980_13864 Mask@@42 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@@42) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6980_13864 Mask@@42 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_13811) (o_2@@41 T@Ref) (f_4@@41 T@Field_6980_53) ) (! (= (HasDirectPerm_6980_53 Mask@@43 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@@43) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6980_53 Mask@@43 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_13811) (o_2@@42 T@Ref) (f_4@@42 T@Field_21243_21244) ) (! (= (HasDirectPerm_6980_6981 Mask@@44 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@@44) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6980_6981 Mask@@44 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_13811) (o_2@@43 T@Ref) (f_4@@43 T@Field_6980_1189) ) (! (= (HasDirectPerm_6980_1189 Mask@@45 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@@45) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6980_1189 Mask@@45 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_13811) (o_2@@44 T@Ref) (f_4@@44 T@Field_20661_20666) ) (! (= (HasDirectPerm_6955_48683 Mask@@46 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@@46) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6955_48683 Mask@@46 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_13811) (o_2@@45 T@Ref) (f_4@@45 T@Field_6955_13864) ) (! (= (HasDirectPerm_6955_13864 Mask@@47 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@@47) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6955_13864 Mask@@47 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_13811) (o_2@@46 T@Ref) (f_4@@46 T@Field_6955_53) ) (! (= (HasDirectPerm_6955_53 Mask@@48 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@@48) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6955_53 Mask@@48 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_13811) (o_2@@47 T@Ref) (f_4@@47 T@Field_19449_19450) ) (! (= (HasDirectPerm_6955_6956 Mask@@49 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@@49) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6955_6956 Mask@@49 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_13811) (o_2@@48 T@Ref) (f_4@@48 T@Field_6955_1189) ) (! (= (HasDirectPerm_6955_1189 Mask@@50 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@@50) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6955_1189 Mask@@50 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_13811) (o_2@@49 T@Ref) (f_4@@49 T@Field_18855_18860) ) (! (= (HasDirectPerm_6930_47585 Mask@@51 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@@51) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6930_47585 Mask@@51 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_13811) (o_2@@50 T@Ref) (f_4@@50 T@Field_6930_13864) ) (! (= (HasDirectPerm_6930_13864 Mask@@52 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@@52) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6930_13864 Mask@@52 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_13811) (o_2@@51 T@Ref) (f_4@@51 T@Field_6930_53) ) (! (= (HasDirectPerm_6930_53 Mask@@53 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@@53) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6930_53 Mask@@53 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_13811) (o_2@@52 T@Ref) (f_4@@52 T@Field_17605_17606) ) (! (= (HasDirectPerm_6930_6931 Mask@@54 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@@54) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6930_6931 Mask@@54 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_13811) (o_2@@53 T@Ref) (f_4@@53 T@Field_6930_1189) ) (! (= (HasDirectPerm_6930_1189 Mask@@55 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@@55) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6930_1189 Mask@@55 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_13811) (o_2@@54 T@Ref) (f_4@@54 T@Field_6843_18860) ) (! (= (HasDirectPerm_6843_46444 Mask@@56 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@@56) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6843_46444 Mask@@56 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_13811) (o_2@@55 T@Ref) (f_4@@55 T@Field_13863_13864) ) (! (= (HasDirectPerm_6843_13864 Mask@@57 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@@57) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6843_13864 Mask@@57 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_13811) (o_2@@56 T@Ref) (f_4@@56 T@Field_13850_53) ) (! (= (HasDirectPerm_6843_53 Mask@@58 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@@58) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6843_53 Mask@@58 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_13811) (o_2@@57 T@Ref) (f_4@@57 T@Field_6843_6931) ) (! (= (HasDirectPerm_6843_6931 Mask@@59 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@@59) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6843_6931 Mask@@59 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_13811) (o_2@@58 T@Ref) (f_4@@58 T@Field_17177_1189) ) (! (= (HasDirectPerm_6843_1189 Mask@@60 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@@60) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6843_1189 Mask@@60 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13790) (ExhaleHeap@@17 T@PolymorphicMapType_13790) (Mask@@61 T@PolymorphicMapType_13811) (o_1@@0 T@Ref) (f_2@@159 T@Field_22455_22460) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@17 Mask@@61) (=> (HasDirectPerm_6980_49781 Mask@@61 o_1@@0 f_2@@159) (= (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@30) o_1@@0 f_2@@159) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@17) o_1@@0 f_2@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@17 Mask@@61) (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@@17) o_1@@0 f_2@@159))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_13790) (ExhaleHeap@@18 T@PolymorphicMapType_13790) (Mask@@62 T@PolymorphicMapType_13811) (o_1@@1 T@Ref) (f_2@@160 T@Field_6980_13864) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@18 Mask@@62) (=> (HasDirectPerm_6980_13864 Mask@@62 o_1@@1 f_2@@160) (= (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@31) o_1@@1 f_2@@160) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@18) o_1@@1 f_2@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@18 Mask@@62) (select (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@@18) o_1@@1 f_2@@160))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_13790) (ExhaleHeap@@19 T@PolymorphicMapType_13790) (Mask@@63 T@PolymorphicMapType_13811) (o_1@@2 T@Ref) (f_2@@161 T@Field_6980_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@19 Mask@@63) (=> (HasDirectPerm_6980_53 Mask@@63 o_1@@2 f_2@@161) (= (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@32) o_1@@2 f_2@@161) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@19) o_1@@2 f_2@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@19 Mask@@63) (select (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@@19) o_1@@2 f_2@@161))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_13790) (ExhaleHeap@@20 T@PolymorphicMapType_13790) (Mask@@64 T@PolymorphicMapType_13811) (o_1@@3 T@Ref) (f_2@@162 T@Field_21243_21244) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@20 Mask@@64) (=> (HasDirectPerm_6980_6981 Mask@@64 o_1@@3 f_2@@162) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@33) o_1@@3 f_2@@162) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@20) o_1@@3 f_2@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@20 Mask@@64) (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@@20) o_1@@3 f_2@@162))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_13790) (ExhaleHeap@@21 T@PolymorphicMapType_13790) (Mask@@65 T@PolymorphicMapType_13811) (o_1@@4 T@Ref) (f_2@@163 T@Field_6980_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@21 Mask@@65) (=> (HasDirectPerm_6980_1189 Mask@@65 o_1@@4 f_2@@163) (= (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@34) o_1@@4 f_2@@163) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@21) o_1@@4 f_2@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@21 Mask@@65) (select (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@@21) o_1@@4 f_2@@163))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_13790) (ExhaleHeap@@22 T@PolymorphicMapType_13790) (Mask@@66 T@PolymorphicMapType_13811) (o_1@@5 T@Ref) (f_2@@164 T@Field_20661_20666) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@22 Mask@@66) (=> (HasDirectPerm_6955_48683 Mask@@66 o_1@@5 f_2@@164) (= (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@35) o_1@@5 f_2@@164) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@22) o_1@@5 f_2@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@22 Mask@@66) (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@@22) o_1@@5 f_2@@164))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_13790) (ExhaleHeap@@23 T@PolymorphicMapType_13790) (Mask@@67 T@PolymorphicMapType_13811) (o_1@@6 T@Ref) (f_2@@165 T@Field_6955_13864) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@23 Mask@@67) (=> (HasDirectPerm_6955_13864 Mask@@67 o_1@@6 f_2@@165) (= (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@36) o_1@@6 f_2@@165) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@23) o_1@@6 f_2@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@23 Mask@@67) (select (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@@23) o_1@@6 f_2@@165))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_13790) (ExhaleHeap@@24 T@PolymorphicMapType_13790) (Mask@@68 T@PolymorphicMapType_13811) (o_1@@7 T@Ref) (f_2@@166 T@Field_6955_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@24 Mask@@68) (=> (HasDirectPerm_6955_53 Mask@@68 o_1@@7 f_2@@166) (= (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@37) o_1@@7 f_2@@166) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@24) o_1@@7 f_2@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@24 Mask@@68) (select (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@@24) o_1@@7 f_2@@166))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_13790) (ExhaleHeap@@25 T@PolymorphicMapType_13790) (Mask@@69 T@PolymorphicMapType_13811) (o_1@@8 T@Ref) (f_2@@167 T@Field_19449_19450) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@25 Mask@@69) (=> (HasDirectPerm_6955_6956 Mask@@69 o_1@@8 f_2@@167) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@38) o_1@@8 f_2@@167) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@25) o_1@@8 f_2@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@25 Mask@@69) (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@@25) o_1@@8 f_2@@167))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_13790) (ExhaleHeap@@26 T@PolymorphicMapType_13790) (Mask@@70 T@PolymorphicMapType_13811) (o_1@@9 T@Ref) (f_2@@168 T@Field_6955_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@26 Mask@@70) (=> (HasDirectPerm_6955_1189 Mask@@70 o_1@@9 f_2@@168) (= (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@39) o_1@@9 f_2@@168) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@26) o_1@@9 f_2@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@26 Mask@@70) (select (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@@26) o_1@@9 f_2@@168))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_13790) (ExhaleHeap@@27 T@PolymorphicMapType_13790) (Mask@@71 T@PolymorphicMapType_13811) (o_1@@10 T@Ref) (f_2@@169 T@Field_18855_18860) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@27 Mask@@71) (=> (HasDirectPerm_6930_47585 Mask@@71 o_1@@10 f_2@@169) (= (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@40) o_1@@10 f_2@@169) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@27) o_1@@10 f_2@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@27 Mask@@71) (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@@27) o_1@@10 f_2@@169))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_13790) (ExhaleHeap@@28 T@PolymorphicMapType_13790) (Mask@@72 T@PolymorphicMapType_13811) (o_1@@11 T@Ref) (f_2@@170 T@Field_6930_13864) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@28 Mask@@72) (=> (HasDirectPerm_6930_13864 Mask@@72 o_1@@11 f_2@@170) (= (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@41) o_1@@11 f_2@@170) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@28) o_1@@11 f_2@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@28 Mask@@72) (select (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@@28) o_1@@11 f_2@@170))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_13790) (ExhaleHeap@@29 T@PolymorphicMapType_13790) (Mask@@73 T@PolymorphicMapType_13811) (o_1@@12 T@Ref) (f_2@@171 T@Field_6930_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@29 Mask@@73) (=> (HasDirectPerm_6930_53 Mask@@73 o_1@@12 f_2@@171) (= (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@42) o_1@@12 f_2@@171) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@29) o_1@@12 f_2@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@29 Mask@@73) (select (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@@29) o_1@@12 f_2@@171))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_13790) (ExhaleHeap@@30 T@PolymorphicMapType_13790) (Mask@@74 T@PolymorphicMapType_13811) (o_1@@13 T@Ref) (f_2@@172 T@Field_17605_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@30 Mask@@74) (=> (HasDirectPerm_6930_6931 Mask@@74 o_1@@13 f_2@@172) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@43) o_1@@13 f_2@@172) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@30) o_1@@13 f_2@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@30 Mask@@74) (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@@30) o_1@@13 f_2@@172))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_13790) (ExhaleHeap@@31 T@PolymorphicMapType_13790) (Mask@@75 T@PolymorphicMapType_13811) (o_1@@14 T@Ref) (f_2@@173 T@Field_6930_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@31 Mask@@75) (=> (HasDirectPerm_6930_1189 Mask@@75 o_1@@14 f_2@@173) (= (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@44) o_1@@14 f_2@@173) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@31) o_1@@14 f_2@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@31 Mask@@75) (select (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@@31) o_1@@14 f_2@@173))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_13790) (ExhaleHeap@@32 T@PolymorphicMapType_13790) (Mask@@76 T@PolymorphicMapType_13811) (o_1@@15 T@Ref) (f_2@@174 T@Field_6843_18860) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@32 Mask@@76) (=> (HasDirectPerm_6843_46444 Mask@@76 o_1@@15 f_2@@174) (= (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@45) o_1@@15 f_2@@174) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@32) o_1@@15 f_2@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@32 Mask@@76) (select (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@@32) o_1@@15 f_2@@174))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_13790) (ExhaleHeap@@33 T@PolymorphicMapType_13790) (Mask@@77 T@PolymorphicMapType_13811) (o_1@@16 T@Ref) (f_2@@175 T@Field_13863_13864) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@33 Mask@@77) (=> (HasDirectPerm_6843_13864 Mask@@77 o_1@@16 f_2@@175) (= (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@46) o_1@@16 f_2@@175) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@33) o_1@@16 f_2@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@33 Mask@@77) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@@33) o_1@@16 f_2@@175))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_13790) (ExhaleHeap@@34 T@PolymorphicMapType_13790) (Mask@@78 T@PolymorphicMapType_13811) (o_1@@17 T@Ref) (f_2@@176 T@Field_13850_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@34 Mask@@78) (=> (HasDirectPerm_6843_53 Mask@@78 o_1@@17 f_2@@176) (= (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@47) o_1@@17 f_2@@176) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@34) o_1@@17 f_2@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@34 Mask@@78) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@@34) o_1@@17 f_2@@176))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_13790) (ExhaleHeap@@35 T@PolymorphicMapType_13790) (Mask@@79 T@PolymorphicMapType_13811) (o_1@@18 T@Ref) (f_2@@177 T@Field_6843_6931) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@35 Mask@@79) (=> (HasDirectPerm_6843_6931 Mask@@79 o_1@@18 f_2@@177) (= (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@48) o_1@@18 f_2@@177) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@35) o_1@@18 f_2@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@35 Mask@@79) (select (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@@35) o_1@@18 f_2@@177))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_13790) (ExhaleHeap@@36 T@PolymorphicMapType_13790) (Mask@@80 T@PolymorphicMapType_13811) (o_1@@19 T@Ref) (f_2@@178 T@Field_17177_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@36 Mask@@80) (=> (HasDirectPerm_6843_1189 Mask@@80 o_1@@19 f_2@@178) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@49) o_1@@19 f_2@@178) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@36) o_1@@19 f_2@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@36 Mask@@80) (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@@36) o_1@@19 f_2@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_22455_22460) ) (! (= (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_6980_13864) ) (! (= (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_6980_53) ) (! (= (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_6980_1189) ) (! (= (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_21243_21244) ) (! (= (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_20661_20666) ) (! (= (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_6955_13864) ) (! (= (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_6955_53) ) (! (= (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_6955_1189) ) (! (= (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_19449_19450) ) (! (= (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_6843_18860) ) (! (= (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_13863_13864) ) (! (= (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_13850_53) ) (! (= (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_17177_1189) ) (! (= (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_6843_6931) ) (! (= (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_18855_18860) ) (! (= (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_6930_13864) ) (! (= (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_6930_53) ) (! (= (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_6930_1189) ) (! (= (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_17605_17606) ) (! (= (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13811) (SummandMask1 T@PolymorphicMapType_13811) (SummandMask2 T@PolymorphicMapType_13811) (o_2@@79 T@Ref) (f_4@@79 T@Field_22455_22460) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13811) (SummandMask1@@0 T@PolymorphicMapType_13811) (SummandMask2@@0 T@PolymorphicMapType_13811) (o_2@@80 T@Ref) (f_4@@80 T@Field_6980_13864) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13811) (SummandMask1@@1 T@PolymorphicMapType_13811) (SummandMask2@@1 T@PolymorphicMapType_13811) (o_2@@81 T@Ref) (f_4@@81 T@Field_6980_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13811) (SummandMask1@@2 T@PolymorphicMapType_13811) (SummandMask2@@2 T@PolymorphicMapType_13811) (o_2@@82 T@Ref) (f_4@@82 T@Field_6980_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13811) (SummandMask1@@3 T@PolymorphicMapType_13811) (SummandMask2@@3 T@PolymorphicMapType_13811) (o_2@@83 T@Ref) (f_4@@83 T@Field_21243_21244) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13811) (SummandMask1@@4 T@PolymorphicMapType_13811) (SummandMask2@@4 T@PolymorphicMapType_13811) (o_2@@84 T@Ref) (f_4@@84 T@Field_20661_20666) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13811) (SummandMask1@@5 T@PolymorphicMapType_13811) (SummandMask2@@5 T@PolymorphicMapType_13811) (o_2@@85 T@Ref) (f_4@@85 T@Field_6955_13864) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13811) (SummandMask1@@6 T@PolymorphicMapType_13811) (SummandMask2@@6 T@PolymorphicMapType_13811) (o_2@@86 T@Ref) (f_4@@86 T@Field_6955_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13811) (SummandMask1@@7 T@PolymorphicMapType_13811) (SummandMask2@@7 T@PolymorphicMapType_13811) (o_2@@87 T@Ref) (f_4@@87 T@Field_6955_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13811) (SummandMask1@@8 T@PolymorphicMapType_13811) (SummandMask2@@8 T@PolymorphicMapType_13811) (o_2@@88 T@Ref) (f_4@@88 T@Field_19449_19450) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_13811) (SummandMask1@@9 T@PolymorphicMapType_13811) (SummandMask2@@9 T@PolymorphicMapType_13811) (o_2@@89 T@Ref) (f_4@@89 T@Field_6843_18860) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_13811) (SummandMask1@@10 T@PolymorphicMapType_13811) (SummandMask2@@10 T@PolymorphicMapType_13811) (o_2@@90 T@Ref) (f_4@@90 T@Field_13863_13864) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_13811) (SummandMask1@@11 T@PolymorphicMapType_13811) (SummandMask2@@11 T@PolymorphicMapType_13811) (o_2@@91 T@Ref) (f_4@@91 T@Field_13850_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_13811) (SummandMask1@@12 T@PolymorphicMapType_13811) (SummandMask2@@12 T@PolymorphicMapType_13811) (o_2@@92 T@Ref) (f_4@@92 T@Field_17177_1189) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_13811) (SummandMask1@@13 T@PolymorphicMapType_13811) (SummandMask2@@13 T@PolymorphicMapType_13811) (o_2@@93 T@Ref) (f_4@@93 T@Field_6843_6931) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_13811) (SummandMask1@@14 T@PolymorphicMapType_13811) (SummandMask2@@14 T@PolymorphicMapType_13811) (o_2@@94 T@Ref) (f_4@@94 T@Field_18855_18860) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_13811) (SummandMask1@@15 T@PolymorphicMapType_13811) (SummandMask2@@15 T@PolymorphicMapType_13811) (o_2@@95 T@Ref) (f_4@@95 T@Field_6930_13864) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_13811) (SummandMask1@@16 T@PolymorphicMapType_13811) (SummandMask2@@16 T@PolymorphicMapType_13811) (o_2@@96 T@Ref) (f_4@@96 T@Field_6930_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_13811) (SummandMask1@@17 T@PolymorphicMapType_13811) (SummandMask2@@17 T@PolymorphicMapType_13811) (o_2@@97 T@Ref) (f_4@@97 T@Field_6930_1189) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_13811) (SummandMask1@@18 T@PolymorphicMapType_13811) (SummandMask2@@18 T@PolymorphicMapType_13811) (o_2@@98 T@Ref) (f_4@@98 T@Field_17605_17606) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_13790) (Mask@@81 T@PolymorphicMapType_13811) (this@@20 T@Ref) ) (!  (=> (state Heap@@50 Mask@@81) (= (|getX'| Heap@@50 this@@20) (|getX#frame| (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@50) null (X_1 this@@20)) this@@20)))
 :qid |stdinbpl.222:15|
 :skolemid |25|
 :pattern ( (state Heap@@50 Mask@@81) (|getX'| Heap@@50 this@@20))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_13790) (Mask@@82 T@PolymorphicMapType_13811) (this@@21 T@Ref) ) (!  (=> (state Heap@@51 Mask@@82) (= (|getY'| Heap@@51 this@@21) (|getY#frame| (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@51) null (Y this@@21)) this@@21)))
 :qid |stdinbpl.308:15|
 :skolemid |29|
 :pattern ( (state Heap@@51 Mask@@82) (|getY'| Heap@@51 this@@21))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_13790) (Mask@@83 T@PolymorphicMapType_13811) (this@@22 T@Ref) ) (!  (=> (state Heap@@52 Mask@@83) (= (|getZ'| Heap@@52 this@@22) (|getZ#frame| (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@52) null (Z_2 this@@22)) this@@22)))
 :qid |stdinbpl.394:15|
 :skolemid |33|
 :pattern ( (state Heap@@52 Mask@@83) (|getZ'| Heap@@52 this@@22))
)))
(assert (forall ((this@@23 T@Ref) ) (! (= (getPredWandId_6930_6931 (X_1 this@@23)) 0)
 :qid |stdinbpl.471:15|
 :skolemid |36|
 :pattern ( (X_1 this@@23))
)))
(assert (forall ((this@@24 T@Ref) ) (! (= (getPredWandId_6955_6956 (Y this@@24)) 1)
 :qid |stdinbpl.526:15|
 :skolemid |42|
 :pattern ( (Y this@@24))
)))
(assert (forall ((this@@25 T@Ref) ) (! (= (getPredWandId_6980_6981 (Z_2 this@@25)) 2)
 :qid |stdinbpl.581:15|
 :skolemid |48|
 :pattern ( (Z_2 this@@25))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_13790) (o T@Ref) (f_3 T@Field_22455_22460) (v T@PolymorphicMapType_14339) ) (! (succHeap Heap@@53 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@53) (store (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@53) o f_3 v) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@53) (store (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@53) o f_3 v) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@53) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_13790) (o@@0 T@Ref) (f_3@@0 T@Field_21243_21244) (v@@0 T@FrameType) ) (! (succHeap Heap@@54 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@54) (store (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@54) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@54) (store (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@54) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@54) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_13790) (o@@1 T@Ref) (f_3@@1 T@Field_6980_1189) (v@@1 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@55) (store (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@55) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@55) (store (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@55) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@55) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_13790) (o@@2 T@Ref) (f_3@@2 T@Field_6980_13864) (v@@2 T@Ref) ) (! (succHeap Heap@@56 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@56) (store (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@56) o@@2 f_3@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@56) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@56) (store (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@56) o@@2 f_3@@2 v@@2)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_13790) (o@@3 T@Ref) (f_3@@3 T@Field_6980_53) (v@@3 Bool) ) (! (succHeap Heap@@57 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@57) (store (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@57) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@57) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@57) (store (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@57) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_13790) (o@@4 T@Ref) (f_3@@4 T@Field_20661_20666) (v@@4 T@PolymorphicMapType_14339) ) (! (succHeap Heap@@58 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@58) (store (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@58) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@58) (store (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@58) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@58) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_13790) (o@@5 T@Ref) (f_3@@5 T@Field_19449_19450) (v@@5 T@FrameType) ) (! (succHeap Heap@@59 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@59) (store (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@59) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@59) (store (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@59) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@59) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_13790) (o@@6 T@Ref) (f_3@@6 T@Field_6955_1189) (v@@6 Int) ) (! (succHeap Heap@@60 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@60) (store (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@60) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@60) (store (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@60) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@60) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_13790) (o@@7 T@Ref) (f_3@@7 T@Field_6955_13864) (v@@7 T@Ref) ) (! (succHeap Heap@@61 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@61) (store (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@61) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@61) (store (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@61) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@61) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_13790) (o@@8 T@Ref) (f_3@@8 T@Field_6955_53) (v@@8 Bool) ) (! (succHeap Heap@@62 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@62) (store (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@62) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@62) (store (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@62) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@62) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_13790) (o@@9 T@Ref) (f_3@@9 T@Field_18855_18860) (v@@9 T@PolymorphicMapType_14339) ) (! (succHeap Heap@@63 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@63) (store (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@63) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@63) (store (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@63) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@63) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_13790) (o@@10 T@Ref) (f_3@@10 T@Field_17605_17606) (v@@10 T@FrameType) ) (! (succHeap Heap@@64 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@64) (store (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@64) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@64) (store (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@64) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@64) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_13790) (o@@11 T@Ref) (f_3@@11 T@Field_6930_1189) (v@@11 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@65) (store (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@65) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@65) (store (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@65) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@65) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_13790) (o@@12 T@Ref) (f_3@@12 T@Field_6930_13864) (v@@12 T@Ref) ) (! (succHeap Heap@@66 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@66) (store (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@66) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@66) (store (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@66) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@66) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_13790) (o@@13 T@Ref) (f_3@@13 T@Field_6930_53) (v@@13 Bool) ) (! (succHeap Heap@@67 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@67) (store (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@67) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@67) (store (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@67) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@67) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_13790) (o@@14 T@Ref) (f_3@@14 T@Field_6843_18860) (v@@14 T@PolymorphicMapType_14339) ) (! (succHeap Heap@@68 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@68) (store (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@68) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@68) (store (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@68) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@68) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_13790) (o@@15 T@Ref) (f_3@@15 T@Field_6843_6931) (v@@15 T@FrameType) ) (! (succHeap Heap@@69 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@69) (store (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@69) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@69) (store (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@69) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@69) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_13790) (o@@16 T@Ref) (f_3@@16 T@Field_17177_1189) (v@@16 Int) ) (! (succHeap Heap@@70 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@70) (store (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@70) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@70) (store (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@70) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@70) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_13790) (o@@17 T@Ref) (f_3@@17 T@Field_13863_13864) (v@@17 T@Ref) ) (! (succHeap Heap@@71 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@71) (store (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@71) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@71) (store (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@71) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@71) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_13790) (o@@18 T@Ref) (f_3@@18 T@Field_13850_53) (v@@18 Bool) ) (! (succHeap Heap@@72 (PolymorphicMapType_13790 (store (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@72) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13790 (store (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@72) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@72) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@72)))
)))
(assert (forall ((this@@26 T@Ref) ) (! (= (PredicateMaskField_6930 (X_1 this@@26)) (|X#sm| this@@26))
 :qid |stdinbpl.463:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_6930 (X_1 this@@26)))
)))
(assert (forall ((this@@27 T@Ref) ) (! (= (PredicateMaskField_6955 (Y this@@27)) (|Y#sm| this@@27))
 :qid |stdinbpl.518:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_6955 (Y this@@27)))
)))
(assert (forall ((this@@28 T@Ref) ) (! (= (PredicateMaskField_6980 (Z_2 this@@28)) (|Z#sm| this@@28))
 :qid |stdinbpl.573:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_6980 (Z_2 this@@28)))
)))
(assert (forall ((o@@19 T@Ref) (f T@Field_13863_13864) (Heap@@73 T@PolymorphicMapType_13790) ) (!  (=> (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@73) o@@19 $allocated) (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@73) (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@73) o@@19 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@73) o@@19 f))
)))
(assert (forall ((p@@4 T@Field_21243_21244) (v_1@@3 T@FrameType) (q T@Field_21243_21244) (w@@3 T@FrameType) (r T@Field_21243_21244) (u T@FrameType) ) (!  (=> (and (InsidePredicate_21243_21243 p@@4 v_1@@3 q w@@3) (InsidePredicate_21243_21243 q w@@3 r u)) (InsidePredicate_21243_21243 p@@4 v_1@@3 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_21243 p@@4 v_1@@3 q w@@3) (InsidePredicate_21243_21243 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_21243_21244) (v_1@@4 T@FrameType) (q@@0 T@Field_21243_21244) (w@@4 T@FrameType) (r@@0 T@Field_19449_19450) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_21243 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_21243_19449 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_21243_19449 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_21243 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_21243_19449 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_21243_21244) (v_1@@5 T@FrameType) (q@@1 T@Field_21243_21244) (w@@5 T@FrameType) (r@@1 T@Field_17605_17606) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_21243 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_21243_17605 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_21243_17605 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_21243 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_21243_17605 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_21243_21244) (v_1@@6 T@FrameType) (q@@2 T@Field_21243_21244) (w@@6 T@FrameType) (r@@2 T@Field_6843_6931) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_21243 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_21243_13850 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_21243_13850 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_21243 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_21243_13850 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_21243_21244) (v_1@@7 T@FrameType) (q@@3 T@Field_19449_19450) (w@@7 T@FrameType) (r@@3 T@Field_21243_21244) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_19449 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_19449_21243 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_21243_21243 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_19449 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_19449_21243 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_21243_21244) (v_1@@8 T@FrameType) (q@@4 T@Field_19449_19450) (w@@8 T@FrameType) (r@@4 T@Field_19449_19450) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_19449 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_19449_19449 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_21243_19449 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_19449 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_19449_19449 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_21243_21244) (v_1@@9 T@FrameType) (q@@5 T@Field_19449_19450) (w@@9 T@FrameType) (r@@5 T@Field_17605_17606) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_19449 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_19449_17605 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_21243_17605 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_19449 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_19449_17605 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_21243_21244) (v_1@@10 T@FrameType) (q@@6 T@Field_19449_19450) (w@@10 T@FrameType) (r@@6 T@Field_6843_6931) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_19449 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_19449_13850 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_21243_13850 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_19449 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_19449_13850 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_21243_21244) (v_1@@11 T@FrameType) (q@@7 T@Field_17605_17606) (w@@11 T@FrameType) (r@@7 T@Field_21243_21244) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_17605 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_17605_21243 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_21243_21243 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_17605 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_17605_21243 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_21243_21244) (v_1@@12 T@FrameType) (q@@8 T@Field_17605_17606) (w@@12 T@FrameType) (r@@8 T@Field_19449_19450) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_17605 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_17605_19449 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_21243_19449 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_17605 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_17605_19449 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_21243_21244) (v_1@@13 T@FrameType) (q@@9 T@Field_17605_17606) (w@@13 T@FrameType) (r@@9 T@Field_17605_17606) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_17605 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_17605_17605 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_21243_17605 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_17605 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_17605_17605 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_21243_21244) (v_1@@14 T@FrameType) (q@@10 T@Field_17605_17606) (w@@14 T@FrameType) (r@@10 T@Field_6843_6931) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_17605 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_17605_13850 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_21243_13850 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_17605 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_17605_13850 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_21243_21244) (v_1@@15 T@FrameType) (q@@11 T@Field_6843_6931) (w@@15 T@FrameType) (r@@11 T@Field_21243_21244) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_13850 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_13850_21243 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_21243_21243 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_13850 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_13850_21243 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_21243_21244) (v_1@@16 T@FrameType) (q@@12 T@Field_6843_6931) (w@@16 T@FrameType) (r@@12 T@Field_19449_19450) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_13850 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_13850_19449 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_21243_19449 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_13850 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_13850_19449 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_21243_21244) (v_1@@17 T@FrameType) (q@@13 T@Field_6843_6931) (w@@17 T@FrameType) (r@@13 T@Field_17605_17606) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_13850 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_13850_17605 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_21243_17605 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_13850 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_13850_17605 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_21243_21244) (v_1@@18 T@FrameType) (q@@14 T@Field_6843_6931) (w@@18 T@FrameType) (r@@14 T@Field_6843_6931) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_21243_13850 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_13850_13850 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_21243_13850 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21243_13850 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_13850_13850 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_19449_19450) (v_1@@19 T@FrameType) (q@@15 T@Field_21243_21244) (w@@19 T@FrameType) (r@@15 T@Field_21243_21244) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_21243 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_21243_21243 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_19449_21243 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_21243 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_21243_21243 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_19449_19450) (v_1@@20 T@FrameType) (q@@16 T@Field_21243_21244) (w@@20 T@FrameType) (r@@16 T@Field_19449_19450) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_21243 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_21243_19449 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_19449_19449 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_21243 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_21243_19449 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_19449_19450) (v_1@@21 T@FrameType) (q@@17 T@Field_21243_21244) (w@@21 T@FrameType) (r@@17 T@Field_17605_17606) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_21243 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_21243_17605 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_19449_17605 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_21243 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_21243_17605 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_19449_19450) (v_1@@22 T@FrameType) (q@@18 T@Field_21243_21244) (w@@22 T@FrameType) (r@@18 T@Field_6843_6931) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_21243 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_21243_13850 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_19449_13850 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_21243 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_21243_13850 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_19449_19450) (v_1@@23 T@FrameType) (q@@19 T@Field_19449_19450) (w@@23 T@FrameType) (r@@19 T@Field_21243_21244) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_19449 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_19449_21243 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_19449_21243 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_19449 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_19449_21243 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_19449_19450) (v_1@@24 T@FrameType) (q@@20 T@Field_19449_19450) (w@@24 T@FrameType) (r@@20 T@Field_19449_19450) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_19449 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_19449_19449 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_19449_19449 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_19449 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_19449_19449 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_19449_19450) (v_1@@25 T@FrameType) (q@@21 T@Field_19449_19450) (w@@25 T@FrameType) (r@@21 T@Field_17605_17606) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_19449 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_19449_17605 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_19449_17605 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_19449 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_19449_17605 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_19449_19450) (v_1@@26 T@FrameType) (q@@22 T@Field_19449_19450) (w@@26 T@FrameType) (r@@22 T@Field_6843_6931) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_19449 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_19449_13850 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_19449_13850 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_19449 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_19449_13850 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_19449_19450) (v_1@@27 T@FrameType) (q@@23 T@Field_17605_17606) (w@@27 T@FrameType) (r@@23 T@Field_21243_21244) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_17605 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_17605_21243 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_19449_21243 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_17605 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_17605_21243 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_19449_19450) (v_1@@28 T@FrameType) (q@@24 T@Field_17605_17606) (w@@28 T@FrameType) (r@@24 T@Field_19449_19450) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_17605 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_17605_19449 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_19449_19449 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_17605 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_17605_19449 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_19449_19450) (v_1@@29 T@FrameType) (q@@25 T@Field_17605_17606) (w@@29 T@FrameType) (r@@25 T@Field_17605_17606) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_17605 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_17605_17605 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_19449_17605 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_17605 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_17605_17605 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_19449_19450) (v_1@@30 T@FrameType) (q@@26 T@Field_17605_17606) (w@@30 T@FrameType) (r@@26 T@Field_6843_6931) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_17605 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_17605_13850 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_19449_13850 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_17605 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_17605_13850 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_19449_19450) (v_1@@31 T@FrameType) (q@@27 T@Field_6843_6931) (w@@31 T@FrameType) (r@@27 T@Field_21243_21244) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_13850 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_13850_21243 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_19449_21243 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_13850 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_13850_21243 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_19449_19450) (v_1@@32 T@FrameType) (q@@28 T@Field_6843_6931) (w@@32 T@FrameType) (r@@28 T@Field_19449_19450) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_13850 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_13850_19449 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_19449_19449 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_13850 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_13850_19449 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_19449_19450) (v_1@@33 T@FrameType) (q@@29 T@Field_6843_6931) (w@@33 T@FrameType) (r@@29 T@Field_17605_17606) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_13850 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_13850_17605 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_19449_17605 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_13850 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_13850_17605 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_19449_19450) (v_1@@34 T@FrameType) (q@@30 T@Field_6843_6931) (w@@34 T@FrameType) (r@@30 T@Field_6843_6931) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_19449_13850 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_13850_13850 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_19449_13850 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19449_13850 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_13850_13850 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_17605_17606) (v_1@@35 T@FrameType) (q@@31 T@Field_21243_21244) (w@@35 T@FrameType) (r@@31 T@Field_21243_21244) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_21243 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_21243_21243 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_17605_21243 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_21243 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_21243_21243 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_17605_17606) (v_1@@36 T@FrameType) (q@@32 T@Field_21243_21244) (w@@36 T@FrameType) (r@@32 T@Field_19449_19450) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_21243 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_21243_19449 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_17605_19449 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_21243 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_21243_19449 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_17605_17606) (v_1@@37 T@FrameType) (q@@33 T@Field_21243_21244) (w@@37 T@FrameType) (r@@33 T@Field_17605_17606) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_21243 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_21243_17605 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_17605_17605 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_21243 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_21243_17605 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_17605_17606) (v_1@@38 T@FrameType) (q@@34 T@Field_21243_21244) (w@@38 T@FrameType) (r@@34 T@Field_6843_6931) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_21243 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_21243_13850 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_17605_13850 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_21243 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_21243_13850 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_17605_17606) (v_1@@39 T@FrameType) (q@@35 T@Field_19449_19450) (w@@39 T@FrameType) (r@@35 T@Field_21243_21244) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_19449 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_19449_21243 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_17605_21243 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_19449 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_19449_21243 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_17605_17606) (v_1@@40 T@FrameType) (q@@36 T@Field_19449_19450) (w@@40 T@FrameType) (r@@36 T@Field_19449_19450) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_19449 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_19449_19449 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_17605_19449 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_19449 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_19449_19449 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_17605_17606) (v_1@@41 T@FrameType) (q@@37 T@Field_19449_19450) (w@@41 T@FrameType) (r@@37 T@Field_17605_17606) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_19449 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_19449_17605 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_17605_17605 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_19449 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_19449_17605 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_17605_17606) (v_1@@42 T@FrameType) (q@@38 T@Field_19449_19450) (w@@42 T@FrameType) (r@@38 T@Field_6843_6931) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_19449 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_19449_13850 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_17605_13850 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_19449 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_19449_13850 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_17605_17606) (v_1@@43 T@FrameType) (q@@39 T@Field_17605_17606) (w@@43 T@FrameType) (r@@39 T@Field_21243_21244) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_17605 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_17605_21243 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_17605_21243 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_17605 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_17605_21243 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_17605_17606) (v_1@@44 T@FrameType) (q@@40 T@Field_17605_17606) (w@@44 T@FrameType) (r@@40 T@Field_19449_19450) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_17605 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_17605_19449 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_17605_19449 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_17605 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_17605_19449 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_17605_17606) (v_1@@45 T@FrameType) (q@@41 T@Field_17605_17606) (w@@45 T@FrameType) (r@@41 T@Field_17605_17606) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_17605 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_17605_17605 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_17605_17605 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_17605 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_17605_17605 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_17605_17606) (v_1@@46 T@FrameType) (q@@42 T@Field_17605_17606) (w@@46 T@FrameType) (r@@42 T@Field_6843_6931) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_17605 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_17605_13850 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_17605_13850 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_17605 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_17605_13850 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_17605_17606) (v_1@@47 T@FrameType) (q@@43 T@Field_6843_6931) (w@@47 T@FrameType) (r@@43 T@Field_21243_21244) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_13850 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_13850_21243 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_17605_21243 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_13850 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_13850_21243 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_17605_17606) (v_1@@48 T@FrameType) (q@@44 T@Field_6843_6931) (w@@48 T@FrameType) (r@@44 T@Field_19449_19450) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_13850 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_13850_19449 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_17605_19449 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_13850 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_13850_19449 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_17605_17606) (v_1@@49 T@FrameType) (q@@45 T@Field_6843_6931) (w@@49 T@FrameType) (r@@45 T@Field_17605_17606) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_13850 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_13850_17605 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_17605_17605 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_13850 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_13850_17605 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_17605_17606) (v_1@@50 T@FrameType) (q@@46 T@Field_6843_6931) (w@@50 T@FrameType) (r@@46 T@Field_6843_6931) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_17605_13850 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_13850_13850 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_17605_13850 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17605_13850 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_13850_13850 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_6843_6931) (v_1@@51 T@FrameType) (q@@47 T@Field_21243_21244) (w@@51 T@FrameType) (r@@47 T@Field_21243_21244) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_21243 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_21243_21243 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_13850_21243 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_21243 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_21243_21243 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_6843_6931) (v_1@@52 T@FrameType) (q@@48 T@Field_21243_21244) (w@@52 T@FrameType) (r@@48 T@Field_19449_19450) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_21243 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_21243_19449 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_13850_19449 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_21243 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_21243_19449 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_6843_6931) (v_1@@53 T@FrameType) (q@@49 T@Field_21243_21244) (w@@53 T@FrameType) (r@@49 T@Field_17605_17606) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_21243 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_21243_17605 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_13850_17605 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_21243 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_21243_17605 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_6843_6931) (v_1@@54 T@FrameType) (q@@50 T@Field_21243_21244) (w@@54 T@FrameType) (r@@50 T@Field_6843_6931) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_21243 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_21243_13850 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_13850_13850 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_21243 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_21243_13850 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_6843_6931) (v_1@@55 T@FrameType) (q@@51 T@Field_19449_19450) (w@@55 T@FrameType) (r@@51 T@Field_21243_21244) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_19449 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_19449_21243 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_13850_21243 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_19449 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_19449_21243 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_6843_6931) (v_1@@56 T@FrameType) (q@@52 T@Field_19449_19450) (w@@56 T@FrameType) (r@@52 T@Field_19449_19450) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_19449 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_19449_19449 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_13850_19449 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_19449 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_19449_19449 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_6843_6931) (v_1@@57 T@FrameType) (q@@53 T@Field_19449_19450) (w@@57 T@FrameType) (r@@53 T@Field_17605_17606) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_19449 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_19449_17605 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_13850_17605 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_19449 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_19449_17605 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_6843_6931) (v_1@@58 T@FrameType) (q@@54 T@Field_19449_19450) (w@@58 T@FrameType) (r@@54 T@Field_6843_6931) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_19449 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_19449_13850 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_13850_13850 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_19449 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_19449_13850 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_6843_6931) (v_1@@59 T@FrameType) (q@@55 T@Field_17605_17606) (w@@59 T@FrameType) (r@@55 T@Field_21243_21244) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_17605 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_17605_21243 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_13850_21243 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_17605 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_17605_21243 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_6843_6931) (v_1@@60 T@FrameType) (q@@56 T@Field_17605_17606) (w@@60 T@FrameType) (r@@56 T@Field_19449_19450) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_17605 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_17605_19449 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_13850_19449 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_17605 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_17605_19449 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_6843_6931) (v_1@@61 T@FrameType) (q@@57 T@Field_17605_17606) (w@@61 T@FrameType) (r@@57 T@Field_17605_17606) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_17605 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_17605_17605 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_13850_17605 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_17605 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_17605_17605 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_6843_6931) (v_1@@62 T@FrameType) (q@@58 T@Field_17605_17606) (w@@62 T@FrameType) (r@@58 T@Field_6843_6931) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_17605 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_17605_13850 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_13850_13850 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_17605 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_17605_13850 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_6843_6931) (v_1@@63 T@FrameType) (q@@59 T@Field_6843_6931) (w@@63 T@FrameType) (r@@59 T@Field_21243_21244) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_13850 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_13850_21243 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_13850_21243 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_13850 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_13850_21243 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_6843_6931) (v_1@@64 T@FrameType) (q@@60 T@Field_6843_6931) (w@@64 T@FrameType) (r@@60 T@Field_19449_19450) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_13850 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_13850_19449 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_13850_19449 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_13850 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_13850_19449 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_6843_6931) (v_1@@65 T@FrameType) (q@@61 T@Field_6843_6931) (w@@65 T@FrameType) (r@@61 T@Field_17605_17606) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_13850 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_13850_17605 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_13850_17605 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_13850 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_13850_17605 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_6843_6931) (v_1@@66 T@FrameType) (q@@62 T@Field_6843_6931) (w@@66 T@FrameType) (r@@62 T@Field_6843_6931) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_13850_13850 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_13850_13850 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_13850_13850 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13850_13850 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_13850_13850 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_13790)
(declare-fun this@@29 () T@Ref)
(declare-fun PostMask@3 () T@PolymorphicMapType_13811)
(declare-fun PostMask@2 () T@PolymorphicMapType_13811)
(declare-fun PostMask@1 () T@PolymorphicMapType_13811)
(declare-fun PostMask@0 () T@PolymorphicMapType_13811)
(declare-fun Mask@17 () T@PolymorphicMapType_13811)
(declare-fun Mask@16 () T@PolymorphicMapType_13811)
(declare-fun Heap@17 () T@PolymorphicMapType_13790)
(declare-fun Mask@15 () T@PolymorphicMapType_13811)
(declare-fun Mask@14 () T@PolymorphicMapType_13811)
(declare-fun Mask@13 () T@PolymorphicMapType_13811)
(declare-fun Mask@12 () T@PolymorphicMapType_13811)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_13790)
(declare-fun Heap@16 () T@PolymorphicMapType_13790)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@11 () T@PolymorphicMapType_13811)
(declare-fun Mask@10 () T@PolymorphicMapType_13811)
(declare-fun Mask@9 () T@PolymorphicMapType_13811)
(declare-fun Heap@15 () T@PolymorphicMapType_13790)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun Heap@14 () T@PolymorphicMapType_13790)
(declare-fun Heap@11 () T@PolymorphicMapType_13790)
(declare-fun Heap@12 () T@PolymorphicMapType_13790)
(declare-fun Heap@13 () T@PolymorphicMapType_13790)
(declare-fun freshVersion@2 () T@FrameType)
(declare-fun Mask@8 () T@PolymorphicMapType_13811)
(declare-fun Mask@7 () T@PolymorphicMapType_13811)
(declare-fun Heap@10 () T@PolymorphicMapType_13790)
(declare-fun Heap@7 () T@PolymorphicMapType_13790)
(declare-fun Heap@8 () T@PolymorphicMapType_13790)
(declare-fun Heap@9 () T@PolymorphicMapType_13790)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun Mask@6 () T@PolymorphicMapType_13811)
(declare-fun Mask@5 () T@PolymorphicMapType_13811)
(declare-fun Heap@6 () T@PolymorphicMapType_13790)
(declare-fun Heap@3 () T@PolymorphicMapType_13790)
(declare-fun Heap@4 () T@PolymorphicMapType_13790)
(declare-fun Heap@5 () T@PolymorphicMapType_13790)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@4 () T@PolymorphicMapType_13811)
(declare-fun Mask@3 () T@PolymorphicMapType_13811)
(declare-fun Heap@0 () T@PolymorphicMapType_13790)
(declare-fun Heap@@74 () T@PolymorphicMapType_13790)
(declare-fun Heap@1 () T@PolymorphicMapType_13790)
(declare-fun Heap@2 () T@PolymorphicMapType_13790)
(declare-fun Mask@0 () T@PolymorphicMapType_13811)
(declare-fun Mask@1 () T@PolymorphicMapType_13811)
(declare-fun Mask@2 () T@PolymorphicMapType_13811)
(set-info :boogie-vc-id check)
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
 (=> (= (ControlFlow 0 0) 68) (let ((anon35_Else_correct  (=> (= (getZ PostHeap@0 this@@29) 4) (=> (and (and (not (= this@@29 null)) (= PostMask@3 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| PostMask@2) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| PostMask@2) this@@29 w_11 (+ (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| PostMask@2) this@@29 w_11) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| PostMask@2) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| PostMask@2)))) (and (state PostHeap@0 PostMask@3) (= (ControlFlow 0 63) (- 0 62)))) (HasDirectPerm_6843_1189 PostMask@3 this@@29 w_11)))))
(let ((anon35_Then_correct  (=> (= (ControlFlow 0 61) (- 0 60)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| PostMask@2) null (Z_2 this@@29)))))))
(let ((anon34_Else_correct  (=> (and (and (= (getX PostHeap@0 this@@29) 3) (= PostMask@2 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| PostMask@1) (store (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| PostMask@1) null (Z_2 this@@29) (+ (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| PostMask@1) null (Z_2 this@@29)) FullPerm)) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| PostMask@1) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 64) 61) anon35_Then_correct) (=> (= (ControlFlow 0 64) 63) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (= (ControlFlow 0 59) (- 0 58)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| PostMask@1) null (X_1 this@@29)))))))
(let ((anon33_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (not (= this@@29 null))) (and (= PostMask@0 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| ZeroMask) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| ZeroMask) this@@29 y_22 (+ (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| ZeroMask) this@@29 y_22) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| ZeroMask))) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 65) (- 0 66)) (HasDirectPerm_6843_1189 PostMask@0 this@@29 y_22)) (=> (HasDirectPerm_6843_1189 PostMask@0 this@@29 y_22) (=> (and (and (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| PostHeap@0) this@@29 y_22) 2) (= PostMask@1 (PolymorphicMapType_13811 (store (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| PostMask@0) null (X_1 this@@29) (+ (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| PostMask@0) null (X_1 this@@29)) FullPerm)) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| PostMask@0) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 65) 59) anon34_Then_correct) (=> (= (ControlFlow 0 65) 64) anon34_Else_correct))))))))
(let ((anon32_correct  (=> (and (= Mask@17 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@16) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@16) this@@29 w_11 (- (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@16) this@@29 w_11) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@16) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@16))) (= (ControlFlow 0 2) (- 0 1))) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@17) this@@29 w_11) 10))))
(let ((anon48_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 5) 2)) anon32_correct)))
(let ((anon48_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@16) this@@29 w_11))) (=> (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@16) this@@29 w_11)) (=> (= (ControlFlow 0 3) 2) anon32_correct))))))
(let ((anon30_correct  (=> (= Mask@16 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@15) (store (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@15) null (Z_2 this@@29) (- (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@15) null (Z_2 this@@29)) FullPerm)) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@15) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@15))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (= (getZ Heap@17 this@@29) 4)) (=> (= (getZ Heap@17 this@@29) 4) (and (=> (= (ControlFlow 0 6) 3) anon48_Then_correct) (=> (= (ControlFlow 0 6) 5) anon48_Else_correct)))))))
(let ((anon47_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 10) 6)) anon30_correct)))
(let ((anon47_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= FullPerm (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@15) null (Z_2 this@@29)))) (=> (<= FullPerm (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@15) null (Z_2 this@@29))) (=> (= (ControlFlow 0 8) 6) anon30_correct))))))
(let ((anon28_correct  (=> (= Mask@15 (PolymorphicMapType_13811 (store (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@14) null (X_1 this@@29) (- (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@14) null (X_1 this@@29)) FullPerm)) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@14) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@14))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= (getX Heap@17 this@@29) 3)) (=> (= (getX Heap@17 this@@29) 3) (and (=> (= (ControlFlow 0 11) 8) anon47_Then_correct) (=> (= (ControlFlow 0 11) 10) anon47_Else_correct)))))))
(let ((anon46_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 15) 11)) anon28_correct)))
(let ((anon46_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= FullPerm (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@14) null (X_1 this@@29)))) (=> (<= FullPerm (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@14) null (X_1 this@@29))) (=> (= (ControlFlow 0 13) 11) anon28_correct))))))
(let ((anon26_correct  (=> (= Mask@14 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@13) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@13) this@@29 y_22 (- (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@13) this@@29 y_22) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@13) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@13))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@17) this@@29 y_22) 2)) (=> (= (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@17) this@@29 y_22) 2) (and (=> (= (ControlFlow 0 16) 13) anon46_Then_correct) (=> (= (ControlFlow 0 16) 15) anon46_Else_correct)))))))
(let ((anon45_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 16)) anon26_correct)))
(let ((anon45_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@13) this@@29 y_22))) (=> (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@13) this@@29 y_22)) (=> (= (ControlFlow 0 18) 16) anon26_correct))))))
(let ((anon24_correct  (=> (not (= this@@29 null)) (=> (and (and (= Mask@13 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@12) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@12) this@@29 y_22 (+ (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@12) this@@29 y_22) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@12) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@12))) (state Heap@17 Mask@13)) (and (state Heap@17 Mask@13) (state Heap@17 Mask@13))) (and (=> (= (ControlFlow 0 21) 18) anon45_Then_correct) (=> (= (ControlFlow 0 21) 20) anon45_Else_correct))))))
(let ((anon44_Else_correct  (=> (HasDirectPerm_6955_6956 Mask@12 null (Y this@@29)) (=> (and (= Heap@17 ExhaleHeap@0) (= (ControlFlow 0 23) 21)) anon24_correct))))
(let ((anon44_Then_correct  (=> (and (and (not (HasDirectPerm_6955_6956 Mask@12 null (Y this@@29))) (= Heap@16 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| ExhaleHeap@0) (store (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@0) null (Y this@@29) newVersion@0) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| ExhaleHeap@0) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| ExhaleHeap@0)))) (and (= Heap@17 Heap@16) (= (ControlFlow 0 22) 21))) anon24_correct)))
(let ((anon22_correct  (=> (= Mask@12 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@11) (store (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@11) null (Y this@@29) (- (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@11) null (Y this@@29)) FullPerm)) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@11) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@11))) (and (=> (= (ControlFlow 0 24) 22) anon44_Then_correct) (=> (= (ControlFlow 0 24) 23) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 27) 24)) anon22_correct)))
(let ((anon43_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (<= FullPerm (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@11) null (Y this@@29)))) (=> (<= FullPerm (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@11) null (Y this@@29))) (=> (= (ControlFlow 0 25) 24) anon22_correct))))))
(let ((anon20_correct  (=> (and (= Mask@10 (PolymorphicMapType_13811 (store (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@9) null (X_1 this@@29) (- (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@9) null (X_1 this@@29)) FullPerm)) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@9) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@9))) (IdenticalOnKnownLocations Heap@15 ExhaleHeap@0 Mask@10)) (=> (and (and (and (= Mask@11 (PolymorphicMapType_13811 (store (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@10) null (X_1 this@@29) (+ (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@10) null (X_1 this@@29)) FullPerm)) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@10) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@10))) (state ExhaleHeap@0 Mask@11)) (and (state ExhaleHeap@0 Mask@11) (= (getX ExhaleHeap@0 this@@29) 3))) (and (and (state ExhaleHeap@0 Mask@11) (state ExhaleHeap@0 Mask@11)) (and (|Y#trigger_6955| ExhaleHeap@0 (Y this@@29)) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| ExhaleHeap@0) null (Y this@@29)) (FrameFragment_1189 (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| ExhaleHeap@0) this@@29 y_22)))))) (and (=> (= (ControlFlow 0 28) 25) anon43_Then_correct) (=> (= (ControlFlow 0 28) 27) anon43_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 31) 28)) anon20_correct)))
(let ((anon42_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (<= FullPerm (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@9) null (X_1 this@@29)))) (=> (<= FullPerm (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@9) null (X_1 this@@29))) (=> (= (ControlFlow 0 29) 28) anon20_correct))))))
(let ((anon18_correct  (=> (= Heap@15 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@14) (store (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29) (PolymorphicMapType_14339 (store (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) this@@29 z_24 true) (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))) (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@14) null (|Z#sm| this@@29))))) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@14) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@14))) (=> (and (state Heap@15 Mask@9) (state Heap@15 Mask@9)) (and (=> (= (ControlFlow 0 32) 29) anon42_Then_correct) (=> (= (ControlFlow 0 32) 31) anon42_Else_correct))))))
(let ((anon41_Else_correct  (=> (HasDirectPerm_6980_6981 Mask@9 null (Z_2 this@@29)) (=> (and (= Heap@14 Heap@11) (= (ControlFlow 0 34) 32)) anon18_correct))))
(let ((anon41_Then_correct  (=> (not (HasDirectPerm_6980_6981 Mask@9 null (Z_2 this@@29))) (=> (and (and (= Heap@12 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@11) (store (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@11) null (|Z#sm| this@@29) ZeroPMask) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@11) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@11))) (= Heap@13 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@12) (store (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@12) null (Z_2 this@@29) freshVersion@2) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@12) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@12)))) (and (= Heap@14 Heap@13) (= (ControlFlow 0 33) 32))) anon18_correct))))
(let ((anon16_correct  (=> (and (= Mask@8 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@7) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@7) this@@29 z_24 (- (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@7) this@@29 z_24) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@7) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@7))) (= Mask@9 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@8) (store (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@8) null (Z_2 this@@29) (+ (select (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@8) null (Z_2 this@@29)) FullPerm)) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@8) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@8)))) (=> (and (and (state Heap@11 Mask@9) (state Heap@11 Mask@9)) (and (|Z#trigger_6980| Heap@11 (Z_2 this@@29)) (= (select (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@11) null (Z_2 this@@29)) (FrameFragment_1189 (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@11) this@@29 z_24))))) (and (=> (= (ControlFlow 0 35) 33) anon41_Then_correct) (=> (= (ControlFlow 0 35) 34) anon41_Else_correct))))))
(let ((anon40_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 38) 35)) anon16_correct)))
(let ((anon40_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@7) this@@29 z_24))) (=> (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@7) this@@29 z_24)) (=> (= (ControlFlow 0 36) 35) anon16_correct))))))
(let ((anon14_correct  (=> (= Heap@11 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@10) (store (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29) (PolymorphicMapType_14339 (store (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) this@@29 y_22 true) (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))) (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@10) null (|Y#sm| this@@29))))) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@10) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@10))) (=> (and (state Heap@11 Mask@7) (state Heap@11 Mask@7)) (and (=> (= (ControlFlow 0 39) 36) anon40_Then_correct) (=> (= (ControlFlow 0 39) 38) anon40_Else_correct))))))
(let ((anon39_Else_correct  (=> (HasDirectPerm_6955_6956 Mask@7 null (Y this@@29)) (=> (and (= Heap@10 Heap@7) (= (ControlFlow 0 41) 39)) anon14_correct))))
(let ((anon39_Then_correct  (=> (not (HasDirectPerm_6955_6956 Mask@7 null (Y this@@29))) (=> (and (and (= Heap@8 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@7) (store (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@7) null (|Y#sm| this@@29) ZeroPMask) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@7) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@7))) (= Heap@9 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@8) (store (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@8) null (Y this@@29) freshVersion@1) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@8) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@8)))) (and (= Heap@10 Heap@9) (= (ControlFlow 0 40) 39))) anon14_correct))))
(let ((anon12_correct  (=> (and (= Mask@6 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@5) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@5) this@@29 y_22 (- (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@5) this@@29 y_22) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@5) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@5))) (= Mask@7 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@6) (store (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@6) null (Y this@@29) (+ (select (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@6) null (Y this@@29)) FullPerm)) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@6) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@6)))) (=> (and (and (state Heap@7 Mask@7) (state Heap@7 Mask@7)) (and (|Y#trigger_6955| Heap@7 (Y this@@29)) (= (select (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@7) null (Y this@@29)) (FrameFragment_1189 (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@7) this@@29 y_22))))) (and (=> (= (ControlFlow 0 42) 40) anon39_Then_correct) (=> (= (ControlFlow 0 42) 41) anon39_Else_correct))))))
(let ((anon38_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 45) 42)) anon12_correct)))
(let ((anon38_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@5) this@@29 y_22))) (=> (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@5) this@@29 y_22)) (=> (= (ControlFlow 0 43) 42) anon12_correct))))))
(let ((anon10_correct  (=> (= Heap@7 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@6) (store (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29) (PolymorphicMapType_14339 (store (|PolymorphicMapType_14339_6843_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) this@@29 x_42 true) (|PolymorphicMapType_14339_6843_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_6843_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_6843_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_6843_52148#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_17605_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_17605_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_17605_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_17605_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_17605_53196#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_19449_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_19449_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_19449_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_19449_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_19449_54244#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_21243_1189#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_21243_53#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_21243_13864#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_21243_17606#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))) (|PolymorphicMapType_14339_21243_55292#PolymorphicMapType_14339| (select (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@6) null (|X#sm| this@@29))))) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@6) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@6))) (=> (and (state Heap@7 Mask@5) (state Heap@7 Mask@5)) (and (=> (= (ControlFlow 0 46) 43) anon38_Then_correct) (=> (= (ControlFlow 0 46) 45) anon38_Else_correct))))))
(let ((anon37_Else_correct  (=> (HasDirectPerm_6930_6931 Mask@5 null (X_1 this@@29)) (=> (and (= Heap@6 Heap@3) (= (ControlFlow 0 48) 46)) anon10_correct))))
(let ((anon37_Then_correct  (=> (not (HasDirectPerm_6930_6931 Mask@5 null (X_1 this@@29))) (=> (and (and (= Heap@4 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@3) (store (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@3) null (|X#sm| this@@29) ZeroPMask) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@3) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@3))) (= Heap@5 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@4) (store (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@4) null (X_1 this@@29) freshVersion@0) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@4) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@4)))) (and (= Heap@6 Heap@5) (= (ControlFlow 0 47) 46))) anon10_correct))))
(let ((anon8_correct  (=> (and (= Mask@4 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@3) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 x_42 (- (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 x_42) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@3) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@3))) (= Mask@5 (PolymorphicMapType_13811 (store (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@4) null (X_1 this@@29) (+ (select (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@4) null (X_1 this@@29)) FullPerm)) (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@4) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@4)))) (=> (and (and (state Heap@3 Mask@5) (state Heap@3 Mask@5)) (and (|X#trigger_6930| Heap@3 (X_1 this@@29)) (= (select (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@3) null (X_1 this@@29)) (FrameFragment_1189 (select (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@3) this@@29 x_42))))) (and (=> (= (ControlFlow 0 49) 47) anon37_Then_correct) (=> (= (ControlFlow 0 49) 48) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 52) 49)) anon8_correct)))
(let ((anon36_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 x_42))) (=> (<= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 x_42)) (=> (= (ControlFlow 0 50) 49) anon8_correct))))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 53) (- 0 57)) (= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 x_42))) (=> (= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 x_42)) (=> (and (= Heap@0 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@@74) (store (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@@74) this@@29 x_42 1) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@@74) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@@74))) (state Heap@0 Mask@3)) (and (=> (= (ControlFlow 0 53) (- 0 56)) (= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 y_22))) (=> (= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 y_22)) (=> (and (= Heap@1 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@0) (store (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@0) this@@29 y_22 2) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@0) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@0))) (state Heap@1 Mask@3)) (and (=> (= (ControlFlow 0 53) (- 0 55)) (= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 z_24))) (=> (= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 z_24)) (=> (and (= Heap@2 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@1) (store (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@1) this@@29 z_24 4) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@1) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@1))) (state Heap@2 Mask@3)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 w_11))) (=> (= FullPerm (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@3) this@@29 w_11)) (=> (and (= Heap@3 (PolymorphicMapType_13790 (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6718_6719#PolymorphicMapType_13790| Heap@2) (store (|PolymorphicMapType_13790_6843_1189#PolymorphicMapType_13790| Heap@2) this@@29 w_11 10) (|PolymorphicMapType_13790_6930_6931#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6934_18947#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6955_6956#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6959_20753#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6980_6981#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6984_22547#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6843_6931#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6843_46486#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6930_1189#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6930_53#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6930_13864#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6955_1189#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6955_53#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6955_13864#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6980_1189#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6980_53#PolymorphicMapType_13790| Heap@2) (|PolymorphicMapType_13790_6980_13864#PolymorphicMapType_13790| Heap@2))) (state Heap@3 Mask@3)) (and (=> (= (ControlFlow 0 53) 50) anon36_Then_correct) (=> (= (ControlFlow 0 53) 52) anon36_Else_correct))))))))))))))))
(let ((anon0_correct  (=> (state Heap@@74 ZeroMask) (=> (and (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_13790_6715_53#PolymorphicMapType_13790| Heap@@74) this@@29 $allocated) (not (= this@@29 null)))) (and (and (= Mask@0 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| ZeroMask) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| ZeroMask) this@@29 x_42 (+ (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| ZeroMask) this@@29 x_42) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| ZeroMask) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| ZeroMask))) (state Heap@@74 Mask@0)) (and (not (= this@@29 null)) (= Mask@1 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@0) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@0) this@@29 y_22 (+ (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@0) this@@29 y_22) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@0) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@0)))))) (and (and (and (state Heap@@74 Mask@1) (not (= this@@29 null))) (and (= Mask@2 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@1) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@1) this@@29 z_24 (+ (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@1) this@@29 z_24) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@1) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@1))) (state Heap@@74 Mask@2))) (and (and (not (= this@@29 null)) (= Mask@3 (PolymorphicMapType_13811 (|PolymorphicMapType_13811_6930_6931#PolymorphicMapType_13811| Mask@2) (store (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@2) this@@29 w_11 (+ (select (|PolymorphicMapType_13811_6843_1189#PolymorphicMapType_13811| Mask@2) this@@29 w_11) FullPerm)) (|PolymorphicMapType_13811_6955_6956#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6980_6981#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6930_1189#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6930_53#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6930_13864#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6930_65583#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6843_6931#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6843_53#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6843_13864#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6843_65997#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6955_1189#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6955_53#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6955_13864#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6955_66408#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6980_1189#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6980_53#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6980_13864#PolymorphicMapType_13811| Mask@2) (|PolymorphicMapType_13811_6980_66819#PolymorphicMapType_13811| Mask@2)))) (and (state Heap@@74 Mask@3) (state Heap@@74 Mask@3))))) (and (=> (= (ControlFlow 0 67) 65) anon33_Then_correct) (=> (= (ControlFlow 0 67) 53) anon33_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 68) 67) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
