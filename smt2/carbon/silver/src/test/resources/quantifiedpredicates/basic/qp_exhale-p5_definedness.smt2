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
(declare-sort T@Field_15699_53 0)
(declare-sort T@Field_15712_15713 0)
(declare-sort T@Field_21907_3427 0)
(declare-sort T@Field_22401_22402 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9444_21984 0)
(declare-sort T@Field_9444_22000 0)
(declare-sort T@Field_21983_3427 0)
(declare-sort T@Field_21983_53 0)
(declare-sort T@Field_21983_15713 0)
(declare-sort T@Field_21983_21984 0)
(declare-sort T@Field_21995_22000 0)
(declare-sort T@Field_22401_3427 0)
(declare-sort T@Field_22401_53 0)
(declare-sort T@Field_22401_15713 0)
(declare-sort T@Field_22414_22419 0)
(declare-sort T@Field_23321_3427 0)
(declare-sort T@Field_23321_53 0)
(declare-sort T@Field_23321_15713 0)
(declare-sort T@Field_23321_23322 0)
(declare-sort T@Field_23334_23339 0)
(declare-sort T@Field_24329_3427 0)
(declare-sort T@Field_24329_53 0)
(declare-sort T@Field_24329_15713 0)
(declare-sort T@Field_24329_24330 0)
(declare-sort T@Field_24342_24347 0)
(declare-sort T@Field_25303_3427 0)
(declare-sort T@Field_25303_53 0)
(declare-sort T@Field_25303_15713 0)
(declare-sort T@Field_25303_25304 0)
(declare-sort T@Field_25316_25321 0)
(declare-datatypes ((T@PolymorphicMapType_15660 0)) (((PolymorphicMapType_15660 (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| (Array T@Ref T@Field_21907_3427 Real)) (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| (Array T@Ref T@Field_22401_22402 Real)) (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| (Array T@Ref T@Field_9444_21984 Real)) (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| (Array T@Ref T@Field_15699_53 Real)) (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| (Array T@Ref T@Field_15712_15713 Real)) (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| (Array T@Ref T@Field_9444_22000 Real)) (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| (Array T@Ref T@Field_22401_3427 Real)) (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| (Array T@Ref T@Field_22401_53 Real)) (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| (Array T@Ref T@Field_22401_15713 Real)) (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| (Array T@Ref T@Field_22414_22419 Real)) (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| (Array T@Ref T@Field_21983_3427 Real)) (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| (Array T@Ref T@Field_21983_21984 Real)) (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| (Array T@Ref T@Field_21983_53 Real)) (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| (Array T@Ref T@Field_21983_15713 Real)) (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| (Array T@Ref T@Field_21995_22000 Real)) (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| (Array T@Ref T@Field_23321_3427 Real)) (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| (Array T@Ref T@Field_23321_23322 Real)) (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| (Array T@Ref T@Field_23321_53 Real)) (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| (Array T@Ref T@Field_23321_15713 Real)) (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| (Array T@Ref T@Field_23334_23339 Real)) (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| (Array T@Ref T@Field_24329_3427 Real)) (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| (Array T@Ref T@Field_24329_24330 Real)) (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| (Array T@Ref T@Field_24329_53 Real)) (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| (Array T@Ref T@Field_24329_15713 Real)) (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| (Array T@Ref T@Field_24342_24347 Real)) (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| (Array T@Ref T@Field_25303_3427 Real)) (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| (Array T@Ref T@Field_25303_25304 Real)) (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| (Array T@Ref T@Field_25303_53 Real)) (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| (Array T@Ref T@Field_25303_15713 Real)) (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| (Array T@Ref T@Field_25316_25321 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16188 0)) (((PolymorphicMapType_16188 (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (Array T@Ref T@Field_15699_53 Bool)) (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (Array T@Ref T@Field_15712_15713 Bool)) (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (Array T@Ref T@Field_21907_3427 Bool)) (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (Array T@Ref T@Field_9444_21984 Bool)) (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (Array T@Ref T@Field_9444_22000 Bool)) (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (Array T@Ref T@Field_21983_53 Bool)) (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (Array T@Ref T@Field_21983_15713 Bool)) (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (Array T@Ref T@Field_21983_3427 Bool)) (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (Array T@Ref T@Field_21983_21984 Bool)) (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (Array T@Ref T@Field_21995_22000 Bool)) (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (Array T@Ref T@Field_22401_53 Bool)) (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (Array T@Ref T@Field_22401_15713 Bool)) (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (Array T@Ref T@Field_22401_3427 Bool)) (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (Array T@Ref T@Field_22401_22402 Bool)) (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (Array T@Ref T@Field_22414_22419 Bool)) (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (Array T@Ref T@Field_23321_53 Bool)) (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (Array T@Ref T@Field_23321_15713 Bool)) (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (Array T@Ref T@Field_23321_3427 Bool)) (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (Array T@Ref T@Field_23321_23322 Bool)) (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (Array T@Ref T@Field_23334_23339 Bool)) (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (Array T@Ref T@Field_24329_53 Bool)) (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (Array T@Ref T@Field_24329_15713 Bool)) (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (Array T@Ref T@Field_24329_3427 Bool)) (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (Array T@Ref T@Field_24329_24330 Bool)) (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (Array T@Ref T@Field_24342_24347 Bool)) (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (Array T@Ref T@Field_25303_53 Bool)) (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (Array T@Ref T@Field_25303_15713 Bool)) (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (Array T@Ref T@Field_25303_3427 Bool)) (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (Array T@Ref T@Field_25303_25304 Bool)) (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (Array T@Ref T@Field_25316_25321 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15639 0)) (((PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| (Array T@Ref T@Field_15699_53 Bool)) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| (Array T@Ref T@Field_15712_15713 T@Ref)) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| (Array T@Ref T@Field_21907_3427 Int)) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| (Array T@Ref T@Field_22401_22402 T@FrameType)) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| (Array T@Ref T@Field_9444_21984 T@FrameType)) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| (Array T@Ref T@Field_9444_22000 T@PolymorphicMapType_16188)) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| (Array T@Ref T@Field_21983_3427 Int)) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| (Array T@Ref T@Field_21983_53 Bool)) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| (Array T@Ref T@Field_21983_15713 T@Ref)) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| (Array T@Ref T@Field_21983_21984 T@FrameType)) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| (Array T@Ref T@Field_21995_22000 T@PolymorphicMapType_16188)) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| (Array T@Ref T@Field_22401_3427 Int)) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| (Array T@Ref T@Field_22401_53 Bool)) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| (Array T@Ref T@Field_22401_15713 T@Ref)) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| (Array T@Ref T@Field_22414_22419 T@PolymorphicMapType_16188)) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| (Array T@Ref T@Field_23321_3427 Int)) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| (Array T@Ref T@Field_23321_53 Bool)) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| (Array T@Ref T@Field_23321_15713 T@Ref)) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| (Array T@Ref T@Field_23321_23322 T@FrameType)) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| (Array T@Ref T@Field_23334_23339 T@PolymorphicMapType_16188)) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| (Array T@Ref T@Field_24329_3427 Int)) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| (Array T@Ref T@Field_24329_53 Bool)) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| (Array T@Ref T@Field_24329_15713 T@Ref)) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| (Array T@Ref T@Field_24329_24330 T@FrameType)) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| (Array T@Ref T@Field_24342_24347 T@PolymorphicMapType_16188)) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| (Array T@Ref T@Field_25303_3427 Int)) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| (Array T@Ref T@Field_25303_53 Bool)) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| (Array T@Ref T@Field_25303_15713 T@Ref)) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| (Array T@Ref T@Field_25303_25304 T@FrameType)) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| (Array T@Ref T@Field_25316_25321 T@PolymorphicMapType_16188)) ) ) ))
(declare-fun $allocated () T@Field_15699_53)
(declare-fun f_7 () T@Field_21907_3427)
(declare-fun g () T@Field_21907_3427)
(declare-fun succHeap (T@PolymorphicMapType_15639 T@PolymorphicMapType_15639) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15639 T@PolymorphicMapType_15639) Bool)
(declare-fun state (T@PolymorphicMapType_15639 T@PolymorphicMapType_15660) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15660) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16188)
(declare-fun p4 (T@Ref Int) T@Field_24329_24330)
(declare-fun IsPredicateField_9511_9512 (T@Field_24329_24330) Bool)
(declare-fun p5 (T@Ref Int) T@Field_25303_25304)
(declare-fun IsPredicateField_9536_9537 (T@Field_25303_25304) Bool)
(declare-fun |p4#trigger_9511| (T@PolymorphicMapType_15639 T@Field_24329_24330) Bool)
(declare-fun |p4#everUsed_9511| (T@Field_24329_24330) Bool)
(declare-fun |p5#trigger_9536| (T@PolymorphicMapType_15639 T@Field_25303_25304) Bool)
(declare-fun |p5#everUsed_9536| (T@Field_25303_25304) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun IsPredicateField_9448_9449 (T@Field_21983_21984) Bool)
(declare-fun p1 () T@Field_21983_21984)
(declare-fun getPredWandId_9448_9449 (T@Field_21983_21984) Int)
(declare-fun p2 (T@Ref) T@Field_22401_22402)
(declare-fun IsPredicateField_9461_9462 (T@Field_22401_22402) Bool)
(declare-fun p3_1 (T@Ref) T@Field_23321_23322)
(declare-fun IsPredicateField_9486_9487 (T@Field_23321_23322) Bool)
(declare-fun |p2#trigger_9461| (T@PolymorphicMapType_15639 T@Field_22401_22402) Bool)
(declare-fun |p2#everUsed_9461| (T@Field_22401_22402) Bool)
(declare-fun |p3#trigger_9486| (T@PolymorphicMapType_15639 T@Field_23321_23322) Bool)
(declare-fun |p3#everUsed_9486| (T@Field_23321_23322) Bool)
(declare-fun |Set#Union_9565| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_9565| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_9565| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_9565| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15639 T@PolymorphicMapType_15639 T@PolymorphicMapType_15660) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9536 (T@Field_25303_25304) T@Field_25316_25321)
(declare-fun HasDirectPerm_25303_21984 (T@PolymorphicMapType_15660 T@Ref T@Field_25303_25304) Bool)
(declare-fun PredicateMaskField_9511 (T@Field_24329_24330) T@Field_24342_24347)
(declare-fun HasDirectPerm_24329_21984 (T@PolymorphicMapType_15660 T@Ref T@Field_24329_24330) Bool)
(declare-fun PredicateMaskField_9486 (T@Field_23321_23322) T@Field_23334_23339)
(declare-fun HasDirectPerm_23321_21984 (T@PolymorphicMapType_15660 T@Ref T@Field_23321_23322) Bool)
(declare-fun PredicateMaskField_9461 (T@Field_22401_22402) T@Field_22414_22419)
(declare-fun HasDirectPerm_22401_21984 (T@PolymorphicMapType_15660 T@Ref T@Field_22401_22402) Bool)
(declare-fun PredicateMaskField_9448 (T@Field_21983_21984) T@Field_21995_22000)
(declare-fun HasDirectPerm_21983_21984 (T@PolymorphicMapType_15660 T@Ref T@Field_21983_21984) Bool)
(declare-fun IsPredicateField_9444_51579 (T@Field_9444_21984) Bool)
(declare-fun PredicateMaskField_9444 (T@Field_9444_21984) T@Field_9444_22000)
(declare-fun HasDirectPerm_9444_21984 (T@PolymorphicMapType_15660 T@Ref T@Field_9444_21984) Bool)
(declare-fun IsWandField_25303_63320 (T@Field_25303_25304) Bool)
(declare-fun WandMaskField_25303 (T@Field_25303_25304) T@Field_25316_25321)
(declare-fun IsWandField_24329_62963 (T@Field_24329_24330) Bool)
(declare-fun WandMaskField_24329 (T@Field_24329_24330) T@Field_24342_24347)
(declare-fun IsWandField_23321_62606 (T@Field_23321_23322) Bool)
(declare-fun WandMaskField_23321 (T@Field_23321_23322) T@Field_23334_23339)
(declare-fun IsWandField_22401_62249 (T@Field_22401_22402) Bool)
(declare-fun WandMaskField_22401 (T@Field_22401_22402) T@Field_22414_22419)
(declare-fun IsWandField_21983_61892 (T@Field_21983_21984) Bool)
(declare-fun WandMaskField_21983 (T@Field_21983_21984) T@Field_21995_22000)
(declare-fun IsWandField_9444_61535 (T@Field_9444_21984) Bool)
(declare-fun WandMaskField_9444 (T@Field_9444_21984) T@Field_9444_22000)
(declare-fun |p4#sm| (T@Ref Int) T@Field_24342_24347)
(declare-fun |p5#sm| (T@Ref Int) T@Field_25316_25321)
(declare-fun |p2#sm| (T@Ref) T@Field_22414_22419)
(declare-fun |p3#sm| (T@Ref) T@Field_23334_23339)
(declare-fun dummyHeap () T@PolymorphicMapType_15639)
(declare-fun ZeroMask () T@PolymorphicMapType_15660)
(declare-fun InsidePredicate_25303_25303 (T@Field_25303_25304 T@FrameType T@Field_25303_25304 T@FrameType) Bool)
(declare-fun InsidePredicate_24329_24329 (T@Field_24329_24330 T@FrameType T@Field_24329_24330 T@FrameType) Bool)
(declare-fun InsidePredicate_23321_23321 (T@Field_23321_23322 T@FrameType T@Field_23321_23322 T@FrameType) Bool)
(declare-fun InsidePredicate_22401_22401 (T@Field_22401_22402 T@FrameType T@Field_22401_22402 T@FrameType) Bool)
(declare-fun InsidePredicate_21983_21983 (T@Field_21983_21984 T@FrameType T@Field_21983_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_15699_15699 (T@Field_9444_21984 T@FrameType T@Field_9444_21984 T@FrameType) Bool)
(declare-fun IsPredicateField_9444_3427 (T@Field_21907_3427) Bool)
(declare-fun IsWandField_9444_3427 (T@Field_21907_3427) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_25303_83856 (T@Field_25316_25321) Bool)
(declare-fun IsWandField_25303_83872 (T@Field_25316_25321) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_25303_15713 (T@Field_25303_15713) Bool)
(declare-fun IsWandField_25303_15713 (T@Field_25303_15713) Bool)
(declare-fun IsPredicateField_25303_53 (T@Field_25303_53) Bool)
(declare-fun IsWandField_25303_53 (T@Field_25303_53) Bool)
(declare-fun IsPredicateField_25303_3427 (T@Field_25303_3427) Bool)
(declare-fun IsWandField_25303_3427 (T@Field_25303_3427) Bool)
(declare-fun IsPredicateField_24329_83025 (T@Field_24342_24347) Bool)
(declare-fun IsWandField_24329_83041 (T@Field_24342_24347) Bool)
(declare-fun IsPredicateField_24329_15713 (T@Field_24329_15713) Bool)
(declare-fun IsWandField_24329_15713 (T@Field_24329_15713) Bool)
(declare-fun IsPredicateField_24329_53 (T@Field_24329_53) Bool)
(declare-fun IsWandField_24329_53 (T@Field_24329_53) Bool)
(declare-fun IsPredicateField_24329_3427 (T@Field_24329_3427) Bool)
(declare-fun IsWandField_24329_3427 (T@Field_24329_3427) Bool)
(declare-fun IsPredicateField_23321_82194 (T@Field_23334_23339) Bool)
(declare-fun IsWandField_23321_82210 (T@Field_23334_23339) Bool)
(declare-fun IsPredicateField_23321_15713 (T@Field_23321_15713) Bool)
(declare-fun IsWandField_23321_15713 (T@Field_23321_15713) Bool)
(declare-fun IsPredicateField_23321_53 (T@Field_23321_53) Bool)
(declare-fun IsWandField_23321_53 (T@Field_23321_53) Bool)
(declare-fun IsPredicateField_23321_3427 (T@Field_23321_3427) Bool)
(declare-fun IsWandField_23321_3427 (T@Field_23321_3427) Bool)
(declare-fun IsPredicateField_21983_81363 (T@Field_21995_22000) Bool)
(declare-fun IsWandField_21983_81379 (T@Field_21995_22000) Bool)
(declare-fun IsPredicateField_21983_15713 (T@Field_21983_15713) Bool)
(declare-fun IsWandField_21983_15713 (T@Field_21983_15713) Bool)
(declare-fun IsPredicateField_21983_53 (T@Field_21983_53) Bool)
(declare-fun IsWandField_21983_53 (T@Field_21983_53) Bool)
(declare-fun IsPredicateField_21983_3427 (T@Field_21983_3427) Bool)
(declare-fun IsWandField_21983_3427 (T@Field_21983_3427) Bool)
(declare-fun IsPredicateField_9461_80532 (T@Field_22414_22419) Bool)
(declare-fun IsWandField_9461_80548 (T@Field_22414_22419) Bool)
(declare-fun IsPredicateField_9461_15713 (T@Field_22401_15713) Bool)
(declare-fun IsWandField_9461_15713 (T@Field_22401_15713) Bool)
(declare-fun IsPredicateField_9461_53 (T@Field_22401_53) Bool)
(declare-fun IsWandField_9461_53 (T@Field_22401_53) Bool)
(declare-fun IsPredicateField_9461_3427 (T@Field_22401_3427) Bool)
(declare-fun IsWandField_9461_3427 (T@Field_22401_3427) Bool)
(declare-fun IsPredicateField_9444_79701 (T@Field_9444_22000) Bool)
(declare-fun IsWandField_9444_79717 (T@Field_9444_22000) Bool)
(declare-fun IsPredicateField_9444_15713 (T@Field_15712_15713) Bool)
(declare-fun IsWandField_9444_15713 (T@Field_15712_15713) Bool)
(declare-fun IsPredicateField_9444_53 (T@Field_15699_53) Bool)
(declare-fun IsWandField_9444_53 (T@Field_15699_53) Bool)
(declare-fun HasDirectPerm_25303_51291 (T@PolymorphicMapType_15660 T@Ref T@Field_25316_25321) Bool)
(declare-fun HasDirectPerm_25303_15713 (T@PolymorphicMapType_15660 T@Ref T@Field_25303_15713) Bool)
(declare-fun HasDirectPerm_25303_53 (T@PolymorphicMapType_15660 T@Ref T@Field_25303_53) Bool)
(declare-fun HasDirectPerm_25303_3427 (T@PolymorphicMapType_15660 T@Ref T@Field_25303_3427) Bool)
(declare-fun HasDirectPerm_24329_50113 (T@PolymorphicMapType_15660 T@Ref T@Field_24342_24347) Bool)
(declare-fun HasDirectPerm_24329_15713 (T@PolymorphicMapType_15660 T@Ref T@Field_24329_15713) Bool)
(declare-fun HasDirectPerm_24329_53 (T@PolymorphicMapType_15660 T@Ref T@Field_24329_53) Bool)
(declare-fun HasDirectPerm_24329_3427 (T@PolymorphicMapType_15660 T@Ref T@Field_24329_3427) Bool)
(declare-fun HasDirectPerm_23321_48935 (T@PolymorphicMapType_15660 T@Ref T@Field_23334_23339) Bool)
(declare-fun HasDirectPerm_23321_15713 (T@PolymorphicMapType_15660 T@Ref T@Field_23321_15713) Bool)
(declare-fun HasDirectPerm_23321_53 (T@PolymorphicMapType_15660 T@Ref T@Field_23321_53) Bool)
(declare-fun HasDirectPerm_23321_3427 (T@PolymorphicMapType_15660 T@Ref T@Field_23321_3427) Bool)
(declare-fun HasDirectPerm_22401_47757 (T@PolymorphicMapType_15660 T@Ref T@Field_22414_22419) Bool)
(declare-fun HasDirectPerm_22401_15713 (T@PolymorphicMapType_15660 T@Ref T@Field_22401_15713) Bool)
(declare-fun HasDirectPerm_22401_53 (T@PolymorphicMapType_15660 T@Ref T@Field_22401_53) Bool)
(declare-fun HasDirectPerm_22401_3427 (T@PolymorphicMapType_15660 T@Ref T@Field_22401_3427) Bool)
(declare-fun HasDirectPerm_21983_46596 (T@PolymorphicMapType_15660 T@Ref T@Field_21995_22000) Bool)
(declare-fun HasDirectPerm_21983_15713 (T@PolymorphicMapType_15660 T@Ref T@Field_21983_15713) Bool)
(declare-fun HasDirectPerm_21983_53 (T@PolymorphicMapType_15660 T@Ref T@Field_21983_53) Bool)
(declare-fun HasDirectPerm_21983_3427 (T@PolymorphicMapType_15660 T@Ref T@Field_21983_3427) Bool)
(declare-fun HasDirectPerm_9444_45418 (T@PolymorphicMapType_15660 T@Ref T@Field_9444_22000) Bool)
(declare-fun HasDirectPerm_9444_15713 (T@PolymorphicMapType_15660 T@Ref T@Field_15712_15713) Bool)
(declare-fun HasDirectPerm_9444_53 (T@PolymorphicMapType_15660 T@Ref T@Field_15699_53) Bool)
(declare-fun HasDirectPerm_9444_3427 (T@PolymorphicMapType_15660 T@Ref T@Field_21907_3427) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15660 T@PolymorphicMapType_15660 T@PolymorphicMapType_15660) Bool)
(declare-fun |Set#Difference_9565| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_9565| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_9511_9512 (T@Field_24329_24330) Int)
(declare-fun getPredWandId_9536_9537 (T@Field_25303_25304) Int)
(declare-fun getPredWandId_9461_9462 (T@Field_22401_22402) Int)
(declare-fun getPredWandId_9486_9487 (T@Field_23321_23322) Int)
(declare-fun |p1#trigger_9448| (T@PolymorphicMapType_15639 T@Field_21983_21984) Bool)
(declare-fun |p1#everUsed_9448| (T@Field_21983_21984) Bool)
(declare-fun |Set#Empty_9565| () (Array T@Ref Bool))
(declare-fun |p1#sm| () T@Field_21995_22000)
(declare-fun InsidePredicate_25303_24329 (T@Field_25303_25304 T@FrameType T@Field_24329_24330 T@FrameType) Bool)
(declare-fun InsidePredicate_25303_23321 (T@Field_25303_25304 T@FrameType T@Field_23321_23322 T@FrameType) Bool)
(declare-fun InsidePredicate_25303_22401 (T@Field_25303_25304 T@FrameType T@Field_22401_22402 T@FrameType) Bool)
(declare-fun InsidePredicate_25303_21983 (T@Field_25303_25304 T@FrameType T@Field_21983_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_25303_15699 (T@Field_25303_25304 T@FrameType T@Field_9444_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_24329_25303 (T@Field_24329_24330 T@FrameType T@Field_25303_25304 T@FrameType) Bool)
(declare-fun InsidePredicate_24329_23321 (T@Field_24329_24330 T@FrameType T@Field_23321_23322 T@FrameType) Bool)
(declare-fun InsidePredicate_24329_22401 (T@Field_24329_24330 T@FrameType T@Field_22401_22402 T@FrameType) Bool)
(declare-fun InsidePredicate_24329_21983 (T@Field_24329_24330 T@FrameType T@Field_21983_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_24329_15699 (T@Field_24329_24330 T@FrameType T@Field_9444_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_23321_25303 (T@Field_23321_23322 T@FrameType T@Field_25303_25304 T@FrameType) Bool)
(declare-fun InsidePredicate_23321_24329 (T@Field_23321_23322 T@FrameType T@Field_24329_24330 T@FrameType) Bool)
(declare-fun InsidePredicate_23321_22401 (T@Field_23321_23322 T@FrameType T@Field_22401_22402 T@FrameType) Bool)
(declare-fun InsidePredicate_23321_21983 (T@Field_23321_23322 T@FrameType T@Field_21983_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_23321_15699 (T@Field_23321_23322 T@FrameType T@Field_9444_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_22401_25303 (T@Field_22401_22402 T@FrameType T@Field_25303_25304 T@FrameType) Bool)
(declare-fun InsidePredicate_22401_24329 (T@Field_22401_22402 T@FrameType T@Field_24329_24330 T@FrameType) Bool)
(declare-fun InsidePredicate_22401_23321 (T@Field_22401_22402 T@FrameType T@Field_23321_23322 T@FrameType) Bool)
(declare-fun InsidePredicate_22401_21983 (T@Field_22401_22402 T@FrameType T@Field_21983_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_22401_15699 (T@Field_22401_22402 T@FrameType T@Field_9444_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_21983_25303 (T@Field_21983_21984 T@FrameType T@Field_25303_25304 T@FrameType) Bool)
(declare-fun InsidePredicate_21983_24329 (T@Field_21983_21984 T@FrameType T@Field_24329_24330 T@FrameType) Bool)
(declare-fun InsidePredicate_21983_23321 (T@Field_21983_21984 T@FrameType T@Field_23321_23322 T@FrameType) Bool)
(declare-fun InsidePredicate_21983_22401 (T@Field_21983_21984 T@FrameType T@Field_22401_22402 T@FrameType) Bool)
(declare-fun InsidePredicate_21983_15699 (T@Field_21983_21984 T@FrameType T@Field_9444_21984 T@FrameType) Bool)
(declare-fun InsidePredicate_15699_25303 (T@Field_9444_21984 T@FrameType T@Field_25303_25304 T@FrameType) Bool)
(declare-fun InsidePredicate_15699_24329 (T@Field_9444_21984 T@FrameType T@Field_24329_24330 T@FrameType) Bool)
(declare-fun InsidePredicate_15699_23321 (T@Field_9444_21984 T@FrameType T@Field_23321_23322 T@FrameType) Bool)
(declare-fun InsidePredicate_15699_22401 (T@Field_9444_21984 T@FrameType T@Field_22401_22402 T@FrameType) Bool)
(declare-fun InsidePredicate_15699_21983 (T@Field_9444_21984 T@FrameType T@Field_21983_21984 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_15639) (Heap1 T@PolymorphicMapType_15639) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15639) (Mask T@PolymorphicMapType_15660) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15639) (Heap1@@0 T@PolymorphicMapType_15639) (Heap2 T@PolymorphicMapType_15639) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_25316_25321) ) (!  (not (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_25303_25304) ) (!  (not (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25303_3427) ) (!  (not (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_25303_15713) ) (!  (not (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_25303_53) ) (!  (not (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_24342_24347) ) (!  (not (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_24329_24330) ) (!  (not (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_24329_3427) ) (!  (not (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_24329_15713) ) (!  (not (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_24329_53) ) (!  (not (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_23334_23339) ) (!  (not (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_23321_23322) ) (!  (not (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_23321_3427) ) (!  (not (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_23321_15713) ) (!  (not (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_23321_53) ) (!  (not (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_22414_22419) ) (!  (not (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_22401_22402) ) (!  (not (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_22401_3427) ) (!  (not (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22401_15713) ) (!  (not (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_22401_53) ) (!  (not (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_21995_22000) ) (!  (not (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_21983_21984) ) (!  (not (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_21983_3427) ) (!  (not (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_21983_15713) ) (!  (not (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_21983_53) ) (!  (not (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_9444_22000) ) (!  (not (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_9444_21984) ) (!  (not (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_21907_3427) ) (!  (not (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_15712_15713) ) (!  (not (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_15699_53) ) (!  (not (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((r_1 T@Ref) (i Int) ) (! (IsPredicateField_9511_9512 (p4 r_1 i))
 :qid |stdinbpl.575:15|
 :skolemid |96|
 :pattern ( (p4 r_1 i))
)))
(assert (forall ((r_1@@0 T@Ref) (i@@0 Int) ) (! (IsPredicateField_9536_9537 (p5 r_1@@0 i@@0))
 :qid |stdinbpl.629:15|
 :skolemid |102|
 :pattern ( (p5 r_1@@0 i@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15639) (r_1@@1 T@Ref) (i@@1 Int) ) (! (|p4#everUsed_9511| (p4 r_1@@1 i@@1))
 :qid |stdinbpl.594:15|
 :skolemid |100|
 :pattern ( (|p4#trigger_9511| Heap@@0 (p4 r_1@@1 i@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15639) (r_1@@2 T@Ref) (i@@2 Int) ) (! (|p5#everUsed_9536| (p5 r_1@@2 i@@2))
 :qid |stdinbpl.648:15|
 :skolemid |106|
 :pattern ( (|p5#trigger_9536| Heap@@1 (p5 r_1@@2 i@@2)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.315:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (IsPredicateField_9448_9449 p1))
(assert (= (getPredWandId_9448_9449 p1) 0))
(assert (forall ((r_1@@3 T@Ref) ) (! (IsPredicateField_9461_9462 (p2 r_1@@3))
 :qid |stdinbpl.462:15|
 :skolemid |84|
 :pattern ( (p2 r_1@@3))
)))
(assert (forall ((r_1@@4 T@Ref) ) (! (IsPredicateField_9486_9487 (p3_1 r_1@@4))
 :qid |stdinbpl.516:15|
 :skolemid |90|
 :pattern ( (p3_1 r_1@@4))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15639) (r_1@@5 T@Ref) ) (! (|p2#everUsed_9461| (p2 r_1@@5))
 :qid |stdinbpl.481:15|
 :skolemid |88|
 :pattern ( (|p2#trigger_9461| Heap@@2 (p2 r_1@@5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15639) (r_1@@6 T@Ref) ) (! (|p3#everUsed_9486| (p3_1 r_1@@6))
 :qid |stdinbpl.535:15|
 :skolemid |94|
 :pattern ( (|p3#trigger_9486| Heap@@3 (p3_1 r_1@@6)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_9565| (|Set#Union_9565| a@@0 b@@0) b@@0) (|Set#Union_9565| a@@0 b@@0))
 :qid |stdinbpl.267:18|
 :skolemid |38|
 :pattern ( (|Set#Union_9565| (|Set#Union_9565| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_9565| (|Set#Intersection_9565| a@@1 b@@1) b@@1) (|Set#Intersection_9565| a@@1 b@@1))
 :qid |stdinbpl.271:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_9565| (|Set#Intersection_9565| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_9565| r) o) (= r o))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_9565| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_9565| (|Set#Union_9565| a@@2 b@@2)) (|Set#Card_9565| (|Set#Intersection_9565| a@@2 b@@2))) (+ (|Set#Card_9565| a@@2) (|Set#Card_9565| b@@2)))
 :qid |stdinbpl.275:18|
 :skolemid |42|
 :pattern ( (|Set#Card_9565| (|Set#Union_9565| a@@2 b@@2)))
 :pattern ( (|Set#Card_9565| (|Set#Intersection_9565| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.318:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15639) (ExhaleHeap T@PolymorphicMapType_15639) (Mask@@0 T@PolymorphicMapType_15660) (pm_f_6 T@Field_25303_25304) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_25303_21984 Mask@@0 null pm_f_6) (IsPredicateField_9536_9537 pm_f_6)) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@4) null (PredicateMaskField_9536 pm_f_6)) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap) null (PredicateMaskField_9536 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_9536_9537 pm_f_6) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap) null (PredicateMaskField_9536 pm_f_6)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15639) (ExhaleHeap@@0 T@PolymorphicMapType_15639) (Mask@@1 T@PolymorphicMapType_15660) (pm_f_6@@0 T@Field_24329_24330) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_24329_21984 Mask@@1 null pm_f_6@@0) (IsPredicateField_9511_9512 pm_f_6@@0)) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@5) null (PredicateMaskField_9511 pm_f_6@@0)) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@0) null (PredicateMaskField_9511 pm_f_6@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_9511_9512 pm_f_6@@0) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@0) null (PredicateMaskField_9511 pm_f_6@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15639) (ExhaleHeap@@1 T@PolymorphicMapType_15639) (Mask@@2 T@PolymorphicMapType_15660) (pm_f_6@@1 T@Field_23321_23322) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_23321_21984 Mask@@2 null pm_f_6@@1) (IsPredicateField_9486_9487 pm_f_6@@1)) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@6) null (PredicateMaskField_9486 pm_f_6@@1)) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@1) null (PredicateMaskField_9486 pm_f_6@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsPredicateField_9486_9487 pm_f_6@@1) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@1) null (PredicateMaskField_9486 pm_f_6@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15639) (ExhaleHeap@@2 T@PolymorphicMapType_15639) (Mask@@3 T@PolymorphicMapType_15660) (pm_f_6@@2 T@Field_22401_22402) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_22401_21984 Mask@@3 null pm_f_6@@2) (IsPredicateField_9461_9462 pm_f_6@@2)) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@7) null (PredicateMaskField_9461 pm_f_6@@2)) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@2) null (PredicateMaskField_9461 pm_f_6@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsPredicateField_9461_9462 pm_f_6@@2) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@2) null (PredicateMaskField_9461 pm_f_6@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15639) (ExhaleHeap@@3 T@PolymorphicMapType_15639) (Mask@@4 T@PolymorphicMapType_15660) (pm_f_6@@3 T@Field_21983_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_21983_21984 Mask@@4 null pm_f_6@@3) (IsPredicateField_9448_9449 pm_f_6@@3)) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@8) null (PredicateMaskField_9448 pm_f_6@@3)) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@3) null (PredicateMaskField_9448 pm_f_6@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_9448_9449 pm_f_6@@3) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@3) null (PredicateMaskField_9448 pm_f_6@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15639) (ExhaleHeap@@4 T@PolymorphicMapType_15639) (Mask@@5 T@PolymorphicMapType_15660) (pm_f_6@@4 T@Field_9444_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9444_21984 Mask@@5 null pm_f_6@@4) (IsPredicateField_9444_51579 pm_f_6@@4)) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@9) null (PredicateMaskField_9444 pm_f_6@@4)) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@4) null (PredicateMaskField_9444 pm_f_6@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsPredicateField_9444_51579 pm_f_6@@4) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@4) null (PredicateMaskField_9444 pm_f_6@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15639) (ExhaleHeap@@5 T@PolymorphicMapType_15639) (Mask@@6 T@PolymorphicMapType_15660) (pm_f_6@@5 T@Field_25303_25304) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_25303_21984 Mask@@6 null pm_f_6@@5) (IsWandField_25303_63320 pm_f_6@@5)) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@10) null (WandMaskField_25303 pm_f_6@@5)) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@5) null (WandMaskField_25303 pm_f_6@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_25303_63320 pm_f_6@@5) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@5) null (WandMaskField_25303 pm_f_6@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15639) (ExhaleHeap@@6 T@PolymorphicMapType_15639) (Mask@@7 T@PolymorphicMapType_15660) (pm_f_6@@6 T@Field_24329_24330) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_24329_21984 Mask@@7 null pm_f_6@@6) (IsWandField_24329_62963 pm_f_6@@6)) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@11) null (WandMaskField_24329 pm_f_6@@6)) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@6) null (WandMaskField_24329 pm_f_6@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_24329_62963 pm_f_6@@6) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@6) null (WandMaskField_24329 pm_f_6@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15639) (ExhaleHeap@@7 T@PolymorphicMapType_15639) (Mask@@8 T@PolymorphicMapType_15660) (pm_f_6@@7 T@Field_23321_23322) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_23321_21984 Mask@@8 null pm_f_6@@7) (IsWandField_23321_62606 pm_f_6@@7)) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@12) null (WandMaskField_23321 pm_f_6@@7)) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@7) null (WandMaskField_23321 pm_f_6@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (IsWandField_23321_62606 pm_f_6@@7) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@7) null (WandMaskField_23321 pm_f_6@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15639) (ExhaleHeap@@8 T@PolymorphicMapType_15639) (Mask@@9 T@PolymorphicMapType_15660) (pm_f_6@@8 T@Field_22401_22402) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_22401_21984 Mask@@9 null pm_f_6@@8) (IsWandField_22401_62249 pm_f_6@@8)) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@13) null (WandMaskField_22401 pm_f_6@@8)) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@8) null (WandMaskField_22401 pm_f_6@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (IsWandField_22401_62249 pm_f_6@@8) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@8) null (WandMaskField_22401 pm_f_6@@8)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15639) (ExhaleHeap@@9 T@PolymorphicMapType_15639) (Mask@@10 T@PolymorphicMapType_15660) (pm_f_6@@9 T@Field_21983_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_21983_21984 Mask@@10 null pm_f_6@@9) (IsWandField_21983_61892 pm_f_6@@9)) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@14) null (WandMaskField_21983 pm_f_6@@9)) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@9) null (WandMaskField_21983 pm_f_6@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (IsWandField_21983_61892 pm_f_6@@9) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@9) null (WandMaskField_21983 pm_f_6@@9)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15639) (ExhaleHeap@@10 T@PolymorphicMapType_15639) (Mask@@11 T@PolymorphicMapType_15660) (pm_f_6@@10 T@Field_9444_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_9444_21984 Mask@@11 null pm_f_6@@10) (IsWandField_9444_61535 pm_f_6@@10)) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@15) null (WandMaskField_9444 pm_f_6@@10)) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@10) null (WandMaskField_9444 pm_f_6@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11) (IsWandField_9444_61535 pm_f_6@@10) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@10) null (WandMaskField_9444 pm_f_6@@10)))
)))
(assert (forall ((r_1@@7 T@Ref) (i@@3 Int) (r2 T@Ref) (i2 Int) ) (!  (=> (= (p4 r_1@@7 i@@3) (p4 r2 i2)) (and (= r_1@@7 r2) (= i@@3 i2)))
 :qid |stdinbpl.585:15|
 :skolemid |98|
 :pattern ( (p4 r_1@@7 i@@3) (p4 r2 i2))
)))
(assert (forall ((r_1@@8 T@Ref) (i@@4 Int) (r2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|p4#sm| r_1@@8 i@@4) (|p4#sm| r2@@0 i2@@0)) (and (= r_1@@8 r2@@0) (= i@@4 i2@@0)))
 :qid |stdinbpl.589:15|
 :skolemid |99|
 :pattern ( (|p4#sm| r_1@@8 i@@4) (|p4#sm| r2@@0 i2@@0))
)))
(assert (forall ((r_1@@9 T@Ref) (i@@5 Int) (r2@@1 T@Ref) (i2@@1 Int) ) (!  (=> (= (p5 r_1@@9 i@@5) (p5 r2@@1 i2@@1)) (and (= r_1@@9 r2@@1) (= i@@5 i2@@1)))
 :qid |stdinbpl.639:15|
 :skolemid |104|
 :pattern ( (p5 r_1@@9 i@@5) (p5 r2@@1 i2@@1))
)))
(assert (forall ((r_1@@10 T@Ref) (i@@6 Int) (r2@@2 T@Ref) (i2@@2 Int) ) (!  (=> (= (|p5#sm| r_1@@10 i@@6) (|p5#sm| r2@@2 i2@@2)) (and (= r_1@@10 r2@@2) (= i@@6 i2@@2)))
 :qid |stdinbpl.643:15|
 :skolemid |105|
 :pattern ( (|p5#sm| r_1@@10 i@@6) (|p5#sm| r2@@2 i2@@2))
)))
(assert (forall ((r_1@@11 T@Ref) (r2@@3 T@Ref) ) (!  (=> (= (p2 r_1@@11) (p2 r2@@3)) (= r_1@@11 r2@@3))
 :qid |stdinbpl.472:15|
 :skolemid |86|
 :pattern ( (p2 r_1@@11) (p2 r2@@3))
)))
(assert (forall ((r_1@@12 T@Ref) (r2@@4 T@Ref) ) (!  (=> (= (|p2#sm| r_1@@12) (|p2#sm| r2@@4)) (= r_1@@12 r2@@4))
 :qid |stdinbpl.476:15|
 :skolemid |87|
 :pattern ( (|p2#sm| r_1@@12) (|p2#sm| r2@@4))
)))
(assert (forall ((r_1@@13 T@Ref) (r2@@5 T@Ref) ) (!  (=> (= (p3_1 r_1@@13) (p3_1 r2@@5)) (= r_1@@13 r2@@5))
 :qid |stdinbpl.526:15|
 :skolemid |92|
 :pattern ( (p3_1 r_1@@13) (p3_1 r2@@5))
)))
(assert (forall ((r_1@@14 T@Ref) (r2@@6 T@Ref) ) (!  (=> (= (|p3#sm| r_1@@14) (|p3#sm| r2@@6)) (= r_1@@14 r2@@6))
 :qid |stdinbpl.530:15|
 :skolemid |93|
 :pattern ( (|p3#sm| r_1@@14) (|p3#sm| r2@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15639) (ExhaleHeap@@11 T@PolymorphicMapType_15639) (Mask@@12 T@PolymorphicMapType_15660) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@16) o_17 $allocated) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@11) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@11) o_17 $allocated))
)))
(assert (forall ((p T@Field_25303_25304) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25303_25303 p v_1 p w))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25303_25303 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24329_24330) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_24329_24329 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24329_24329 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_23321_23322) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_23321_23321 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23321_23321 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_22401_22402) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_22401_22401 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22401_22401 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_21983_21984) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_21983_21983 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21983_21983 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_9444_21984) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_15699_15699 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15699_15699 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert  (not (IsPredicateField_9444_3427 f_7)))
(assert  (not (IsWandField_9444_3427 f_7)))
(assert  (not (IsPredicateField_9444_3427 g)))
(assert  (not (IsWandField_9444_3427 g)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15639) (ExhaleHeap@@12 T@PolymorphicMapType_15639) (Mask@@13 T@PolymorphicMapType_15660) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@17 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15660) (o_2@@29 T@Ref) (f_4@@29 T@Field_25316_25321) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| Mask@@14) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_25303_83856 f_4@@29))) (not (IsWandField_25303_83872 f_4@@29))) (<= (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| Mask@@14) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| Mask@@14) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15660) (o_2@@30 T@Ref) (f_4@@30 T@Field_25303_15713) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| Mask@@15) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_25303_15713 f_4@@30))) (not (IsWandField_25303_15713 f_4@@30))) (<= (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| Mask@@15) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| Mask@@15) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15660) (o_2@@31 T@Ref) (f_4@@31 T@Field_25303_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| Mask@@16) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_25303_53 f_4@@31))) (not (IsWandField_25303_53 f_4@@31))) (<= (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| Mask@@16) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| Mask@@16) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15660) (o_2@@32 T@Ref) (f_4@@32 T@Field_25303_25304) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| Mask@@17) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9536_9537 f_4@@32))) (not (IsWandField_25303_63320 f_4@@32))) (<= (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| Mask@@17) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| Mask@@17) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15660) (o_2@@33 T@Ref) (f_4@@33 T@Field_25303_3427) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| Mask@@18) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_25303_3427 f_4@@33))) (not (IsWandField_25303_3427 f_4@@33))) (<= (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| Mask@@18) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| Mask@@18) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15660) (o_2@@34 T@Ref) (f_4@@34 T@Field_24342_24347) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| Mask@@19) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_24329_83025 f_4@@34))) (not (IsWandField_24329_83041 f_4@@34))) (<= (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| Mask@@19) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| Mask@@19) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15660) (o_2@@35 T@Ref) (f_4@@35 T@Field_24329_15713) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| Mask@@20) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_24329_15713 f_4@@35))) (not (IsWandField_24329_15713 f_4@@35))) (<= (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| Mask@@20) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| Mask@@20) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15660) (o_2@@36 T@Ref) (f_4@@36 T@Field_24329_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| Mask@@21) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_24329_53 f_4@@36))) (not (IsWandField_24329_53 f_4@@36))) (<= (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| Mask@@21) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| Mask@@21) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15660) (o_2@@37 T@Ref) (f_4@@37 T@Field_24329_24330) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| Mask@@22) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_9511_9512 f_4@@37))) (not (IsWandField_24329_62963 f_4@@37))) (<= (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| Mask@@22) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| Mask@@22) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15660) (o_2@@38 T@Ref) (f_4@@38 T@Field_24329_3427) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| Mask@@23) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_24329_3427 f_4@@38))) (not (IsWandField_24329_3427 f_4@@38))) (<= (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| Mask@@23) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| Mask@@23) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15660) (o_2@@39 T@Ref) (f_4@@39 T@Field_23334_23339) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| Mask@@24) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_23321_82194 f_4@@39))) (not (IsWandField_23321_82210 f_4@@39))) (<= (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| Mask@@24) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| Mask@@24) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15660) (o_2@@40 T@Ref) (f_4@@40 T@Field_23321_15713) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| Mask@@25) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_23321_15713 f_4@@40))) (not (IsWandField_23321_15713 f_4@@40))) (<= (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| Mask@@25) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| Mask@@25) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15660) (o_2@@41 T@Ref) (f_4@@41 T@Field_23321_53) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| Mask@@26) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_23321_53 f_4@@41))) (not (IsWandField_23321_53 f_4@@41))) (<= (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| Mask@@26) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| Mask@@26) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15660) (o_2@@42 T@Ref) (f_4@@42 T@Field_23321_23322) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| Mask@@27) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_9486_9487 f_4@@42))) (not (IsWandField_23321_62606 f_4@@42))) (<= (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| Mask@@27) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| Mask@@27) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15660) (o_2@@43 T@Ref) (f_4@@43 T@Field_23321_3427) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| Mask@@28) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_23321_3427 f_4@@43))) (not (IsWandField_23321_3427 f_4@@43))) (<= (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| Mask@@28) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| Mask@@28) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15660) (o_2@@44 T@Ref) (f_4@@44 T@Field_21995_22000) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| Mask@@29) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_21983_81363 f_4@@44))) (not (IsWandField_21983_81379 f_4@@44))) (<= (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| Mask@@29) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| Mask@@29) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_15660) (o_2@@45 T@Ref) (f_4@@45 T@Field_21983_15713) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| Mask@@30) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_21983_15713 f_4@@45))) (not (IsWandField_21983_15713 f_4@@45))) (<= (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| Mask@@30) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| Mask@@30) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_15660) (o_2@@46 T@Ref) (f_4@@46 T@Field_21983_53) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| Mask@@31) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_21983_53 f_4@@46))) (not (IsWandField_21983_53 f_4@@46))) (<= (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| Mask@@31) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| Mask@@31) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_15660) (o_2@@47 T@Ref) (f_4@@47 T@Field_21983_21984) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| Mask@@32) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_9448_9449 f_4@@47))) (not (IsWandField_21983_61892 f_4@@47))) (<= (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| Mask@@32) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| Mask@@32) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_15660) (o_2@@48 T@Ref) (f_4@@48 T@Field_21983_3427) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| Mask@@33) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_21983_3427 f_4@@48))) (not (IsWandField_21983_3427 f_4@@48))) (<= (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| Mask@@33) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| Mask@@33) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_15660) (o_2@@49 T@Ref) (f_4@@49 T@Field_22414_22419) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| Mask@@34) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_9461_80532 f_4@@49))) (not (IsWandField_9461_80548 f_4@@49))) (<= (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| Mask@@34) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| Mask@@34) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_15660) (o_2@@50 T@Ref) (f_4@@50 T@Field_22401_15713) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| Mask@@35) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_9461_15713 f_4@@50))) (not (IsWandField_9461_15713 f_4@@50))) (<= (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| Mask@@35) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| Mask@@35) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_15660) (o_2@@51 T@Ref) (f_4@@51 T@Field_22401_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| Mask@@36) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_9461_53 f_4@@51))) (not (IsWandField_9461_53 f_4@@51))) (<= (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| Mask@@36) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| Mask@@36) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_15660) (o_2@@52 T@Ref) (f_4@@52 T@Field_22401_22402) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| Mask@@37) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_9461_9462 f_4@@52))) (not (IsWandField_22401_62249 f_4@@52))) (<= (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| Mask@@37) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| Mask@@37) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_15660) (o_2@@53 T@Ref) (f_4@@53 T@Field_22401_3427) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| Mask@@38) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_9461_3427 f_4@@53))) (not (IsWandField_9461_3427 f_4@@53))) (<= (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| Mask@@38) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| Mask@@38) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_15660) (o_2@@54 T@Ref) (f_4@@54 T@Field_9444_22000) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| Mask@@39) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_9444_79701 f_4@@54))) (not (IsWandField_9444_79717 f_4@@54))) (<= (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| Mask@@39) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| Mask@@39) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_15660) (o_2@@55 T@Ref) (f_4@@55 T@Field_15712_15713) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| Mask@@40) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_9444_15713 f_4@@55))) (not (IsWandField_9444_15713 f_4@@55))) (<= (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| Mask@@40) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| Mask@@40) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_15660) (o_2@@56 T@Ref) (f_4@@56 T@Field_15699_53) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| Mask@@41) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_9444_53 f_4@@56))) (not (IsWandField_9444_53 f_4@@56))) (<= (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| Mask@@41) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| Mask@@41) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_15660) (o_2@@57 T@Ref) (f_4@@57 T@Field_9444_21984) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| Mask@@42) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_9444_51579 f_4@@57))) (not (IsWandField_9444_61535 f_4@@57))) (<= (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| Mask@@42) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| Mask@@42) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_15660) (o_2@@58 T@Ref) (f_4@@58 T@Field_21907_3427) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| Mask@@43) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_9444_3427 f_4@@58))) (not (IsWandField_9444_3427 f_4@@58))) (<= (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| Mask@@43) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| Mask@@43) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_15660) (o_2@@59 T@Ref) (f_4@@59 T@Field_25316_25321) ) (! (= (HasDirectPerm_25303_51291 Mask@@44 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| Mask@@44) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25303_51291 Mask@@44 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_15660) (o_2@@60 T@Ref) (f_4@@60 T@Field_25303_25304) ) (! (= (HasDirectPerm_25303_21984 Mask@@45 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| Mask@@45) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25303_21984 Mask@@45 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_15660) (o_2@@61 T@Ref) (f_4@@61 T@Field_25303_15713) ) (! (= (HasDirectPerm_25303_15713 Mask@@46 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| Mask@@46) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25303_15713 Mask@@46 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_15660) (o_2@@62 T@Ref) (f_4@@62 T@Field_25303_53) ) (! (= (HasDirectPerm_25303_53 Mask@@47 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| Mask@@47) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25303_53 Mask@@47 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_15660) (o_2@@63 T@Ref) (f_4@@63 T@Field_25303_3427) ) (! (= (HasDirectPerm_25303_3427 Mask@@48 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| Mask@@48) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25303_3427 Mask@@48 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_15660) (o_2@@64 T@Ref) (f_4@@64 T@Field_24342_24347) ) (! (= (HasDirectPerm_24329_50113 Mask@@49 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| Mask@@49) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24329_50113 Mask@@49 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_15660) (o_2@@65 T@Ref) (f_4@@65 T@Field_24329_24330) ) (! (= (HasDirectPerm_24329_21984 Mask@@50 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| Mask@@50) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24329_21984 Mask@@50 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_15660) (o_2@@66 T@Ref) (f_4@@66 T@Field_24329_15713) ) (! (= (HasDirectPerm_24329_15713 Mask@@51 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| Mask@@51) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24329_15713 Mask@@51 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_15660) (o_2@@67 T@Ref) (f_4@@67 T@Field_24329_53) ) (! (= (HasDirectPerm_24329_53 Mask@@52 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| Mask@@52) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24329_53 Mask@@52 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_15660) (o_2@@68 T@Ref) (f_4@@68 T@Field_24329_3427) ) (! (= (HasDirectPerm_24329_3427 Mask@@53 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| Mask@@53) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24329_3427 Mask@@53 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_15660) (o_2@@69 T@Ref) (f_4@@69 T@Field_23334_23339) ) (! (= (HasDirectPerm_23321_48935 Mask@@54 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| Mask@@54) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23321_48935 Mask@@54 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_15660) (o_2@@70 T@Ref) (f_4@@70 T@Field_23321_23322) ) (! (= (HasDirectPerm_23321_21984 Mask@@55 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| Mask@@55) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23321_21984 Mask@@55 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_15660) (o_2@@71 T@Ref) (f_4@@71 T@Field_23321_15713) ) (! (= (HasDirectPerm_23321_15713 Mask@@56 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| Mask@@56) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23321_15713 Mask@@56 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_15660) (o_2@@72 T@Ref) (f_4@@72 T@Field_23321_53) ) (! (= (HasDirectPerm_23321_53 Mask@@57 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| Mask@@57) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23321_53 Mask@@57 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_15660) (o_2@@73 T@Ref) (f_4@@73 T@Field_23321_3427) ) (! (= (HasDirectPerm_23321_3427 Mask@@58 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| Mask@@58) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23321_3427 Mask@@58 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_15660) (o_2@@74 T@Ref) (f_4@@74 T@Field_22414_22419) ) (! (= (HasDirectPerm_22401_47757 Mask@@59 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| Mask@@59) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22401_47757 Mask@@59 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_15660) (o_2@@75 T@Ref) (f_4@@75 T@Field_22401_22402) ) (! (= (HasDirectPerm_22401_21984 Mask@@60 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| Mask@@60) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22401_21984 Mask@@60 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_15660) (o_2@@76 T@Ref) (f_4@@76 T@Field_22401_15713) ) (! (= (HasDirectPerm_22401_15713 Mask@@61 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| Mask@@61) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22401_15713 Mask@@61 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_15660) (o_2@@77 T@Ref) (f_4@@77 T@Field_22401_53) ) (! (= (HasDirectPerm_22401_53 Mask@@62 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| Mask@@62) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22401_53 Mask@@62 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_15660) (o_2@@78 T@Ref) (f_4@@78 T@Field_22401_3427) ) (! (= (HasDirectPerm_22401_3427 Mask@@63 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| Mask@@63) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22401_3427 Mask@@63 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_15660) (o_2@@79 T@Ref) (f_4@@79 T@Field_21995_22000) ) (! (= (HasDirectPerm_21983_46596 Mask@@64 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| Mask@@64) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21983_46596 Mask@@64 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_15660) (o_2@@80 T@Ref) (f_4@@80 T@Field_21983_21984) ) (! (= (HasDirectPerm_21983_21984 Mask@@65 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| Mask@@65) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21983_21984 Mask@@65 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_15660) (o_2@@81 T@Ref) (f_4@@81 T@Field_21983_15713) ) (! (= (HasDirectPerm_21983_15713 Mask@@66 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| Mask@@66) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21983_15713 Mask@@66 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_15660) (o_2@@82 T@Ref) (f_4@@82 T@Field_21983_53) ) (! (= (HasDirectPerm_21983_53 Mask@@67 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| Mask@@67) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21983_53 Mask@@67 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_15660) (o_2@@83 T@Ref) (f_4@@83 T@Field_21983_3427) ) (! (= (HasDirectPerm_21983_3427 Mask@@68 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| Mask@@68) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21983_3427 Mask@@68 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_15660) (o_2@@84 T@Ref) (f_4@@84 T@Field_9444_22000) ) (! (= (HasDirectPerm_9444_45418 Mask@@69 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| Mask@@69) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9444_45418 Mask@@69 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_15660) (o_2@@85 T@Ref) (f_4@@85 T@Field_9444_21984) ) (! (= (HasDirectPerm_9444_21984 Mask@@70 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| Mask@@70) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9444_21984 Mask@@70 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_15660) (o_2@@86 T@Ref) (f_4@@86 T@Field_15712_15713) ) (! (= (HasDirectPerm_9444_15713 Mask@@71 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| Mask@@71) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9444_15713 Mask@@71 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_15660) (o_2@@87 T@Ref) (f_4@@87 T@Field_15699_53) ) (! (= (HasDirectPerm_9444_53 Mask@@72 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| Mask@@72) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9444_53 Mask@@72 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_15660) (o_2@@88 T@Ref) (f_4@@88 T@Field_21907_3427) ) (! (= (HasDirectPerm_9444_3427 Mask@@73 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| Mask@@73) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9444_3427 Mask@@73 o_2@@88 f_4@@88))
)))
(assert (forall ((p@@5 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@5 f_6) (ite (> p@@5 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.201:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@5 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15639) (ExhaleHeap@@13 T@PolymorphicMapType_15639) (Mask@@74 T@PolymorphicMapType_15660) (o_17@@0 T@Ref) (f_25 T@Field_25316_25321) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@74) (=> (HasDirectPerm_25303_51291 Mask@@74 o_17@@0 f_25) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@18) o_17@@0 f_25) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@13) o_17@@0 f_25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@74) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@13) o_17@@0 f_25))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15639) (ExhaleHeap@@14 T@PolymorphicMapType_15639) (Mask@@75 T@PolymorphicMapType_15660) (o_17@@1 T@Ref) (f_25@@0 T@Field_25303_25304) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@75) (=> (HasDirectPerm_25303_21984 Mask@@75 o_17@@1 f_25@@0) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@19) o_17@@1 f_25@@0) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@14) o_17@@1 f_25@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@75) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@14) o_17@@1 f_25@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15639) (ExhaleHeap@@15 T@PolymorphicMapType_15639) (Mask@@76 T@PolymorphicMapType_15660) (o_17@@2 T@Ref) (f_25@@1 T@Field_25303_15713) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@76) (=> (HasDirectPerm_25303_15713 Mask@@76 o_17@@2 f_25@@1) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@20) o_17@@2 f_25@@1) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@15) o_17@@2 f_25@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@76) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@15) o_17@@2 f_25@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15639) (ExhaleHeap@@16 T@PolymorphicMapType_15639) (Mask@@77 T@PolymorphicMapType_15660) (o_17@@3 T@Ref) (f_25@@2 T@Field_25303_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@77) (=> (HasDirectPerm_25303_53 Mask@@77 o_17@@3 f_25@@2) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@21) o_17@@3 f_25@@2) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@16) o_17@@3 f_25@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@77) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@16) o_17@@3 f_25@@2))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15639) (ExhaleHeap@@17 T@PolymorphicMapType_15639) (Mask@@78 T@PolymorphicMapType_15660) (o_17@@4 T@Ref) (f_25@@3 T@Field_25303_3427) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@78) (=> (HasDirectPerm_25303_3427 Mask@@78 o_17@@4 f_25@@3) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@22) o_17@@4 f_25@@3) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@17) o_17@@4 f_25@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@78) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@17) o_17@@4 f_25@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15639) (ExhaleHeap@@18 T@PolymorphicMapType_15639) (Mask@@79 T@PolymorphicMapType_15660) (o_17@@5 T@Ref) (f_25@@4 T@Field_24342_24347) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@79) (=> (HasDirectPerm_24329_50113 Mask@@79 o_17@@5 f_25@@4) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@23) o_17@@5 f_25@@4) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@18) o_17@@5 f_25@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@79) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@18) o_17@@5 f_25@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15639) (ExhaleHeap@@19 T@PolymorphicMapType_15639) (Mask@@80 T@PolymorphicMapType_15660) (o_17@@6 T@Ref) (f_25@@5 T@Field_24329_24330) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@80) (=> (HasDirectPerm_24329_21984 Mask@@80 o_17@@6 f_25@@5) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@24) o_17@@6 f_25@@5) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@19) o_17@@6 f_25@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@80) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@19) o_17@@6 f_25@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15639) (ExhaleHeap@@20 T@PolymorphicMapType_15639) (Mask@@81 T@PolymorphicMapType_15660) (o_17@@7 T@Ref) (f_25@@6 T@Field_24329_15713) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@81) (=> (HasDirectPerm_24329_15713 Mask@@81 o_17@@7 f_25@@6) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@25) o_17@@7 f_25@@6) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@20) o_17@@7 f_25@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@81) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@20) o_17@@7 f_25@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15639) (ExhaleHeap@@21 T@PolymorphicMapType_15639) (Mask@@82 T@PolymorphicMapType_15660) (o_17@@8 T@Ref) (f_25@@7 T@Field_24329_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@82) (=> (HasDirectPerm_24329_53 Mask@@82 o_17@@8 f_25@@7) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@26) o_17@@8 f_25@@7) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@21) o_17@@8 f_25@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@82) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@21) o_17@@8 f_25@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15639) (ExhaleHeap@@22 T@PolymorphicMapType_15639) (Mask@@83 T@PolymorphicMapType_15660) (o_17@@9 T@Ref) (f_25@@8 T@Field_24329_3427) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@83) (=> (HasDirectPerm_24329_3427 Mask@@83 o_17@@9 f_25@@8) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@27) o_17@@9 f_25@@8) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@22) o_17@@9 f_25@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@83) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@22) o_17@@9 f_25@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15639) (ExhaleHeap@@23 T@PolymorphicMapType_15639) (Mask@@84 T@PolymorphicMapType_15660) (o_17@@10 T@Ref) (f_25@@9 T@Field_23334_23339) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@84) (=> (HasDirectPerm_23321_48935 Mask@@84 o_17@@10 f_25@@9) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@28) o_17@@10 f_25@@9) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@23) o_17@@10 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@84) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@23) o_17@@10 f_25@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15639) (ExhaleHeap@@24 T@PolymorphicMapType_15639) (Mask@@85 T@PolymorphicMapType_15660) (o_17@@11 T@Ref) (f_25@@10 T@Field_23321_23322) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@85) (=> (HasDirectPerm_23321_21984 Mask@@85 o_17@@11 f_25@@10) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@29) o_17@@11 f_25@@10) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@24) o_17@@11 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@85) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@24) o_17@@11 f_25@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15639) (ExhaleHeap@@25 T@PolymorphicMapType_15639) (Mask@@86 T@PolymorphicMapType_15660) (o_17@@12 T@Ref) (f_25@@11 T@Field_23321_15713) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@86) (=> (HasDirectPerm_23321_15713 Mask@@86 o_17@@12 f_25@@11) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@30) o_17@@12 f_25@@11) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@25) o_17@@12 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@86) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@25) o_17@@12 f_25@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15639) (ExhaleHeap@@26 T@PolymorphicMapType_15639) (Mask@@87 T@PolymorphicMapType_15660) (o_17@@13 T@Ref) (f_25@@12 T@Field_23321_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@87) (=> (HasDirectPerm_23321_53 Mask@@87 o_17@@13 f_25@@12) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@31) o_17@@13 f_25@@12) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@26) o_17@@13 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@87) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@26) o_17@@13 f_25@@12))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15639) (ExhaleHeap@@27 T@PolymorphicMapType_15639) (Mask@@88 T@PolymorphicMapType_15660) (o_17@@14 T@Ref) (f_25@@13 T@Field_23321_3427) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@88) (=> (HasDirectPerm_23321_3427 Mask@@88 o_17@@14 f_25@@13) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@32) o_17@@14 f_25@@13) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@27) o_17@@14 f_25@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@88) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@27) o_17@@14 f_25@@13))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15639) (ExhaleHeap@@28 T@PolymorphicMapType_15639) (Mask@@89 T@PolymorphicMapType_15660) (o_17@@15 T@Ref) (f_25@@14 T@Field_22414_22419) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@89) (=> (HasDirectPerm_22401_47757 Mask@@89 o_17@@15 f_25@@14) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@33) o_17@@15 f_25@@14) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@28) o_17@@15 f_25@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@89) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@28) o_17@@15 f_25@@14))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_15639) (ExhaleHeap@@29 T@PolymorphicMapType_15639) (Mask@@90 T@PolymorphicMapType_15660) (o_17@@16 T@Ref) (f_25@@15 T@Field_22401_22402) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@90) (=> (HasDirectPerm_22401_21984 Mask@@90 o_17@@16 f_25@@15) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@34) o_17@@16 f_25@@15) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@29) o_17@@16 f_25@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@90) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@29) o_17@@16 f_25@@15))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15639) (ExhaleHeap@@30 T@PolymorphicMapType_15639) (Mask@@91 T@PolymorphicMapType_15660) (o_17@@17 T@Ref) (f_25@@16 T@Field_22401_15713) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@91) (=> (HasDirectPerm_22401_15713 Mask@@91 o_17@@17 f_25@@16) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@35) o_17@@17 f_25@@16) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@30) o_17@@17 f_25@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@91) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@30) o_17@@17 f_25@@16))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15639) (ExhaleHeap@@31 T@PolymorphicMapType_15639) (Mask@@92 T@PolymorphicMapType_15660) (o_17@@18 T@Ref) (f_25@@17 T@Field_22401_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@92) (=> (HasDirectPerm_22401_53 Mask@@92 o_17@@18 f_25@@17) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@36) o_17@@18 f_25@@17) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@31) o_17@@18 f_25@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@92) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@31) o_17@@18 f_25@@17))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_15639) (ExhaleHeap@@32 T@PolymorphicMapType_15639) (Mask@@93 T@PolymorphicMapType_15660) (o_17@@19 T@Ref) (f_25@@18 T@Field_22401_3427) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@93) (=> (HasDirectPerm_22401_3427 Mask@@93 o_17@@19 f_25@@18) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@37) o_17@@19 f_25@@18) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@32) o_17@@19 f_25@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@93) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@32) o_17@@19 f_25@@18))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_15639) (ExhaleHeap@@33 T@PolymorphicMapType_15639) (Mask@@94 T@PolymorphicMapType_15660) (o_17@@20 T@Ref) (f_25@@19 T@Field_21995_22000) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@94) (=> (HasDirectPerm_21983_46596 Mask@@94 o_17@@20 f_25@@19) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@38) o_17@@20 f_25@@19) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@33) o_17@@20 f_25@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@94) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@33) o_17@@20 f_25@@19))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_15639) (ExhaleHeap@@34 T@PolymorphicMapType_15639) (Mask@@95 T@PolymorphicMapType_15660) (o_17@@21 T@Ref) (f_25@@20 T@Field_21983_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@95) (=> (HasDirectPerm_21983_21984 Mask@@95 o_17@@21 f_25@@20) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@39) o_17@@21 f_25@@20) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@34) o_17@@21 f_25@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@95) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@34) o_17@@21 f_25@@20))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_15639) (ExhaleHeap@@35 T@PolymorphicMapType_15639) (Mask@@96 T@PolymorphicMapType_15660) (o_17@@22 T@Ref) (f_25@@21 T@Field_21983_15713) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@96) (=> (HasDirectPerm_21983_15713 Mask@@96 o_17@@22 f_25@@21) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@40) o_17@@22 f_25@@21) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@35) o_17@@22 f_25@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@96) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@35) o_17@@22 f_25@@21))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_15639) (ExhaleHeap@@36 T@PolymorphicMapType_15639) (Mask@@97 T@PolymorphicMapType_15660) (o_17@@23 T@Ref) (f_25@@22 T@Field_21983_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@36 Mask@@97) (=> (HasDirectPerm_21983_53 Mask@@97 o_17@@23 f_25@@22) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@41) o_17@@23 f_25@@22) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@36) o_17@@23 f_25@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@36 Mask@@97) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@36) o_17@@23 f_25@@22))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_15639) (ExhaleHeap@@37 T@PolymorphicMapType_15639) (Mask@@98 T@PolymorphicMapType_15660) (o_17@@24 T@Ref) (f_25@@23 T@Field_21983_3427) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@37 Mask@@98) (=> (HasDirectPerm_21983_3427 Mask@@98 o_17@@24 f_25@@23) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@42) o_17@@24 f_25@@23) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@37) o_17@@24 f_25@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@37 Mask@@98) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@37) o_17@@24 f_25@@23))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_15639) (ExhaleHeap@@38 T@PolymorphicMapType_15639) (Mask@@99 T@PolymorphicMapType_15660) (o_17@@25 T@Ref) (f_25@@24 T@Field_9444_22000) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@38 Mask@@99) (=> (HasDirectPerm_9444_45418 Mask@@99 o_17@@25 f_25@@24) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@43) o_17@@25 f_25@@24) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@38) o_17@@25 f_25@@24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@38 Mask@@99) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@38) o_17@@25 f_25@@24))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_15639) (ExhaleHeap@@39 T@PolymorphicMapType_15639) (Mask@@100 T@PolymorphicMapType_15660) (o_17@@26 T@Ref) (f_25@@25 T@Field_9444_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@39 Mask@@100) (=> (HasDirectPerm_9444_21984 Mask@@100 o_17@@26 f_25@@25) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@44) o_17@@26 f_25@@25) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@39) o_17@@26 f_25@@25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@39 Mask@@100) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@39) o_17@@26 f_25@@25))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_15639) (ExhaleHeap@@40 T@PolymorphicMapType_15639) (Mask@@101 T@PolymorphicMapType_15660) (o_17@@27 T@Ref) (f_25@@26 T@Field_15712_15713) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@40 Mask@@101) (=> (HasDirectPerm_9444_15713 Mask@@101 o_17@@27 f_25@@26) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@45) o_17@@27 f_25@@26) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@40) o_17@@27 f_25@@26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@40 Mask@@101) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@40) o_17@@27 f_25@@26))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_15639) (ExhaleHeap@@41 T@PolymorphicMapType_15639) (Mask@@102 T@PolymorphicMapType_15660) (o_17@@28 T@Ref) (f_25@@27 T@Field_15699_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@41 Mask@@102) (=> (HasDirectPerm_9444_53 Mask@@102 o_17@@28 f_25@@27) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@46) o_17@@28 f_25@@27) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@41) o_17@@28 f_25@@27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@41 Mask@@102) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@41) o_17@@28 f_25@@27))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_15639) (ExhaleHeap@@42 T@PolymorphicMapType_15639) (Mask@@103 T@PolymorphicMapType_15660) (o_17@@29 T@Ref) (f_25@@28 T@Field_21907_3427) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@42 Mask@@103) (=> (HasDirectPerm_9444_3427 Mask@@103 o_17@@29 f_25@@28) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@47) o_17@@29 f_25@@28) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@42) o_17@@29 f_25@@28))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@42 Mask@@103) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@42) o_17@@29 f_25@@28))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_25316_25321) ) (! (= (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_25303_15713) ) (! (= (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_25303_53) ) (! (= (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_25303_25304) ) (! (= (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_25303_3427) ) (! (= (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_24342_24347) ) (! (= (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_24329_15713) ) (! (= (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_24329_53) ) (! (= (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_24329_24330) ) (! (= (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_24329_3427) ) (! (= (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((o_2@@99 T@Ref) (f_4@@99 T@Field_23334_23339) ) (! (= (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| ZeroMask) o_2@@99 f_4@@99) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| ZeroMask) o_2@@99 f_4@@99))
)))
(assert (forall ((o_2@@100 T@Ref) (f_4@@100 T@Field_23321_15713) ) (! (= (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| ZeroMask) o_2@@100 f_4@@100) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| ZeroMask) o_2@@100 f_4@@100))
)))
(assert (forall ((o_2@@101 T@Ref) (f_4@@101 T@Field_23321_53) ) (! (= (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| ZeroMask) o_2@@101 f_4@@101) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| ZeroMask) o_2@@101 f_4@@101))
)))
(assert (forall ((o_2@@102 T@Ref) (f_4@@102 T@Field_23321_23322) ) (! (= (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| ZeroMask) o_2@@102 f_4@@102) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| ZeroMask) o_2@@102 f_4@@102))
)))
(assert (forall ((o_2@@103 T@Ref) (f_4@@103 T@Field_23321_3427) ) (! (= (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| ZeroMask) o_2@@103 f_4@@103) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| ZeroMask) o_2@@103 f_4@@103))
)))
(assert (forall ((o_2@@104 T@Ref) (f_4@@104 T@Field_21995_22000) ) (! (= (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| ZeroMask) o_2@@104 f_4@@104) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| ZeroMask) o_2@@104 f_4@@104))
)))
(assert (forall ((o_2@@105 T@Ref) (f_4@@105 T@Field_21983_15713) ) (! (= (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| ZeroMask) o_2@@105 f_4@@105) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| ZeroMask) o_2@@105 f_4@@105))
)))
(assert (forall ((o_2@@106 T@Ref) (f_4@@106 T@Field_21983_53) ) (! (= (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| ZeroMask) o_2@@106 f_4@@106) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| ZeroMask) o_2@@106 f_4@@106))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_21983_21984) ) (! (= (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_21983_3427) ) (! (= (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_22414_22419) ) (! (= (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_22401_15713) ) (! (= (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_22401_53) ) (! (= (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_22401_22402) ) (! (= (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_22401_3427) ) (! (= (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_9444_22000) ) (! (= (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_15712_15713) ) (! (= (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_15699_53) ) (! (= (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_9444_21984) ) (! (= (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_21907_3427) ) (! (= (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_15639) (ExhaleHeap@@43 T@PolymorphicMapType_15639) (Mask@@104 T@PolymorphicMapType_15660) (pm_f_6@@11 T@Field_25303_25304) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@43 Mask@@104) (=> (and (HasDirectPerm_25303_21984 Mask@@104 null pm_f_6@@11) (IsPredicateField_9536_9537 pm_f_6@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6 T@Ref) (f_25@@29 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6 f_25@@29) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@48) o2_6 f_25@@29) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6 f_25@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6 f_25@@29))
)) (forall ((o2_6@@0 T@Ref) (f_25@@30 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@0 f_25@@30) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@48) o2_6@@0 f_25@@30) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@0 f_25@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@0 f_25@@30))
))) (forall ((o2_6@@1 T@Ref) (f_25@@31 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@1 f_25@@31) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@48) o2_6@@1 f_25@@31) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@1 f_25@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@1 f_25@@31))
))) (forall ((o2_6@@2 T@Ref) (f_25@@32 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@2 f_25@@32) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@48) o2_6@@2 f_25@@32) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@2 f_25@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@2 f_25@@32))
))) (forall ((o2_6@@3 T@Ref) (f_25@@33 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@3 f_25@@33) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@48) o2_6@@3 f_25@@33) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@3 f_25@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@3 f_25@@33))
))) (forall ((o2_6@@4 T@Ref) (f_25@@34 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@4 f_25@@34) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@48) o2_6@@4 f_25@@34) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@4 f_25@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@4 f_25@@34))
))) (forall ((o2_6@@5 T@Ref) (f_25@@35 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@5 f_25@@35) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@48) o2_6@@5 f_25@@35) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@5 f_25@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@5 f_25@@35))
))) (forall ((o2_6@@6 T@Ref) (f_25@@36 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@6 f_25@@36) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@48) o2_6@@6 f_25@@36) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@6 f_25@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@6 f_25@@36))
))) (forall ((o2_6@@7 T@Ref) (f_25@@37 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@7 f_25@@37) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@48) o2_6@@7 f_25@@37) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@7 f_25@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@7 f_25@@37))
))) (forall ((o2_6@@8 T@Ref) (f_25@@38 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@8 f_25@@38) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@48) o2_6@@8 f_25@@38) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@8 f_25@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@8 f_25@@38))
))) (forall ((o2_6@@9 T@Ref) (f_25@@39 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@9 f_25@@39) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@48) o2_6@@9 f_25@@39) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@9 f_25@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@9 f_25@@39))
))) (forall ((o2_6@@10 T@Ref) (f_25@@40 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@10 f_25@@40) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@48) o2_6@@10 f_25@@40) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@10 f_25@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@10 f_25@@40))
))) (forall ((o2_6@@11 T@Ref) (f_25@@41 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@11 f_25@@41) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@48) o2_6@@11 f_25@@41) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@11 f_25@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@11 f_25@@41))
))) (forall ((o2_6@@12 T@Ref) (f_25@@42 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@12 f_25@@42) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@48) o2_6@@12 f_25@@42) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@12 f_25@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@12 f_25@@42))
))) (forall ((o2_6@@13 T@Ref) (f_25@@43 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@13 f_25@@43) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@48) o2_6@@13 f_25@@43) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@13 f_25@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@13 f_25@@43))
))) (forall ((o2_6@@14 T@Ref) (f_25@@44 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@14 f_25@@44) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@48) o2_6@@14 f_25@@44) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@14 f_25@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@14 f_25@@44))
))) (forall ((o2_6@@15 T@Ref) (f_25@@45 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@15 f_25@@45) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@48) o2_6@@15 f_25@@45) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@15 f_25@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@15 f_25@@45))
))) (forall ((o2_6@@16 T@Ref) (f_25@@46 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@16 f_25@@46) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@48) o2_6@@16 f_25@@46) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@16 f_25@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@16 f_25@@46))
))) (forall ((o2_6@@17 T@Ref) (f_25@@47 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@17 f_25@@47) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@48) o2_6@@17 f_25@@47) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@17 f_25@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@17 f_25@@47))
))) (forall ((o2_6@@18 T@Ref) (f_25@@48 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@18 f_25@@48) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@48) o2_6@@18 f_25@@48) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@18 f_25@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@18 f_25@@48))
))) (forall ((o2_6@@19 T@Ref) (f_25@@49 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@19 f_25@@49) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@48) o2_6@@19 f_25@@49) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@19 f_25@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@19 f_25@@49))
))) (forall ((o2_6@@20 T@Ref) (f_25@@50 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@20 f_25@@50) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@48) o2_6@@20 f_25@@50) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@20 f_25@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@20 f_25@@50))
))) (forall ((o2_6@@21 T@Ref) (f_25@@51 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@21 f_25@@51) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@48) o2_6@@21 f_25@@51) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@21 f_25@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@21 f_25@@51))
))) (forall ((o2_6@@22 T@Ref) (f_25@@52 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@22 f_25@@52) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@48) o2_6@@22 f_25@@52) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@22 f_25@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@22 f_25@@52))
))) (forall ((o2_6@@23 T@Ref) (f_25@@53 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@23 f_25@@53) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@48) o2_6@@23 f_25@@53) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@23 f_25@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@23 f_25@@53))
))) (forall ((o2_6@@24 T@Ref) (f_25@@54 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@24 f_25@@54) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@48) o2_6@@24 f_25@@54) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@24 f_25@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@24 f_25@@54))
))) (forall ((o2_6@@25 T@Ref) (f_25@@55 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@25 f_25@@55) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@48) o2_6@@25 f_25@@55) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@25 f_25@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@25 f_25@@55))
))) (forall ((o2_6@@26 T@Ref) (f_25@@56 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@26 f_25@@56) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@48) o2_6@@26 f_25@@56) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@26 f_25@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@26 f_25@@56))
))) (forall ((o2_6@@27 T@Ref) (f_25@@57 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@27 f_25@@57) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@48) o2_6@@27 f_25@@57) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@27 f_25@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@27 f_25@@57))
))) (forall ((o2_6@@28 T@Ref) (f_25@@58 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) null (PredicateMaskField_9536 pm_f_6@@11))) o2_6@@28 f_25@@58) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@48) o2_6@@28 f_25@@58) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@28 f_25@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@43) o2_6@@28 f_25@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@43 Mask@@104) (IsPredicateField_9536_9537 pm_f_6@@11))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_15639) (ExhaleHeap@@44 T@PolymorphicMapType_15639) (Mask@@105 T@PolymorphicMapType_15660) (pm_f_6@@12 T@Field_24329_24330) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@44 Mask@@105) (=> (and (HasDirectPerm_24329_21984 Mask@@105 null pm_f_6@@12) (IsPredicateField_9511_9512 pm_f_6@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@29 T@Ref) (f_25@@59 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@29 f_25@@59) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@49) o2_6@@29 f_25@@59) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@29 f_25@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@29 f_25@@59))
)) (forall ((o2_6@@30 T@Ref) (f_25@@60 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@30 f_25@@60) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@49) o2_6@@30 f_25@@60) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@30 f_25@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@30 f_25@@60))
))) (forall ((o2_6@@31 T@Ref) (f_25@@61 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@31 f_25@@61) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@49) o2_6@@31 f_25@@61) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@31 f_25@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@31 f_25@@61))
))) (forall ((o2_6@@32 T@Ref) (f_25@@62 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@32 f_25@@62) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@49) o2_6@@32 f_25@@62) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@32 f_25@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@32 f_25@@62))
))) (forall ((o2_6@@33 T@Ref) (f_25@@63 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@33 f_25@@63) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@49) o2_6@@33 f_25@@63) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@33 f_25@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@33 f_25@@63))
))) (forall ((o2_6@@34 T@Ref) (f_25@@64 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@34 f_25@@64) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@49) o2_6@@34 f_25@@64) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@34 f_25@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@34 f_25@@64))
))) (forall ((o2_6@@35 T@Ref) (f_25@@65 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@35 f_25@@65) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@49) o2_6@@35 f_25@@65) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@35 f_25@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@35 f_25@@65))
))) (forall ((o2_6@@36 T@Ref) (f_25@@66 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@36 f_25@@66) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@49) o2_6@@36 f_25@@66) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@36 f_25@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@36 f_25@@66))
))) (forall ((o2_6@@37 T@Ref) (f_25@@67 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@37 f_25@@67) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@49) o2_6@@37 f_25@@67) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@37 f_25@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@37 f_25@@67))
))) (forall ((o2_6@@38 T@Ref) (f_25@@68 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@38 f_25@@68) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@49) o2_6@@38 f_25@@68) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@38 f_25@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@38 f_25@@68))
))) (forall ((o2_6@@39 T@Ref) (f_25@@69 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@39 f_25@@69) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@49) o2_6@@39 f_25@@69) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@39 f_25@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@39 f_25@@69))
))) (forall ((o2_6@@40 T@Ref) (f_25@@70 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@40 f_25@@70) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@49) o2_6@@40 f_25@@70) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@40 f_25@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@40 f_25@@70))
))) (forall ((o2_6@@41 T@Ref) (f_25@@71 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@41 f_25@@71) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@49) o2_6@@41 f_25@@71) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@41 f_25@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@41 f_25@@71))
))) (forall ((o2_6@@42 T@Ref) (f_25@@72 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@42 f_25@@72) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@49) o2_6@@42 f_25@@72) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@42 f_25@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@42 f_25@@72))
))) (forall ((o2_6@@43 T@Ref) (f_25@@73 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@43 f_25@@73) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@49) o2_6@@43 f_25@@73) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@43 f_25@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@43 f_25@@73))
))) (forall ((o2_6@@44 T@Ref) (f_25@@74 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@44 f_25@@74) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@49) o2_6@@44 f_25@@74) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@44 f_25@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@44 f_25@@74))
))) (forall ((o2_6@@45 T@Ref) (f_25@@75 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@45 f_25@@75) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@49) o2_6@@45 f_25@@75) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@45 f_25@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@45 f_25@@75))
))) (forall ((o2_6@@46 T@Ref) (f_25@@76 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@46 f_25@@76) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@49) o2_6@@46 f_25@@76) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@46 f_25@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@46 f_25@@76))
))) (forall ((o2_6@@47 T@Ref) (f_25@@77 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@47 f_25@@77) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@49) o2_6@@47 f_25@@77) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@47 f_25@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@47 f_25@@77))
))) (forall ((o2_6@@48 T@Ref) (f_25@@78 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@48 f_25@@78) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@49) o2_6@@48 f_25@@78) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@48 f_25@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@48 f_25@@78))
))) (forall ((o2_6@@49 T@Ref) (f_25@@79 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@49 f_25@@79) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@49) o2_6@@49 f_25@@79) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@49 f_25@@79)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@49 f_25@@79))
))) (forall ((o2_6@@50 T@Ref) (f_25@@80 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@50 f_25@@80) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@49) o2_6@@50 f_25@@80) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@50 f_25@@80)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@50 f_25@@80))
))) (forall ((o2_6@@51 T@Ref) (f_25@@81 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@51 f_25@@81) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@49) o2_6@@51 f_25@@81) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@51 f_25@@81)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@51 f_25@@81))
))) (forall ((o2_6@@52 T@Ref) (f_25@@82 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@52 f_25@@82) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@49) o2_6@@52 f_25@@82) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@52 f_25@@82)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@52 f_25@@82))
))) (forall ((o2_6@@53 T@Ref) (f_25@@83 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@53 f_25@@83) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) o2_6@@53 f_25@@83) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@53 f_25@@83)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@53 f_25@@83))
))) (forall ((o2_6@@54 T@Ref) (f_25@@84 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@54 f_25@@84) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@49) o2_6@@54 f_25@@84) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@54 f_25@@84)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@54 f_25@@84))
))) (forall ((o2_6@@55 T@Ref) (f_25@@85 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@55 f_25@@85) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@49) o2_6@@55 f_25@@85) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@55 f_25@@85)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@55 f_25@@85))
))) (forall ((o2_6@@56 T@Ref) (f_25@@86 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@56 f_25@@86) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@49) o2_6@@56 f_25@@86) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@56 f_25@@86)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@56 f_25@@86))
))) (forall ((o2_6@@57 T@Ref) (f_25@@87 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@57 f_25@@87) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@49) o2_6@@57 f_25@@87) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@57 f_25@@87)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@57 f_25@@87))
))) (forall ((o2_6@@58 T@Ref) (f_25@@88 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@49) null (PredicateMaskField_9511 pm_f_6@@12))) o2_6@@58 f_25@@88) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@49) o2_6@@58 f_25@@88) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@58 f_25@@88)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@44) o2_6@@58 f_25@@88))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@44 Mask@@105) (IsPredicateField_9511_9512 pm_f_6@@12))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_15639) (ExhaleHeap@@45 T@PolymorphicMapType_15639) (Mask@@106 T@PolymorphicMapType_15660) (pm_f_6@@13 T@Field_23321_23322) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@45 Mask@@106) (=> (and (HasDirectPerm_23321_21984 Mask@@106 null pm_f_6@@13) (IsPredicateField_9486_9487 pm_f_6@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@59 T@Ref) (f_25@@89 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@59 f_25@@89) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@50) o2_6@@59 f_25@@89) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@59 f_25@@89)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@59 f_25@@89))
)) (forall ((o2_6@@60 T@Ref) (f_25@@90 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@60 f_25@@90) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@50) o2_6@@60 f_25@@90) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@60 f_25@@90)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@60 f_25@@90))
))) (forall ((o2_6@@61 T@Ref) (f_25@@91 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@61 f_25@@91) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@50) o2_6@@61 f_25@@91) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@61 f_25@@91)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@61 f_25@@91))
))) (forall ((o2_6@@62 T@Ref) (f_25@@92 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@62 f_25@@92) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@50) o2_6@@62 f_25@@92) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@62 f_25@@92)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@62 f_25@@92))
))) (forall ((o2_6@@63 T@Ref) (f_25@@93 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@63 f_25@@93) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@50) o2_6@@63 f_25@@93) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@63 f_25@@93)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@63 f_25@@93))
))) (forall ((o2_6@@64 T@Ref) (f_25@@94 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@64 f_25@@94) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@50) o2_6@@64 f_25@@94) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@64 f_25@@94)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@64 f_25@@94))
))) (forall ((o2_6@@65 T@Ref) (f_25@@95 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@65 f_25@@95) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@50) o2_6@@65 f_25@@95) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@65 f_25@@95)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@65 f_25@@95))
))) (forall ((o2_6@@66 T@Ref) (f_25@@96 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@66 f_25@@96) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@50) o2_6@@66 f_25@@96) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@66 f_25@@96)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@66 f_25@@96))
))) (forall ((o2_6@@67 T@Ref) (f_25@@97 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@67 f_25@@97) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@50) o2_6@@67 f_25@@97) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@67 f_25@@97)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@67 f_25@@97))
))) (forall ((o2_6@@68 T@Ref) (f_25@@98 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@68 f_25@@98) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@50) o2_6@@68 f_25@@98) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@68 f_25@@98)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@68 f_25@@98))
))) (forall ((o2_6@@69 T@Ref) (f_25@@99 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@69 f_25@@99) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@50) o2_6@@69 f_25@@99) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@69 f_25@@99)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@69 f_25@@99))
))) (forall ((o2_6@@70 T@Ref) (f_25@@100 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@70 f_25@@100) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@50) o2_6@@70 f_25@@100) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@70 f_25@@100)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@70 f_25@@100))
))) (forall ((o2_6@@71 T@Ref) (f_25@@101 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@71 f_25@@101) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@50) o2_6@@71 f_25@@101) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@71 f_25@@101)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@71 f_25@@101))
))) (forall ((o2_6@@72 T@Ref) (f_25@@102 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@72 f_25@@102) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@50) o2_6@@72 f_25@@102) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@72 f_25@@102)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@72 f_25@@102))
))) (forall ((o2_6@@73 T@Ref) (f_25@@103 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@73 f_25@@103) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@50) o2_6@@73 f_25@@103) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@73 f_25@@103)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@73 f_25@@103))
))) (forall ((o2_6@@74 T@Ref) (f_25@@104 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@74 f_25@@104) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@50) o2_6@@74 f_25@@104) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@74 f_25@@104)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@74 f_25@@104))
))) (forall ((o2_6@@75 T@Ref) (f_25@@105 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@75 f_25@@105) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@50) o2_6@@75 f_25@@105) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@75 f_25@@105)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@75 f_25@@105))
))) (forall ((o2_6@@76 T@Ref) (f_25@@106 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@76 f_25@@106) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@50) o2_6@@76 f_25@@106) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@76 f_25@@106)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@76 f_25@@106))
))) (forall ((o2_6@@77 T@Ref) (f_25@@107 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@77 f_25@@107) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@50) o2_6@@77 f_25@@107) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@77 f_25@@107)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@77 f_25@@107))
))) (forall ((o2_6@@78 T@Ref) (f_25@@108 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@78 f_25@@108) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) o2_6@@78 f_25@@108) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@78 f_25@@108)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@78 f_25@@108))
))) (forall ((o2_6@@79 T@Ref) (f_25@@109 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@79 f_25@@109) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@50) o2_6@@79 f_25@@109) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@79 f_25@@109)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@79 f_25@@109))
))) (forall ((o2_6@@80 T@Ref) (f_25@@110 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@80 f_25@@110) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@50) o2_6@@80 f_25@@110) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@80 f_25@@110)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@80 f_25@@110))
))) (forall ((o2_6@@81 T@Ref) (f_25@@111 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@81 f_25@@111) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@50) o2_6@@81 f_25@@111) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@81 f_25@@111)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@81 f_25@@111))
))) (forall ((o2_6@@82 T@Ref) (f_25@@112 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@82 f_25@@112) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@50) o2_6@@82 f_25@@112) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@82 f_25@@112)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@82 f_25@@112))
))) (forall ((o2_6@@83 T@Ref) (f_25@@113 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@83 f_25@@113) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@50) o2_6@@83 f_25@@113) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@83 f_25@@113)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@83 f_25@@113))
))) (forall ((o2_6@@84 T@Ref) (f_25@@114 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@84 f_25@@114) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@50) o2_6@@84 f_25@@114) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@84 f_25@@114)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@84 f_25@@114))
))) (forall ((o2_6@@85 T@Ref) (f_25@@115 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@85 f_25@@115) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@50) o2_6@@85 f_25@@115) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@85 f_25@@115)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@85 f_25@@115))
))) (forall ((o2_6@@86 T@Ref) (f_25@@116 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@86 f_25@@116) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@50) o2_6@@86 f_25@@116) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@86 f_25@@116)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@86 f_25@@116))
))) (forall ((o2_6@@87 T@Ref) (f_25@@117 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@87 f_25@@117) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@50) o2_6@@87 f_25@@117) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@87 f_25@@117)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@87 f_25@@117))
))) (forall ((o2_6@@88 T@Ref) (f_25@@118 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@50) null (PredicateMaskField_9486 pm_f_6@@13))) o2_6@@88 f_25@@118) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@50) o2_6@@88 f_25@@118) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@88 f_25@@118)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@45) o2_6@@88 f_25@@118))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@45 Mask@@106) (IsPredicateField_9486_9487 pm_f_6@@13))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_15639) (ExhaleHeap@@46 T@PolymorphicMapType_15639) (Mask@@107 T@PolymorphicMapType_15660) (pm_f_6@@14 T@Field_22401_22402) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@46 Mask@@107) (=> (and (HasDirectPerm_22401_21984 Mask@@107 null pm_f_6@@14) (IsPredicateField_9461_9462 pm_f_6@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@89 T@Ref) (f_25@@119 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@89 f_25@@119) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@51) o2_6@@89 f_25@@119) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@89 f_25@@119)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@89 f_25@@119))
)) (forall ((o2_6@@90 T@Ref) (f_25@@120 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@90 f_25@@120) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@51) o2_6@@90 f_25@@120) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@90 f_25@@120)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@90 f_25@@120))
))) (forall ((o2_6@@91 T@Ref) (f_25@@121 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@91 f_25@@121) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@51) o2_6@@91 f_25@@121) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@91 f_25@@121)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@91 f_25@@121))
))) (forall ((o2_6@@92 T@Ref) (f_25@@122 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@92 f_25@@122) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@51) o2_6@@92 f_25@@122) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@92 f_25@@122)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@92 f_25@@122))
))) (forall ((o2_6@@93 T@Ref) (f_25@@123 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@93 f_25@@123) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@51) o2_6@@93 f_25@@123) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@93 f_25@@123)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@93 f_25@@123))
))) (forall ((o2_6@@94 T@Ref) (f_25@@124 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@94 f_25@@124) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@51) o2_6@@94 f_25@@124) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@94 f_25@@124)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@94 f_25@@124))
))) (forall ((o2_6@@95 T@Ref) (f_25@@125 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@95 f_25@@125) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@51) o2_6@@95 f_25@@125) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@95 f_25@@125)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@95 f_25@@125))
))) (forall ((o2_6@@96 T@Ref) (f_25@@126 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@96 f_25@@126) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@51) o2_6@@96 f_25@@126) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@96 f_25@@126)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@96 f_25@@126))
))) (forall ((o2_6@@97 T@Ref) (f_25@@127 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@97 f_25@@127) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@51) o2_6@@97 f_25@@127) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@97 f_25@@127)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@97 f_25@@127))
))) (forall ((o2_6@@98 T@Ref) (f_25@@128 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@98 f_25@@128) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@51) o2_6@@98 f_25@@128) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@98 f_25@@128)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@98 f_25@@128))
))) (forall ((o2_6@@99 T@Ref) (f_25@@129 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@99 f_25@@129) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@51) o2_6@@99 f_25@@129) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@99 f_25@@129)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@99 f_25@@129))
))) (forall ((o2_6@@100 T@Ref) (f_25@@130 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@100 f_25@@130) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@51) o2_6@@100 f_25@@130) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@100 f_25@@130)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@100 f_25@@130))
))) (forall ((o2_6@@101 T@Ref) (f_25@@131 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@101 f_25@@131) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@51) o2_6@@101 f_25@@131) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@101 f_25@@131)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@101 f_25@@131))
))) (forall ((o2_6@@102 T@Ref) (f_25@@132 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@102 f_25@@132) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@51) o2_6@@102 f_25@@132) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@102 f_25@@132)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@102 f_25@@132))
))) (forall ((o2_6@@103 T@Ref) (f_25@@133 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@103 f_25@@133) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) o2_6@@103 f_25@@133) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@103 f_25@@133)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@103 f_25@@133))
))) (forall ((o2_6@@104 T@Ref) (f_25@@134 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@104 f_25@@134) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@51) o2_6@@104 f_25@@134) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@104 f_25@@134)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@104 f_25@@134))
))) (forall ((o2_6@@105 T@Ref) (f_25@@135 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@105 f_25@@135) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@51) o2_6@@105 f_25@@135) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@105 f_25@@135)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@105 f_25@@135))
))) (forall ((o2_6@@106 T@Ref) (f_25@@136 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@106 f_25@@136) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@51) o2_6@@106 f_25@@136) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@106 f_25@@136)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@106 f_25@@136))
))) (forall ((o2_6@@107 T@Ref) (f_25@@137 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@107 f_25@@137) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@51) o2_6@@107 f_25@@137) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@107 f_25@@137)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@107 f_25@@137))
))) (forall ((o2_6@@108 T@Ref) (f_25@@138 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@108 f_25@@138) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@51) o2_6@@108 f_25@@138) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@108 f_25@@138)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@108 f_25@@138))
))) (forall ((o2_6@@109 T@Ref) (f_25@@139 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@109 f_25@@139) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@51) o2_6@@109 f_25@@139) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@109 f_25@@139)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@109 f_25@@139))
))) (forall ((o2_6@@110 T@Ref) (f_25@@140 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@110 f_25@@140) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@51) o2_6@@110 f_25@@140) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@110 f_25@@140)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@110 f_25@@140))
))) (forall ((o2_6@@111 T@Ref) (f_25@@141 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@111 f_25@@141) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@51) o2_6@@111 f_25@@141) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@111 f_25@@141)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@111 f_25@@141))
))) (forall ((o2_6@@112 T@Ref) (f_25@@142 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@112 f_25@@142) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@51) o2_6@@112 f_25@@142) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@112 f_25@@142)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@112 f_25@@142))
))) (forall ((o2_6@@113 T@Ref) (f_25@@143 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@113 f_25@@143) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@51) o2_6@@113 f_25@@143) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@113 f_25@@143)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@113 f_25@@143))
))) (forall ((o2_6@@114 T@Ref) (f_25@@144 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@114 f_25@@144) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@51) o2_6@@114 f_25@@144) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@114 f_25@@144)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@114 f_25@@144))
))) (forall ((o2_6@@115 T@Ref) (f_25@@145 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@115 f_25@@145) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@51) o2_6@@115 f_25@@145) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@115 f_25@@145)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@115 f_25@@145))
))) (forall ((o2_6@@116 T@Ref) (f_25@@146 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@116 f_25@@146) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@51) o2_6@@116 f_25@@146) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@116 f_25@@146)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@116 f_25@@146))
))) (forall ((o2_6@@117 T@Ref) (f_25@@147 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@117 f_25@@147) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@51) o2_6@@117 f_25@@147) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@117 f_25@@147)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@117 f_25@@147))
))) (forall ((o2_6@@118 T@Ref) (f_25@@148 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@51) null (PredicateMaskField_9461 pm_f_6@@14))) o2_6@@118 f_25@@148) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@51) o2_6@@118 f_25@@148) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@118 f_25@@148)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@46) o2_6@@118 f_25@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@46 Mask@@107) (IsPredicateField_9461_9462 pm_f_6@@14))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_15639) (ExhaleHeap@@47 T@PolymorphicMapType_15639) (Mask@@108 T@PolymorphicMapType_15660) (pm_f_6@@15 T@Field_21983_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@47 Mask@@108) (=> (and (HasDirectPerm_21983_21984 Mask@@108 null pm_f_6@@15) (IsPredicateField_9448_9449 pm_f_6@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@119 T@Ref) (f_25@@149 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@119 f_25@@149) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@52) o2_6@@119 f_25@@149) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@119 f_25@@149)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@119 f_25@@149))
)) (forall ((o2_6@@120 T@Ref) (f_25@@150 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@120 f_25@@150) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@52) o2_6@@120 f_25@@150) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@120 f_25@@150)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@120 f_25@@150))
))) (forall ((o2_6@@121 T@Ref) (f_25@@151 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@121 f_25@@151) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@52) o2_6@@121 f_25@@151) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@121 f_25@@151)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@121 f_25@@151))
))) (forall ((o2_6@@122 T@Ref) (f_25@@152 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@122 f_25@@152) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@52) o2_6@@122 f_25@@152) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@122 f_25@@152)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@122 f_25@@152))
))) (forall ((o2_6@@123 T@Ref) (f_25@@153 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@123 f_25@@153) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@52) o2_6@@123 f_25@@153) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@123 f_25@@153)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@123 f_25@@153))
))) (forall ((o2_6@@124 T@Ref) (f_25@@154 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@124 f_25@@154) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@52) o2_6@@124 f_25@@154) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@124 f_25@@154)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@124 f_25@@154))
))) (forall ((o2_6@@125 T@Ref) (f_25@@155 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@125 f_25@@155) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@52) o2_6@@125 f_25@@155) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@125 f_25@@155)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@125 f_25@@155))
))) (forall ((o2_6@@126 T@Ref) (f_25@@156 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@126 f_25@@156) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@52) o2_6@@126 f_25@@156) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@126 f_25@@156)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@126 f_25@@156))
))) (forall ((o2_6@@127 T@Ref) (f_25@@157 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@127 f_25@@157) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@52) o2_6@@127 f_25@@157) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@127 f_25@@157)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@127 f_25@@157))
))) (forall ((o2_6@@128 T@Ref) (f_25@@158 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@128 f_25@@158) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) o2_6@@128 f_25@@158) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@128 f_25@@158)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@128 f_25@@158))
))) (forall ((o2_6@@129 T@Ref) (f_25@@159 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@129 f_25@@159) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@52) o2_6@@129 f_25@@159) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@129 f_25@@159)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@129 f_25@@159))
))) (forall ((o2_6@@130 T@Ref) (f_25@@160 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@130 f_25@@160) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@52) o2_6@@130 f_25@@160) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@130 f_25@@160)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@130 f_25@@160))
))) (forall ((o2_6@@131 T@Ref) (f_25@@161 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@131 f_25@@161) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@52) o2_6@@131 f_25@@161) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@131 f_25@@161)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@131 f_25@@161))
))) (forall ((o2_6@@132 T@Ref) (f_25@@162 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@132 f_25@@162) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@52) o2_6@@132 f_25@@162) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@132 f_25@@162)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@132 f_25@@162))
))) (forall ((o2_6@@133 T@Ref) (f_25@@163 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@133 f_25@@163) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@52) o2_6@@133 f_25@@163) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@133 f_25@@163)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@133 f_25@@163))
))) (forall ((o2_6@@134 T@Ref) (f_25@@164 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@134 f_25@@164) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@52) o2_6@@134 f_25@@164) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@134 f_25@@164)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@134 f_25@@164))
))) (forall ((o2_6@@135 T@Ref) (f_25@@165 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@135 f_25@@165) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@52) o2_6@@135 f_25@@165) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@135 f_25@@165)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@135 f_25@@165))
))) (forall ((o2_6@@136 T@Ref) (f_25@@166 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@136 f_25@@166) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@52) o2_6@@136 f_25@@166) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@136 f_25@@166)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@136 f_25@@166))
))) (forall ((o2_6@@137 T@Ref) (f_25@@167 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@137 f_25@@167) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@52) o2_6@@137 f_25@@167) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@137 f_25@@167)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@137 f_25@@167))
))) (forall ((o2_6@@138 T@Ref) (f_25@@168 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@138 f_25@@168) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@52) o2_6@@138 f_25@@168) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@138 f_25@@168)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@138 f_25@@168))
))) (forall ((o2_6@@139 T@Ref) (f_25@@169 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@139 f_25@@169) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@52) o2_6@@139 f_25@@169) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@139 f_25@@169)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@139 f_25@@169))
))) (forall ((o2_6@@140 T@Ref) (f_25@@170 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@140 f_25@@170) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@52) o2_6@@140 f_25@@170) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@140 f_25@@170)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@140 f_25@@170))
))) (forall ((o2_6@@141 T@Ref) (f_25@@171 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@141 f_25@@171) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@52) o2_6@@141 f_25@@171) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@141 f_25@@171)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@141 f_25@@171))
))) (forall ((o2_6@@142 T@Ref) (f_25@@172 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@142 f_25@@172) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@52) o2_6@@142 f_25@@172) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@142 f_25@@172)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@142 f_25@@172))
))) (forall ((o2_6@@143 T@Ref) (f_25@@173 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@143 f_25@@173) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@52) o2_6@@143 f_25@@173) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@143 f_25@@173)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@143 f_25@@173))
))) (forall ((o2_6@@144 T@Ref) (f_25@@174 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@144 f_25@@174) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@52) o2_6@@144 f_25@@174) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@144 f_25@@174)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@144 f_25@@174))
))) (forall ((o2_6@@145 T@Ref) (f_25@@175 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@145 f_25@@175) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@52) o2_6@@145 f_25@@175) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@145 f_25@@175)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@145 f_25@@175))
))) (forall ((o2_6@@146 T@Ref) (f_25@@176 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@146 f_25@@176) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@52) o2_6@@146 f_25@@176) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@146 f_25@@176)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@146 f_25@@176))
))) (forall ((o2_6@@147 T@Ref) (f_25@@177 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@147 f_25@@177) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@52) o2_6@@147 f_25@@177) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@147 f_25@@177)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@147 f_25@@177))
))) (forall ((o2_6@@148 T@Ref) (f_25@@178 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@52) null (PredicateMaskField_9448 pm_f_6@@15))) o2_6@@148 f_25@@178) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@52) o2_6@@148 f_25@@178) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@148 f_25@@178)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@47) o2_6@@148 f_25@@178))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@47 Mask@@108) (IsPredicateField_9448_9449 pm_f_6@@15))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_15639) (ExhaleHeap@@48 T@PolymorphicMapType_15639) (Mask@@109 T@PolymorphicMapType_15660) (pm_f_6@@16 T@Field_9444_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@48 Mask@@109) (=> (and (HasDirectPerm_9444_21984 Mask@@109 null pm_f_6@@16) (IsPredicateField_9444_51579 pm_f_6@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@149 T@Ref) (f_25@@179 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@149 f_25@@179) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@53) o2_6@@149 f_25@@179) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@149 f_25@@179)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@149 f_25@@179))
)) (forall ((o2_6@@150 T@Ref) (f_25@@180 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@150 f_25@@180) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@53) o2_6@@150 f_25@@180) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@150 f_25@@180)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@150 f_25@@180))
))) (forall ((o2_6@@151 T@Ref) (f_25@@181 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@151 f_25@@181) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@53) o2_6@@151 f_25@@181) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@151 f_25@@181)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@151 f_25@@181))
))) (forall ((o2_6@@152 T@Ref) (f_25@@182 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@152 f_25@@182) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@53) o2_6@@152 f_25@@182) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@152 f_25@@182)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@152 f_25@@182))
))) (forall ((o2_6@@153 T@Ref) (f_25@@183 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@153 f_25@@183) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) o2_6@@153 f_25@@183) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@153 f_25@@183)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@153 f_25@@183))
))) (forall ((o2_6@@154 T@Ref) (f_25@@184 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@154 f_25@@184) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@53) o2_6@@154 f_25@@184) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@154 f_25@@184)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@154 f_25@@184))
))) (forall ((o2_6@@155 T@Ref) (f_25@@185 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@155 f_25@@185) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@53) o2_6@@155 f_25@@185) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@155 f_25@@185)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@155 f_25@@185))
))) (forall ((o2_6@@156 T@Ref) (f_25@@186 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@156 f_25@@186) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@53) o2_6@@156 f_25@@186) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@156 f_25@@186)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@156 f_25@@186))
))) (forall ((o2_6@@157 T@Ref) (f_25@@187 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@157 f_25@@187) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@53) o2_6@@157 f_25@@187) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@157 f_25@@187)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@157 f_25@@187))
))) (forall ((o2_6@@158 T@Ref) (f_25@@188 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@158 f_25@@188) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@53) o2_6@@158 f_25@@188) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@158 f_25@@188)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@158 f_25@@188))
))) (forall ((o2_6@@159 T@Ref) (f_25@@189 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@159 f_25@@189) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@53) o2_6@@159 f_25@@189) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@159 f_25@@189)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@159 f_25@@189))
))) (forall ((o2_6@@160 T@Ref) (f_25@@190 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@160 f_25@@190) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@53) o2_6@@160 f_25@@190) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@160 f_25@@190)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@160 f_25@@190))
))) (forall ((o2_6@@161 T@Ref) (f_25@@191 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@161 f_25@@191) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@53) o2_6@@161 f_25@@191) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@161 f_25@@191)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@161 f_25@@191))
))) (forall ((o2_6@@162 T@Ref) (f_25@@192 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@162 f_25@@192) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@53) o2_6@@162 f_25@@192) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@162 f_25@@192)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@162 f_25@@192))
))) (forall ((o2_6@@163 T@Ref) (f_25@@193 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@163 f_25@@193) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@53) o2_6@@163 f_25@@193) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@163 f_25@@193)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@163 f_25@@193))
))) (forall ((o2_6@@164 T@Ref) (f_25@@194 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@164 f_25@@194) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@53) o2_6@@164 f_25@@194) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@164 f_25@@194)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@164 f_25@@194))
))) (forall ((o2_6@@165 T@Ref) (f_25@@195 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@165 f_25@@195) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@53) o2_6@@165 f_25@@195) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@165 f_25@@195)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@165 f_25@@195))
))) (forall ((o2_6@@166 T@Ref) (f_25@@196 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@166 f_25@@196) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@53) o2_6@@166 f_25@@196) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@166 f_25@@196)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@166 f_25@@196))
))) (forall ((o2_6@@167 T@Ref) (f_25@@197 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@167 f_25@@197) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@53) o2_6@@167 f_25@@197) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@167 f_25@@197)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@167 f_25@@197))
))) (forall ((o2_6@@168 T@Ref) (f_25@@198 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@168 f_25@@198) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@53) o2_6@@168 f_25@@198) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@168 f_25@@198)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@168 f_25@@198))
))) (forall ((o2_6@@169 T@Ref) (f_25@@199 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@169 f_25@@199) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@53) o2_6@@169 f_25@@199) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@169 f_25@@199)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@169 f_25@@199))
))) (forall ((o2_6@@170 T@Ref) (f_25@@200 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@170 f_25@@200) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@53) o2_6@@170 f_25@@200) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@170 f_25@@200)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@170 f_25@@200))
))) (forall ((o2_6@@171 T@Ref) (f_25@@201 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@171 f_25@@201) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@53) o2_6@@171 f_25@@201) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@171 f_25@@201)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@171 f_25@@201))
))) (forall ((o2_6@@172 T@Ref) (f_25@@202 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@172 f_25@@202) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@53) o2_6@@172 f_25@@202) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@172 f_25@@202)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@172 f_25@@202))
))) (forall ((o2_6@@173 T@Ref) (f_25@@203 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@173 f_25@@203) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@53) o2_6@@173 f_25@@203) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@173 f_25@@203)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@173 f_25@@203))
))) (forall ((o2_6@@174 T@Ref) (f_25@@204 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@174 f_25@@204) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@53) o2_6@@174 f_25@@204) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@174 f_25@@204)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@174 f_25@@204))
))) (forall ((o2_6@@175 T@Ref) (f_25@@205 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@175 f_25@@205) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@53) o2_6@@175 f_25@@205) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@175 f_25@@205)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@175 f_25@@205))
))) (forall ((o2_6@@176 T@Ref) (f_25@@206 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@176 f_25@@206) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@53) o2_6@@176 f_25@@206) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@176 f_25@@206)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@176 f_25@@206))
))) (forall ((o2_6@@177 T@Ref) (f_25@@207 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@177 f_25@@207) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@53) o2_6@@177 f_25@@207) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@177 f_25@@207)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@177 f_25@@207))
))) (forall ((o2_6@@178 T@Ref) (f_25@@208 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@53) null (PredicateMaskField_9444 pm_f_6@@16))) o2_6@@178 f_25@@208) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@53) o2_6@@178 f_25@@208) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@178 f_25@@208)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@48) o2_6@@178 f_25@@208))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@48 Mask@@109) (IsPredicateField_9444_51579 pm_f_6@@16))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_15639) (ExhaleHeap@@49 T@PolymorphicMapType_15639) (Mask@@110 T@PolymorphicMapType_15660) (pm_f_6@@17 T@Field_25303_25304) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@49 Mask@@110) (=> (and (HasDirectPerm_25303_21984 Mask@@110 null pm_f_6@@17) (IsWandField_25303_63320 pm_f_6@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@179 T@Ref) (f_25@@209 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@179 f_25@@209) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@54) o2_6@@179 f_25@@209) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@179 f_25@@209)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@179 f_25@@209))
)) (forall ((o2_6@@180 T@Ref) (f_25@@210 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@180 f_25@@210) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@54) o2_6@@180 f_25@@210) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@180 f_25@@210)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@180 f_25@@210))
))) (forall ((o2_6@@181 T@Ref) (f_25@@211 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@181 f_25@@211) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@54) o2_6@@181 f_25@@211) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@181 f_25@@211)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@181 f_25@@211))
))) (forall ((o2_6@@182 T@Ref) (f_25@@212 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@182 f_25@@212) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@54) o2_6@@182 f_25@@212) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@182 f_25@@212)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@182 f_25@@212))
))) (forall ((o2_6@@183 T@Ref) (f_25@@213 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@183 f_25@@213) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@54) o2_6@@183 f_25@@213) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@183 f_25@@213)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@183 f_25@@213))
))) (forall ((o2_6@@184 T@Ref) (f_25@@214 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@184 f_25@@214) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@54) o2_6@@184 f_25@@214) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@184 f_25@@214)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@184 f_25@@214))
))) (forall ((o2_6@@185 T@Ref) (f_25@@215 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@185 f_25@@215) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@54) o2_6@@185 f_25@@215) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@185 f_25@@215)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@185 f_25@@215))
))) (forall ((o2_6@@186 T@Ref) (f_25@@216 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@186 f_25@@216) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@54) o2_6@@186 f_25@@216) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@186 f_25@@216)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@186 f_25@@216))
))) (forall ((o2_6@@187 T@Ref) (f_25@@217 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@187 f_25@@217) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@54) o2_6@@187 f_25@@217) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@187 f_25@@217)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@187 f_25@@217))
))) (forall ((o2_6@@188 T@Ref) (f_25@@218 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@188 f_25@@218) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@54) o2_6@@188 f_25@@218) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@188 f_25@@218)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@188 f_25@@218))
))) (forall ((o2_6@@189 T@Ref) (f_25@@219 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@189 f_25@@219) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@54) o2_6@@189 f_25@@219) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@189 f_25@@219)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@189 f_25@@219))
))) (forall ((o2_6@@190 T@Ref) (f_25@@220 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@190 f_25@@220) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@54) o2_6@@190 f_25@@220) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@190 f_25@@220)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@190 f_25@@220))
))) (forall ((o2_6@@191 T@Ref) (f_25@@221 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@191 f_25@@221) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@54) o2_6@@191 f_25@@221) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@191 f_25@@221)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@191 f_25@@221))
))) (forall ((o2_6@@192 T@Ref) (f_25@@222 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@192 f_25@@222) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@54) o2_6@@192 f_25@@222) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@192 f_25@@222)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@192 f_25@@222))
))) (forall ((o2_6@@193 T@Ref) (f_25@@223 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@193 f_25@@223) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@54) o2_6@@193 f_25@@223) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@193 f_25@@223)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@193 f_25@@223))
))) (forall ((o2_6@@194 T@Ref) (f_25@@224 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@194 f_25@@224) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@54) o2_6@@194 f_25@@224) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@194 f_25@@224)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@194 f_25@@224))
))) (forall ((o2_6@@195 T@Ref) (f_25@@225 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@195 f_25@@225) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@54) o2_6@@195 f_25@@225) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@195 f_25@@225)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@195 f_25@@225))
))) (forall ((o2_6@@196 T@Ref) (f_25@@226 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@196 f_25@@226) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@54) o2_6@@196 f_25@@226) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@196 f_25@@226)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@196 f_25@@226))
))) (forall ((o2_6@@197 T@Ref) (f_25@@227 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@197 f_25@@227) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@54) o2_6@@197 f_25@@227) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@197 f_25@@227)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@197 f_25@@227))
))) (forall ((o2_6@@198 T@Ref) (f_25@@228 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@198 f_25@@228) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@54) o2_6@@198 f_25@@228) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@198 f_25@@228)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@198 f_25@@228))
))) (forall ((o2_6@@199 T@Ref) (f_25@@229 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@199 f_25@@229) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@54) o2_6@@199 f_25@@229) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@199 f_25@@229)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@199 f_25@@229))
))) (forall ((o2_6@@200 T@Ref) (f_25@@230 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@200 f_25@@230) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@54) o2_6@@200 f_25@@230) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@200 f_25@@230)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@200 f_25@@230))
))) (forall ((o2_6@@201 T@Ref) (f_25@@231 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@201 f_25@@231) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@54) o2_6@@201 f_25@@231) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@201 f_25@@231)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@201 f_25@@231))
))) (forall ((o2_6@@202 T@Ref) (f_25@@232 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@202 f_25@@232) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@54) o2_6@@202 f_25@@232) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@202 f_25@@232)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@202 f_25@@232))
))) (forall ((o2_6@@203 T@Ref) (f_25@@233 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@203 f_25@@233) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@54) o2_6@@203 f_25@@233) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@203 f_25@@233)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@203 f_25@@233))
))) (forall ((o2_6@@204 T@Ref) (f_25@@234 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@204 f_25@@234) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@54) o2_6@@204 f_25@@234) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@204 f_25@@234)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@204 f_25@@234))
))) (forall ((o2_6@@205 T@Ref) (f_25@@235 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@205 f_25@@235) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@54) o2_6@@205 f_25@@235) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@205 f_25@@235)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@205 f_25@@235))
))) (forall ((o2_6@@206 T@Ref) (f_25@@236 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@206 f_25@@236) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@54) o2_6@@206 f_25@@236) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@206 f_25@@236)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@206 f_25@@236))
))) (forall ((o2_6@@207 T@Ref) (f_25@@237 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@207 f_25@@237) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@54) o2_6@@207 f_25@@237) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@207 f_25@@237)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@207 f_25@@237))
))) (forall ((o2_6@@208 T@Ref) (f_25@@238 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) null (WandMaskField_25303 pm_f_6@@17))) o2_6@@208 f_25@@238) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@54) o2_6@@208 f_25@@238) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@208 f_25@@238)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@49) o2_6@@208 f_25@@238))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@49 Mask@@110) (IsWandField_25303_63320 pm_f_6@@17))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_15639) (ExhaleHeap@@50 T@PolymorphicMapType_15639) (Mask@@111 T@PolymorphicMapType_15660) (pm_f_6@@18 T@Field_24329_24330) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@50 Mask@@111) (=> (and (HasDirectPerm_24329_21984 Mask@@111 null pm_f_6@@18) (IsWandField_24329_62963 pm_f_6@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@209 T@Ref) (f_25@@239 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@209 f_25@@239) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@55) o2_6@@209 f_25@@239) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@209 f_25@@239)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@209 f_25@@239))
)) (forall ((o2_6@@210 T@Ref) (f_25@@240 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@210 f_25@@240) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@55) o2_6@@210 f_25@@240) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@210 f_25@@240)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@210 f_25@@240))
))) (forall ((o2_6@@211 T@Ref) (f_25@@241 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@211 f_25@@241) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@55) o2_6@@211 f_25@@241) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@211 f_25@@241)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@211 f_25@@241))
))) (forall ((o2_6@@212 T@Ref) (f_25@@242 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@212 f_25@@242) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@55) o2_6@@212 f_25@@242) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@212 f_25@@242)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@212 f_25@@242))
))) (forall ((o2_6@@213 T@Ref) (f_25@@243 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@213 f_25@@243) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@55) o2_6@@213 f_25@@243) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@213 f_25@@243)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@213 f_25@@243))
))) (forall ((o2_6@@214 T@Ref) (f_25@@244 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@214 f_25@@244) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@55) o2_6@@214 f_25@@244) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@214 f_25@@244)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@214 f_25@@244))
))) (forall ((o2_6@@215 T@Ref) (f_25@@245 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@215 f_25@@245) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@55) o2_6@@215 f_25@@245) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@215 f_25@@245)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@215 f_25@@245))
))) (forall ((o2_6@@216 T@Ref) (f_25@@246 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@216 f_25@@246) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@55) o2_6@@216 f_25@@246) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@216 f_25@@246)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@216 f_25@@246))
))) (forall ((o2_6@@217 T@Ref) (f_25@@247 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@217 f_25@@247) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@55) o2_6@@217 f_25@@247) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@217 f_25@@247)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@217 f_25@@247))
))) (forall ((o2_6@@218 T@Ref) (f_25@@248 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@218 f_25@@248) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@55) o2_6@@218 f_25@@248) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@218 f_25@@248)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@218 f_25@@248))
))) (forall ((o2_6@@219 T@Ref) (f_25@@249 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@219 f_25@@249) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@55) o2_6@@219 f_25@@249) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@219 f_25@@249)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@219 f_25@@249))
))) (forall ((o2_6@@220 T@Ref) (f_25@@250 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@220 f_25@@250) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@55) o2_6@@220 f_25@@250) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@220 f_25@@250)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@220 f_25@@250))
))) (forall ((o2_6@@221 T@Ref) (f_25@@251 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@221 f_25@@251) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@55) o2_6@@221 f_25@@251) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@221 f_25@@251)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@221 f_25@@251))
))) (forall ((o2_6@@222 T@Ref) (f_25@@252 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@222 f_25@@252) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@55) o2_6@@222 f_25@@252) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@222 f_25@@252)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@222 f_25@@252))
))) (forall ((o2_6@@223 T@Ref) (f_25@@253 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@223 f_25@@253) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@55) o2_6@@223 f_25@@253) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@223 f_25@@253)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@223 f_25@@253))
))) (forall ((o2_6@@224 T@Ref) (f_25@@254 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@224 f_25@@254) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@55) o2_6@@224 f_25@@254) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@224 f_25@@254)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@224 f_25@@254))
))) (forall ((o2_6@@225 T@Ref) (f_25@@255 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@225 f_25@@255) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@55) o2_6@@225 f_25@@255) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@225 f_25@@255)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@225 f_25@@255))
))) (forall ((o2_6@@226 T@Ref) (f_25@@256 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@226 f_25@@256) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@55) o2_6@@226 f_25@@256) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@226 f_25@@256)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@226 f_25@@256))
))) (forall ((o2_6@@227 T@Ref) (f_25@@257 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@227 f_25@@257) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@55) o2_6@@227 f_25@@257) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@227 f_25@@257)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@227 f_25@@257))
))) (forall ((o2_6@@228 T@Ref) (f_25@@258 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@228 f_25@@258) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@55) o2_6@@228 f_25@@258) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@228 f_25@@258)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@228 f_25@@258))
))) (forall ((o2_6@@229 T@Ref) (f_25@@259 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@229 f_25@@259) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@55) o2_6@@229 f_25@@259) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@229 f_25@@259)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@229 f_25@@259))
))) (forall ((o2_6@@230 T@Ref) (f_25@@260 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@230 f_25@@260) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@55) o2_6@@230 f_25@@260) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@230 f_25@@260)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@230 f_25@@260))
))) (forall ((o2_6@@231 T@Ref) (f_25@@261 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@231 f_25@@261) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@55) o2_6@@231 f_25@@261) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@231 f_25@@261)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@231 f_25@@261))
))) (forall ((o2_6@@232 T@Ref) (f_25@@262 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@232 f_25@@262) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@55) o2_6@@232 f_25@@262) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@232 f_25@@262)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@232 f_25@@262))
))) (forall ((o2_6@@233 T@Ref) (f_25@@263 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@233 f_25@@263) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) o2_6@@233 f_25@@263) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@233 f_25@@263)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@233 f_25@@263))
))) (forall ((o2_6@@234 T@Ref) (f_25@@264 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@234 f_25@@264) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@55) o2_6@@234 f_25@@264) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@234 f_25@@264)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@234 f_25@@264))
))) (forall ((o2_6@@235 T@Ref) (f_25@@265 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@235 f_25@@265) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@55) o2_6@@235 f_25@@265) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@235 f_25@@265)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@235 f_25@@265))
))) (forall ((o2_6@@236 T@Ref) (f_25@@266 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@236 f_25@@266) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@55) o2_6@@236 f_25@@266) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@236 f_25@@266)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@236 f_25@@266))
))) (forall ((o2_6@@237 T@Ref) (f_25@@267 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@237 f_25@@267) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@55) o2_6@@237 f_25@@267) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@237 f_25@@267)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@237 f_25@@267))
))) (forall ((o2_6@@238 T@Ref) (f_25@@268 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@55) null (WandMaskField_24329 pm_f_6@@18))) o2_6@@238 f_25@@268) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@55) o2_6@@238 f_25@@268) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@238 f_25@@268)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@50) o2_6@@238 f_25@@268))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@50 Mask@@111) (IsWandField_24329_62963 pm_f_6@@18))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_15639) (ExhaleHeap@@51 T@PolymorphicMapType_15639) (Mask@@112 T@PolymorphicMapType_15660) (pm_f_6@@19 T@Field_23321_23322) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@51 Mask@@112) (=> (and (HasDirectPerm_23321_21984 Mask@@112 null pm_f_6@@19) (IsWandField_23321_62606 pm_f_6@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@239 T@Ref) (f_25@@269 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@239 f_25@@269) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@56) o2_6@@239 f_25@@269) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@239 f_25@@269)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@239 f_25@@269))
)) (forall ((o2_6@@240 T@Ref) (f_25@@270 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@240 f_25@@270) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@56) o2_6@@240 f_25@@270) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@240 f_25@@270)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@240 f_25@@270))
))) (forall ((o2_6@@241 T@Ref) (f_25@@271 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@241 f_25@@271) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@56) o2_6@@241 f_25@@271) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@241 f_25@@271)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@241 f_25@@271))
))) (forall ((o2_6@@242 T@Ref) (f_25@@272 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@242 f_25@@272) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@56) o2_6@@242 f_25@@272) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@242 f_25@@272)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@242 f_25@@272))
))) (forall ((o2_6@@243 T@Ref) (f_25@@273 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@243 f_25@@273) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@56) o2_6@@243 f_25@@273) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@243 f_25@@273)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@243 f_25@@273))
))) (forall ((o2_6@@244 T@Ref) (f_25@@274 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@244 f_25@@274) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@56) o2_6@@244 f_25@@274) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@244 f_25@@274)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@244 f_25@@274))
))) (forall ((o2_6@@245 T@Ref) (f_25@@275 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@245 f_25@@275) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@56) o2_6@@245 f_25@@275) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@245 f_25@@275)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@245 f_25@@275))
))) (forall ((o2_6@@246 T@Ref) (f_25@@276 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@246 f_25@@276) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@56) o2_6@@246 f_25@@276) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@246 f_25@@276)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@246 f_25@@276))
))) (forall ((o2_6@@247 T@Ref) (f_25@@277 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@247 f_25@@277) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@56) o2_6@@247 f_25@@277) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@247 f_25@@277)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@247 f_25@@277))
))) (forall ((o2_6@@248 T@Ref) (f_25@@278 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@248 f_25@@278) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@56) o2_6@@248 f_25@@278) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@248 f_25@@278)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@248 f_25@@278))
))) (forall ((o2_6@@249 T@Ref) (f_25@@279 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@249 f_25@@279) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@56) o2_6@@249 f_25@@279) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@249 f_25@@279)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@249 f_25@@279))
))) (forall ((o2_6@@250 T@Ref) (f_25@@280 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@250 f_25@@280) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@56) o2_6@@250 f_25@@280) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@250 f_25@@280)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@250 f_25@@280))
))) (forall ((o2_6@@251 T@Ref) (f_25@@281 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@251 f_25@@281) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@56) o2_6@@251 f_25@@281) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@251 f_25@@281)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@251 f_25@@281))
))) (forall ((o2_6@@252 T@Ref) (f_25@@282 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@252 f_25@@282) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@56) o2_6@@252 f_25@@282) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@252 f_25@@282)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@252 f_25@@282))
))) (forall ((o2_6@@253 T@Ref) (f_25@@283 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@253 f_25@@283) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@56) o2_6@@253 f_25@@283) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@253 f_25@@283)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@253 f_25@@283))
))) (forall ((o2_6@@254 T@Ref) (f_25@@284 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@254 f_25@@284) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@56) o2_6@@254 f_25@@284) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@254 f_25@@284)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@254 f_25@@284))
))) (forall ((o2_6@@255 T@Ref) (f_25@@285 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@255 f_25@@285) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@56) o2_6@@255 f_25@@285) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@255 f_25@@285)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@255 f_25@@285))
))) (forall ((o2_6@@256 T@Ref) (f_25@@286 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@256 f_25@@286) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@56) o2_6@@256 f_25@@286) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@256 f_25@@286)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@256 f_25@@286))
))) (forall ((o2_6@@257 T@Ref) (f_25@@287 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@257 f_25@@287) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@56) o2_6@@257 f_25@@287) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@257 f_25@@287)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@257 f_25@@287))
))) (forall ((o2_6@@258 T@Ref) (f_25@@288 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@258 f_25@@288) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) o2_6@@258 f_25@@288) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@258 f_25@@288)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@258 f_25@@288))
))) (forall ((o2_6@@259 T@Ref) (f_25@@289 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@259 f_25@@289) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@56) o2_6@@259 f_25@@289) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@259 f_25@@289)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@259 f_25@@289))
))) (forall ((o2_6@@260 T@Ref) (f_25@@290 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@260 f_25@@290) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@56) o2_6@@260 f_25@@290) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@260 f_25@@290)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@260 f_25@@290))
))) (forall ((o2_6@@261 T@Ref) (f_25@@291 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@261 f_25@@291) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@56) o2_6@@261 f_25@@291) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@261 f_25@@291)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@261 f_25@@291))
))) (forall ((o2_6@@262 T@Ref) (f_25@@292 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@262 f_25@@292) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@56) o2_6@@262 f_25@@292) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@262 f_25@@292)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@262 f_25@@292))
))) (forall ((o2_6@@263 T@Ref) (f_25@@293 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@263 f_25@@293) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@56) o2_6@@263 f_25@@293) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@263 f_25@@293)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@263 f_25@@293))
))) (forall ((o2_6@@264 T@Ref) (f_25@@294 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@264 f_25@@294) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@56) o2_6@@264 f_25@@294) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@264 f_25@@294)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@264 f_25@@294))
))) (forall ((o2_6@@265 T@Ref) (f_25@@295 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@265 f_25@@295) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@56) o2_6@@265 f_25@@295) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@265 f_25@@295)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@265 f_25@@295))
))) (forall ((o2_6@@266 T@Ref) (f_25@@296 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@266 f_25@@296) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@56) o2_6@@266 f_25@@296) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@266 f_25@@296)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@266 f_25@@296))
))) (forall ((o2_6@@267 T@Ref) (f_25@@297 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@267 f_25@@297) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@56) o2_6@@267 f_25@@297) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@267 f_25@@297)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@267 f_25@@297))
))) (forall ((o2_6@@268 T@Ref) (f_25@@298 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@56) null (WandMaskField_23321 pm_f_6@@19))) o2_6@@268 f_25@@298) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@56) o2_6@@268 f_25@@298) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@268 f_25@@298)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@51) o2_6@@268 f_25@@298))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@51 Mask@@112) (IsWandField_23321_62606 pm_f_6@@19))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_15639) (ExhaleHeap@@52 T@PolymorphicMapType_15639) (Mask@@113 T@PolymorphicMapType_15660) (pm_f_6@@20 T@Field_22401_22402) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@52 Mask@@113) (=> (and (HasDirectPerm_22401_21984 Mask@@113 null pm_f_6@@20) (IsWandField_22401_62249 pm_f_6@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@269 T@Ref) (f_25@@299 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@269 f_25@@299) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@57) o2_6@@269 f_25@@299) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@269 f_25@@299)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@269 f_25@@299))
)) (forall ((o2_6@@270 T@Ref) (f_25@@300 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@270 f_25@@300) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@57) o2_6@@270 f_25@@300) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@270 f_25@@300)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@270 f_25@@300))
))) (forall ((o2_6@@271 T@Ref) (f_25@@301 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@271 f_25@@301) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@57) o2_6@@271 f_25@@301) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@271 f_25@@301)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@271 f_25@@301))
))) (forall ((o2_6@@272 T@Ref) (f_25@@302 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@272 f_25@@302) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@57) o2_6@@272 f_25@@302) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@272 f_25@@302)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@272 f_25@@302))
))) (forall ((o2_6@@273 T@Ref) (f_25@@303 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@273 f_25@@303) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@57) o2_6@@273 f_25@@303) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@273 f_25@@303)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@273 f_25@@303))
))) (forall ((o2_6@@274 T@Ref) (f_25@@304 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@274 f_25@@304) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@57) o2_6@@274 f_25@@304) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@274 f_25@@304)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@274 f_25@@304))
))) (forall ((o2_6@@275 T@Ref) (f_25@@305 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@275 f_25@@305) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@57) o2_6@@275 f_25@@305) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@275 f_25@@305)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@275 f_25@@305))
))) (forall ((o2_6@@276 T@Ref) (f_25@@306 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@276 f_25@@306) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@57) o2_6@@276 f_25@@306) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@276 f_25@@306)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@276 f_25@@306))
))) (forall ((o2_6@@277 T@Ref) (f_25@@307 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@277 f_25@@307) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@57) o2_6@@277 f_25@@307) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@277 f_25@@307)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@277 f_25@@307))
))) (forall ((o2_6@@278 T@Ref) (f_25@@308 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@278 f_25@@308) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@57) o2_6@@278 f_25@@308) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@278 f_25@@308)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@278 f_25@@308))
))) (forall ((o2_6@@279 T@Ref) (f_25@@309 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@279 f_25@@309) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@57) o2_6@@279 f_25@@309) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@279 f_25@@309)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@279 f_25@@309))
))) (forall ((o2_6@@280 T@Ref) (f_25@@310 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@280 f_25@@310) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@57) o2_6@@280 f_25@@310) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@280 f_25@@310)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@280 f_25@@310))
))) (forall ((o2_6@@281 T@Ref) (f_25@@311 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@281 f_25@@311) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@57) o2_6@@281 f_25@@311) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@281 f_25@@311)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@281 f_25@@311))
))) (forall ((o2_6@@282 T@Ref) (f_25@@312 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@282 f_25@@312) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@57) o2_6@@282 f_25@@312) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@282 f_25@@312)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@282 f_25@@312))
))) (forall ((o2_6@@283 T@Ref) (f_25@@313 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@283 f_25@@313) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) o2_6@@283 f_25@@313) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@283 f_25@@313)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@283 f_25@@313))
))) (forall ((o2_6@@284 T@Ref) (f_25@@314 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@284 f_25@@314) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@57) o2_6@@284 f_25@@314) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@284 f_25@@314)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@284 f_25@@314))
))) (forall ((o2_6@@285 T@Ref) (f_25@@315 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@285 f_25@@315) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@57) o2_6@@285 f_25@@315) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@285 f_25@@315)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@285 f_25@@315))
))) (forall ((o2_6@@286 T@Ref) (f_25@@316 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@286 f_25@@316) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@57) o2_6@@286 f_25@@316) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@286 f_25@@316)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@286 f_25@@316))
))) (forall ((o2_6@@287 T@Ref) (f_25@@317 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@287 f_25@@317) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@57) o2_6@@287 f_25@@317) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@287 f_25@@317)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@287 f_25@@317))
))) (forall ((o2_6@@288 T@Ref) (f_25@@318 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@288 f_25@@318) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@57) o2_6@@288 f_25@@318) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@288 f_25@@318)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@288 f_25@@318))
))) (forall ((o2_6@@289 T@Ref) (f_25@@319 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@289 f_25@@319) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@57) o2_6@@289 f_25@@319) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@289 f_25@@319)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@289 f_25@@319))
))) (forall ((o2_6@@290 T@Ref) (f_25@@320 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@290 f_25@@320) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@57) o2_6@@290 f_25@@320) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@290 f_25@@320)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@290 f_25@@320))
))) (forall ((o2_6@@291 T@Ref) (f_25@@321 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@291 f_25@@321) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@57) o2_6@@291 f_25@@321) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@291 f_25@@321)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@291 f_25@@321))
))) (forall ((o2_6@@292 T@Ref) (f_25@@322 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@292 f_25@@322) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@57) o2_6@@292 f_25@@322) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@292 f_25@@322)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@292 f_25@@322))
))) (forall ((o2_6@@293 T@Ref) (f_25@@323 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@293 f_25@@323) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@57) o2_6@@293 f_25@@323) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@293 f_25@@323)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@293 f_25@@323))
))) (forall ((o2_6@@294 T@Ref) (f_25@@324 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@294 f_25@@324) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@57) o2_6@@294 f_25@@324) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@294 f_25@@324)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@294 f_25@@324))
))) (forall ((o2_6@@295 T@Ref) (f_25@@325 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@295 f_25@@325) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@57) o2_6@@295 f_25@@325) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@295 f_25@@325)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@295 f_25@@325))
))) (forall ((o2_6@@296 T@Ref) (f_25@@326 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@296 f_25@@326) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@57) o2_6@@296 f_25@@326) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@296 f_25@@326)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@296 f_25@@326))
))) (forall ((o2_6@@297 T@Ref) (f_25@@327 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@297 f_25@@327) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@57) o2_6@@297 f_25@@327) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@297 f_25@@327)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@297 f_25@@327))
))) (forall ((o2_6@@298 T@Ref) (f_25@@328 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@57) null (WandMaskField_22401 pm_f_6@@20))) o2_6@@298 f_25@@328) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@57) o2_6@@298 f_25@@328) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@298 f_25@@328)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@52) o2_6@@298 f_25@@328))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@52 Mask@@113) (IsWandField_22401_62249 pm_f_6@@20))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_15639) (ExhaleHeap@@53 T@PolymorphicMapType_15639) (Mask@@114 T@PolymorphicMapType_15660) (pm_f_6@@21 T@Field_21983_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@53 Mask@@114) (=> (and (HasDirectPerm_21983_21984 Mask@@114 null pm_f_6@@21) (IsWandField_21983_61892 pm_f_6@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@299 T@Ref) (f_25@@329 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@299 f_25@@329) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@58) o2_6@@299 f_25@@329) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@299 f_25@@329)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@299 f_25@@329))
)) (forall ((o2_6@@300 T@Ref) (f_25@@330 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@300 f_25@@330) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@58) o2_6@@300 f_25@@330) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@300 f_25@@330)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@300 f_25@@330))
))) (forall ((o2_6@@301 T@Ref) (f_25@@331 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@301 f_25@@331) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@58) o2_6@@301 f_25@@331) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@301 f_25@@331)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@301 f_25@@331))
))) (forall ((o2_6@@302 T@Ref) (f_25@@332 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@302 f_25@@332) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@58) o2_6@@302 f_25@@332) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@302 f_25@@332)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@302 f_25@@332))
))) (forall ((o2_6@@303 T@Ref) (f_25@@333 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@303 f_25@@333) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@58) o2_6@@303 f_25@@333) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@303 f_25@@333)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@303 f_25@@333))
))) (forall ((o2_6@@304 T@Ref) (f_25@@334 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@304 f_25@@334) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@58) o2_6@@304 f_25@@334) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@304 f_25@@334)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@304 f_25@@334))
))) (forall ((o2_6@@305 T@Ref) (f_25@@335 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@305 f_25@@335) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@58) o2_6@@305 f_25@@335) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@305 f_25@@335)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@305 f_25@@335))
))) (forall ((o2_6@@306 T@Ref) (f_25@@336 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@306 f_25@@336) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@58) o2_6@@306 f_25@@336) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@306 f_25@@336)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@306 f_25@@336))
))) (forall ((o2_6@@307 T@Ref) (f_25@@337 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@307 f_25@@337) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@58) o2_6@@307 f_25@@337) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@307 f_25@@337)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@307 f_25@@337))
))) (forall ((o2_6@@308 T@Ref) (f_25@@338 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@308 f_25@@338) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) o2_6@@308 f_25@@338) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@308 f_25@@338)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@308 f_25@@338))
))) (forall ((o2_6@@309 T@Ref) (f_25@@339 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@309 f_25@@339) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@58) o2_6@@309 f_25@@339) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@309 f_25@@339)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@309 f_25@@339))
))) (forall ((o2_6@@310 T@Ref) (f_25@@340 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@310 f_25@@340) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@58) o2_6@@310 f_25@@340) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@310 f_25@@340)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@310 f_25@@340))
))) (forall ((o2_6@@311 T@Ref) (f_25@@341 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@311 f_25@@341) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@58) o2_6@@311 f_25@@341) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@311 f_25@@341)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@311 f_25@@341))
))) (forall ((o2_6@@312 T@Ref) (f_25@@342 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@312 f_25@@342) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@58) o2_6@@312 f_25@@342) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@312 f_25@@342)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@312 f_25@@342))
))) (forall ((o2_6@@313 T@Ref) (f_25@@343 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@313 f_25@@343) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@58) o2_6@@313 f_25@@343) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@313 f_25@@343)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@313 f_25@@343))
))) (forall ((o2_6@@314 T@Ref) (f_25@@344 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@314 f_25@@344) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@58) o2_6@@314 f_25@@344) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@314 f_25@@344)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@314 f_25@@344))
))) (forall ((o2_6@@315 T@Ref) (f_25@@345 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@315 f_25@@345) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@58) o2_6@@315 f_25@@345) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@315 f_25@@345)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@315 f_25@@345))
))) (forall ((o2_6@@316 T@Ref) (f_25@@346 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@316 f_25@@346) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@58) o2_6@@316 f_25@@346) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@316 f_25@@346)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@316 f_25@@346))
))) (forall ((o2_6@@317 T@Ref) (f_25@@347 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@317 f_25@@347) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@58) o2_6@@317 f_25@@347) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@317 f_25@@347)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@317 f_25@@347))
))) (forall ((o2_6@@318 T@Ref) (f_25@@348 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@318 f_25@@348) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@58) o2_6@@318 f_25@@348) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@318 f_25@@348)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@318 f_25@@348))
))) (forall ((o2_6@@319 T@Ref) (f_25@@349 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@319 f_25@@349) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@58) o2_6@@319 f_25@@349) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@319 f_25@@349)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@319 f_25@@349))
))) (forall ((o2_6@@320 T@Ref) (f_25@@350 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@320 f_25@@350) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@58) o2_6@@320 f_25@@350) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@320 f_25@@350)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@320 f_25@@350))
))) (forall ((o2_6@@321 T@Ref) (f_25@@351 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@321 f_25@@351) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@58) o2_6@@321 f_25@@351) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@321 f_25@@351)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@321 f_25@@351))
))) (forall ((o2_6@@322 T@Ref) (f_25@@352 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@322 f_25@@352) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@58) o2_6@@322 f_25@@352) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@322 f_25@@352)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@322 f_25@@352))
))) (forall ((o2_6@@323 T@Ref) (f_25@@353 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@323 f_25@@353) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@58) o2_6@@323 f_25@@353) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@323 f_25@@353)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@323 f_25@@353))
))) (forall ((o2_6@@324 T@Ref) (f_25@@354 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@324 f_25@@354) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@58) o2_6@@324 f_25@@354) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@324 f_25@@354)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@324 f_25@@354))
))) (forall ((o2_6@@325 T@Ref) (f_25@@355 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@325 f_25@@355) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@58) o2_6@@325 f_25@@355) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@325 f_25@@355)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@325 f_25@@355))
))) (forall ((o2_6@@326 T@Ref) (f_25@@356 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@326 f_25@@356) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@58) o2_6@@326 f_25@@356) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@326 f_25@@356)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@326 f_25@@356))
))) (forall ((o2_6@@327 T@Ref) (f_25@@357 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@327 f_25@@357) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@58) o2_6@@327 f_25@@357) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@327 f_25@@357)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@327 f_25@@357))
))) (forall ((o2_6@@328 T@Ref) (f_25@@358 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@58) null (WandMaskField_21983 pm_f_6@@21))) o2_6@@328 f_25@@358) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@58) o2_6@@328 f_25@@358) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@328 f_25@@358)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@53) o2_6@@328 f_25@@358))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@53 Mask@@114) (IsWandField_21983_61892 pm_f_6@@21))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_15639) (ExhaleHeap@@54 T@PolymorphicMapType_15639) (Mask@@115 T@PolymorphicMapType_15660) (pm_f_6@@22 T@Field_9444_21984) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@54 Mask@@115) (=> (and (HasDirectPerm_9444_21984 Mask@@115 null pm_f_6@@22) (IsWandField_9444_61535 pm_f_6@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@329 T@Ref) (f_25@@359 T@Field_15699_53) ) (!  (=> (select (|PolymorphicMapType_16188_15699_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@329 f_25@@359) (= (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@59) o2_6@@329 f_25@@359) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@329 f_25@@359)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@329 f_25@@359))
)) (forall ((o2_6@@330 T@Ref) (f_25@@360 T@Field_15712_15713) ) (!  (=> (select (|PolymorphicMapType_16188_15699_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@330 f_25@@360) (= (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@59) o2_6@@330 f_25@@360) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@330 f_25@@360)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@330 f_25@@360))
))) (forall ((o2_6@@331 T@Ref) (f_25@@361 T@Field_21907_3427) ) (!  (=> (select (|PolymorphicMapType_16188_15699_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@331 f_25@@361) (= (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@59) o2_6@@331 f_25@@361) (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@331 f_25@@361)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@331 f_25@@361))
))) (forall ((o2_6@@332 T@Ref) (f_25@@362 T@Field_9444_21984) ) (!  (=> (select (|PolymorphicMapType_16188_15699_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@332 f_25@@362) (= (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@59) o2_6@@332 f_25@@362) (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@332 f_25@@362)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@332 f_25@@362))
))) (forall ((o2_6@@333 T@Ref) (f_25@@363 T@Field_9444_22000) ) (!  (=> (select (|PolymorphicMapType_16188_15699_54363#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@333 f_25@@363) (= (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) o2_6@@333 f_25@@363) (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@333 f_25@@363)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@333 f_25@@363))
))) (forall ((o2_6@@334 T@Ref) (f_25@@364 T@Field_21983_53) ) (!  (=> (select (|PolymorphicMapType_16188_21983_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@334 f_25@@364) (= (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@59) o2_6@@334 f_25@@364) (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@334 f_25@@364)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@334 f_25@@364))
))) (forall ((o2_6@@335 T@Ref) (f_25@@365 T@Field_21983_15713) ) (!  (=> (select (|PolymorphicMapType_16188_21983_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@335 f_25@@365) (= (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@59) o2_6@@335 f_25@@365) (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@335 f_25@@365)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@335 f_25@@365))
))) (forall ((o2_6@@336 T@Ref) (f_25@@366 T@Field_21983_3427) ) (!  (=> (select (|PolymorphicMapType_16188_21983_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@336 f_25@@366) (= (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@59) o2_6@@336 f_25@@366) (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@336 f_25@@366)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@336 f_25@@366))
))) (forall ((o2_6@@337 T@Ref) (f_25@@367 T@Field_21983_21984) ) (!  (=> (select (|PolymorphicMapType_16188_21983_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@337 f_25@@367) (= (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@59) o2_6@@337 f_25@@367) (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@337 f_25@@367)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@337 f_25@@367))
))) (forall ((o2_6@@338 T@Ref) (f_25@@368 T@Field_21995_22000) ) (!  (=> (select (|PolymorphicMapType_16188_21983_55411#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@338 f_25@@368) (= (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@59) o2_6@@338 f_25@@368) (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@338 f_25@@368)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@338 f_25@@368))
))) (forall ((o2_6@@339 T@Ref) (f_25@@369 T@Field_22401_53) ) (!  (=> (select (|PolymorphicMapType_16188_22401_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@339 f_25@@369) (= (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@59) o2_6@@339 f_25@@369) (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@339 f_25@@369)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@339 f_25@@369))
))) (forall ((o2_6@@340 T@Ref) (f_25@@370 T@Field_22401_15713) ) (!  (=> (select (|PolymorphicMapType_16188_22401_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@340 f_25@@370) (= (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@59) o2_6@@340 f_25@@370) (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@340 f_25@@370)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@340 f_25@@370))
))) (forall ((o2_6@@341 T@Ref) (f_25@@371 T@Field_22401_3427) ) (!  (=> (select (|PolymorphicMapType_16188_22401_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@341 f_25@@371) (= (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@59) o2_6@@341 f_25@@371) (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@341 f_25@@371)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@341 f_25@@371))
))) (forall ((o2_6@@342 T@Ref) (f_25@@372 T@Field_22401_22402) ) (!  (=> (select (|PolymorphicMapType_16188_22401_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@342 f_25@@372) (= (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@59) o2_6@@342 f_25@@372) (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@342 f_25@@372)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@342 f_25@@372))
))) (forall ((o2_6@@343 T@Ref) (f_25@@373 T@Field_22414_22419) ) (!  (=> (select (|PolymorphicMapType_16188_22401_56459#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@343 f_25@@373) (= (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@59) o2_6@@343 f_25@@373) (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@343 f_25@@373)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@343 f_25@@373))
))) (forall ((o2_6@@344 T@Ref) (f_25@@374 T@Field_23321_53) ) (!  (=> (select (|PolymorphicMapType_16188_23321_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@344 f_25@@374) (= (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@59) o2_6@@344 f_25@@374) (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@344 f_25@@374)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@344 f_25@@374))
))) (forall ((o2_6@@345 T@Ref) (f_25@@375 T@Field_23321_15713) ) (!  (=> (select (|PolymorphicMapType_16188_23321_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@345 f_25@@375) (= (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@59) o2_6@@345 f_25@@375) (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@345 f_25@@375)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@345 f_25@@375))
))) (forall ((o2_6@@346 T@Ref) (f_25@@376 T@Field_23321_3427) ) (!  (=> (select (|PolymorphicMapType_16188_23321_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@346 f_25@@376) (= (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@59) o2_6@@346 f_25@@376) (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@346 f_25@@376)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@346 f_25@@376))
))) (forall ((o2_6@@347 T@Ref) (f_25@@377 T@Field_23321_23322) ) (!  (=> (select (|PolymorphicMapType_16188_23321_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@347 f_25@@377) (= (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@59) o2_6@@347 f_25@@377) (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@347 f_25@@377)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@347 f_25@@377))
))) (forall ((o2_6@@348 T@Ref) (f_25@@378 T@Field_23334_23339) ) (!  (=> (select (|PolymorphicMapType_16188_23321_57507#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@348 f_25@@378) (= (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@59) o2_6@@348 f_25@@378) (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@348 f_25@@378)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@348 f_25@@378))
))) (forall ((o2_6@@349 T@Ref) (f_25@@379 T@Field_24329_53) ) (!  (=> (select (|PolymorphicMapType_16188_24329_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@349 f_25@@379) (= (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@59) o2_6@@349 f_25@@379) (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@349 f_25@@379)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@349 f_25@@379))
))) (forall ((o2_6@@350 T@Ref) (f_25@@380 T@Field_24329_15713) ) (!  (=> (select (|PolymorphicMapType_16188_24329_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@350 f_25@@380) (= (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@59) o2_6@@350 f_25@@380) (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@350 f_25@@380)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@350 f_25@@380))
))) (forall ((o2_6@@351 T@Ref) (f_25@@381 T@Field_24329_3427) ) (!  (=> (select (|PolymorphicMapType_16188_24329_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@351 f_25@@381) (= (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@59) o2_6@@351 f_25@@381) (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@351 f_25@@381)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@351 f_25@@381))
))) (forall ((o2_6@@352 T@Ref) (f_25@@382 T@Field_24329_24330) ) (!  (=> (select (|PolymorphicMapType_16188_24329_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@352 f_25@@382) (= (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@59) o2_6@@352 f_25@@382) (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@352 f_25@@382)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@352 f_25@@382))
))) (forall ((o2_6@@353 T@Ref) (f_25@@383 T@Field_24342_24347) ) (!  (=> (select (|PolymorphicMapType_16188_24329_58555#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@353 f_25@@383) (= (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@59) o2_6@@353 f_25@@383) (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@353 f_25@@383)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@353 f_25@@383))
))) (forall ((o2_6@@354 T@Ref) (f_25@@384 T@Field_25303_53) ) (!  (=> (select (|PolymorphicMapType_16188_25303_53#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@354 f_25@@384) (= (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@59) o2_6@@354 f_25@@384) (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@354 f_25@@384)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@354 f_25@@384))
))) (forall ((o2_6@@355 T@Ref) (f_25@@385 T@Field_25303_15713) ) (!  (=> (select (|PolymorphicMapType_16188_25303_15713#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@355 f_25@@385) (= (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@59) o2_6@@355 f_25@@385) (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@355 f_25@@385)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@355 f_25@@385))
))) (forall ((o2_6@@356 T@Ref) (f_25@@386 T@Field_25303_3427) ) (!  (=> (select (|PolymorphicMapType_16188_25303_3427#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@356 f_25@@386) (= (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@59) o2_6@@356 f_25@@386) (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@356 f_25@@386)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@356 f_25@@386))
))) (forall ((o2_6@@357 T@Ref) (f_25@@387 T@Field_25303_25304) ) (!  (=> (select (|PolymorphicMapType_16188_25303_21984#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@357 f_25@@387) (= (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@59) o2_6@@357 f_25@@387) (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@357 f_25@@387)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@357 f_25@@387))
))) (forall ((o2_6@@358 T@Ref) (f_25@@388 T@Field_25316_25321) ) (!  (=> (select (|PolymorphicMapType_16188_25303_59603#PolymorphicMapType_16188| (select (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@59) null (WandMaskField_9444 pm_f_6@@22))) o2_6@@358 f_25@@388) (= (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@59) o2_6@@358 f_25@@388) (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@358 f_25@@388)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| ExhaleHeap@@54) o2_6@@358 f_25@@388))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@54 Mask@@115) (IsWandField_9444_61535 pm_f_6@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15660) (SummandMask1 T@PolymorphicMapType_15660) (SummandMask2 T@PolymorphicMapType_15660) (o_2@@119 T@Ref) (f_4@@119 T@Field_25316_25321) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| ResultMask) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| SummandMask1) o_2@@119 f_4@@119) (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| SummandMask2) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| ResultMask) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| SummandMask1) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| SummandMask2) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15660) (SummandMask1@@0 T@PolymorphicMapType_15660) (SummandMask2@@0 T@PolymorphicMapType_15660) (o_2@@120 T@Ref) (f_4@@120 T@Field_25303_15713) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| ResultMask@@0) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| SummandMask1@@0) o_2@@120 f_4@@120) (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| SummandMask2@@0) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| ResultMask@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| SummandMask1@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| SummandMask2@@0) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15660) (SummandMask1@@1 T@PolymorphicMapType_15660) (SummandMask2@@1 T@PolymorphicMapType_15660) (o_2@@121 T@Ref) (f_4@@121 T@Field_25303_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| ResultMask@@1) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| SummandMask1@@1) o_2@@121 f_4@@121) (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| SummandMask2@@1) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| ResultMask@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| SummandMask1@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| SummandMask2@@1) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15660) (SummandMask1@@2 T@PolymorphicMapType_15660) (SummandMask2@@2 T@PolymorphicMapType_15660) (o_2@@122 T@Ref) (f_4@@122 T@Field_25303_25304) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| ResultMask@@2) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| SummandMask1@@2) o_2@@122 f_4@@122) (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| SummandMask2@@2) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| ResultMask@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| SummandMask1@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| SummandMask2@@2) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15660) (SummandMask1@@3 T@PolymorphicMapType_15660) (SummandMask2@@3 T@PolymorphicMapType_15660) (o_2@@123 T@Ref) (f_4@@123 T@Field_25303_3427) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| ResultMask@@3) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| SummandMask1@@3) o_2@@123 f_4@@123) (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| SummandMask2@@3) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| ResultMask@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| SummandMask1@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| SummandMask2@@3) o_2@@123 f_4@@123))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15660) (SummandMask1@@4 T@PolymorphicMapType_15660) (SummandMask2@@4 T@PolymorphicMapType_15660) (o_2@@124 T@Ref) (f_4@@124 T@Field_24342_24347) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| ResultMask@@4) o_2@@124 f_4@@124) (+ (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| SummandMask1@@4) o_2@@124 f_4@@124) (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| SummandMask2@@4) o_2@@124 f_4@@124))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| ResultMask@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| SummandMask1@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| SummandMask2@@4) o_2@@124 f_4@@124))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15660) (SummandMask1@@5 T@PolymorphicMapType_15660) (SummandMask2@@5 T@PolymorphicMapType_15660) (o_2@@125 T@Ref) (f_4@@125 T@Field_24329_15713) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| ResultMask@@5) o_2@@125 f_4@@125) (+ (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| SummandMask1@@5) o_2@@125 f_4@@125) (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| SummandMask2@@5) o_2@@125 f_4@@125))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| ResultMask@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| SummandMask1@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| SummandMask2@@5) o_2@@125 f_4@@125))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15660) (SummandMask1@@6 T@PolymorphicMapType_15660) (SummandMask2@@6 T@PolymorphicMapType_15660) (o_2@@126 T@Ref) (f_4@@126 T@Field_24329_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| ResultMask@@6) o_2@@126 f_4@@126) (+ (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| SummandMask1@@6) o_2@@126 f_4@@126) (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| SummandMask2@@6) o_2@@126 f_4@@126))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| ResultMask@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| SummandMask1@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| SummandMask2@@6) o_2@@126 f_4@@126))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15660) (SummandMask1@@7 T@PolymorphicMapType_15660) (SummandMask2@@7 T@PolymorphicMapType_15660) (o_2@@127 T@Ref) (f_4@@127 T@Field_24329_24330) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| ResultMask@@7) o_2@@127 f_4@@127) (+ (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| SummandMask1@@7) o_2@@127 f_4@@127) (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| SummandMask2@@7) o_2@@127 f_4@@127))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| ResultMask@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| SummandMask1@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| SummandMask2@@7) o_2@@127 f_4@@127))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15660) (SummandMask1@@8 T@PolymorphicMapType_15660) (SummandMask2@@8 T@PolymorphicMapType_15660) (o_2@@128 T@Ref) (f_4@@128 T@Field_24329_3427) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| ResultMask@@8) o_2@@128 f_4@@128) (+ (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| SummandMask1@@8) o_2@@128 f_4@@128) (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| SummandMask2@@8) o_2@@128 f_4@@128))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| ResultMask@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| SummandMask1@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| SummandMask2@@8) o_2@@128 f_4@@128))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_15660) (SummandMask1@@9 T@PolymorphicMapType_15660) (SummandMask2@@9 T@PolymorphicMapType_15660) (o_2@@129 T@Ref) (f_4@@129 T@Field_23334_23339) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| ResultMask@@9) o_2@@129 f_4@@129) (+ (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| SummandMask1@@9) o_2@@129 f_4@@129) (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| SummandMask2@@9) o_2@@129 f_4@@129))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| ResultMask@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| SummandMask1@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| SummandMask2@@9) o_2@@129 f_4@@129))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_15660) (SummandMask1@@10 T@PolymorphicMapType_15660) (SummandMask2@@10 T@PolymorphicMapType_15660) (o_2@@130 T@Ref) (f_4@@130 T@Field_23321_15713) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| ResultMask@@10) o_2@@130 f_4@@130) (+ (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| SummandMask1@@10) o_2@@130 f_4@@130) (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| SummandMask2@@10) o_2@@130 f_4@@130))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| ResultMask@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| SummandMask1@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| SummandMask2@@10) o_2@@130 f_4@@130))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_15660) (SummandMask1@@11 T@PolymorphicMapType_15660) (SummandMask2@@11 T@PolymorphicMapType_15660) (o_2@@131 T@Ref) (f_4@@131 T@Field_23321_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| ResultMask@@11) o_2@@131 f_4@@131) (+ (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| SummandMask1@@11) o_2@@131 f_4@@131) (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| SummandMask2@@11) o_2@@131 f_4@@131))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| ResultMask@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| SummandMask1@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| SummandMask2@@11) o_2@@131 f_4@@131))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_15660) (SummandMask1@@12 T@PolymorphicMapType_15660) (SummandMask2@@12 T@PolymorphicMapType_15660) (o_2@@132 T@Ref) (f_4@@132 T@Field_23321_23322) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| ResultMask@@12) o_2@@132 f_4@@132) (+ (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| SummandMask1@@12) o_2@@132 f_4@@132) (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| SummandMask2@@12) o_2@@132 f_4@@132))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| ResultMask@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| SummandMask1@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| SummandMask2@@12) o_2@@132 f_4@@132))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_15660) (SummandMask1@@13 T@PolymorphicMapType_15660) (SummandMask2@@13 T@PolymorphicMapType_15660) (o_2@@133 T@Ref) (f_4@@133 T@Field_23321_3427) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| ResultMask@@13) o_2@@133 f_4@@133) (+ (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| SummandMask1@@13) o_2@@133 f_4@@133) (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| SummandMask2@@13) o_2@@133 f_4@@133))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| ResultMask@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| SummandMask1@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| SummandMask2@@13) o_2@@133 f_4@@133))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_15660) (SummandMask1@@14 T@PolymorphicMapType_15660) (SummandMask2@@14 T@PolymorphicMapType_15660) (o_2@@134 T@Ref) (f_4@@134 T@Field_21995_22000) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| ResultMask@@14) o_2@@134 f_4@@134) (+ (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| SummandMask1@@14) o_2@@134 f_4@@134) (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| SummandMask2@@14) o_2@@134 f_4@@134))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| ResultMask@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| SummandMask1@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| SummandMask2@@14) o_2@@134 f_4@@134))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_15660) (SummandMask1@@15 T@PolymorphicMapType_15660) (SummandMask2@@15 T@PolymorphicMapType_15660) (o_2@@135 T@Ref) (f_4@@135 T@Field_21983_15713) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| ResultMask@@15) o_2@@135 f_4@@135) (+ (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| SummandMask1@@15) o_2@@135 f_4@@135) (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| SummandMask2@@15) o_2@@135 f_4@@135))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| ResultMask@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| SummandMask1@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| SummandMask2@@15) o_2@@135 f_4@@135))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_15660) (SummandMask1@@16 T@PolymorphicMapType_15660) (SummandMask2@@16 T@PolymorphicMapType_15660) (o_2@@136 T@Ref) (f_4@@136 T@Field_21983_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| ResultMask@@16) o_2@@136 f_4@@136) (+ (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| SummandMask1@@16) o_2@@136 f_4@@136) (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| SummandMask2@@16) o_2@@136 f_4@@136))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| ResultMask@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| SummandMask1@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| SummandMask2@@16) o_2@@136 f_4@@136))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_15660) (SummandMask1@@17 T@PolymorphicMapType_15660) (SummandMask2@@17 T@PolymorphicMapType_15660) (o_2@@137 T@Ref) (f_4@@137 T@Field_21983_21984) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| ResultMask@@17) o_2@@137 f_4@@137) (+ (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| SummandMask1@@17) o_2@@137 f_4@@137) (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| SummandMask2@@17) o_2@@137 f_4@@137))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| ResultMask@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| SummandMask1@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| SummandMask2@@17) o_2@@137 f_4@@137))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_15660) (SummandMask1@@18 T@PolymorphicMapType_15660) (SummandMask2@@18 T@PolymorphicMapType_15660) (o_2@@138 T@Ref) (f_4@@138 T@Field_21983_3427) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| ResultMask@@18) o_2@@138 f_4@@138) (+ (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| SummandMask1@@18) o_2@@138 f_4@@138) (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| SummandMask2@@18) o_2@@138 f_4@@138))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| ResultMask@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| SummandMask1@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| SummandMask2@@18) o_2@@138 f_4@@138))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_15660) (SummandMask1@@19 T@PolymorphicMapType_15660) (SummandMask2@@19 T@PolymorphicMapType_15660) (o_2@@139 T@Ref) (f_4@@139 T@Field_22414_22419) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| ResultMask@@19) o_2@@139 f_4@@139) (+ (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| SummandMask1@@19) o_2@@139 f_4@@139) (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| SummandMask2@@19) o_2@@139 f_4@@139))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| ResultMask@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| SummandMask1@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| SummandMask2@@19) o_2@@139 f_4@@139))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_15660) (SummandMask1@@20 T@PolymorphicMapType_15660) (SummandMask2@@20 T@PolymorphicMapType_15660) (o_2@@140 T@Ref) (f_4@@140 T@Field_22401_15713) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| ResultMask@@20) o_2@@140 f_4@@140) (+ (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| SummandMask1@@20) o_2@@140 f_4@@140) (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| SummandMask2@@20) o_2@@140 f_4@@140))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| ResultMask@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| SummandMask1@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| SummandMask2@@20) o_2@@140 f_4@@140))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_15660) (SummandMask1@@21 T@PolymorphicMapType_15660) (SummandMask2@@21 T@PolymorphicMapType_15660) (o_2@@141 T@Ref) (f_4@@141 T@Field_22401_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| ResultMask@@21) o_2@@141 f_4@@141) (+ (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| SummandMask1@@21) o_2@@141 f_4@@141) (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| SummandMask2@@21) o_2@@141 f_4@@141))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| ResultMask@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| SummandMask1@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| SummandMask2@@21) o_2@@141 f_4@@141))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_15660) (SummandMask1@@22 T@PolymorphicMapType_15660) (SummandMask2@@22 T@PolymorphicMapType_15660) (o_2@@142 T@Ref) (f_4@@142 T@Field_22401_22402) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| ResultMask@@22) o_2@@142 f_4@@142) (+ (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| SummandMask1@@22) o_2@@142 f_4@@142) (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| SummandMask2@@22) o_2@@142 f_4@@142))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| ResultMask@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| SummandMask1@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| SummandMask2@@22) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_15660) (SummandMask1@@23 T@PolymorphicMapType_15660) (SummandMask2@@23 T@PolymorphicMapType_15660) (o_2@@143 T@Ref) (f_4@@143 T@Field_22401_3427) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| ResultMask@@23) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| SummandMask1@@23) o_2@@143 f_4@@143) (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| SummandMask2@@23) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| ResultMask@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| SummandMask1@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| SummandMask2@@23) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_15660) (SummandMask1@@24 T@PolymorphicMapType_15660) (SummandMask2@@24 T@PolymorphicMapType_15660) (o_2@@144 T@Ref) (f_4@@144 T@Field_9444_22000) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| ResultMask@@24) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| SummandMask1@@24) o_2@@144 f_4@@144) (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| SummandMask2@@24) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| ResultMask@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| SummandMask1@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| SummandMask2@@24) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_15660) (SummandMask1@@25 T@PolymorphicMapType_15660) (SummandMask2@@25 T@PolymorphicMapType_15660) (o_2@@145 T@Ref) (f_4@@145 T@Field_15712_15713) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| ResultMask@@25) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| SummandMask1@@25) o_2@@145 f_4@@145) (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| SummandMask2@@25) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| ResultMask@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| SummandMask1@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| SummandMask2@@25) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_15660) (SummandMask1@@26 T@PolymorphicMapType_15660) (SummandMask2@@26 T@PolymorphicMapType_15660) (o_2@@146 T@Ref) (f_4@@146 T@Field_15699_53) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| ResultMask@@26) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| SummandMask1@@26) o_2@@146 f_4@@146) (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| SummandMask2@@26) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| ResultMask@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| SummandMask1@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| SummandMask2@@26) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_15660) (SummandMask1@@27 T@PolymorphicMapType_15660) (SummandMask2@@27 T@PolymorphicMapType_15660) (o_2@@147 T@Ref) (f_4@@147 T@Field_9444_21984) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| ResultMask@@27) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| SummandMask1@@27) o_2@@147 f_4@@147) (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| SummandMask2@@27) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| ResultMask@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| SummandMask1@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| SummandMask2@@27) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_15660) (SummandMask1@@28 T@PolymorphicMapType_15660) (SummandMask2@@28 T@PolymorphicMapType_15660) (o_2@@148 T@Ref) (f_4@@148 T@Field_21907_3427) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| ResultMask@@28) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| SummandMask1@@28) o_2@@148 f_4@@148) (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| SummandMask2@@28) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| ResultMask@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| SummandMask1@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| SummandMask2@@28) o_2@@148 f_4@@148))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_9565| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.264:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_9565| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_9565| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_9565| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_9565| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.279:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_9565| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_9565| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_9565| a@@6 x) y))
 :qid |stdinbpl.244:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_9565| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_9565| a@@7 b@@5) y@@0))
 :qid |stdinbpl.254:18|
 :skolemid |35|
 :pattern ( (|Set#Union_9565| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_9565| a@@8 b@@6) y@@1))
 :qid |stdinbpl.256:18|
 :skolemid |36|
 :pattern ( (|Set#Union_9565| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_9565| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.240:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_9565| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_9565| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.281:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_9565| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_9565| (|Set#Difference_9565| a@@11 b@@8)) (|Set#Card_9565| (|Set#Difference_9565| b@@8 a@@11))) (|Set#Card_9565| (|Set#Intersection_9565| a@@11 b@@8))) (|Set#Card_9565| (|Set#Union_9565| a@@11 b@@8))) (= (|Set#Card_9565| (|Set#Difference_9565| a@@11 b@@8)) (- (|Set#Card_9565| a@@11) (|Set#Card_9565| (|Set#Intersection_9565| a@@11 b@@8)))))
 :qid |stdinbpl.283:18|
 :skolemid |45|
 :pattern ( (|Set#Card_9565| (|Set#Difference_9565| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_9565| s))
 :qid |stdinbpl.226:18|
 :skolemid |22|
 :pattern ( (|Set#Card_9565| s))
)))
(assert (forall ((r_1@@15 T@Ref) (i@@7 Int) ) (! (= (getPredWandId_9511_9512 (p4 r_1@@15 i@@7)) 3)
 :qid |stdinbpl.579:15|
 :skolemid |97|
 :pattern ( (p4 r_1@@15 i@@7))
)))
(assert (forall ((r_1@@16 T@Ref) (i@@8 Int) ) (! (= (getPredWandId_9536_9537 (p5 r_1@@16 i@@8)) 4)
 :qid |stdinbpl.633:15|
 :skolemid |103|
 :pattern ( (p5 r_1@@16 i@@8))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_9565| a@@12 x@@1) x@@1)
 :qid |stdinbpl.242:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_9565| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_9565| (|Set#UnionOne_9565| a@@13 x@@2)) (|Set#Card_9565| a@@13)))
 :qid |stdinbpl.246:18|
 :skolemid |32|
 :pattern ( (|Set#Card_9565| (|Set#UnionOne_9565| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_9565| (|Set#Singleton_9565| r@@0)) 1)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Set#Card_9565| (|Set#Singleton_9565| r@@0)))
)))
(assert (forall ((r_1@@17 T@Ref) ) (! (= (getPredWandId_9461_9462 (p2 r_1@@17)) 1)
 :qid |stdinbpl.466:15|
 :skolemid |85|
 :pattern ( (p2 r_1@@17))
)))
(assert (forall ((r_1@@18 T@Ref) ) (! (= (getPredWandId_9486_9487 (p3_1 r_1@@18)) 2)
 :qid |stdinbpl.520:15|
 :skolemid |91|
 :pattern ( (p3_1 r_1@@18))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_9565| r@@1) r@@1)
 :qid |stdinbpl.235:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_9565| r@@1))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_15639) ) (! (|p1#everUsed_9448| p1)
 :qid |stdinbpl.433:15|
 :skolemid |82|
 :pattern ( (|p1#trigger_9448| Heap@@60 p1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_9565| a@@14 (|Set#Union_9565| a@@14 b@@9)) (|Set#Union_9565| a@@14 b@@9))
 :qid |stdinbpl.269:18|
 :skolemid |39|
 :pattern ( (|Set#Union_9565| a@@14 (|Set#Union_9565| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_9565| a@@15 (|Set#Intersection_9565| a@@15 b@@10)) (|Set#Intersection_9565| a@@15 b@@10))
 :qid |stdinbpl.273:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_9565| a@@15 (|Set#Intersection_9565| a@@15 b@@10)))
)))
(assert (forall ((r_1@@19 T@Ref) (i@@9 Int) ) (! (= (PredicateMaskField_9511 (p4 r_1@@19 i@@9)) (|p4#sm| r_1@@19 i@@9))
 :qid |stdinbpl.571:15|
 :skolemid |95|
 :pattern ( (PredicateMaskField_9511 (p4 r_1@@19 i@@9)))
)))
(assert (forall ((r_1@@20 T@Ref) (i@@10 Int) ) (! (= (PredicateMaskField_9536 (p5 r_1@@20 i@@10)) (|p5#sm| r_1@@20 i@@10))
 :qid |stdinbpl.625:15|
 :skolemid |101|
 :pattern ( (PredicateMaskField_9536 (p5 r_1@@20 i@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_9565| o@@3))
 :qid |stdinbpl.229:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_9565| o@@3))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_15639) (o_16 T@Ref) (f_2 T@Field_25316_25321) (v T@PolymorphicMapType_16188) ) (! (succHeap Heap@@61 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@61) (store (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@61) o_16 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@61) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@61) (store (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@61) o_16 f_2 v)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_15639) (o_16@@0 T@Ref) (f_2@@0 T@Field_25303_25304) (v@@0 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@62) (store (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@62) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@62) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@62) (store (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@62) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_15639) (o_16@@1 T@Ref) (f_2@@1 T@Field_25303_3427) (v@@1 Int) ) (! (succHeap Heap@@63 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@63) (store (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@63) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@63) (store (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@63) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@63) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_15639) (o_16@@2 T@Ref) (f_2@@2 T@Field_25303_15713) (v@@2 T@Ref) ) (! (succHeap Heap@@64 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@64) (store (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@64) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@64) (store (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@64) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@64) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_15639) (o_16@@3 T@Ref) (f_2@@3 T@Field_25303_53) (v@@3 Bool) ) (! (succHeap Heap@@65 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@65) (store (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@65) o_16@@3 f_2@@3 v@@3) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@65) (store (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@65) o_16@@3 f_2@@3 v@@3) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@65) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_15639) (o_16@@4 T@Ref) (f_2@@4 T@Field_24342_24347) (v@@4 T@PolymorphicMapType_16188) ) (! (succHeap Heap@@66 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@66) (store (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@66) o_16@@4 f_2@@4 v@@4) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@66) (store (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@66) o_16@@4 f_2@@4 v@@4) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@66) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_15639) (o_16@@5 T@Ref) (f_2@@5 T@Field_24329_24330) (v@@5 T@FrameType) ) (! (succHeap Heap@@67 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@67) (store (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@67) o_16@@5 f_2@@5 v@@5) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@67) (store (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@67) o_16@@5 f_2@@5 v@@5) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@67) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_15639) (o_16@@6 T@Ref) (f_2@@6 T@Field_24329_3427) (v@@6 Int) ) (! (succHeap Heap@@68 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@68) (store (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@68) o_16@@6 f_2@@6 v@@6) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@68) (store (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@68) o_16@@6 f_2@@6 v@@6) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@68) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_15639) (o_16@@7 T@Ref) (f_2@@7 T@Field_24329_15713) (v@@7 T@Ref) ) (! (succHeap Heap@@69 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@69) (store (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@69) o_16@@7 f_2@@7 v@@7) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@69) (store (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@69) o_16@@7 f_2@@7 v@@7) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@69) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_15639) (o_16@@8 T@Ref) (f_2@@8 T@Field_24329_53) (v@@8 Bool) ) (! (succHeap Heap@@70 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@70) (store (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@70) o_16@@8 f_2@@8 v@@8) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@70) (store (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@70) o_16@@8 f_2@@8 v@@8) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@70) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_15639) (o_16@@9 T@Ref) (f_2@@9 T@Field_23334_23339) (v@@9 T@PolymorphicMapType_16188) ) (! (succHeap Heap@@71 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@71) (store (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@71) o_16@@9 f_2@@9 v@@9) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@71) (store (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@71) o_16@@9 f_2@@9 v@@9) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@71) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_15639) (o_16@@10 T@Ref) (f_2@@10 T@Field_23321_23322) (v@@10 T@FrameType) ) (! (succHeap Heap@@72 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@72) (store (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@72) o_16@@10 f_2@@10 v@@10) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@72) (store (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@72) o_16@@10 f_2@@10 v@@10) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@72) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_15639) (o_16@@11 T@Ref) (f_2@@11 T@Field_23321_3427) (v@@11 Int) ) (! (succHeap Heap@@73 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@73) (store (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@73) o_16@@11 f_2@@11 v@@11) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@73) (store (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@73) o_16@@11 f_2@@11 v@@11) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@73) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_15639) (o_16@@12 T@Ref) (f_2@@12 T@Field_23321_15713) (v@@12 T@Ref) ) (! (succHeap Heap@@74 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@74) (store (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@74) o_16@@12 f_2@@12 v@@12) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@74) (store (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@74) o_16@@12 f_2@@12 v@@12) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@74) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_15639) (o_16@@13 T@Ref) (f_2@@13 T@Field_23321_53) (v@@13 Bool) ) (! (succHeap Heap@@75 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@75) (store (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@75) o_16@@13 f_2@@13 v@@13) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@75) (store (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@75) o_16@@13 f_2@@13 v@@13) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@75) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_15639) (o_16@@14 T@Ref) (f_2@@14 T@Field_21995_22000) (v@@14 T@PolymorphicMapType_16188) ) (! (succHeap Heap@@76 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@76) (store (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@76) o_16@@14 f_2@@14 v@@14) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@76) (store (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@76) o_16@@14 f_2@@14 v@@14) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@76) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_15639) (o_16@@15 T@Ref) (f_2@@15 T@Field_21983_21984) (v@@15 T@FrameType) ) (! (succHeap Heap@@77 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@77) (store (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@77) o_16@@15 f_2@@15 v@@15) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@77) (store (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@77) o_16@@15 f_2@@15 v@@15) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@77) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_15639) (o_16@@16 T@Ref) (f_2@@16 T@Field_21983_3427) (v@@16 Int) ) (! (succHeap Heap@@78 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@78) (store (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@78) o_16@@16 f_2@@16 v@@16) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@78) (store (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@78) o_16@@16 f_2@@16 v@@16) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@78) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_15639) (o_16@@17 T@Ref) (f_2@@17 T@Field_21983_15713) (v@@17 T@Ref) ) (! (succHeap Heap@@79 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@79) (store (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@79) o_16@@17 f_2@@17 v@@17) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@79) (store (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@79) o_16@@17 f_2@@17 v@@17) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@79) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_15639) (o_16@@18 T@Ref) (f_2@@18 T@Field_21983_53) (v@@18 Bool) ) (! (succHeap Heap@@80 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@80) (store (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@80) o_16@@18 f_2@@18 v@@18) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@80) (store (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@80) o_16@@18 f_2@@18 v@@18) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@80) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_15639) (o_16@@19 T@Ref) (f_2@@19 T@Field_22414_22419) (v@@19 T@PolymorphicMapType_16188) ) (! (succHeap Heap@@81 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@81) (store (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@81) o_16@@19 f_2@@19 v@@19) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@81) (store (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@81) o_16@@19 f_2@@19 v@@19) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@81) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_15639) (o_16@@20 T@Ref) (f_2@@20 T@Field_22401_22402) (v@@20 T@FrameType) ) (! (succHeap Heap@@82 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@82) (store (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@82) o_16@@20 f_2@@20 v@@20) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@82) (store (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@82) o_16@@20 f_2@@20 v@@20) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@82) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_15639) (o_16@@21 T@Ref) (f_2@@21 T@Field_22401_3427) (v@@21 Int) ) (! (succHeap Heap@@83 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@83) (store (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@83) o_16@@21 f_2@@21 v@@21) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@83) (store (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@83) o_16@@21 f_2@@21 v@@21) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@83) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_15639) (o_16@@22 T@Ref) (f_2@@22 T@Field_22401_15713) (v@@22 T@Ref) ) (! (succHeap Heap@@84 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@84) (store (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@84) o_16@@22 f_2@@22 v@@22) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@84) (store (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@84) o_16@@22 f_2@@22 v@@22) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@84) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_15639) (o_16@@23 T@Ref) (f_2@@23 T@Field_22401_53) (v@@23 Bool) ) (! (succHeap Heap@@85 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@85) (store (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@85) o_16@@23 f_2@@23 v@@23) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@85) (store (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@85) o_16@@23 f_2@@23 v@@23) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@85) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_15639) (o_16@@24 T@Ref) (f_2@@24 T@Field_9444_22000) (v@@24 T@PolymorphicMapType_16188) ) (! (succHeap Heap@@86 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@86) (store (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@86) o_16@@24 f_2@@24 v@@24) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@86) (store (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@86) o_16@@24 f_2@@24 v@@24) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@86) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_15639) (o_16@@25 T@Ref) (f_2@@25 T@Field_9444_21984) (v@@25 T@FrameType) ) (! (succHeap Heap@@87 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@87) (store (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@87) o_16@@25 f_2@@25 v@@25) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@87) (store (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@87) o_16@@25 f_2@@25 v@@25) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@87) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_15639) (o_16@@26 T@Ref) (f_2@@26 T@Field_21907_3427) (v@@26 Int) ) (! (succHeap Heap@@88 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@88) (store (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@88) o_16@@26 f_2@@26 v@@26) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@88) (store (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@88) o_16@@26 f_2@@26 v@@26) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@88) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_15639) (o_16@@27 T@Ref) (f_2@@27 T@Field_15712_15713) (v@@27 T@Ref) ) (! (succHeap Heap@@89 (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@89) (store (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@89) o_16@@27 f_2@@27 v@@27) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@89) (store (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@89) o_16@@27 f_2@@27 v@@27) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@89) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_15639) (o_16@@28 T@Ref) (f_2@@28 T@Field_15699_53) (v@@28 Bool) ) (! (succHeap Heap@@90 (PolymorphicMapType_15639 (store (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@90) o_16@@28 f_2@@28 v@@28) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15639 (store (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@90) o_16@@28 f_2@@28 v@@28) (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_9444_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_9461_9462#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_9444_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_9444_45460#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_21983_46638#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_22401_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_22401_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_22401_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_22401_47799#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_23321_48977#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_24329_50155#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_3427#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_53#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_15713#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_21984#PolymorphicMapType_15639| Heap@@90) (|PolymorphicMapType_15639_25303_51333#PolymorphicMapType_15639| Heap@@90)))
)))
(assert (forall ((r_1@@21 T@Ref) ) (! (= (PredicateMaskField_9461 (p2 r_1@@21)) (|p2#sm| r_1@@21))
 :qid |stdinbpl.458:15|
 :skolemid |83|
 :pattern ( (PredicateMaskField_9461 (p2 r_1@@21)))
)))
(assert (forall ((r_1@@22 T@Ref) ) (! (= (PredicateMaskField_9486 (p3_1 r_1@@22)) (|p3#sm| r_1@@22))
 :qid |stdinbpl.512:15|
 :skolemid |89|
 :pattern ( (PredicateMaskField_9486 (p3_1 r_1@@22)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.313:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.314:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (= (PredicateMaskField_9448 p1) |p1#sm|))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_9565| s@@0) 0) (= s@@0 |Set#Empty_9565|)) (=> (not (= (|Set#Card_9565| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.232:33|
 :skolemid |24|
))))
 :qid |stdinbpl.230:18|
 :skolemid |25|
 :pattern ( (|Set#Card_9565| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_9565| (|Set#UnionOne_9565| a@@18 x@@4)) (+ (|Set#Card_9565| a@@18) 1)))
 :qid |stdinbpl.248:18|
 :skolemid |33|
 :pattern ( (|Set#Card_9565| (|Set#UnionOne_9565| a@@18 x@@4)))
)))
(assert (forall ((o_16@@29 T@Ref) (f_10 T@Field_15712_15713) (Heap@@91 T@PolymorphicMapType_15639) ) (!  (=> (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@91) o_16@@29 $allocated) (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@91) (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@91) o_16@@29 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15639_9118_9119#PolymorphicMapType_15639| Heap@@91) o_16@@29 f_10))
)))
(assert (forall ((p@@6 T@Field_25303_25304) (v_1@@5 T@FrameType) (q T@Field_25303_25304) (w@@5 T@FrameType) (r@@2 T@Field_25303_25304) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25303_25303 p@@6 v_1@@5 q w@@5) (InsidePredicate_25303_25303 q w@@5 r@@2 u)) (InsidePredicate_25303_25303 p@@6 v_1@@5 r@@2 u))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_25303 p@@6 v_1@@5 q w@@5) (InsidePredicate_25303_25303 q w@@5 r@@2 u))
)))
(assert (forall ((p@@7 T@Field_25303_25304) (v_1@@6 T@FrameType) (q@@0 T@Field_25303_25304) (w@@6 T@FrameType) (r@@3 T@Field_24329_24330) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_25303 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_25303_24329 q@@0 w@@6 r@@3 u@@0)) (InsidePredicate_25303_24329 p@@7 v_1@@6 r@@3 u@@0))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_25303 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_25303_24329 q@@0 w@@6 r@@3 u@@0))
)))
(assert (forall ((p@@8 T@Field_25303_25304) (v_1@@7 T@FrameType) (q@@1 T@Field_25303_25304) (w@@7 T@FrameType) (r@@4 T@Field_23321_23322) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_25303 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_25303_23321 q@@1 w@@7 r@@4 u@@1)) (InsidePredicate_25303_23321 p@@8 v_1@@7 r@@4 u@@1))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_25303 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_25303_23321 q@@1 w@@7 r@@4 u@@1))
)))
(assert (forall ((p@@9 T@Field_25303_25304) (v_1@@8 T@FrameType) (q@@2 T@Field_25303_25304) (w@@8 T@FrameType) (r@@5 T@Field_22401_22402) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_25303 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_25303_22401 q@@2 w@@8 r@@5 u@@2)) (InsidePredicate_25303_22401 p@@9 v_1@@8 r@@5 u@@2))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_25303 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_25303_22401 q@@2 w@@8 r@@5 u@@2))
)))
(assert (forall ((p@@10 T@Field_25303_25304) (v_1@@9 T@FrameType) (q@@3 T@Field_25303_25304) (w@@9 T@FrameType) (r@@6 T@Field_21983_21984) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_25303 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_25303_21983 q@@3 w@@9 r@@6 u@@3)) (InsidePredicate_25303_21983 p@@10 v_1@@9 r@@6 u@@3))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_25303 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_25303_21983 q@@3 w@@9 r@@6 u@@3))
)))
(assert (forall ((p@@11 T@Field_25303_25304) (v_1@@10 T@FrameType) (q@@4 T@Field_25303_25304) (w@@10 T@FrameType) (r@@7 T@Field_9444_21984) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_25303 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_25303_15699 q@@4 w@@10 r@@7 u@@4)) (InsidePredicate_25303_15699 p@@11 v_1@@10 r@@7 u@@4))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_25303 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_25303_15699 q@@4 w@@10 r@@7 u@@4))
)))
(assert (forall ((p@@12 T@Field_25303_25304) (v_1@@11 T@FrameType) (q@@5 T@Field_24329_24330) (w@@11 T@FrameType) (r@@8 T@Field_25303_25304) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_24329 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_24329_25303 q@@5 w@@11 r@@8 u@@5)) (InsidePredicate_25303_25303 p@@12 v_1@@11 r@@8 u@@5))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_24329 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_24329_25303 q@@5 w@@11 r@@8 u@@5))
)))
(assert (forall ((p@@13 T@Field_25303_25304) (v_1@@12 T@FrameType) (q@@6 T@Field_24329_24330) (w@@12 T@FrameType) (r@@9 T@Field_24329_24330) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_24329 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_24329_24329 q@@6 w@@12 r@@9 u@@6)) (InsidePredicate_25303_24329 p@@13 v_1@@12 r@@9 u@@6))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_24329 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_24329_24329 q@@6 w@@12 r@@9 u@@6))
)))
(assert (forall ((p@@14 T@Field_25303_25304) (v_1@@13 T@FrameType) (q@@7 T@Field_24329_24330) (w@@13 T@FrameType) (r@@10 T@Field_23321_23322) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_24329 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_24329_23321 q@@7 w@@13 r@@10 u@@7)) (InsidePredicate_25303_23321 p@@14 v_1@@13 r@@10 u@@7))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_24329 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_24329_23321 q@@7 w@@13 r@@10 u@@7))
)))
(assert (forall ((p@@15 T@Field_25303_25304) (v_1@@14 T@FrameType) (q@@8 T@Field_24329_24330) (w@@14 T@FrameType) (r@@11 T@Field_22401_22402) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_24329 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_24329_22401 q@@8 w@@14 r@@11 u@@8)) (InsidePredicate_25303_22401 p@@15 v_1@@14 r@@11 u@@8))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_24329 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_24329_22401 q@@8 w@@14 r@@11 u@@8))
)))
(assert (forall ((p@@16 T@Field_25303_25304) (v_1@@15 T@FrameType) (q@@9 T@Field_24329_24330) (w@@15 T@FrameType) (r@@12 T@Field_21983_21984) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_24329 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_24329_21983 q@@9 w@@15 r@@12 u@@9)) (InsidePredicate_25303_21983 p@@16 v_1@@15 r@@12 u@@9))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_24329 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_24329_21983 q@@9 w@@15 r@@12 u@@9))
)))
(assert (forall ((p@@17 T@Field_25303_25304) (v_1@@16 T@FrameType) (q@@10 T@Field_24329_24330) (w@@16 T@FrameType) (r@@13 T@Field_9444_21984) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_24329 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_24329_15699 q@@10 w@@16 r@@13 u@@10)) (InsidePredicate_25303_15699 p@@17 v_1@@16 r@@13 u@@10))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_24329 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_24329_15699 q@@10 w@@16 r@@13 u@@10))
)))
(assert (forall ((p@@18 T@Field_25303_25304) (v_1@@17 T@FrameType) (q@@11 T@Field_23321_23322) (w@@17 T@FrameType) (r@@14 T@Field_25303_25304) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_23321 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_23321_25303 q@@11 w@@17 r@@14 u@@11)) (InsidePredicate_25303_25303 p@@18 v_1@@17 r@@14 u@@11))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_23321 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_23321_25303 q@@11 w@@17 r@@14 u@@11))
)))
(assert (forall ((p@@19 T@Field_25303_25304) (v_1@@18 T@FrameType) (q@@12 T@Field_23321_23322) (w@@18 T@FrameType) (r@@15 T@Field_24329_24330) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_23321 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_23321_24329 q@@12 w@@18 r@@15 u@@12)) (InsidePredicate_25303_24329 p@@19 v_1@@18 r@@15 u@@12))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_23321 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_23321_24329 q@@12 w@@18 r@@15 u@@12))
)))
(assert (forall ((p@@20 T@Field_25303_25304) (v_1@@19 T@FrameType) (q@@13 T@Field_23321_23322) (w@@19 T@FrameType) (r@@16 T@Field_23321_23322) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_23321 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_23321_23321 q@@13 w@@19 r@@16 u@@13)) (InsidePredicate_25303_23321 p@@20 v_1@@19 r@@16 u@@13))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_23321 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_23321_23321 q@@13 w@@19 r@@16 u@@13))
)))
(assert (forall ((p@@21 T@Field_25303_25304) (v_1@@20 T@FrameType) (q@@14 T@Field_23321_23322) (w@@20 T@FrameType) (r@@17 T@Field_22401_22402) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_23321 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_23321_22401 q@@14 w@@20 r@@17 u@@14)) (InsidePredicate_25303_22401 p@@21 v_1@@20 r@@17 u@@14))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_23321 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_23321_22401 q@@14 w@@20 r@@17 u@@14))
)))
(assert (forall ((p@@22 T@Field_25303_25304) (v_1@@21 T@FrameType) (q@@15 T@Field_23321_23322) (w@@21 T@FrameType) (r@@18 T@Field_21983_21984) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_23321 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_23321_21983 q@@15 w@@21 r@@18 u@@15)) (InsidePredicate_25303_21983 p@@22 v_1@@21 r@@18 u@@15))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_23321 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_23321_21983 q@@15 w@@21 r@@18 u@@15))
)))
(assert (forall ((p@@23 T@Field_25303_25304) (v_1@@22 T@FrameType) (q@@16 T@Field_23321_23322) (w@@22 T@FrameType) (r@@19 T@Field_9444_21984) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_23321 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_23321_15699 q@@16 w@@22 r@@19 u@@16)) (InsidePredicate_25303_15699 p@@23 v_1@@22 r@@19 u@@16))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_23321 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_23321_15699 q@@16 w@@22 r@@19 u@@16))
)))
(assert (forall ((p@@24 T@Field_25303_25304) (v_1@@23 T@FrameType) (q@@17 T@Field_22401_22402) (w@@23 T@FrameType) (r@@20 T@Field_25303_25304) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_22401 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_22401_25303 q@@17 w@@23 r@@20 u@@17)) (InsidePredicate_25303_25303 p@@24 v_1@@23 r@@20 u@@17))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_22401 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_22401_25303 q@@17 w@@23 r@@20 u@@17))
)))
(assert (forall ((p@@25 T@Field_25303_25304) (v_1@@24 T@FrameType) (q@@18 T@Field_22401_22402) (w@@24 T@FrameType) (r@@21 T@Field_24329_24330) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_22401 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_22401_24329 q@@18 w@@24 r@@21 u@@18)) (InsidePredicate_25303_24329 p@@25 v_1@@24 r@@21 u@@18))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_22401 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_22401_24329 q@@18 w@@24 r@@21 u@@18))
)))
(assert (forall ((p@@26 T@Field_25303_25304) (v_1@@25 T@FrameType) (q@@19 T@Field_22401_22402) (w@@25 T@FrameType) (r@@22 T@Field_23321_23322) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_22401 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_22401_23321 q@@19 w@@25 r@@22 u@@19)) (InsidePredicate_25303_23321 p@@26 v_1@@25 r@@22 u@@19))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_22401 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_22401_23321 q@@19 w@@25 r@@22 u@@19))
)))
(assert (forall ((p@@27 T@Field_25303_25304) (v_1@@26 T@FrameType) (q@@20 T@Field_22401_22402) (w@@26 T@FrameType) (r@@23 T@Field_22401_22402) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_22401 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_22401_22401 q@@20 w@@26 r@@23 u@@20)) (InsidePredicate_25303_22401 p@@27 v_1@@26 r@@23 u@@20))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_22401 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_22401_22401 q@@20 w@@26 r@@23 u@@20))
)))
(assert (forall ((p@@28 T@Field_25303_25304) (v_1@@27 T@FrameType) (q@@21 T@Field_22401_22402) (w@@27 T@FrameType) (r@@24 T@Field_21983_21984) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_22401 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_22401_21983 q@@21 w@@27 r@@24 u@@21)) (InsidePredicate_25303_21983 p@@28 v_1@@27 r@@24 u@@21))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_22401 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_22401_21983 q@@21 w@@27 r@@24 u@@21))
)))
(assert (forall ((p@@29 T@Field_25303_25304) (v_1@@28 T@FrameType) (q@@22 T@Field_22401_22402) (w@@28 T@FrameType) (r@@25 T@Field_9444_21984) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_22401 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_22401_15699 q@@22 w@@28 r@@25 u@@22)) (InsidePredicate_25303_15699 p@@29 v_1@@28 r@@25 u@@22))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_22401 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_22401_15699 q@@22 w@@28 r@@25 u@@22))
)))
(assert (forall ((p@@30 T@Field_25303_25304) (v_1@@29 T@FrameType) (q@@23 T@Field_21983_21984) (w@@29 T@FrameType) (r@@26 T@Field_25303_25304) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_21983 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_21983_25303 q@@23 w@@29 r@@26 u@@23)) (InsidePredicate_25303_25303 p@@30 v_1@@29 r@@26 u@@23))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_21983 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_21983_25303 q@@23 w@@29 r@@26 u@@23))
)))
(assert (forall ((p@@31 T@Field_25303_25304) (v_1@@30 T@FrameType) (q@@24 T@Field_21983_21984) (w@@30 T@FrameType) (r@@27 T@Field_24329_24330) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_21983 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_21983_24329 q@@24 w@@30 r@@27 u@@24)) (InsidePredicate_25303_24329 p@@31 v_1@@30 r@@27 u@@24))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_21983 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_21983_24329 q@@24 w@@30 r@@27 u@@24))
)))
(assert (forall ((p@@32 T@Field_25303_25304) (v_1@@31 T@FrameType) (q@@25 T@Field_21983_21984) (w@@31 T@FrameType) (r@@28 T@Field_23321_23322) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_21983 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_21983_23321 q@@25 w@@31 r@@28 u@@25)) (InsidePredicate_25303_23321 p@@32 v_1@@31 r@@28 u@@25))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_21983 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_21983_23321 q@@25 w@@31 r@@28 u@@25))
)))
(assert (forall ((p@@33 T@Field_25303_25304) (v_1@@32 T@FrameType) (q@@26 T@Field_21983_21984) (w@@32 T@FrameType) (r@@29 T@Field_22401_22402) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_21983 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_21983_22401 q@@26 w@@32 r@@29 u@@26)) (InsidePredicate_25303_22401 p@@33 v_1@@32 r@@29 u@@26))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_21983 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_21983_22401 q@@26 w@@32 r@@29 u@@26))
)))
(assert (forall ((p@@34 T@Field_25303_25304) (v_1@@33 T@FrameType) (q@@27 T@Field_21983_21984) (w@@33 T@FrameType) (r@@30 T@Field_21983_21984) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_21983 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_21983_21983 q@@27 w@@33 r@@30 u@@27)) (InsidePredicate_25303_21983 p@@34 v_1@@33 r@@30 u@@27))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_21983 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_21983_21983 q@@27 w@@33 r@@30 u@@27))
)))
(assert (forall ((p@@35 T@Field_25303_25304) (v_1@@34 T@FrameType) (q@@28 T@Field_21983_21984) (w@@34 T@FrameType) (r@@31 T@Field_9444_21984) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_21983 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_21983_15699 q@@28 w@@34 r@@31 u@@28)) (InsidePredicate_25303_15699 p@@35 v_1@@34 r@@31 u@@28))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_21983 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_21983_15699 q@@28 w@@34 r@@31 u@@28))
)))
(assert (forall ((p@@36 T@Field_25303_25304) (v_1@@35 T@FrameType) (q@@29 T@Field_9444_21984) (w@@35 T@FrameType) (r@@32 T@Field_25303_25304) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_15699 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_15699_25303 q@@29 w@@35 r@@32 u@@29)) (InsidePredicate_25303_25303 p@@36 v_1@@35 r@@32 u@@29))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_15699 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_15699_25303 q@@29 w@@35 r@@32 u@@29))
)))
(assert (forall ((p@@37 T@Field_25303_25304) (v_1@@36 T@FrameType) (q@@30 T@Field_9444_21984) (w@@36 T@FrameType) (r@@33 T@Field_24329_24330) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_15699 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_15699_24329 q@@30 w@@36 r@@33 u@@30)) (InsidePredicate_25303_24329 p@@37 v_1@@36 r@@33 u@@30))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_15699 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_15699_24329 q@@30 w@@36 r@@33 u@@30))
)))
(assert (forall ((p@@38 T@Field_25303_25304) (v_1@@37 T@FrameType) (q@@31 T@Field_9444_21984) (w@@37 T@FrameType) (r@@34 T@Field_23321_23322) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_15699 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_15699_23321 q@@31 w@@37 r@@34 u@@31)) (InsidePredicate_25303_23321 p@@38 v_1@@37 r@@34 u@@31))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_15699 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_15699_23321 q@@31 w@@37 r@@34 u@@31))
)))
(assert (forall ((p@@39 T@Field_25303_25304) (v_1@@38 T@FrameType) (q@@32 T@Field_9444_21984) (w@@38 T@FrameType) (r@@35 T@Field_22401_22402) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_15699 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_15699_22401 q@@32 w@@38 r@@35 u@@32)) (InsidePredicate_25303_22401 p@@39 v_1@@38 r@@35 u@@32))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_15699 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_15699_22401 q@@32 w@@38 r@@35 u@@32))
)))
(assert (forall ((p@@40 T@Field_25303_25304) (v_1@@39 T@FrameType) (q@@33 T@Field_9444_21984) (w@@39 T@FrameType) (r@@36 T@Field_21983_21984) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_15699 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_15699_21983 q@@33 w@@39 r@@36 u@@33)) (InsidePredicate_25303_21983 p@@40 v_1@@39 r@@36 u@@33))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_15699 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_15699_21983 q@@33 w@@39 r@@36 u@@33))
)))
(assert (forall ((p@@41 T@Field_25303_25304) (v_1@@40 T@FrameType) (q@@34 T@Field_9444_21984) (w@@40 T@FrameType) (r@@37 T@Field_9444_21984) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_25303_15699 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_15699_15699 q@@34 w@@40 r@@37 u@@34)) (InsidePredicate_25303_15699 p@@41 v_1@@40 r@@37 u@@34))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25303_15699 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_15699_15699 q@@34 w@@40 r@@37 u@@34))
)))
(assert (forall ((p@@42 T@Field_24329_24330) (v_1@@41 T@FrameType) (q@@35 T@Field_25303_25304) (w@@41 T@FrameType) (r@@38 T@Field_25303_25304) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_25303 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_25303_25303 q@@35 w@@41 r@@38 u@@35)) (InsidePredicate_24329_25303 p@@42 v_1@@41 r@@38 u@@35))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_25303 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_25303_25303 q@@35 w@@41 r@@38 u@@35))
)))
(assert (forall ((p@@43 T@Field_24329_24330) (v_1@@42 T@FrameType) (q@@36 T@Field_25303_25304) (w@@42 T@FrameType) (r@@39 T@Field_24329_24330) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_25303 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_25303_24329 q@@36 w@@42 r@@39 u@@36)) (InsidePredicate_24329_24329 p@@43 v_1@@42 r@@39 u@@36))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_25303 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_25303_24329 q@@36 w@@42 r@@39 u@@36))
)))
(assert (forall ((p@@44 T@Field_24329_24330) (v_1@@43 T@FrameType) (q@@37 T@Field_25303_25304) (w@@43 T@FrameType) (r@@40 T@Field_23321_23322) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_25303 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_25303_23321 q@@37 w@@43 r@@40 u@@37)) (InsidePredicate_24329_23321 p@@44 v_1@@43 r@@40 u@@37))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_25303 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_25303_23321 q@@37 w@@43 r@@40 u@@37))
)))
(assert (forall ((p@@45 T@Field_24329_24330) (v_1@@44 T@FrameType) (q@@38 T@Field_25303_25304) (w@@44 T@FrameType) (r@@41 T@Field_22401_22402) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_25303 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_25303_22401 q@@38 w@@44 r@@41 u@@38)) (InsidePredicate_24329_22401 p@@45 v_1@@44 r@@41 u@@38))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_25303 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_25303_22401 q@@38 w@@44 r@@41 u@@38))
)))
(assert (forall ((p@@46 T@Field_24329_24330) (v_1@@45 T@FrameType) (q@@39 T@Field_25303_25304) (w@@45 T@FrameType) (r@@42 T@Field_21983_21984) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_25303 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_25303_21983 q@@39 w@@45 r@@42 u@@39)) (InsidePredicate_24329_21983 p@@46 v_1@@45 r@@42 u@@39))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_25303 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_25303_21983 q@@39 w@@45 r@@42 u@@39))
)))
(assert (forall ((p@@47 T@Field_24329_24330) (v_1@@46 T@FrameType) (q@@40 T@Field_25303_25304) (w@@46 T@FrameType) (r@@43 T@Field_9444_21984) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_25303 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_25303_15699 q@@40 w@@46 r@@43 u@@40)) (InsidePredicate_24329_15699 p@@47 v_1@@46 r@@43 u@@40))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_25303 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_25303_15699 q@@40 w@@46 r@@43 u@@40))
)))
(assert (forall ((p@@48 T@Field_24329_24330) (v_1@@47 T@FrameType) (q@@41 T@Field_24329_24330) (w@@47 T@FrameType) (r@@44 T@Field_25303_25304) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_24329 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_24329_25303 q@@41 w@@47 r@@44 u@@41)) (InsidePredicate_24329_25303 p@@48 v_1@@47 r@@44 u@@41))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_24329 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_24329_25303 q@@41 w@@47 r@@44 u@@41))
)))
(assert (forall ((p@@49 T@Field_24329_24330) (v_1@@48 T@FrameType) (q@@42 T@Field_24329_24330) (w@@48 T@FrameType) (r@@45 T@Field_24329_24330) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_24329 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_24329_24329 q@@42 w@@48 r@@45 u@@42)) (InsidePredicate_24329_24329 p@@49 v_1@@48 r@@45 u@@42))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_24329 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_24329_24329 q@@42 w@@48 r@@45 u@@42))
)))
(assert (forall ((p@@50 T@Field_24329_24330) (v_1@@49 T@FrameType) (q@@43 T@Field_24329_24330) (w@@49 T@FrameType) (r@@46 T@Field_23321_23322) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_24329 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_24329_23321 q@@43 w@@49 r@@46 u@@43)) (InsidePredicate_24329_23321 p@@50 v_1@@49 r@@46 u@@43))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_24329 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_24329_23321 q@@43 w@@49 r@@46 u@@43))
)))
(assert (forall ((p@@51 T@Field_24329_24330) (v_1@@50 T@FrameType) (q@@44 T@Field_24329_24330) (w@@50 T@FrameType) (r@@47 T@Field_22401_22402) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_24329 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_24329_22401 q@@44 w@@50 r@@47 u@@44)) (InsidePredicate_24329_22401 p@@51 v_1@@50 r@@47 u@@44))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_24329 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_24329_22401 q@@44 w@@50 r@@47 u@@44))
)))
(assert (forall ((p@@52 T@Field_24329_24330) (v_1@@51 T@FrameType) (q@@45 T@Field_24329_24330) (w@@51 T@FrameType) (r@@48 T@Field_21983_21984) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_24329 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_24329_21983 q@@45 w@@51 r@@48 u@@45)) (InsidePredicate_24329_21983 p@@52 v_1@@51 r@@48 u@@45))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_24329 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_24329_21983 q@@45 w@@51 r@@48 u@@45))
)))
(assert (forall ((p@@53 T@Field_24329_24330) (v_1@@52 T@FrameType) (q@@46 T@Field_24329_24330) (w@@52 T@FrameType) (r@@49 T@Field_9444_21984) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_24329 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_24329_15699 q@@46 w@@52 r@@49 u@@46)) (InsidePredicate_24329_15699 p@@53 v_1@@52 r@@49 u@@46))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_24329 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_24329_15699 q@@46 w@@52 r@@49 u@@46))
)))
(assert (forall ((p@@54 T@Field_24329_24330) (v_1@@53 T@FrameType) (q@@47 T@Field_23321_23322) (w@@53 T@FrameType) (r@@50 T@Field_25303_25304) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_23321 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_23321_25303 q@@47 w@@53 r@@50 u@@47)) (InsidePredicate_24329_25303 p@@54 v_1@@53 r@@50 u@@47))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_23321 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_23321_25303 q@@47 w@@53 r@@50 u@@47))
)))
(assert (forall ((p@@55 T@Field_24329_24330) (v_1@@54 T@FrameType) (q@@48 T@Field_23321_23322) (w@@54 T@FrameType) (r@@51 T@Field_24329_24330) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_23321 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_23321_24329 q@@48 w@@54 r@@51 u@@48)) (InsidePredicate_24329_24329 p@@55 v_1@@54 r@@51 u@@48))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_23321 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_23321_24329 q@@48 w@@54 r@@51 u@@48))
)))
(assert (forall ((p@@56 T@Field_24329_24330) (v_1@@55 T@FrameType) (q@@49 T@Field_23321_23322) (w@@55 T@FrameType) (r@@52 T@Field_23321_23322) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_23321 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_23321_23321 q@@49 w@@55 r@@52 u@@49)) (InsidePredicate_24329_23321 p@@56 v_1@@55 r@@52 u@@49))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_23321 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_23321_23321 q@@49 w@@55 r@@52 u@@49))
)))
(assert (forall ((p@@57 T@Field_24329_24330) (v_1@@56 T@FrameType) (q@@50 T@Field_23321_23322) (w@@56 T@FrameType) (r@@53 T@Field_22401_22402) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_23321 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_23321_22401 q@@50 w@@56 r@@53 u@@50)) (InsidePredicate_24329_22401 p@@57 v_1@@56 r@@53 u@@50))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_23321 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_23321_22401 q@@50 w@@56 r@@53 u@@50))
)))
(assert (forall ((p@@58 T@Field_24329_24330) (v_1@@57 T@FrameType) (q@@51 T@Field_23321_23322) (w@@57 T@FrameType) (r@@54 T@Field_21983_21984) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_23321 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_23321_21983 q@@51 w@@57 r@@54 u@@51)) (InsidePredicate_24329_21983 p@@58 v_1@@57 r@@54 u@@51))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_23321 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_23321_21983 q@@51 w@@57 r@@54 u@@51))
)))
(assert (forall ((p@@59 T@Field_24329_24330) (v_1@@58 T@FrameType) (q@@52 T@Field_23321_23322) (w@@58 T@FrameType) (r@@55 T@Field_9444_21984) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_23321 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_23321_15699 q@@52 w@@58 r@@55 u@@52)) (InsidePredicate_24329_15699 p@@59 v_1@@58 r@@55 u@@52))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_23321 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_23321_15699 q@@52 w@@58 r@@55 u@@52))
)))
(assert (forall ((p@@60 T@Field_24329_24330) (v_1@@59 T@FrameType) (q@@53 T@Field_22401_22402) (w@@59 T@FrameType) (r@@56 T@Field_25303_25304) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_22401 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_22401_25303 q@@53 w@@59 r@@56 u@@53)) (InsidePredicate_24329_25303 p@@60 v_1@@59 r@@56 u@@53))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_22401 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_22401_25303 q@@53 w@@59 r@@56 u@@53))
)))
(assert (forall ((p@@61 T@Field_24329_24330) (v_1@@60 T@FrameType) (q@@54 T@Field_22401_22402) (w@@60 T@FrameType) (r@@57 T@Field_24329_24330) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_22401 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_22401_24329 q@@54 w@@60 r@@57 u@@54)) (InsidePredicate_24329_24329 p@@61 v_1@@60 r@@57 u@@54))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_22401 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_22401_24329 q@@54 w@@60 r@@57 u@@54))
)))
(assert (forall ((p@@62 T@Field_24329_24330) (v_1@@61 T@FrameType) (q@@55 T@Field_22401_22402) (w@@61 T@FrameType) (r@@58 T@Field_23321_23322) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_22401 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_22401_23321 q@@55 w@@61 r@@58 u@@55)) (InsidePredicate_24329_23321 p@@62 v_1@@61 r@@58 u@@55))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_22401 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_22401_23321 q@@55 w@@61 r@@58 u@@55))
)))
(assert (forall ((p@@63 T@Field_24329_24330) (v_1@@62 T@FrameType) (q@@56 T@Field_22401_22402) (w@@62 T@FrameType) (r@@59 T@Field_22401_22402) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_22401 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_22401_22401 q@@56 w@@62 r@@59 u@@56)) (InsidePredicate_24329_22401 p@@63 v_1@@62 r@@59 u@@56))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_22401 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_22401_22401 q@@56 w@@62 r@@59 u@@56))
)))
(assert (forall ((p@@64 T@Field_24329_24330) (v_1@@63 T@FrameType) (q@@57 T@Field_22401_22402) (w@@63 T@FrameType) (r@@60 T@Field_21983_21984) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_22401 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_22401_21983 q@@57 w@@63 r@@60 u@@57)) (InsidePredicate_24329_21983 p@@64 v_1@@63 r@@60 u@@57))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_22401 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_22401_21983 q@@57 w@@63 r@@60 u@@57))
)))
(assert (forall ((p@@65 T@Field_24329_24330) (v_1@@64 T@FrameType) (q@@58 T@Field_22401_22402) (w@@64 T@FrameType) (r@@61 T@Field_9444_21984) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_22401 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_22401_15699 q@@58 w@@64 r@@61 u@@58)) (InsidePredicate_24329_15699 p@@65 v_1@@64 r@@61 u@@58))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_22401 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_22401_15699 q@@58 w@@64 r@@61 u@@58))
)))
(assert (forall ((p@@66 T@Field_24329_24330) (v_1@@65 T@FrameType) (q@@59 T@Field_21983_21984) (w@@65 T@FrameType) (r@@62 T@Field_25303_25304) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_21983 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_21983_25303 q@@59 w@@65 r@@62 u@@59)) (InsidePredicate_24329_25303 p@@66 v_1@@65 r@@62 u@@59))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_21983 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_21983_25303 q@@59 w@@65 r@@62 u@@59))
)))
(assert (forall ((p@@67 T@Field_24329_24330) (v_1@@66 T@FrameType) (q@@60 T@Field_21983_21984) (w@@66 T@FrameType) (r@@63 T@Field_24329_24330) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_21983 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_21983_24329 q@@60 w@@66 r@@63 u@@60)) (InsidePredicate_24329_24329 p@@67 v_1@@66 r@@63 u@@60))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_21983 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_21983_24329 q@@60 w@@66 r@@63 u@@60))
)))
(assert (forall ((p@@68 T@Field_24329_24330) (v_1@@67 T@FrameType) (q@@61 T@Field_21983_21984) (w@@67 T@FrameType) (r@@64 T@Field_23321_23322) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_21983 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_21983_23321 q@@61 w@@67 r@@64 u@@61)) (InsidePredicate_24329_23321 p@@68 v_1@@67 r@@64 u@@61))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_21983 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_21983_23321 q@@61 w@@67 r@@64 u@@61))
)))
(assert (forall ((p@@69 T@Field_24329_24330) (v_1@@68 T@FrameType) (q@@62 T@Field_21983_21984) (w@@68 T@FrameType) (r@@65 T@Field_22401_22402) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_21983 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_21983_22401 q@@62 w@@68 r@@65 u@@62)) (InsidePredicate_24329_22401 p@@69 v_1@@68 r@@65 u@@62))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_21983 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_21983_22401 q@@62 w@@68 r@@65 u@@62))
)))
(assert (forall ((p@@70 T@Field_24329_24330) (v_1@@69 T@FrameType) (q@@63 T@Field_21983_21984) (w@@69 T@FrameType) (r@@66 T@Field_21983_21984) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_21983 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_21983_21983 q@@63 w@@69 r@@66 u@@63)) (InsidePredicate_24329_21983 p@@70 v_1@@69 r@@66 u@@63))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_21983 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_21983_21983 q@@63 w@@69 r@@66 u@@63))
)))
(assert (forall ((p@@71 T@Field_24329_24330) (v_1@@70 T@FrameType) (q@@64 T@Field_21983_21984) (w@@70 T@FrameType) (r@@67 T@Field_9444_21984) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_21983 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_21983_15699 q@@64 w@@70 r@@67 u@@64)) (InsidePredicate_24329_15699 p@@71 v_1@@70 r@@67 u@@64))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_21983 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_21983_15699 q@@64 w@@70 r@@67 u@@64))
)))
(assert (forall ((p@@72 T@Field_24329_24330) (v_1@@71 T@FrameType) (q@@65 T@Field_9444_21984) (w@@71 T@FrameType) (r@@68 T@Field_25303_25304) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_15699 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_15699_25303 q@@65 w@@71 r@@68 u@@65)) (InsidePredicate_24329_25303 p@@72 v_1@@71 r@@68 u@@65))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_15699 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_15699_25303 q@@65 w@@71 r@@68 u@@65))
)))
(assert (forall ((p@@73 T@Field_24329_24330) (v_1@@72 T@FrameType) (q@@66 T@Field_9444_21984) (w@@72 T@FrameType) (r@@69 T@Field_24329_24330) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_15699 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_15699_24329 q@@66 w@@72 r@@69 u@@66)) (InsidePredicate_24329_24329 p@@73 v_1@@72 r@@69 u@@66))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_15699 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_15699_24329 q@@66 w@@72 r@@69 u@@66))
)))
(assert (forall ((p@@74 T@Field_24329_24330) (v_1@@73 T@FrameType) (q@@67 T@Field_9444_21984) (w@@73 T@FrameType) (r@@70 T@Field_23321_23322) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_15699 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_15699_23321 q@@67 w@@73 r@@70 u@@67)) (InsidePredicate_24329_23321 p@@74 v_1@@73 r@@70 u@@67))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_15699 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_15699_23321 q@@67 w@@73 r@@70 u@@67))
)))
(assert (forall ((p@@75 T@Field_24329_24330) (v_1@@74 T@FrameType) (q@@68 T@Field_9444_21984) (w@@74 T@FrameType) (r@@71 T@Field_22401_22402) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_15699 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_15699_22401 q@@68 w@@74 r@@71 u@@68)) (InsidePredicate_24329_22401 p@@75 v_1@@74 r@@71 u@@68))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_15699 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_15699_22401 q@@68 w@@74 r@@71 u@@68))
)))
(assert (forall ((p@@76 T@Field_24329_24330) (v_1@@75 T@FrameType) (q@@69 T@Field_9444_21984) (w@@75 T@FrameType) (r@@72 T@Field_21983_21984) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_15699 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_15699_21983 q@@69 w@@75 r@@72 u@@69)) (InsidePredicate_24329_21983 p@@76 v_1@@75 r@@72 u@@69))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_15699 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_15699_21983 q@@69 w@@75 r@@72 u@@69))
)))
(assert (forall ((p@@77 T@Field_24329_24330) (v_1@@76 T@FrameType) (q@@70 T@Field_9444_21984) (w@@76 T@FrameType) (r@@73 T@Field_9444_21984) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_24329_15699 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_15699_15699 q@@70 w@@76 r@@73 u@@70)) (InsidePredicate_24329_15699 p@@77 v_1@@76 r@@73 u@@70))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24329_15699 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_15699_15699 q@@70 w@@76 r@@73 u@@70))
)))
(assert (forall ((p@@78 T@Field_23321_23322) (v_1@@77 T@FrameType) (q@@71 T@Field_25303_25304) (w@@77 T@FrameType) (r@@74 T@Field_25303_25304) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_25303 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_25303_25303 q@@71 w@@77 r@@74 u@@71)) (InsidePredicate_23321_25303 p@@78 v_1@@77 r@@74 u@@71))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_25303 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_25303_25303 q@@71 w@@77 r@@74 u@@71))
)))
(assert (forall ((p@@79 T@Field_23321_23322) (v_1@@78 T@FrameType) (q@@72 T@Field_25303_25304) (w@@78 T@FrameType) (r@@75 T@Field_24329_24330) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_25303 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_25303_24329 q@@72 w@@78 r@@75 u@@72)) (InsidePredicate_23321_24329 p@@79 v_1@@78 r@@75 u@@72))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_25303 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_25303_24329 q@@72 w@@78 r@@75 u@@72))
)))
(assert (forall ((p@@80 T@Field_23321_23322) (v_1@@79 T@FrameType) (q@@73 T@Field_25303_25304) (w@@79 T@FrameType) (r@@76 T@Field_23321_23322) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_25303 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_25303_23321 q@@73 w@@79 r@@76 u@@73)) (InsidePredicate_23321_23321 p@@80 v_1@@79 r@@76 u@@73))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_25303 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_25303_23321 q@@73 w@@79 r@@76 u@@73))
)))
(assert (forall ((p@@81 T@Field_23321_23322) (v_1@@80 T@FrameType) (q@@74 T@Field_25303_25304) (w@@80 T@FrameType) (r@@77 T@Field_22401_22402) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_25303 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_25303_22401 q@@74 w@@80 r@@77 u@@74)) (InsidePredicate_23321_22401 p@@81 v_1@@80 r@@77 u@@74))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_25303 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_25303_22401 q@@74 w@@80 r@@77 u@@74))
)))
(assert (forall ((p@@82 T@Field_23321_23322) (v_1@@81 T@FrameType) (q@@75 T@Field_25303_25304) (w@@81 T@FrameType) (r@@78 T@Field_21983_21984) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_25303 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_25303_21983 q@@75 w@@81 r@@78 u@@75)) (InsidePredicate_23321_21983 p@@82 v_1@@81 r@@78 u@@75))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_25303 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_25303_21983 q@@75 w@@81 r@@78 u@@75))
)))
(assert (forall ((p@@83 T@Field_23321_23322) (v_1@@82 T@FrameType) (q@@76 T@Field_25303_25304) (w@@82 T@FrameType) (r@@79 T@Field_9444_21984) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_25303 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_25303_15699 q@@76 w@@82 r@@79 u@@76)) (InsidePredicate_23321_15699 p@@83 v_1@@82 r@@79 u@@76))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_25303 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_25303_15699 q@@76 w@@82 r@@79 u@@76))
)))
(assert (forall ((p@@84 T@Field_23321_23322) (v_1@@83 T@FrameType) (q@@77 T@Field_24329_24330) (w@@83 T@FrameType) (r@@80 T@Field_25303_25304) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_24329 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_24329_25303 q@@77 w@@83 r@@80 u@@77)) (InsidePredicate_23321_25303 p@@84 v_1@@83 r@@80 u@@77))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_24329 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_24329_25303 q@@77 w@@83 r@@80 u@@77))
)))
(assert (forall ((p@@85 T@Field_23321_23322) (v_1@@84 T@FrameType) (q@@78 T@Field_24329_24330) (w@@84 T@FrameType) (r@@81 T@Field_24329_24330) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_24329 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_24329_24329 q@@78 w@@84 r@@81 u@@78)) (InsidePredicate_23321_24329 p@@85 v_1@@84 r@@81 u@@78))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_24329 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_24329_24329 q@@78 w@@84 r@@81 u@@78))
)))
(assert (forall ((p@@86 T@Field_23321_23322) (v_1@@85 T@FrameType) (q@@79 T@Field_24329_24330) (w@@85 T@FrameType) (r@@82 T@Field_23321_23322) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_24329 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_24329_23321 q@@79 w@@85 r@@82 u@@79)) (InsidePredicate_23321_23321 p@@86 v_1@@85 r@@82 u@@79))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_24329 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_24329_23321 q@@79 w@@85 r@@82 u@@79))
)))
(assert (forall ((p@@87 T@Field_23321_23322) (v_1@@86 T@FrameType) (q@@80 T@Field_24329_24330) (w@@86 T@FrameType) (r@@83 T@Field_22401_22402) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_24329 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_24329_22401 q@@80 w@@86 r@@83 u@@80)) (InsidePredicate_23321_22401 p@@87 v_1@@86 r@@83 u@@80))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_24329 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_24329_22401 q@@80 w@@86 r@@83 u@@80))
)))
(assert (forall ((p@@88 T@Field_23321_23322) (v_1@@87 T@FrameType) (q@@81 T@Field_24329_24330) (w@@87 T@FrameType) (r@@84 T@Field_21983_21984) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_24329 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_24329_21983 q@@81 w@@87 r@@84 u@@81)) (InsidePredicate_23321_21983 p@@88 v_1@@87 r@@84 u@@81))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_24329 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_24329_21983 q@@81 w@@87 r@@84 u@@81))
)))
(assert (forall ((p@@89 T@Field_23321_23322) (v_1@@88 T@FrameType) (q@@82 T@Field_24329_24330) (w@@88 T@FrameType) (r@@85 T@Field_9444_21984) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_24329 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_24329_15699 q@@82 w@@88 r@@85 u@@82)) (InsidePredicate_23321_15699 p@@89 v_1@@88 r@@85 u@@82))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_24329 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_24329_15699 q@@82 w@@88 r@@85 u@@82))
)))
(assert (forall ((p@@90 T@Field_23321_23322) (v_1@@89 T@FrameType) (q@@83 T@Field_23321_23322) (w@@89 T@FrameType) (r@@86 T@Field_25303_25304) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_23321 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_23321_25303 q@@83 w@@89 r@@86 u@@83)) (InsidePredicate_23321_25303 p@@90 v_1@@89 r@@86 u@@83))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_23321 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_23321_25303 q@@83 w@@89 r@@86 u@@83))
)))
(assert (forall ((p@@91 T@Field_23321_23322) (v_1@@90 T@FrameType) (q@@84 T@Field_23321_23322) (w@@90 T@FrameType) (r@@87 T@Field_24329_24330) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_23321 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_23321_24329 q@@84 w@@90 r@@87 u@@84)) (InsidePredicate_23321_24329 p@@91 v_1@@90 r@@87 u@@84))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_23321 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_23321_24329 q@@84 w@@90 r@@87 u@@84))
)))
(assert (forall ((p@@92 T@Field_23321_23322) (v_1@@91 T@FrameType) (q@@85 T@Field_23321_23322) (w@@91 T@FrameType) (r@@88 T@Field_23321_23322) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_23321 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_23321_23321 q@@85 w@@91 r@@88 u@@85)) (InsidePredicate_23321_23321 p@@92 v_1@@91 r@@88 u@@85))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_23321 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_23321_23321 q@@85 w@@91 r@@88 u@@85))
)))
(assert (forall ((p@@93 T@Field_23321_23322) (v_1@@92 T@FrameType) (q@@86 T@Field_23321_23322) (w@@92 T@FrameType) (r@@89 T@Field_22401_22402) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_23321 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_23321_22401 q@@86 w@@92 r@@89 u@@86)) (InsidePredicate_23321_22401 p@@93 v_1@@92 r@@89 u@@86))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_23321 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_23321_22401 q@@86 w@@92 r@@89 u@@86))
)))
(assert (forall ((p@@94 T@Field_23321_23322) (v_1@@93 T@FrameType) (q@@87 T@Field_23321_23322) (w@@93 T@FrameType) (r@@90 T@Field_21983_21984) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_23321 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_23321_21983 q@@87 w@@93 r@@90 u@@87)) (InsidePredicate_23321_21983 p@@94 v_1@@93 r@@90 u@@87))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_23321 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_23321_21983 q@@87 w@@93 r@@90 u@@87))
)))
(assert (forall ((p@@95 T@Field_23321_23322) (v_1@@94 T@FrameType) (q@@88 T@Field_23321_23322) (w@@94 T@FrameType) (r@@91 T@Field_9444_21984) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_23321 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_23321_15699 q@@88 w@@94 r@@91 u@@88)) (InsidePredicate_23321_15699 p@@95 v_1@@94 r@@91 u@@88))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_23321 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_23321_15699 q@@88 w@@94 r@@91 u@@88))
)))
(assert (forall ((p@@96 T@Field_23321_23322) (v_1@@95 T@FrameType) (q@@89 T@Field_22401_22402) (w@@95 T@FrameType) (r@@92 T@Field_25303_25304) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_22401 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_22401_25303 q@@89 w@@95 r@@92 u@@89)) (InsidePredicate_23321_25303 p@@96 v_1@@95 r@@92 u@@89))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_22401 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_22401_25303 q@@89 w@@95 r@@92 u@@89))
)))
(assert (forall ((p@@97 T@Field_23321_23322) (v_1@@96 T@FrameType) (q@@90 T@Field_22401_22402) (w@@96 T@FrameType) (r@@93 T@Field_24329_24330) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_22401 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_22401_24329 q@@90 w@@96 r@@93 u@@90)) (InsidePredicate_23321_24329 p@@97 v_1@@96 r@@93 u@@90))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_22401 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_22401_24329 q@@90 w@@96 r@@93 u@@90))
)))
(assert (forall ((p@@98 T@Field_23321_23322) (v_1@@97 T@FrameType) (q@@91 T@Field_22401_22402) (w@@97 T@FrameType) (r@@94 T@Field_23321_23322) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_22401 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_22401_23321 q@@91 w@@97 r@@94 u@@91)) (InsidePredicate_23321_23321 p@@98 v_1@@97 r@@94 u@@91))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_22401 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_22401_23321 q@@91 w@@97 r@@94 u@@91))
)))
(assert (forall ((p@@99 T@Field_23321_23322) (v_1@@98 T@FrameType) (q@@92 T@Field_22401_22402) (w@@98 T@FrameType) (r@@95 T@Field_22401_22402) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_22401 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_22401_22401 q@@92 w@@98 r@@95 u@@92)) (InsidePredicate_23321_22401 p@@99 v_1@@98 r@@95 u@@92))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_22401 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_22401_22401 q@@92 w@@98 r@@95 u@@92))
)))
(assert (forall ((p@@100 T@Field_23321_23322) (v_1@@99 T@FrameType) (q@@93 T@Field_22401_22402) (w@@99 T@FrameType) (r@@96 T@Field_21983_21984) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_22401 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_22401_21983 q@@93 w@@99 r@@96 u@@93)) (InsidePredicate_23321_21983 p@@100 v_1@@99 r@@96 u@@93))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_22401 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_22401_21983 q@@93 w@@99 r@@96 u@@93))
)))
(assert (forall ((p@@101 T@Field_23321_23322) (v_1@@100 T@FrameType) (q@@94 T@Field_22401_22402) (w@@100 T@FrameType) (r@@97 T@Field_9444_21984) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_22401 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_22401_15699 q@@94 w@@100 r@@97 u@@94)) (InsidePredicate_23321_15699 p@@101 v_1@@100 r@@97 u@@94))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_22401 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_22401_15699 q@@94 w@@100 r@@97 u@@94))
)))
(assert (forall ((p@@102 T@Field_23321_23322) (v_1@@101 T@FrameType) (q@@95 T@Field_21983_21984) (w@@101 T@FrameType) (r@@98 T@Field_25303_25304) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_21983 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_21983_25303 q@@95 w@@101 r@@98 u@@95)) (InsidePredicate_23321_25303 p@@102 v_1@@101 r@@98 u@@95))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_21983 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_21983_25303 q@@95 w@@101 r@@98 u@@95))
)))
(assert (forall ((p@@103 T@Field_23321_23322) (v_1@@102 T@FrameType) (q@@96 T@Field_21983_21984) (w@@102 T@FrameType) (r@@99 T@Field_24329_24330) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_21983 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_21983_24329 q@@96 w@@102 r@@99 u@@96)) (InsidePredicate_23321_24329 p@@103 v_1@@102 r@@99 u@@96))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_21983 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_21983_24329 q@@96 w@@102 r@@99 u@@96))
)))
(assert (forall ((p@@104 T@Field_23321_23322) (v_1@@103 T@FrameType) (q@@97 T@Field_21983_21984) (w@@103 T@FrameType) (r@@100 T@Field_23321_23322) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_21983 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_21983_23321 q@@97 w@@103 r@@100 u@@97)) (InsidePredicate_23321_23321 p@@104 v_1@@103 r@@100 u@@97))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_21983 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_21983_23321 q@@97 w@@103 r@@100 u@@97))
)))
(assert (forall ((p@@105 T@Field_23321_23322) (v_1@@104 T@FrameType) (q@@98 T@Field_21983_21984) (w@@104 T@FrameType) (r@@101 T@Field_22401_22402) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_21983 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_21983_22401 q@@98 w@@104 r@@101 u@@98)) (InsidePredicate_23321_22401 p@@105 v_1@@104 r@@101 u@@98))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_21983 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_21983_22401 q@@98 w@@104 r@@101 u@@98))
)))
(assert (forall ((p@@106 T@Field_23321_23322) (v_1@@105 T@FrameType) (q@@99 T@Field_21983_21984) (w@@105 T@FrameType) (r@@102 T@Field_21983_21984) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_21983 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_21983_21983 q@@99 w@@105 r@@102 u@@99)) (InsidePredicate_23321_21983 p@@106 v_1@@105 r@@102 u@@99))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_21983 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_21983_21983 q@@99 w@@105 r@@102 u@@99))
)))
(assert (forall ((p@@107 T@Field_23321_23322) (v_1@@106 T@FrameType) (q@@100 T@Field_21983_21984) (w@@106 T@FrameType) (r@@103 T@Field_9444_21984) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_21983 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_21983_15699 q@@100 w@@106 r@@103 u@@100)) (InsidePredicate_23321_15699 p@@107 v_1@@106 r@@103 u@@100))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_21983 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_21983_15699 q@@100 w@@106 r@@103 u@@100))
)))
(assert (forall ((p@@108 T@Field_23321_23322) (v_1@@107 T@FrameType) (q@@101 T@Field_9444_21984) (w@@107 T@FrameType) (r@@104 T@Field_25303_25304) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_15699 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_15699_25303 q@@101 w@@107 r@@104 u@@101)) (InsidePredicate_23321_25303 p@@108 v_1@@107 r@@104 u@@101))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_15699 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_15699_25303 q@@101 w@@107 r@@104 u@@101))
)))
(assert (forall ((p@@109 T@Field_23321_23322) (v_1@@108 T@FrameType) (q@@102 T@Field_9444_21984) (w@@108 T@FrameType) (r@@105 T@Field_24329_24330) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_15699 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_15699_24329 q@@102 w@@108 r@@105 u@@102)) (InsidePredicate_23321_24329 p@@109 v_1@@108 r@@105 u@@102))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_15699 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_15699_24329 q@@102 w@@108 r@@105 u@@102))
)))
(assert (forall ((p@@110 T@Field_23321_23322) (v_1@@109 T@FrameType) (q@@103 T@Field_9444_21984) (w@@109 T@FrameType) (r@@106 T@Field_23321_23322) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_15699 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_15699_23321 q@@103 w@@109 r@@106 u@@103)) (InsidePredicate_23321_23321 p@@110 v_1@@109 r@@106 u@@103))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_15699 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_15699_23321 q@@103 w@@109 r@@106 u@@103))
)))
(assert (forall ((p@@111 T@Field_23321_23322) (v_1@@110 T@FrameType) (q@@104 T@Field_9444_21984) (w@@110 T@FrameType) (r@@107 T@Field_22401_22402) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_15699 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_15699_22401 q@@104 w@@110 r@@107 u@@104)) (InsidePredicate_23321_22401 p@@111 v_1@@110 r@@107 u@@104))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_15699 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_15699_22401 q@@104 w@@110 r@@107 u@@104))
)))
(assert (forall ((p@@112 T@Field_23321_23322) (v_1@@111 T@FrameType) (q@@105 T@Field_9444_21984) (w@@111 T@FrameType) (r@@108 T@Field_21983_21984) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_15699 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_15699_21983 q@@105 w@@111 r@@108 u@@105)) (InsidePredicate_23321_21983 p@@112 v_1@@111 r@@108 u@@105))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_15699 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_15699_21983 q@@105 w@@111 r@@108 u@@105))
)))
(assert (forall ((p@@113 T@Field_23321_23322) (v_1@@112 T@FrameType) (q@@106 T@Field_9444_21984) (w@@112 T@FrameType) (r@@109 T@Field_9444_21984) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_23321_15699 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_15699_15699 q@@106 w@@112 r@@109 u@@106)) (InsidePredicate_23321_15699 p@@113 v_1@@112 r@@109 u@@106))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23321_15699 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_15699_15699 q@@106 w@@112 r@@109 u@@106))
)))
(assert (forall ((p@@114 T@Field_22401_22402) (v_1@@113 T@FrameType) (q@@107 T@Field_25303_25304) (w@@113 T@FrameType) (r@@110 T@Field_25303_25304) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_25303 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_25303_25303 q@@107 w@@113 r@@110 u@@107)) (InsidePredicate_22401_25303 p@@114 v_1@@113 r@@110 u@@107))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_25303 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_25303_25303 q@@107 w@@113 r@@110 u@@107))
)))
(assert (forall ((p@@115 T@Field_22401_22402) (v_1@@114 T@FrameType) (q@@108 T@Field_25303_25304) (w@@114 T@FrameType) (r@@111 T@Field_24329_24330) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_25303 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_25303_24329 q@@108 w@@114 r@@111 u@@108)) (InsidePredicate_22401_24329 p@@115 v_1@@114 r@@111 u@@108))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_25303 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_25303_24329 q@@108 w@@114 r@@111 u@@108))
)))
(assert (forall ((p@@116 T@Field_22401_22402) (v_1@@115 T@FrameType) (q@@109 T@Field_25303_25304) (w@@115 T@FrameType) (r@@112 T@Field_23321_23322) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_25303 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_25303_23321 q@@109 w@@115 r@@112 u@@109)) (InsidePredicate_22401_23321 p@@116 v_1@@115 r@@112 u@@109))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_25303 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_25303_23321 q@@109 w@@115 r@@112 u@@109))
)))
(assert (forall ((p@@117 T@Field_22401_22402) (v_1@@116 T@FrameType) (q@@110 T@Field_25303_25304) (w@@116 T@FrameType) (r@@113 T@Field_22401_22402) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_25303 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_25303_22401 q@@110 w@@116 r@@113 u@@110)) (InsidePredicate_22401_22401 p@@117 v_1@@116 r@@113 u@@110))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_25303 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_25303_22401 q@@110 w@@116 r@@113 u@@110))
)))
(assert (forall ((p@@118 T@Field_22401_22402) (v_1@@117 T@FrameType) (q@@111 T@Field_25303_25304) (w@@117 T@FrameType) (r@@114 T@Field_21983_21984) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_25303 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_25303_21983 q@@111 w@@117 r@@114 u@@111)) (InsidePredicate_22401_21983 p@@118 v_1@@117 r@@114 u@@111))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_25303 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_25303_21983 q@@111 w@@117 r@@114 u@@111))
)))
(assert (forall ((p@@119 T@Field_22401_22402) (v_1@@118 T@FrameType) (q@@112 T@Field_25303_25304) (w@@118 T@FrameType) (r@@115 T@Field_9444_21984) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_25303 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_25303_15699 q@@112 w@@118 r@@115 u@@112)) (InsidePredicate_22401_15699 p@@119 v_1@@118 r@@115 u@@112))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_25303 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_25303_15699 q@@112 w@@118 r@@115 u@@112))
)))
(assert (forall ((p@@120 T@Field_22401_22402) (v_1@@119 T@FrameType) (q@@113 T@Field_24329_24330) (w@@119 T@FrameType) (r@@116 T@Field_25303_25304) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_24329 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_24329_25303 q@@113 w@@119 r@@116 u@@113)) (InsidePredicate_22401_25303 p@@120 v_1@@119 r@@116 u@@113))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_24329 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_24329_25303 q@@113 w@@119 r@@116 u@@113))
)))
(assert (forall ((p@@121 T@Field_22401_22402) (v_1@@120 T@FrameType) (q@@114 T@Field_24329_24330) (w@@120 T@FrameType) (r@@117 T@Field_24329_24330) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_24329 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_24329_24329 q@@114 w@@120 r@@117 u@@114)) (InsidePredicate_22401_24329 p@@121 v_1@@120 r@@117 u@@114))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_24329 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_24329_24329 q@@114 w@@120 r@@117 u@@114))
)))
(assert (forall ((p@@122 T@Field_22401_22402) (v_1@@121 T@FrameType) (q@@115 T@Field_24329_24330) (w@@121 T@FrameType) (r@@118 T@Field_23321_23322) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_24329 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_24329_23321 q@@115 w@@121 r@@118 u@@115)) (InsidePredicate_22401_23321 p@@122 v_1@@121 r@@118 u@@115))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_24329 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_24329_23321 q@@115 w@@121 r@@118 u@@115))
)))
(assert (forall ((p@@123 T@Field_22401_22402) (v_1@@122 T@FrameType) (q@@116 T@Field_24329_24330) (w@@122 T@FrameType) (r@@119 T@Field_22401_22402) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_24329 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_24329_22401 q@@116 w@@122 r@@119 u@@116)) (InsidePredicate_22401_22401 p@@123 v_1@@122 r@@119 u@@116))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_24329 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_24329_22401 q@@116 w@@122 r@@119 u@@116))
)))
(assert (forall ((p@@124 T@Field_22401_22402) (v_1@@123 T@FrameType) (q@@117 T@Field_24329_24330) (w@@123 T@FrameType) (r@@120 T@Field_21983_21984) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_24329 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_24329_21983 q@@117 w@@123 r@@120 u@@117)) (InsidePredicate_22401_21983 p@@124 v_1@@123 r@@120 u@@117))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_24329 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_24329_21983 q@@117 w@@123 r@@120 u@@117))
)))
(assert (forall ((p@@125 T@Field_22401_22402) (v_1@@124 T@FrameType) (q@@118 T@Field_24329_24330) (w@@124 T@FrameType) (r@@121 T@Field_9444_21984) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_24329 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_24329_15699 q@@118 w@@124 r@@121 u@@118)) (InsidePredicate_22401_15699 p@@125 v_1@@124 r@@121 u@@118))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_24329 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_24329_15699 q@@118 w@@124 r@@121 u@@118))
)))
(assert (forall ((p@@126 T@Field_22401_22402) (v_1@@125 T@FrameType) (q@@119 T@Field_23321_23322) (w@@125 T@FrameType) (r@@122 T@Field_25303_25304) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_23321 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_23321_25303 q@@119 w@@125 r@@122 u@@119)) (InsidePredicate_22401_25303 p@@126 v_1@@125 r@@122 u@@119))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_23321 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_23321_25303 q@@119 w@@125 r@@122 u@@119))
)))
(assert (forall ((p@@127 T@Field_22401_22402) (v_1@@126 T@FrameType) (q@@120 T@Field_23321_23322) (w@@126 T@FrameType) (r@@123 T@Field_24329_24330) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_23321 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_23321_24329 q@@120 w@@126 r@@123 u@@120)) (InsidePredicate_22401_24329 p@@127 v_1@@126 r@@123 u@@120))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_23321 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_23321_24329 q@@120 w@@126 r@@123 u@@120))
)))
(assert (forall ((p@@128 T@Field_22401_22402) (v_1@@127 T@FrameType) (q@@121 T@Field_23321_23322) (w@@127 T@FrameType) (r@@124 T@Field_23321_23322) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_23321 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_23321_23321 q@@121 w@@127 r@@124 u@@121)) (InsidePredicate_22401_23321 p@@128 v_1@@127 r@@124 u@@121))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_23321 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_23321_23321 q@@121 w@@127 r@@124 u@@121))
)))
(assert (forall ((p@@129 T@Field_22401_22402) (v_1@@128 T@FrameType) (q@@122 T@Field_23321_23322) (w@@128 T@FrameType) (r@@125 T@Field_22401_22402) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_23321 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_23321_22401 q@@122 w@@128 r@@125 u@@122)) (InsidePredicate_22401_22401 p@@129 v_1@@128 r@@125 u@@122))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_23321 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_23321_22401 q@@122 w@@128 r@@125 u@@122))
)))
(assert (forall ((p@@130 T@Field_22401_22402) (v_1@@129 T@FrameType) (q@@123 T@Field_23321_23322) (w@@129 T@FrameType) (r@@126 T@Field_21983_21984) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_23321 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_23321_21983 q@@123 w@@129 r@@126 u@@123)) (InsidePredicate_22401_21983 p@@130 v_1@@129 r@@126 u@@123))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_23321 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_23321_21983 q@@123 w@@129 r@@126 u@@123))
)))
(assert (forall ((p@@131 T@Field_22401_22402) (v_1@@130 T@FrameType) (q@@124 T@Field_23321_23322) (w@@130 T@FrameType) (r@@127 T@Field_9444_21984) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_23321 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_23321_15699 q@@124 w@@130 r@@127 u@@124)) (InsidePredicate_22401_15699 p@@131 v_1@@130 r@@127 u@@124))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_23321 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_23321_15699 q@@124 w@@130 r@@127 u@@124))
)))
(assert (forall ((p@@132 T@Field_22401_22402) (v_1@@131 T@FrameType) (q@@125 T@Field_22401_22402) (w@@131 T@FrameType) (r@@128 T@Field_25303_25304) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_22401 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_22401_25303 q@@125 w@@131 r@@128 u@@125)) (InsidePredicate_22401_25303 p@@132 v_1@@131 r@@128 u@@125))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_22401 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_22401_25303 q@@125 w@@131 r@@128 u@@125))
)))
(assert (forall ((p@@133 T@Field_22401_22402) (v_1@@132 T@FrameType) (q@@126 T@Field_22401_22402) (w@@132 T@FrameType) (r@@129 T@Field_24329_24330) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_22401 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_22401_24329 q@@126 w@@132 r@@129 u@@126)) (InsidePredicate_22401_24329 p@@133 v_1@@132 r@@129 u@@126))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_22401 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_22401_24329 q@@126 w@@132 r@@129 u@@126))
)))
(assert (forall ((p@@134 T@Field_22401_22402) (v_1@@133 T@FrameType) (q@@127 T@Field_22401_22402) (w@@133 T@FrameType) (r@@130 T@Field_23321_23322) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_22401 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_22401_23321 q@@127 w@@133 r@@130 u@@127)) (InsidePredicate_22401_23321 p@@134 v_1@@133 r@@130 u@@127))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_22401 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_22401_23321 q@@127 w@@133 r@@130 u@@127))
)))
(assert (forall ((p@@135 T@Field_22401_22402) (v_1@@134 T@FrameType) (q@@128 T@Field_22401_22402) (w@@134 T@FrameType) (r@@131 T@Field_22401_22402) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_22401 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_22401_22401 q@@128 w@@134 r@@131 u@@128)) (InsidePredicate_22401_22401 p@@135 v_1@@134 r@@131 u@@128))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_22401 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_22401_22401 q@@128 w@@134 r@@131 u@@128))
)))
(assert (forall ((p@@136 T@Field_22401_22402) (v_1@@135 T@FrameType) (q@@129 T@Field_22401_22402) (w@@135 T@FrameType) (r@@132 T@Field_21983_21984) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_22401 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_22401_21983 q@@129 w@@135 r@@132 u@@129)) (InsidePredicate_22401_21983 p@@136 v_1@@135 r@@132 u@@129))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_22401 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_22401_21983 q@@129 w@@135 r@@132 u@@129))
)))
(assert (forall ((p@@137 T@Field_22401_22402) (v_1@@136 T@FrameType) (q@@130 T@Field_22401_22402) (w@@136 T@FrameType) (r@@133 T@Field_9444_21984) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_22401 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_22401_15699 q@@130 w@@136 r@@133 u@@130)) (InsidePredicate_22401_15699 p@@137 v_1@@136 r@@133 u@@130))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_22401 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_22401_15699 q@@130 w@@136 r@@133 u@@130))
)))
(assert (forall ((p@@138 T@Field_22401_22402) (v_1@@137 T@FrameType) (q@@131 T@Field_21983_21984) (w@@137 T@FrameType) (r@@134 T@Field_25303_25304) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_21983 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_21983_25303 q@@131 w@@137 r@@134 u@@131)) (InsidePredicate_22401_25303 p@@138 v_1@@137 r@@134 u@@131))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_21983 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_21983_25303 q@@131 w@@137 r@@134 u@@131))
)))
(assert (forall ((p@@139 T@Field_22401_22402) (v_1@@138 T@FrameType) (q@@132 T@Field_21983_21984) (w@@138 T@FrameType) (r@@135 T@Field_24329_24330) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_21983 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_21983_24329 q@@132 w@@138 r@@135 u@@132)) (InsidePredicate_22401_24329 p@@139 v_1@@138 r@@135 u@@132))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_21983 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_21983_24329 q@@132 w@@138 r@@135 u@@132))
)))
(assert (forall ((p@@140 T@Field_22401_22402) (v_1@@139 T@FrameType) (q@@133 T@Field_21983_21984) (w@@139 T@FrameType) (r@@136 T@Field_23321_23322) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_21983 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_21983_23321 q@@133 w@@139 r@@136 u@@133)) (InsidePredicate_22401_23321 p@@140 v_1@@139 r@@136 u@@133))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_21983 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_21983_23321 q@@133 w@@139 r@@136 u@@133))
)))
(assert (forall ((p@@141 T@Field_22401_22402) (v_1@@140 T@FrameType) (q@@134 T@Field_21983_21984) (w@@140 T@FrameType) (r@@137 T@Field_22401_22402) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_21983 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_21983_22401 q@@134 w@@140 r@@137 u@@134)) (InsidePredicate_22401_22401 p@@141 v_1@@140 r@@137 u@@134))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_21983 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_21983_22401 q@@134 w@@140 r@@137 u@@134))
)))
(assert (forall ((p@@142 T@Field_22401_22402) (v_1@@141 T@FrameType) (q@@135 T@Field_21983_21984) (w@@141 T@FrameType) (r@@138 T@Field_21983_21984) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_21983 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_21983_21983 q@@135 w@@141 r@@138 u@@135)) (InsidePredicate_22401_21983 p@@142 v_1@@141 r@@138 u@@135))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_21983 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_21983_21983 q@@135 w@@141 r@@138 u@@135))
)))
(assert (forall ((p@@143 T@Field_22401_22402) (v_1@@142 T@FrameType) (q@@136 T@Field_21983_21984) (w@@142 T@FrameType) (r@@139 T@Field_9444_21984) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_21983 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_21983_15699 q@@136 w@@142 r@@139 u@@136)) (InsidePredicate_22401_15699 p@@143 v_1@@142 r@@139 u@@136))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_21983 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_21983_15699 q@@136 w@@142 r@@139 u@@136))
)))
(assert (forall ((p@@144 T@Field_22401_22402) (v_1@@143 T@FrameType) (q@@137 T@Field_9444_21984) (w@@143 T@FrameType) (r@@140 T@Field_25303_25304) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_15699 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_15699_25303 q@@137 w@@143 r@@140 u@@137)) (InsidePredicate_22401_25303 p@@144 v_1@@143 r@@140 u@@137))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_15699 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_15699_25303 q@@137 w@@143 r@@140 u@@137))
)))
(assert (forall ((p@@145 T@Field_22401_22402) (v_1@@144 T@FrameType) (q@@138 T@Field_9444_21984) (w@@144 T@FrameType) (r@@141 T@Field_24329_24330) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_15699 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_15699_24329 q@@138 w@@144 r@@141 u@@138)) (InsidePredicate_22401_24329 p@@145 v_1@@144 r@@141 u@@138))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_15699 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_15699_24329 q@@138 w@@144 r@@141 u@@138))
)))
(assert (forall ((p@@146 T@Field_22401_22402) (v_1@@145 T@FrameType) (q@@139 T@Field_9444_21984) (w@@145 T@FrameType) (r@@142 T@Field_23321_23322) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_15699 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_15699_23321 q@@139 w@@145 r@@142 u@@139)) (InsidePredicate_22401_23321 p@@146 v_1@@145 r@@142 u@@139))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_15699 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_15699_23321 q@@139 w@@145 r@@142 u@@139))
)))
(assert (forall ((p@@147 T@Field_22401_22402) (v_1@@146 T@FrameType) (q@@140 T@Field_9444_21984) (w@@146 T@FrameType) (r@@143 T@Field_22401_22402) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_15699 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_15699_22401 q@@140 w@@146 r@@143 u@@140)) (InsidePredicate_22401_22401 p@@147 v_1@@146 r@@143 u@@140))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_15699 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_15699_22401 q@@140 w@@146 r@@143 u@@140))
)))
(assert (forall ((p@@148 T@Field_22401_22402) (v_1@@147 T@FrameType) (q@@141 T@Field_9444_21984) (w@@147 T@FrameType) (r@@144 T@Field_21983_21984) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_15699 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_15699_21983 q@@141 w@@147 r@@144 u@@141)) (InsidePredicate_22401_21983 p@@148 v_1@@147 r@@144 u@@141))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_15699 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_15699_21983 q@@141 w@@147 r@@144 u@@141))
)))
(assert (forall ((p@@149 T@Field_22401_22402) (v_1@@148 T@FrameType) (q@@142 T@Field_9444_21984) (w@@148 T@FrameType) (r@@145 T@Field_9444_21984) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_22401_15699 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_15699_15699 q@@142 w@@148 r@@145 u@@142)) (InsidePredicate_22401_15699 p@@149 v_1@@148 r@@145 u@@142))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22401_15699 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_15699_15699 q@@142 w@@148 r@@145 u@@142))
)))
(assert (forall ((p@@150 T@Field_21983_21984) (v_1@@149 T@FrameType) (q@@143 T@Field_25303_25304) (w@@149 T@FrameType) (r@@146 T@Field_25303_25304) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_25303 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_25303_25303 q@@143 w@@149 r@@146 u@@143)) (InsidePredicate_21983_25303 p@@150 v_1@@149 r@@146 u@@143))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_25303 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_25303_25303 q@@143 w@@149 r@@146 u@@143))
)))
(assert (forall ((p@@151 T@Field_21983_21984) (v_1@@150 T@FrameType) (q@@144 T@Field_25303_25304) (w@@150 T@FrameType) (r@@147 T@Field_24329_24330) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_25303 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_25303_24329 q@@144 w@@150 r@@147 u@@144)) (InsidePredicate_21983_24329 p@@151 v_1@@150 r@@147 u@@144))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_25303 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_25303_24329 q@@144 w@@150 r@@147 u@@144))
)))
(assert (forall ((p@@152 T@Field_21983_21984) (v_1@@151 T@FrameType) (q@@145 T@Field_25303_25304) (w@@151 T@FrameType) (r@@148 T@Field_23321_23322) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_25303 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_25303_23321 q@@145 w@@151 r@@148 u@@145)) (InsidePredicate_21983_23321 p@@152 v_1@@151 r@@148 u@@145))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_25303 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_25303_23321 q@@145 w@@151 r@@148 u@@145))
)))
(assert (forall ((p@@153 T@Field_21983_21984) (v_1@@152 T@FrameType) (q@@146 T@Field_25303_25304) (w@@152 T@FrameType) (r@@149 T@Field_22401_22402) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_25303 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_25303_22401 q@@146 w@@152 r@@149 u@@146)) (InsidePredicate_21983_22401 p@@153 v_1@@152 r@@149 u@@146))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_25303 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_25303_22401 q@@146 w@@152 r@@149 u@@146))
)))
(assert (forall ((p@@154 T@Field_21983_21984) (v_1@@153 T@FrameType) (q@@147 T@Field_25303_25304) (w@@153 T@FrameType) (r@@150 T@Field_21983_21984) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_25303 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_25303_21983 q@@147 w@@153 r@@150 u@@147)) (InsidePredicate_21983_21983 p@@154 v_1@@153 r@@150 u@@147))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_25303 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_25303_21983 q@@147 w@@153 r@@150 u@@147))
)))
(assert (forall ((p@@155 T@Field_21983_21984) (v_1@@154 T@FrameType) (q@@148 T@Field_25303_25304) (w@@154 T@FrameType) (r@@151 T@Field_9444_21984) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_25303 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_25303_15699 q@@148 w@@154 r@@151 u@@148)) (InsidePredicate_21983_15699 p@@155 v_1@@154 r@@151 u@@148))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_25303 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_25303_15699 q@@148 w@@154 r@@151 u@@148))
)))
(assert (forall ((p@@156 T@Field_21983_21984) (v_1@@155 T@FrameType) (q@@149 T@Field_24329_24330) (w@@155 T@FrameType) (r@@152 T@Field_25303_25304) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_24329 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_24329_25303 q@@149 w@@155 r@@152 u@@149)) (InsidePredicate_21983_25303 p@@156 v_1@@155 r@@152 u@@149))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_24329 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_24329_25303 q@@149 w@@155 r@@152 u@@149))
)))
(assert (forall ((p@@157 T@Field_21983_21984) (v_1@@156 T@FrameType) (q@@150 T@Field_24329_24330) (w@@156 T@FrameType) (r@@153 T@Field_24329_24330) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_24329 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_24329_24329 q@@150 w@@156 r@@153 u@@150)) (InsidePredicate_21983_24329 p@@157 v_1@@156 r@@153 u@@150))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_24329 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_24329_24329 q@@150 w@@156 r@@153 u@@150))
)))
(assert (forall ((p@@158 T@Field_21983_21984) (v_1@@157 T@FrameType) (q@@151 T@Field_24329_24330) (w@@157 T@FrameType) (r@@154 T@Field_23321_23322) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_24329 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_24329_23321 q@@151 w@@157 r@@154 u@@151)) (InsidePredicate_21983_23321 p@@158 v_1@@157 r@@154 u@@151))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_24329 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_24329_23321 q@@151 w@@157 r@@154 u@@151))
)))
(assert (forall ((p@@159 T@Field_21983_21984) (v_1@@158 T@FrameType) (q@@152 T@Field_24329_24330) (w@@158 T@FrameType) (r@@155 T@Field_22401_22402) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_24329 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_24329_22401 q@@152 w@@158 r@@155 u@@152)) (InsidePredicate_21983_22401 p@@159 v_1@@158 r@@155 u@@152))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_24329 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_24329_22401 q@@152 w@@158 r@@155 u@@152))
)))
(assert (forall ((p@@160 T@Field_21983_21984) (v_1@@159 T@FrameType) (q@@153 T@Field_24329_24330) (w@@159 T@FrameType) (r@@156 T@Field_21983_21984) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_24329 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_24329_21983 q@@153 w@@159 r@@156 u@@153)) (InsidePredicate_21983_21983 p@@160 v_1@@159 r@@156 u@@153))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_24329 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_24329_21983 q@@153 w@@159 r@@156 u@@153))
)))
(assert (forall ((p@@161 T@Field_21983_21984) (v_1@@160 T@FrameType) (q@@154 T@Field_24329_24330) (w@@160 T@FrameType) (r@@157 T@Field_9444_21984) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_24329 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_24329_15699 q@@154 w@@160 r@@157 u@@154)) (InsidePredicate_21983_15699 p@@161 v_1@@160 r@@157 u@@154))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_24329 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_24329_15699 q@@154 w@@160 r@@157 u@@154))
)))
(assert (forall ((p@@162 T@Field_21983_21984) (v_1@@161 T@FrameType) (q@@155 T@Field_23321_23322) (w@@161 T@FrameType) (r@@158 T@Field_25303_25304) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_23321 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_23321_25303 q@@155 w@@161 r@@158 u@@155)) (InsidePredicate_21983_25303 p@@162 v_1@@161 r@@158 u@@155))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_23321 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_23321_25303 q@@155 w@@161 r@@158 u@@155))
)))
(assert (forall ((p@@163 T@Field_21983_21984) (v_1@@162 T@FrameType) (q@@156 T@Field_23321_23322) (w@@162 T@FrameType) (r@@159 T@Field_24329_24330) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_23321 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_23321_24329 q@@156 w@@162 r@@159 u@@156)) (InsidePredicate_21983_24329 p@@163 v_1@@162 r@@159 u@@156))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_23321 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_23321_24329 q@@156 w@@162 r@@159 u@@156))
)))
(assert (forall ((p@@164 T@Field_21983_21984) (v_1@@163 T@FrameType) (q@@157 T@Field_23321_23322) (w@@163 T@FrameType) (r@@160 T@Field_23321_23322) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_23321 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_23321_23321 q@@157 w@@163 r@@160 u@@157)) (InsidePredicate_21983_23321 p@@164 v_1@@163 r@@160 u@@157))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_23321 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_23321_23321 q@@157 w@@163 r@@160 u@@157))
)))
(assert (forall ((p@@165 T@Field_21983_21984) (v_1@@164 T@FrameType) (q@@158 T@Field_23321_23322) (w@@164 T@FrameType) (r@@161 T@Field_22401_22402) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_23321 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_23321_22401 q@@158 w@@164 r@@161 u@@158)) (InsidePredicate_21983_22401 p@@165 v_1@@164 r@@161 u@@158))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_23321 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_23321_22401 q@@158 w@@164 r@@161 u@@158))
)))
(assert (forall ((p@@166 T@Field_21983_21984) (v_1@@165 T@FrameType) (q@@159 T@Field_23321_23322) (w@@165 T@FrameType) (r@@162 T@Field_21983_21984) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_23321 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_23321_21983 q@@159 w@@165 r@@162 u@@159)) (InsidePredicate_21983_21983 p@@166 v_1@@165 r@@162 u@@159))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_23321 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_23321_21983 q@@159 w@@165 r@@162 u@@159))
)))
(assert (forall ((p@@167 T@Field_21983_21984) (v_1@@166 T@FrameType) (q@@160 T@Field_23321_23322) (w@@166 T@FrameType) (r@@163 T@Field_9444_21984) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_23321 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_23321_15699 q@@160 w@@166 r@@163 u@@160)) (InsidePredicate_21983_15699 p@@167 v_1@@166 r@@163 u@@160))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_23321 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_23321_15699 q@@160 w@@166 r@@163 u@@160))
)))
(assert (forall ((p@@168 T@Field_21983_21984) (v_1@@167 T@FrameType) (q@@161 T@Field_22401_22402) (w@@167 T@FrameType) (r@@164 T@Field_25303_25304) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_22401 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_22401_25303 q@@161 w@@167 r@@164 u@@161)) (InsidePredicate_21983_25303 p@@168 v_1@@167 r@@164 u@@161))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_22401 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_22401_25303 q@@161 w@@167 r@@164 u@@161))
)))
(assert (forall ((p@@169 T@Field_21983_21984) (v_1@@168 T@FrameType) (q@@162 T@Field_22401_22402) (w@@168 T@FrameType) (r@@165 T@Field_24329_24330) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_22401 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_22401_24329 q@@162 w@@168 r@@165 u@@162)) (InsidePredicate_21983_24329 p@@169 v_1@@168 r@@165 u@@162))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_22401 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_22401_24329 q@@162 w@@168 r@@165 u@@162))
)))
(assert (forall ((p@@170 T@Field_21983_21984) (v_1@@169 T@FrameType) (q@@163 T@Field_22401_22402) (w@@169 T@FrameType) (r@@166 T@Field_23321_23322) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_22401 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_22401_23321 q@@163 w@@169 r@@166 u@@163)) (InsidePredicate_21983_23321 p@@170 v_1@@169 r@@166 u@@163))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_22401 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_22401_23321 q@@163 w@@169 r@@166 u@@163))
)))
(assert (forall ((p@@171 T@Field_21983_21984) (v_1@@170 T@FrameType) (q@@164 T@Field_22401_22402) (w@@170 T@FrameType) (r@@167 T@Field_22401_22402) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_22401 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_22401_22401 q@@164 w@@170 r@@167 u@@164)) (InsidePredicate_21983_22401 p@@171 v_1@@170 r@@167 u@@164))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_22401 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_22401_22401 q@@164 w@@170 r@@167 u@@164))
)))
(assert (forall ((p@@172 T@Field_21983_21984) (v_1@@171 T@FrameType) (q@@165 T@Field_22401_22402) (w@@171 T@FrameType) (r@@168 T@Field_21983_21984) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_22401 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_22401_21983 q@@165 w@@171 r@@168 u@@165)) (InsidePredicate_21983_21983 p@@172 v_1@@171 r@@168 u@@165))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_22401 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_22401_21983 q@@165 w@@171 r@@168 u@@165))
)))
(assert (forall ((p@@173 T@Field_21983_21984) (v_1@@172 T@FrameType) (q@@166 T@Field_22401_22402) (w@@172 T@FrameType) (r@@169 T@Field_9444_21984) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_22401 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_22401_15699 q@@166 w@@172 r@@169 u@@166)) (InsidePredicate_21983_15699 p@@173 v_1@@172 r@@169 u@@166))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_22401 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_22401_15699 q@@166 w@@172 r@@169 u@@166))
)))
(assert (forall ((p@@174 T@Field_21983_21984) (v_1@@173 T@FrameType) (q@@167 T@Field_21983_21984) (w@@173 T@FrameType) (r@@170 T@Field_25303_25304) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_21983 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_21983_25303 q@@167 w@@173 r@@170 u@@167)) (InsidePredicate_21983_25303 p@@174 v_1@@173 r@@170 u@@167))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_21983 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_21983_25303 q@@167 w@@173 r@@170 u@@167))
)))
(assert (forall ((p@@175 T@Field_21983_21984) (v_1@@174 T@FrameType) (q@@168 T@Field_21983_21984) (w@@174 T@FrameType) (r@@171 T@Field_24329_24330) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_21983 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_21983_24329 q@@168 w@@174 r@@171 u@@168)) (InsidePredicate_21983_24329 p@@175 v_1@@174 r@@171 u@@168))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_21983 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_21983_24329 q@@168 w@@174 r@@171 u@@168))
)))
(assert (forall ((p@@176 T@Field_21983_21984) (v_1@@175 T@FrameType) (q@@169 T@Field_21983_21984) (w@@175 T@FrameType) (r@@172 T@Field_23321_23322) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_21983 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_21983_23321 q@@169 w@@175 r@@172 u@@169)) (InsidePredicate_21983_23321 p@@176 v_1@@175 r@@172 u@@169))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_21983 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_21983_23321 q@@169 w@@175 r@@172 u@@169))
)))
(assert (forall ((p@@177 T@Field_21983_21984) (v_1@@176 T@FrameType) (q@@170 T@Field_21983_21984) (w@@176 T@FrameType) (r@@173 T@Field_22401_22402) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_21983 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_21983_22401 q@@170 w@@176 r@@173 u@@170)) (InsidePredicate_21983_22401 p@@177 v_1@@176 r@@173 u@@170))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_21983 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_21983_22401 q@@170 w@@176 r@@173 u@@170))
)))
(assert (forall ((p@@178 T@Field_21983_21984) (v_1@@177 T@FrameType) (q@@171 T@Field_21983_21984) (w@@177 T@FrameType) (r@@174 T@Field_21983_21984) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_21983 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_21983_21983 q@@171 w@@177 r@@174 u@@171)) (InsidePredicate_21983_21983 p@@178 v_1@@177 r@@174 u@@171))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_21983 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_21983_21983 q@@171 w@@177 r@@174 u@@171))
)))
(assert (forall ((p@@179 T@Field_21983_21984) (v_1@@178 T@FrameType) (q@@172 T@Field_21983_21984) (w@@178 T@FrameType) (r@@175 T@Field_9444_21984) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_21983 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_21983_15699 q@@172 w@@178 r@@175 u@@172)) (InsidePredicate_21983_15699 p@@179 v_1@@178 r@@175 u@@172))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_21983 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_21983_15699 q@@172 w@@178 r@@175 u@@172))
)))
(assert (forall ((p@@180 T@Field_21983_21984) (v_1@@179 T@FrameType) (q@@173 T@Field_9444_21984) (w@@179 T@FrameType) (r@@176 T@Field_25303_25304) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_15699 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_15699_25303 q@@173 w@@179 r@@176 u@@173)) (InsidePredicate_21983_25303 p@@180 v_1@@179 r@@176 u@@173))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_15699 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_15699_25303 q@@173 w@@179 r@@176 u@@173))
)))
(assert (forall ((p@@181 T@Field_21983_21984) (v_1@@180 T@FrameType) (q@@174 T@Field_9444_21984) (w@@180 T@FrameType) (r@@177 T@Field_24329_24330) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_15699 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_15699_24329 q@@174 w@@180 r@@177 u@@174)) (InsidePredicate_21983_24329 p@@181 v_1@@180 r@@177 u@@174))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_15699 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_15699_24329 q@@174 w@@180 r@@177 u@@174))
)))
(assert (forall ((p@@182 T@Field_21983_21984) (v_1@@181 T@FrameType) (q@@175 T@Field_9444_21984) (w@@181 T@FrameType) (r@@178 T@Field_23321_23322) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_15699 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_15699_23321 q@@175 w@@181 r@@178 u@@175)) (InsidePredicate_21983_23321 p@@182 v_1@@181 r@@178 u@@175))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_15699 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_15699_23321 q@@175 w@@181 r@@178 u@@175))
)))
(assert (forall ((p@@183 T@Field_21983_21984) (v_1@@182 T@FrameType) (q@@176 T@Field_9444_21984) (w@@182 T@FrameType) (r@@179 T@Field_22401_22402) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_15699 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_15699_22401 q@@176 w@@182 r@@179 u@@176)) (InsidePredicate_21983_22401 p@@183 v_1@@182 r@@179 u@@176))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_15699 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_15699_22401 q@@176 w@@182 r@@179 u@@176))
)))
(assert (forall ((p@@184 T@Field_21983_21984) (v_1@@183 T@FrameType) (q@@177 T@Field_9444_21984) (w@@183 T@FrameType) (r@@180 T@Field_21983_21984) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_15699 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_15699_21983 q@@177 w@@183 r@@180 u@@177)) (InsidePredicate_21983_21983 p@@184 v_1@@183 r@@180 u@@177))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_15699 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_15699_21983 q@@177 w@@183 r@@180 u@@177))
)))
(assert (forall ((p@@185 T@Field_21983_21984) (v_1@@184 T@FrameType) (q@@178 T@Field_9444_21984) (w@@184 T@FrameType) (r@@181 T@Field_9444_21984) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_21983_15699 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_15699_15699 q@@178 w@@184 r@@181 u@@178)) (InsidePredicate_21983_15699 p@@185 v_1@@184 r@@181 u@@178))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21983_15699 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_15699_15699 q@@178 w@@184 r@@181 u@@178))
)))
(assert (forall ((p@@186 T@Field_9444_21984) (v_1@@185 T@FrameType) (q@@179 T@Field_25303_25304) (w@@185 T@FrameType) (r@@182 T@Field_25303_25304) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_25303 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_25303_25303 q@@179 w@@185 r@@182 u@@179)) (InsidePredicate_15699_25303 p@@186 v_1@@185 r@@182 u@@179))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_25303 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_25303_25303 q@@179 w@@185 r@@182 u@@179))
)))
(assert (forall ((p@@187 T@Field_9444_21984) (v_1@@186 T@FrameType) (q@@180 T@Field_25303_25304) (w@@186 T@FrameType) (r@@183 T@Field_24329_24330) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_25303 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_25303_24329 q@@180 w@@186 r@@183 u@@180)) (InsidePredicate_15699_24329 p@@187 v_1@@186 r@@183 u@@180))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_25303 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_25303_24329 q@@180 w@@186 r@@183 u@@180))
)))
(assert (forall ((p@@188 T@Field_9444_21984) (v_1@@187 T@FrameType) (q@@181 T@Field_25303_25304) (w@@187 T@FrameType) (r@@184 T@Field_23321_23322) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_25303 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_25303_23321 q@@181 w@@187 r@@184 u@@181)) (InsidePredicate_15699_23321 p@@188 v_1@@187 r@@184 u@@181))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_25303 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_25303_23321 q@@181 w@@187 r@@184 u@@181))
)))
(assert (forall ((p@@189 T@Field_9444_21984) (v_1@@188 T@FrameType) (q@@182 T@Field_25303_25304) (w@@188 T@FrameType) (r@@185 T@Field_22401_22402) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_25303 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_25303_22401 q@@182 w@@188 r@@185 u@@182)) (InsidePredicate_15699_22401 p@@189 v_1@@188 r@@185 u@@182))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_25303 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_25303_22401 q@@182 w@@188 r@@185 u@@182))
)))
(assert (forall ((p@@190 T@Field_9444_21984) (v_1@@189 T@FrameType) (q@@183 T@Field_25303_25304) (w@@189 T@FrameType) (r@@186 T@Field_21983_21984) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_25303 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_25303_21983 q@@183 w@@189 r@@186 u@@183)) (InsidePredicate_15699_21983 p@@190 v_1@@189 r@@186 u@@183))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_25303 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_25303_21983 q@@183 w@@189 r@@186 u@@183))
)))
(assert (forall ((p@@191 T@Field_9444_21984) (v_1@@190 T@FrameType) (q@@184 T@Field_25303_25304) (w@@190 T@FrameType) (r@@187 T@Field_9444_21984) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_25303 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_25303_15699 q@@184 w@@190 r@@187 u@@184)) (InsidePredicate_15699_15699 p@@191 v_1@@190 r@@187 u@@184))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_25303 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_25303_15699 q@@184 w@@190 r@@187 u@@184))
)))
(assert (forall ((p@@192 T@Field_9444_21984) (v_1@@191 T@FrameType) (q@@185 T@Field_24329_24330) (w@@191 T@FrameType) (r@@188 T@Field_25303_25304) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_24329 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_24329_25303 q@@185 w@@191 r@@188 u@@185)) (InsidePredicate_15699_25303 p@@192 v_1@@191 r@@188 u@@185))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_24329 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_24329_25303 q@@185 w@@191 r@@188 u@@185))
)))
(assert (forall ((p@@193 T@Field_9444_21984) (v_1@@192 T@FrameType) (q@@186 T@Field_24329_24330) (w@@192 T@FrameType) (r@@189 T@Field_24329_24330) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_24329 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_24329_24329 q@@186 w@@192 r@@189 u@@186)) (InsidePredicate_15699_24329 p@@193 v_1@@192 r@@189 u@@186))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_24329 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_24329_24329 q@@186 w@@192 r@@189 u@@186))
)))
(assert (forall ((p@@194 T@Field_9444_21984) (v_1@@193 T@FrameType) (q@@187 T@Field_24329_24330) (w@@193 T@FrameType) (r@@190 T@Field_23321_23322) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_24329 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_24329_23321 q@@187 w@@193 r@@190 u@@187)) (InsidePredicate_15699_23321 p@@194 v_1@@193 r@@190 u@@187))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_24329 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_24329_23321 q@@187 w@@193 r@@190 u@@187))
)))
(assert (forall ((p@@195 T@Field_9444_21984) (v_1@@194 T@FrameType) (q@@188 T@Field_24329_24330) (w@@194 T@FrameType) (r@@191 T@Field_22401_22402) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_24329 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_24329_22401 q@@188 w@@194 r@@191 u@@188)) (InsidePredicate_15699_22401 p@@195 v_1@@194 r@@191 u@@188))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_24329 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_24329_22401 q@@188 w@@194 r@@191 u@@188))
)))
(assert (forall ((p@@196 T@Field_9444_21984) (v_1@@195 T@FrameType) (q@@189 T@Field_24329_24330) (w@@195 T@FrameType) (r@@192 T@Field_21983_21984) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_24329 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_24329_21983 q@@189 w@@195 r@@192 u@@189)) (InsidePredicate_15699_21983 p@@196 v_1@@195 r@@192 u@@189))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_24329 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_24329_21983 q@@189 w@@195 r@@192 u@@189))
)))
(assert (forall ((p@@197 T@Field_9444_21984) (v_1@@196 T@FrameType) (q@@190 T@Field_24329_24330) (w@@196 T@FrameType) (r@@193 T@Field_9444_21984) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_24329 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_24329_15699 q@@190 w@@196 r@@193 u@@190)) (InsidePredicate_15699_15699 p@@197 v_1@@196 r@@193 u@@190))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_24329 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_24329_15699 q@@190 w@@196 r@@193 u@@190))
)))
(assert (forall ((p@@198 T@Field_9444_21984) (v_1@@197 T@FrameType) (q@@191 T@Field_23321_23322) (w@@197 T@FrameType) (r@@194 T@Field_25303_25304) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_23321 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_23321_25303 q@@191 w@@197 r@@194 u@@191)) (InsidePredicate_15699_25303 p@@198 v_1@@197 r@@194 u@@191))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_23321 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_23321_25303 q@@191 w@@197 r@@194 u@@191))
)))
(assert (forall ((p@@199 T@Field_9444_21984) (v_1@@198 T@FrameType) (q@@192 T@Field_23321_23322) (w@@198 T@FrameType) (r@@195 T@Field_24329_24330) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_23321 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_23321_24329 q@@192 w@@198 r@@195 u@@192)) (InsidePredicate_15699_24329 p@@199 v_1@@198 r@@195 u@@192))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_23321 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_23321_24329 q@@192 w@@198 r@@195 u@@192))
)))
(assert (forall ((p@@200 T@Field_9444_21984) (v_1@@199 T@FrameType) (q@@193 T@Field_23321_23322) (w@@199 T@FrameType) (r@@196 T@Field_23321_23322) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_23321 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_23321_23321 q@@193 w@@199 r@@196 u@@193)) (InsidePredicate_15699_23321 p@@200 v_1@@199 r@@196 u@@193))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_23321 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_23321_23321 q@@193 w@@199 r@@196 u@@193))
)))
(assert (forall ((p@@201 T@Field_9444_21984) (v_1@@200 T@FrameType) (q@@194 T@Field_23321_23322) (w@@200 T@FrameType) (r@@197 T@Field_22401_22402) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_23321 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_23321_22401 q@@194 w@@200 r@@197 u@@194)) (InsidePredicate_15699_22401 p@@201 v_1@@200 r@@197 u@@194))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_23321 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_23321_22401 q@@194 w@@200 r@@197 u@@194))
)))
(assert (forall ((p@@202 T@Field_9444_21984) (v_1@@201 T@FrameType) (q@@195 T@Field_23321_23322) (w@@201 T@FrameType) (r@@198 T@Field_21983_21984) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_23321 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_23321_21983 q@@195 w@@201 r@@198 u@@195)) (InsidePredicate_15699_21983 p@@202 v_1@@201 r@@198 u@@195))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_23321 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_23321_21983 q@@195 w@@201 r@@198 u@@195))
)))
(assert (forall ((p@@203 T@Field_9444_21984) (v_1@@202 T@FrameType) (q@@196 T@Field_23321_23322) (w@@202 T@FrameType) (r@@199 T@Field_9444_21984) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_23321 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_23321_15699 q@@196 w@@202 r@@199 u@@196)) (InsidePredicate_15699_15699 p@@203 v_1@@202 r@@199 u@@196))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_23321 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_23321_15699 q@@196 w@@202 r@@199 u@@196))
)))
(assert (forall ((p@@204 T@Field_9444_21984) (v_1@@203 T@FrameType) (q@@197 T@Field_22401_22402) (w@@203 T@FrameType) (r@@200 T@Field_25303_25304) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_22401 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_22401_25303 q@@197 w@@203 r@@200 u@@197)) (InsidePredicate_15699_25303 p@@204 v_1@@203 r@@200 u@@197))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_22401 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_22401_25303 q@@197 w@@203 r@@200 u@@197))
)))
(assert (forall ((p@@205 T@Field_9444_21984) (v_1@@204 T@FrameType) (q@@198 T@Field_22401_22402) (w@@204 T@FrameType) (r@@201 T@Field_24329_24330) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_22401 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_22401_24329 q@@198 w@@204 r@@201 u@@198)) (InsidePredicate_15699_24329 p@@205 v_1@@204 r@@201 u@@198))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_22401 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_22401_24329 q@@198 w@@204 r@@201 u@@198))
)))
(assert (forall ((p@@206 T@Field_9444_21984) (v_1@@205 T@FrameType) (q@@199 T@Field_22401_22402) (w@@205 T@FrameType) (r@@202 T@Field_23321_23322) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_22401 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_22401_23321 q@@199 w@@205 r@@202 u@@199)) (InsidePredicate_15699_23321 p@@206 v_1@@205 r@@202 u@@199))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_22401 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_22401_23321 q@@199 w@@205 r@@202 u@@199))
)))
(assert (forall ((p@@207 T@Field_9444_21984) (v_1@@206 T@FrameType) (q@@200 T@Field_22401_22402) (w@@206 T@FrameType) (r@@203 T@Field_22401_22402) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_22401 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_22401_22401 q@@200 w@@206 r@@203 u@@200)) (InsidePredicate_15699_22401 p@@207 v_1@@206 r@@203 u@@200))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_22401 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_22401_22401 q@@200 w@@206 r@@203 u@@200))
)))
(assert (forall ((p@@208 T@Field_9444_21984) (v_1@@207 T@FrameType) (q@@201 T@Field_22401_22402) (w@@207 T@FrameType) (r@@204 T@Field_21983_21984) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_22401 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_22401_21983 q@@201 w@@207 r@@204 u@@201)) (InsidePredicate_15699_21983 p@@208 v_1@@207 r@@204 u@@201))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_22401 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_22401_21983 q@@201 w@@207 r@@204 u@@201))
)))
(assert (forall ((p@@209 T@Field_9444_21984) (v_1@@208 T@FrameType) (q@@202 T@Field_22401_22402) (w@@208 T@FrameType) (r@@205 T@Field_9444_21984) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_22401 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_22401_15699 q@@202 w@@208 r@@205 u@@202)) (InsidePredicate_15699_15699 p@@209 v_1@@208 r@@205 u@@202))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_22401 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_22401_15699 q@@202 w@@208 r@@205 u@@202))
)))
(assert (forall ((p@@210 T@Field_9444_21984) (v_1@@209 T@FrameType) (q@@203 T@Field_21983_21984) (w@@209 T@FrameType) (r@@206 T@Field_25303_25304) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_21983 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_21983_25303 q@@203 w@@209 r@@206 u@@203)) (InsidePredicate_15699_25303 p@@210 v_1@@209 r@@206 u@@203))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_21983 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_21983_25303 q@@203 w@@209 r@@206 u@@203))
)))
(assert (forall ((p@@211 T@Field_9444_21984) (v_1@@210 T@FrameType) (q@@204 T@Field_21983_21984) (w@@210 T@FrameType) (r@@207 T@Field_24329_24330) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_21983 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_21983_24329 q@@204 w@@210 r@@207 u@@204)) (InsidePredicate_15699_24329 p@@211 v_1@@210 r@@207 u@@204))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_21983 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_21983_24329 q@@204 w@@210 r@@207 u@@204))
)))
(assert (forall ((p@@212 T@Field_9444_21984) (v_1@@211 T@FrameType) (q@@205 T@Field_21983_21984) (w@@211 T@FrameType) (r@@208 T@Field_23321_23322) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_21983 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_21983_23321 q@@205 w@@211 r@@208 u@@205)) (InsidePredicate_15699_23321 p@@212 v_1@@211 r@@208 u@@205))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_21983 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_21983_23321 q@@205 w@@211 r@@208 u@@205))
)))
(assert (forall ((p@@213 T@Field_9444_21984) (v_1@@212 T@FrameType) (q@@206 T@Field_21983_21984) (w@@212 T@FrameType) (r@@209 T@Field_22401_22402) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_21983 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_21983_22401 q@@206 w@@212 r@@209 u@@206)) (InsidePredicate_15699_22401 p@@213 v_1@@212 r@@209 u@@206))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_21983 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_21983_22401 q@@206 w@@212 r@@209 u@@206))
)))
(assert (forall ((p@@214 T@Field_9444_21984) (v_1@@213 T@FrameType) (q@@207 T@Field_21983_21984) (w@@213 T@FrameType) (r@@210 T@Field_21983_21984) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_21983 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_21983_21983 q@@207 w@@213 r@@210 u@@207)) (InsidePredicate_15699_21983 p@@214 v_1@@213 r@@210 u@@207))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_21983 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_21983_21983 q@@207 w@@213 r@@210 u@@207))
)))
(assert (forall ((p@@215 T@Field_9444_21984) (v_1@@214 T@FrameType) (q@@208 T@Field_21983_21984) (w@@214 T@FrameType) (r@@211 T@Field_9444_21984) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_21983 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_21983_15699 q@@208 w@@214 r@@211 u@@208)) (InsidePredicate_15699_15699 p@@215 v_1@@214 r@@211 u@@208))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_21983 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_21983_15699 q@@208 w@@214 r@@211 u@@208))
)))
(assert (forall ((p@@216 T@Field_9444_21984) (v_1@@215 T@FrameType) (q@@209 T@Field_9444_21984) (w@@215 T@FrameType) (r@@212 T@Field_25303_25304) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_15699 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_15699_25303 q@@209 w@@215 r@@212 u@@209)) (InsidePredicate_15699_25303 p@@216 v_1@@215 r@@212 u@@209))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_15699 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_15699_25303 q@@209 w@@215 r@@212 u@@209))
)))
(assert (forall ((p@@217 T@Field_9444_21984) (v_1@@216 T@FrameType) (q@@210 T@Field_9444_21984) (w@@216 T@FrameType) (r@@213 T@Field_24329_24330) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_15699 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_15699_24329 q@@210 w@@216 r@@213 u@@210)) (InsidePredicate_15699_24329 p@@217 v_1@@216 r@@213 u@@210))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_15699 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_15699_24329 q@@210 w@@216 r@@213 u@@210))
)))
(assert (forall ((p@@218 T@Field_9444_21984) (v_1@@217 T@FrameType) (q@@211 T@Field_9444_21984) (w@@217 T@FrameType) (r@@214 T@Field_23321_23322) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_15699 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_15699_23321 q@@211 w@@217 r@@214 u@@211)) (InsidePredicate_15699_23321 p@@218 v_1@@217 r@@214 u@@211))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_15699 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_15699_23321 q@@211 w@@217 r@@214 u@@211))
)))
(assert (forall ((p@@219 T@Field_9444_21984) (v_1@@218 T@FrameType) (q@@212 T@Field_9444_21984) (w@@218 T@FrameType) (r@@215 T@Field_22401_22402) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_15699 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_15699_22401 q@@212 w@@218 r@@215 u@@212)) (InsidePredicate_15699_22401 p@@219 v_1@@218 r@@215 u@@212))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_15699 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_15699_22401 q@@212 w@@218 r@@215 u@@212))
)))
(assert (forall ((p@@220 T@Field_9444_21984) (v_1@@219 T@FrameType) (q@@213 T@Field_9444_21984) (w@@219 T@FrameType) (r@@216 T@Field_21983_21984) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_15699 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_15699_21983 q@@213 w@@219 r@@216 u@@213)) (InsidePredicate_15699_21983 p@@220 v_1@@219 r@@216 u@@213))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_15699 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_15699_21983 q@@213 w@@219 r@@216 u@@213))
)))
(assert (forall ((p@@221 T@Field_9444_21984) (v_1@@220 T@FrameType) (q@@214 T@Field_9444_21984) (w@@220 T@FrameType) (r@@217 T@Field_9444_21984) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_15699_15699 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_15699_15699 q@@214 w@@220 r@@217 u@@214)) (InsidePredicate_15699_15699 p@@221 v_1@@220 r@@217 u@@214))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15699_15699 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_15699_15699 q@@214 w@@220 r@@217 u@@214))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.319:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_9565| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.252:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_9565| a@@20 b@@13) o@@4))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@92 () T@PolymorphicMapType_15639)
(declare-fun r_1@@23 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_15660)
(set-info :boogie-vc-id |p5#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@92 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_15639_9115_53#PolymorphicMapType_15639| Heap@@92) r_1@@23 $allocated)) (=> (and (and (not (= r_1@@23 null)) (= Mask@0 (PolymorphicMapType_15660 (store (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| ZeroMask) r_1@@23 f_7 (+ (select (|PolymorphicMapType_15660_9444_3427#PolymorphicMapType_15660| ZeroMask) r_1@@23 f_7) FullPerm)) (|PolymorphicMapType_15660_9461_9462#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_9444_9462#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_9444_53#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_9444_15713#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_9444_74797#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_9461_3427#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_9461_53#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_9461_15713#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_9461_75208#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_21983_3427#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_21983_9462#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_21983_53#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_21983_15713#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_21983_75634#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_23321_3427#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_23321_9462#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_23321_53#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_23321_15713#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_23321_76060#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_24329_3427#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_24329_9462#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_24329_53#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_24329_15713#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_24329_76486#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_25303_3427#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_25303_9462#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_25303_53#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_25303_15713#PolymorphicMapType_15660| ZeroMask) (|PolymorphicMapType_15660_25303_76912#PolymorphicMapType_15660| ZeroMask)))) (and (state Heap@@92 Mask@0) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_9444_3427 Mask@0 r_1@@23 f_7))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
