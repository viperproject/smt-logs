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
(declare-sort T@Field_20624_53 0)
(declare-sort T@Field_20637_20638 0)
(declare-sort T@Field_29020_4669 0)
(declare-sort T@Field_29067_29068 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_26862_3676 0)
(declare-sort T@Field_30154_30155 0)
(declare-sort T@Field_28266_4344 0)
(declare-sort T@Field_13131_13135 0)
(declare-sort T@Field_13131_26880 0)
(declare-sort T@Field_13134_4669 0)
(declare-sort T@Field_13134_53 0)
(declare-sort T@Field_13134_20638 0)
(declare-sort T@Field_29080_29085 0)
(declare-sort T@Field_26891_26892 0)
(declare-sort T@Field_12891_53 0)
(declare-sort T@Field_12891_20638 0)
(declare-sort T@Field_26875_26880 0)
(declare-sort T@Field_13160_4669 0)
(declare-sort T@Field_13160_53 0)
(declare-sort T@Field_13160_20638 0)
(declare-sort T@Field_30168_30173 0)
(declare-sort T@Field_28299_28300 0)
(declare-sort T@Field_13043_53 0)
(declare-sort T@Field_13043_20638 0)
(declare-sort T@Field_28281_28286 0)
(declare-sort T@Field_27508_4000 0)
(declare-sort T@Field_27541_27542 0)
(declare-sort T@Field_27508_53 0)
(declare-sort T@Field_27508_20638 0)
(declare-sort T@Field_27523_27528 0)
(declare-datatypes ((T@PolymorphicMapType_20585 0)) (((PolymorphicMapType_20585 (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| (Array T@Ref T@Field_29020_4669 Real)) (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| (Array T@Ref T@Field_29067_29068 Real)) (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| (Array T@Ref T@Field_26862_3676 Real)) (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| (Array T@Ref T@Field_30154_30155 Real)) (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| (Array T@Ref T@Field_27508_4000 Real)) (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| (Array T@Ref T@Field_28266_4344 Real)) (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| (Array T@Ref T@Field_13131_13135 Real)) (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| (Array T@Ref T@Field_20624_53 Real)) (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| (Array T@Ref T@Field_20637_20638 Real)) (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| (Array T@Ref T@Field_13131_26880 Real)) (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| (Array T@Ref T@Field_13134_4669 Real)) (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| (Array T@Ref T@Field_13134_53 Real)) (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| (Array T@Ref T@Field_13134_20638 Real)) (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| (Array T@Ref T@Field_29080_29085 Real)) (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| (Array T@Ref T@Field_26891_26892 Real)) (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| (Array T@Ref T@Field_12891_53 Real)) (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| (Array T@Ref T@Field_12891_20638 Real)) (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| (Array T@Ref T@Field_26875_26880 Real)) (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| (Array T@Ref T@Field_13160_4669 Real)) (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| (Array T@Ref T@Field_13160_53 Real)) (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| (Array T@Ref T@Field_13160_20638 Real)) (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| (Array T@Ref T@Field_30168_30173 Real)) (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| (Array T@Ref T@Field_27541_27542 Real)) (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| (Array T@Ref T@Field_27508_53 Real)) (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| (Array T@Ref T@Field_27508_20638 Real)) (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| (Array T@Ref T@Field_27523_27528 Real)) (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| (Array T@Ref T@Field_28299_28300 Real)) (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| (Array T@Ref T@Field_13043_53 Real)) (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| (Array T@Ref T@Field_13043_20638 Real)) (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| (Array T@Ref T@Field_28281_28286 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21113 0)) (((PolymorphicMapType_21113 (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (Array T@Ref T@Field_20624_53 Bool)) (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (Array T@Ref T@Field_20637_20638 Bool)) (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (Array T@Ref T@Field_29020_4669 Bool)) (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (Array T@Ref T@Field_13131_26880 Bool)) (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (Array T@Ref T@Field_13131_13135 Bool)) (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (Array T@Ref T@Field_12891_53 Bool)) (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (Array T@Ref T@Field_12891_20638 Bool)) (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (Array T@Ref T@Field_26862_3676 Bool)) (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (Array T@Ref T@Field_26875_26880 Bool)) (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (Array T@Ref T@Field_26891_26892 Bool)) (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (Array T@Ref T@Field_27508_53 Bool)) (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (Array T@Ref T@Field_27508_20638 Bool)) (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (Array T@Ref T@Field_27508_4000 Bool)) (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (Array T@Ref T@Field_27523_27528 Bool)) (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (Array T@Ref T@Field_27541_27542 Bool)) (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (Array T@Ref T@Field_13043_53 Bool)) (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (Array T@Ref T@Field_13043_20638 Bool)) (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (Array T@Ref T@Field_28266_4344 Bool)) (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (Array T@Ref T@Field_28281_28286 Bool)) (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (Array T@Ref T@Field_28299_28300 Bool)) (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (Array T@Ref T@Field_13134_53 Bool)) (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (Array T@Ref T@Field_13134_20638 Bool)) (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (Array T@Ref T@Field_13134_4669 Bool)) (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (Array T@Ref T@Field_29080_29085 Bool)) (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (Array T@Ref T@Field_29067_29068 Bool)) (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (Array T@Ref T@Field_13160_53 Bool)) (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (Array T@Ref T@Field_13160_20638 Bool)) (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (Array T@Ref T@Field_13160_4669 Bool)) (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (Array T@Ref T@Field_30168_30173 Bool)) (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (Array T@Ref T@Field_30154_30155 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20564 0)) (((PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| (Array T@Ref T@Field_20624_53 Bool)) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| (Array T@Ref T@Field_20637_20638 T@Ref)) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| (Array T@Ref T@Field_29020_4669 Int)) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| (Array T@Ref T@Field_29067_29068 T@FrameType)) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| (Array T@Ref T@Field_26862_3676 Int)) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| (Array T@Ref T@Field_30154_30155 T@FrameType)) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| (Array T@Ref T@Field_28266_4344 Int)) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| (Array T@Ref T@Field_13131_13135 T@FrameType)) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| (Array T@Ref T@Field_13131_26880 T@PolymorphicMapType_21113)) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| (Array T@Ref T@Field_13134_4669 Int)) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| (Array T@Ref T@Field_13134_53 Bool)) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| (Array T@Ref T@Field_13134_20638 T@Ref)) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| (Array T@Ref T@Field_29080_29085 T@PolymorphicMapType_21113)) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| (Array T@Ref T@Field_26891_26892 T@FrameType)) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| (Array T@Ref T@Field_12891_53 Bool)) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| (Array T@Ref T@Field_12891_20638 T@Ref)) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| (Array T@Ref T@Field_26875_26880 T@PolymorphicMapType_21113)) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| (Array T@Ref T@Field_13160_4669 Int)) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| (Array T@Ref T@Field_13160_53 Bool)) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| (Array T@Ref T@Field_13160_20638 T@Ref)) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| (Array T@Ref T@Field_30168_30173 T@PolymorphicMapType_21113)) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| (Array T@Ref T@Field_28299_28300 T@FrameType)) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| (Array T@Ref T@Field_13043_53 Bool)) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| (Array T@Ref T@Field_13043_20638 T@Ref)) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| (Array T@Ref T@Field_28281_28286 T@PolymorphicMapType_21113)) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| (Array T@Ref T@Field_27508_4000 Int)) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| (Array T@Ref T@Field_27541_27542 T@FrameType)) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| (Array T@Ref T@Field_27508_53 Bool)) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| (Array T@Ref T@Field_27508_20638 T@Ref)) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| (Array T@Ref T@Field_27523_27528 T@PolymorphicMapType_21113)) ) ) ))
(declare-fun $allocated () T@Field_20624_53)
(declare-fun f_7 () T@Field_29020_4669)
(declare-fun succHeap (T@PolymorphicMapType_20564 T@PolymorphicMapType_20564) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_20564 T@PolymorphicMapType_20564) Bool)
(declare-fun wand (T@Ref Real T@Ref Real) T@Field_26862_3676)
(declare-fun getPredWandId_12891_3676 (T@Field_26862_3676) Int)
(declare-fun wand_1 ((Array T@Ref Bool) Real (Array T@Ref Bool) Real) T@Field_27508_4000)
(declare-fun getPredWandId_12947_4000 (T@Field_27508_4000) Int)
(declare-fun wand_2 ((Array T@Ref Bool) Real (Array T@Ref Bool) Real) T@Field_28266_4344)
(declare-fun getPredWandId_13043_4344 (T@Field_28266_4344) Int)
(declare-fun state (T@PolymorphicMapType_20564 T@PolymorphicMapType_20585) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_20585) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_21113)
(declare-fun P (T@Ref Int) T@Field_29067_29068)
(declare-fun IsPredicateField_13134_13135 (T@Field_29067_29068) Bool)
(declare-fun p2 (T@Ref T@Ref) T@Field_30154_30155)
(declare-fun IsPredicateField_13160_13161 (T@Field_30154_30155) Bool)
(declare-fun |P#trigger_13134| (T@PolymorphicMapType_20564 T@Field_29067_29068) Bool)
(declare-fun |P#everUsed_13134| (T@Field_29067_29068) Bool)
(declare-fun |p2#trigger_13160| (T@PolymorphicMapType_20564 T@Field_30154_30155) Bool)
(declare-fun |p2#everUsed_13160| (T@Field_30154_30155) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_20564 T@PolymorphicMapType_20564 T@PolymorphicMapType_20585) Bool)
(declare-fun IsPredicateField_12968_12969 (T@Field_27541_27542) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_27508 (T@Field_27541_27542) T@Field_27523_27528)
(declare-fun HasDirectPerm_27508_13135 (T@PolymorphicMapType_20585 T@Ref T@Field_27541_27542) Bool)
(declare-fun IsPredicateField_13064_13065 (T@Field_28299_28300) Bool)
(declare-fun PredicateMaskField_13043 (T@Field_28299_28300) T@Field_28281_28286)
(declare-fun HasDirectPerm_13043_13135 (T@PolymorphicMapType_20585 T@Ref T@Field_28299_28300) Bool)
(declare-fun PredicateMaskField_13160 (T@Field_30154_30155) T@Field_30168_30173)
(declare-fun HasDirectPerm_13160_13161 (T@PolymorphicMapType_20585 T@Ref T@Field_30154_30155) Bool)
(declare-fun IsPredicateField_12904_12905 (T@Field_26891_26892) Bool)
(declare-fun PredicateMaskField_12891 (T@Field_26891_26892) T@Field_26875_26880)
(declare-fun HasDirectPerm_12891_13135 (T@PolymorphicMapType_20585 T@Ref T@Field_26891_26892) Bool)
(declare-fun PredicateMaskField_13134 (T@Field_29067_29068) T@Field_29080_29085)
(declare-fun HasDirectPerm_13134_13135 (T@PolymorphicMapType_20585 T@Ref T@Field_29067_29068) Bool)
(declare-fun IsPredicateField_13131_66362 (T@Field_13131_13135) Bool)
(declare-fun PredicateMaskField_13131 (T@Field_13131_13135) T@Field_13131_26880)
(declare-fun HasDirectPerm_13131_13135 (T@PolymorphicMapType_20585 T@Ref T@Field_13131_13135) Bool)
(declare-fun IsWandField_12968_12969 (T@Field_27541_27542) Bool)
(declare-fun WandMaskField_12968 (T@Field_27541_27542) T@Field_27523_27528)
(declare-fun IsWandField_13064_13065 (T@Field_28299_28300) Bool)
(declare-fun WandMaskField_13064 (T@Field_28299_28300) T@Field_28281_28286)
(declare-fun IsWandField_13160_77432 (T@Field_30154_30155) Bool)
(declare-fun WandMaskField_13160 (T@Field_30154_30155) T@Field_30168_30173)
(declare-fun IsWandField_12904_12905 (T@Field_26891_26892) Bool)
(declare-fun WandMaskField_12904 (T@Field_26891_26892) T@Field_26875_26880)
(declare-fun IsWandField_13134_76750 (T@Field_29067_29068) Bool)
(declare-fun WandMaskField_13134 (T@Field_29067_29068) T@Field_29080_29085)
(declare-fun IsWandField_13131_76393 (T@Field_13131_13135) Bool)
(declare-fun WandMaskField_13131 (T@Field_13131_13135) T@Field_13131_26880)
(declare-fun |P#sm| (T@Ref Int) T@Field_29080_29085)
(declare-fun |p2#sm| (T@Ref T@Ref) T@Field_30168_30173)
(declare-fun dummyHeap () T@PolymorphicMapType_20564)
(declare-fun ZeroMask () T@PolymorphicMapType_20585)
(declare-fun InsidePredicate_30154_30154 (T@Field_30154_30155 T@FrameType T@Field_30154_30155 T@FrameType) Bool)
(declare-fun InsidePredicate_29067_29067 (T@Field_29067_29068 T@FrameType T@Field_29067_29068 T@FrameType) Bool)
(declare-fun InsidePredicate_28266_28266 (T@Field_28299_28300 T@FrameType T@Field_28299_28300 T@FrameType) Bool)
(declare-fun InsidePredicate_27508_27508 (T@Field_27541_27542 T@FrameType T@Field_27541_27542 T@FrameType) Bool)
(declare-fun InsidePredicate_26862_26862 (T@Field_26891_26892 T@FrameType T@Field_26891_26892 T@FrameType) Bool)
(declare-fun InsidePredicate_20624_20624 (T@Field_13131_13135 T@FrameType T@Field_13131_13135 T@FrameType) Bool)
(declare-fun IsPredicateField_13131_4669 (T@Field_29020_4669) Bool)
(declare-fun IsWandField_13131_4669 (T@Field_29020_4669) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_13043_98525 (T@Field_28281_28286) Bool)
(declare-fun IsWandField_13043_98541 (T@Field_28281_28286) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_13043_20638 (T@Field_13043_20638) Bool)
(declare-fun IsWandField_13043_20638 (T@Field_13043_20638) Bool)
(declare-fun IsPredicateField_13043_53 (T@Field_13043_53) Bool)
(declare-fun IsWandField_13043_53 (T@Field_13043_53) Bool)
(declare-fun IsPredicateField_13043_4344 (T@Field_28266_4344) Bool)
(declare-fun IsWandField_13043_4344 (T@Field_28266_4344) Bool)
(declare-fun IsPredicateField_12947_97708 (T@Field_27523_27528) Bool)
(declare-fun IsWandField_12947_97724 (T@Field_27523_27528) Bool)
(declare-fun IsPredicateField_12947_20638 (T@Field_27508_20638) Bool)
(declare-fun IsWandField_12947_20638 (T@Field_27508_20638) Bool)
(declare-fun IsPredicateField_12947_53 (T@Field_27508_53) Bool)
(declare-fun IsWandField_12947_53 (T@Field_27508_53) Bool)
(declare-fun IsPredicateField_12947_4000 (T@Field_27508_4000) Bool)
(declare-fun IsWandField_12947_4000 (T@Field_27508_4000) Bool)
(declare-fun IsPredicateField_13160_96891 (T@Field_30168_30173) Bool)
(declare-fun IsWandField_13160_96907 (T@Field_30168_30173) Bool)
(declare-fun IsPredicateField_13160_20638 (T@Field_13160_20638) Bool)
(declare-fun IsWandField_13160_20638 (T@Field_13160_20638) Bool)
(declare-fun IsPredicateField_13160_53 (T@Field_13160_53) Bool)
(declare-fun IsWandField_13160_53 (T@Field_13160_53) Bool)
(declare-fun IsPredicateField_13160_4669 (T@Field_13160_4669) Bool)
(declare-fun IsWandField_13160_4669 (T@Field_13160_4669) Bool)
(declare-fun IsPredicateField_12891_96060 (T@Field_26875_26880) Bool)
(declare-fun IsWandField_12891_96076 (T@Field_26875_26880) Bool)
(declare-fun IsPredicateField_12891_20638 (T@Field_12891_20638) Bool)
(declare-fun IsWandField_12891_20638 (T@Field_12891_20638) Bool)
(declare-fun IsPredicateField_12891_53 (T@Field_12891_53) Bool)
(declare-fun IsWandField_12891_53 (T@Field_12891_53) Bool)
(declare-fun IsPredicateField_12891_3676 (T@Field_26862_3676) Bool)
(declare-fun IsWandField_12891_3676 (T@Field_26862_3676) Bool)
(declare-fun IsPredicateField_13134_95243 (T@Field_29080_29085) Bool)
(declare-fun IsWandField_13134_95259 (T@Field_29080_29085) Bool)
(declare-fun IsPredicateField_13134_20638 (T@Field_13134_20638) Bool)
(declare-fun IsWandField_13134_20638 (T@Field_13134_20638) Bool)
(declare-fun IsPredicateField_13134_53 (T@Field_13134_53) Bool)
(declare-fun IsWandField_13134_53 (T@Field_13134_53) Bool)
(declare-fun IsPredicateField_13134_4669 (T@Field_13134_4669) Bool)
(declare-fun IsWandField_13134_4669 (T@Field_13134_4669) Bool)
(declare-fun IsPredicateField_13131_94412 (T@Field_13131_26880) Bool)
(declare-fun IsWandField_13131_94428 (T@Field_13131_26880) Bool)
(declare-fun IsPredicateField_13131_20638 (T@Field_20637_20638) Bool)
(declare-fun IsWandField_13131_20638 (T@Field_20637_20638) Bool)
(declare-fun IsPredicateField_13131_53 (T@Field_20624_53) Bool)
(declare-fun IsWandField_13131_53 (T@Field_20624_53) Bool)
(declare-fun HasDirectPerm_27508_66074 (T@PolymorphicMapType_20585 T@Ref T@Field_27523_27528) Bool)
(declare-fun HasDirectPerm_27508_20638 (T@PolymorphicMapType_20585 T@Ref T@Field_27508_20638) Bool)
(declare-fun HasDirectPerm_27508_53 (T@PolymorphicMapType_20585 T@Ref T@Field_27508_53) Bool)
(declare-fun HasDirectPerm_27508_4669 (T@PolymorphicMapType_20585 T@Ref T@Field_27508_4000) Bool)
(declare-fun HasDirectPerm_13043_64897 (T@PolymorphicMapType_20585 T@Ref T@Field_28281_28286) Bool)
(declare-fun HasDirectPerm_13043_20638 (T@PolymorphicMapType_20585 T@Ref T@Field_13043_20638) Bool)
(declare-fun HasDirectPerm_13043_53 (T@PolymorphicMapType_20585 T@Ref T@Field_13043_53) Bool)
(declare-fun HasDirectPerm_13043_4344 (T@PolymorphicMapType_20585 T@Ref T@Field_28266_4344) Bool)
(declare-fun HasDirectPerm_13160_63752 (T@PolymorphicMapType_20585 T@Ref T@Field_30168_30173) Bool)
(declare-fun HasDirectPerm_13160_20638 (T@PolymorphicMapType_20585 T@Ref T@Field_13160_20638) Bool)
(declare-fun HasDirectPerm_13160_53 (T@PolymorphicMapType_20585 T@Ref T@Field_13160_53) Bool)
(declare-fun HasDirectPerm_13160_4669 (T@PolymorphicMapType_20585 T@Ref T@Field_13160_4669) Bool)
(declare-fun HasDirectPerm_12891_62611 (T@PolymorphicMapType_20585 T@Ref T@Field_26875_26880) Bool)
(declare-fun HasDirectPerm_12891_20638 (T@PolymorphicMapType_20585 T@Ref T@Field_12891_20638) Bool)
(declare-fun HasDirectPerm_12891_53 (T@PolymorphicMapType_20585 T@Ref T@Field_12891_53) Bool)
(declare-fun HasDirectPerm_12891_3676 (T@PolymorphicMapType_20585 T@Ref T@Field_26862_3676) Bool)
(declare-fun HasDirectPerm_13134_61466 (T@PolymorphicMapType_20585 T@Ref T@Field_29080_29085) Bool)
(declare-fun HasDirectPerm_13134_20638 (T@PolymorphicMapType_20585 T@Ref T@Field_13134_20638) Bool)
(declare-fun HasDirectPerm_13134_53 (T@PolymorphicMapType_20585 T@Ref T@Field_13134_53) Bool)
(declare-fun HasDirectPerm_13134_4669 (T@PolymorphicMapType_20585 T@Ref T@Field_13134_4669) Bool)
(declare-fun HasDirectPerm_13131_60325 (T@PolymorphicMapType_20585 T@Ref T@Field_13131_26880) Bool)
(declare-fun HasDirectPerm_13131_20638 (T@PolymorphicMapType_20585 T@Ref T@Field_20637_20638) Bool)
(declare-fun HasDirectPerm_13131_53 (T@PolymorphicMapType_20585 T@Ref T@Field_20624_53) Bool)
(declare-fun HasDirectPerm_13131_4669 (T@PolymorphicMapType_20585 T@Ref T@Field_29020_4669) Bool)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real) T@Field_26891_26892)
(declare-fun |wand_1#ft| ((Array T@Ref Bool) Real (Array T@Ref Bool) Real) T@Field_27541_27542)
(declare-fun |wand_2#ft| ((Array T@Ref Bool) Real (Array T@Ref Bool) Real) T@Field_28299_28300)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real) T@Field_26875_26880)
(declare-fun |wand_1#sm| ((Array T@Ref Bool) Real (Array T@Ref Bool) Real) T@Field_27523_27528)
(declare-fun |wand_2#sm| ((Array T@Ref Bool) Real (Array T@Ref Bool) Real) T@Field_28281_28286)
(declare-fun sumMask (T@PolymorphicMapType_20585 T@PolymorphicMapType_20585 T@PolymorphicMapType_20585) Bool)
(declare-fun getPredWandId_13134_13135 (T@Field_29067_29068) Int)
(declare-fun getPredWandId_13160_13161 (T@Field_30154_30155) Int)
(declare-fun InsidePredicate_30154_29067 (T@Field_30154_30155 T@FrameType T@Field_29067_29068 T@FrameType) Bool)
(declare-fun InsidePredicate_30154_28266 (T@Field_30154_30155 T@FrameType T@Field_28299_28300 T@FrameType) Bool)
(declare-fun InsidePredicate_30154_27508 (T@Field_30154_30155 T@FrameType T@Field_27541_27542 T@FrameType) Bool)
(declare-fun InsidePredicate_30154_26862 (T@Field_30154_30155 T@FrameType T@Field_26891_26892 T@FrameType) Bool)
(declare-fun InsidePredicate_30154_20624 (T@Field_30154_30155 T@FrameType T@Field_13131_13135 T@FrameType) Bool)
(declare-fun InsidePredicate_29067_30154 (T@Field_29067_29068 T@FrameType T@Field_30154_30155 T@FrameType) Bool)
(declare-fun InsidePredicate_29067_28266 (T@Field_29067_29068 T@FrameType T@Field_28299_28300 T@FrameType) Bool)
(declare-fun InsidePredicate_29067_27508 (T@Field_29067_29068 T@FrameType T@Field_27541_27542 T@FrameType) Bool)
(declare-fun InsidePredicate_29067_26862 (T@Field_29067_29068 T@FrameType T@Field_26891_26892 T@FrameType) Bool)
(declare-fun InsidePredicate_29067_20624 (T@Field_29067_29068 T@FrameType T@Field_13131_13135 T@FrameType) Bool)
(declare-fun InsidePredicate_28266_30154 (T@Field_28299_28300 T@FrameType T@Field_30154_30155 T@FrameType) Bool)
(declare-fun InsidePredicate_28266_29067 (T@Field_28299_28300 T@FrameType T@Field_29067_29068 T@FrameType) Bool)
(declare-fun InsidePredicate_28266_27508 (T@Field_28299_28300 T@FrameType T@Field_27541_27542 T@FrameType) Bool)
(declare-fun InsidePredicate_28266_26862 (T@Field_28299_28300 T@FrameType T@Field_26891_26892 T@FrameType) Bool)
(declare-fun InsidePredicate_28266_20624 (T@Field_28299_28300 T@FrameType T@Field_13131_13135 T@FrameType) Bool)
(declare-fun InsidePredicate_27508_30154 (T@Field_27541_27542 T@FrameType T@Field_30154_30155 T@FrameType) Bool)
(declare-fun InsidePredicate_27508_29067 (T@Field_27541_27542 T@FrameType T@Field_29067_29068 T@FrameType) Bool)
(declare-fun InsidePredicate_27508_28266 (T@Field_27541_27542 T@FrameType T@Field_28299_28300 T@FrameType) Bool)
(declare-fun InsidePredicate_27508_26862 (T@Field_27541_27542 T@FrameType T@Field_26891_26892 T@FrameType) Bool)
(declare-fun InsidePredicate_27508_20624 (T@Field_27541_27542 T@FrameType T@Field_13131_13135 T@FrameType) Bool)
(declare-fun InsidePredicate_26862_30154 (T@Field_26891_26892 T@FrameType T@Field_30154_30155 T@FrameType) Bool)
(declare-fun InsidePredicate_26862_29067 (T@Field_26891_26892 T@FrameType T@Field_29067_29068 T@FrameType) Bool)
(declare-fun InsidePredicate_26862_28266 (T@Field_26891_26892 T@FrameType T@Field_28299_28300 T@FrameType) Bool)
(declare-fun InsidePredicate_26862_27508 (T@Field_26891_26892 T@FrameType T@Field_27541_27542 T@FrameType) Bool)
(declare-fun InsidePredicate_26862_20624 (T@Field_26891_26892 T@FrameType T@Field_13131_13135 T@FrameType) Bool)
(declare-fun InsidePredicate_20624_30154 (T@Field_13131_13135 T@FrameType T@Field_30154_30155 T@FrameType) Bool)
(declare-fun InsidePredicate_20624_29067 (T@Field_13131_13135 T@FrameType T@Field_29067_29068 T@FrameType) Bool)
(declare-fun InsidePredicate_20624_28266 (T@Field_13131_13135 T@FrameType T@Field_28299_28300 T@FrameType) Bool)
(declare-fun InsidePredicate_20624_27508 (T@Field_13131_13135 T@FrameType T@Field_27541_27542 T@FrameType) Bool)
(declare-fun InsidePredicate_20624_26862 (T@Field_13131_13135 T@FrameType T@Field_26891_26892 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_20564) (Heap1 T@PolymorphicMapType_20564) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) ) (! (= (getPredWandId_12891_3676 (wand arg1 arg2 arg3 arg4)) 2)
 :qid |stdinbpl.455:15|
 :skolemid |87|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((arg1@@0 (Array T@Ref Bool)) (arg2@@0 Real) (arg3@@0 (Array T@Ref Bool)) (arg4@@0 Real) ) (! (= (getPredWandId_12947_4000 (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0)) 3)
 :qid |stdinbpl.487:15|
 :skolemid |94|
 :pattern ( (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((arg1@@1 (Array T@Ref Bool)) (arg2@@1 Real) (arg3@@1 (Array T@Ref Bool)) (arg4@@1 Real) ) (! (= (getPredWandId_13043_4344 (wand_2 arg1@@1 arg2@@1 arg3@@1 arg4@@1)) 4)
 :qid |stdinbpl.519:15|
 :skolemid |101|
 :pattern ( (wand_2 arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((Heap T@PolymorphicMapType_20564) (Mask T@PolymorphicMapType_20585) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_20564) (Heap1@@0 T@PolymorphicMapType_20564) (Heap2 T@PolymorphicMapType_20564) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_30154_30155) ) (!  (not (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_30168_30173) ) (!  (not (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13160_4669) ) (!  (not (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13160_20638) ) (!  (not (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13160_53) ) (!  (not (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_29067_29068) ) (!  (not (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_29080_29085) ) (!  (not (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13134_4669) ) (!  (not (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13134_20638) ) (!  (not (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13134_53) ) (!  (not (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_28299_28300) ) (!  (not (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_28281_28286) ) (!  (not (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_28266_4344) ) (!  (not (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_13043_20638) ) (!  (not (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_13043_53) ) (!  (not (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_27541_27542) ) (!  (not (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_27523_27528) ) (!  (not (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_27508_4000) ) (!  (not (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_27508_20638) ) (!  (not (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_27508_53) ) (!  (not (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_26891_26892) ) (!  (not (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_26875_26880) ) (!  (not (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_26862_3676) ) (!  (not (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_12891_20638) ) (!  (not (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_12891_53) ) (!  (not (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_13131_13135) ) (!  (not (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_13131_26880) ) (!  (not (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_29020_4669) ) (!  (not (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_20637_20638) ) (!  (not (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_20624_53) ) (!  (not (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((x T@Ref) (i Int) ) (! (IsPredicateField_13134_13135 (P x i))
 :qid |stdinbpl.547:15|
 :skolemid |104|
 :pattern ( (P x i))
)))
(assert (forall ((x@@0 T@Ref) (y T@Ref) ) (! (IsPredicateField_13160_13161 (p2 x@@0 y))
 :qid |stdinbpl.606:15|
 :skolemid |110|
 :pattern ( (p2 x@@0 y))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_20564) (x@@1 T@Ref) (i@@0 Int) ) (! (|P#everUsed_13134| (P x@@1 i@@0))
 :qid |stdinbpl.566:15|
 :skolemid |108|
 :pattern ( (|P#trigger_13134| Heap@@0 (P x@@1 i@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_20564) (x@@2 T@Ref) (y@@0 T@Ref) ) (! (|p2#everUsed_13160| (p2 x@@2 y@@0))
 :qid |stdinbpl.625:15|
 :skolemid |114|
 :pattern ( (|p2#trigger_13160| Heap@@1 (p2 x@@2 y@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.333:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.336:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_20564) (ExhaleHeap T@PolymorphicMapType_20564) (Mask@@0 T@PolymorphicMapType_20585) (pm_f_42 T@Field_27541_27542) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_27508_13135 Mask@@0 null pm_f_42) (IsPredicateField_12968_12969 pm_f_42)) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@2) null (PredicateMaskField_27508 pm_f_42)) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap) null (PredicateMaskField_27508 pm_f_42)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_12968_12969 pm_f_42) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap) null (PredicateMaskField_27508 pm_f_42)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_20564) (ExhaleHeap@@0 T@PolymorphicMapType_20564) (Mask@@1 T@PolymorphicMapType_20585) (pm_f_42@@0 T@Field_28299_28300) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_13043_13135 Mask@@1 null pm_f_42@@0) (IsPredicateField_13064_13065 pm_f_42@@0)) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@3) null (PredicateMaskField_13043 pm_f_42@@0)) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@0) null (PredicateMaskField_13043 pm_f_42@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_13064_13065 pm_f_42@@0) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@0) null (PredicateMaskField_13043 pm_f_42@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_20564) (ExhaleHeap@@1 T@PolymorphicMapType_20564) (Mask@@2 T@PolymorphicMapType_20585) (pm_f_42@@1 T@Field_30154_30155) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_13160_13161 Mask@@2 null pm_f_42@@1) (IsPredicateField_13160_13161 pm_f_42@@1)) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@4) null (PredicateMaskField_13160 pm_f_42@@1)) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@1) null (PredicateMaskField_13160 pm_f_42@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_13160_13161 pm_f_42@@1) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@1) null (PredicateMaskField_13160 pm_f_42@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_20564) (ExhaleHeap@@2 T@PolymorphicMapType_20564) (Mask@@3 T@PolymorphicMapType_20585) (pm_f_42@@2 T@Field_26891_26892) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12891_13135 Mask@@3 null pm_f_42@@2) (IsPredicateField_12904_12905 pm_f_42@@2)) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@5) null (PredicateMaskField_12891 pm_f_42@@2)) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@2) null (PredicateMaskField_12891 pm_f_42@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_12904_12905 pm_f_42@@2) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@2) null (PredicateMaskField_12891 pm_f_42@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_20564) (ExhaleHeap@@3 T@PolymorphicMapType_20564) (Mask@@4 T@PolymorphicMapType_20585) (pm_f_42@@3 T@Field_29067_29068) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_13134_13135 Mask@@4 null pm_f_42@@3) (IsPredicateField_13134_13135 pm_f_42@@3)) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@6) null (PredicateMaskField_13134 pm_f_42@@3)) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@3) null (PredicateMaskField_13134 pm_f_42@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_13134_13135 pm_f_42@@3) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@3) null (PredicateMaskField_13134 pm_f_42@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_20564) (ExhaleHeap@@4 T@PolymorphicMapType_20564) (Mask@@5 T@PolymorphicMapType_20585) (pm_f_42@@4 T@Field_13131_13135) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_13131_13135 Mask@@5 null pm_f_42@@4) (IsPredicateField_13131_66362 pm_f_42@@4)) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@7) null (PredicateMaskField_13131 pm_f_42@@4)) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@4) null (PredicateMaskField_13131 pm_f_42@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_13131_66362 pm_f_42@@4) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@4) null (PredicateMaskField_13131 pm_f_42@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_20564) (ExhaleHeap@@5 T@PolymorphicMapType_20564) (Mask@@6 T@PolymorphicMapType_20585) (pm_f_42@@5 T@Field_27541_27542) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_27508_13135 Mask@@6 null pm_f_42@@5) (IsWandField_12968_12969 pm_f_42@@5)) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@8) null (WandMaskField_12968 pm_f_42@@5)) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@5) null (WandMaskField_12968 pm_f_42@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_12968_12969 pm_f_42@@5) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@5) null (WandMaskField_12968 pm_f_42@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_20564) (ExhaleHeap@@6 T@PolymorphicMapType_20564) (Mask@@7 T@PolymorphicMapType_20585) (pm_f_42@@6 T@Field_28299_28300) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_13043_13135 Mask@@7 null pm_f_42@@6) (IsWandField_13064_13065 pm_f_42@@6)) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@9) null (WandMaskField_13064 pm_f_42@@6)) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@6) null (WandMaskField_13064 pm_f_42@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_13064_13065 pm_f_42@@6) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@6) null (WandMaskField_13064 pm_f_42@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_20564) (ExhaleHeap@@7 T@PolymorphicMapType_20564) (Mask@@8 T@PolymorphicMapType_20585) (pm_f_42@@7 T@Field_30154_30155) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_13160_13161 Mask@@8 null pm_f_42@@7) (IsWandField_13160_77432 pm_f_42@@7)) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@10) null (WandMaskField_13160 pm_f_42@@7)) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@7) null (WandMaskField_13160 pm_f_42@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsWandField_13160_77432 pm_f_42@@7) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@7) null (WandMaskField_13160 pm_f_42@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_20564) (ExhaleHeap@@8 T@PolymorphicMapType_20564) (Mask@@9 T@PolymorphicMapType_20585) (pm_f_42@@8 T@Field_26891_26892) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_12891_13135 Mask@@9 null pm_f_42@@8) (IsWandField_12904_12905 pm_f_42@@8)) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@11) null (WandMaskField_12904 pm_f_42@@8)) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@8) null (WandMaskField_12904 pm_f_42@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_12904_12905 pm_f_42@@8) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@8) null (WandMaskField_12904 pm_f_42@@8)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_20564) (ExhaleHeap@@9 T@PolymorphicMapType_20564) (Mask@@10 T@PolymorphicMapType_20585) (pm_f_42@@9 T@Field_29067_29068) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_13134_13135 Mask@@10 null pm_f_42@@9) (IsWandField_13134_76750 pm_f_42@@9)) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@12) null (WandMaskField_13134 pm_f_42@@9)) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@9) null (WandMaskField_13134 pm_f_42@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsWandField_13134_76750 pm_f_42@@9) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@9) null (WandMaskField_13134 pm_f_42@@9)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_20564) (ExhaleHeap@@10 T@PolymorphicMapType_20564) (Mask@@11 T@PolymorphicMapType_20585) (pm_f_42@@10 T@Field_13131_13135) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_13131_13135 Mask@@11 null pm_f_42@@10) (IsWandField_13131_76393 pm_f_42@@10)) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@13) null (WandMaskField_13131 pm_f_42@@10)) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@10) null (WandMaskField_13131 pm_f_42@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsWandField_13131_76393 pm_f_42@@10) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@10) null (WandMaskField_13131 pm_f_42@@10)))
)))
(assert (forall ((x@@3 T@Ref) (i@@1 Int) (x2 T@Ref) (i2_1 Int) ) (!  (=> (= (P x@@3 i@@1) (P x2 i2_1)) (and (= x@@3 x2) (= i@@1 i2_1)))
 :qid |stdinbpl.557:15|
 :skolemid |106|
 :pattern ( (P x@@3 i@@1) (P x2 i2_1))
)))
(assert (forall ((x@@4 T@Ref) (i@@2 Int) (x2@@0 T@Ref) (i2_1@@0 Int) ) (!  (=> (= (|P#sm| x@@4 i@@2) (|P#sm| x2@@0 i2_1@@0)) (and (= x@@4 x2@@0) (= i@@2 i2_1@@0)))
 :qid |stdinbpl.561:15|
 :skolemid |107|
 :pattern ( (|P#sm| x@@4 i@@2) (|P#sm| x2@@0 i2_1@@0))
)))
(assert (forall ((x@@5 T@Ref) (y@@1 T@Ref) (x2@@1 T@Ref) (y2 T@Ref) ) (!  (=> (= (p2 x@@5 y@@1) (p2 x2@@1 y2)) (and (= x@@5 x2@@1) (= y@@1 y2)))
 :qid |stdinbpl.616:15|
 :skolemid |112|
 :pattern ( (p2 x@@5 y@@1) (p2 x2@@1 y2))
)))
(assert (forall ((x@@6 T@Ref) (y@@2 T@Ref) (x2@@2 T@Ref) (y2@@0 T@Ref) ) (!  (=> (= (|p2#sm| x@@6 y@@2) (|p2#sm| x2@@2 y2@@0)) (and (= x@@6 x2@@2) (= y@@2 y2@@0)))
 :qid |stdinbpl.620:15|
 :skolemid |113|
 :pattern ( (|p2#sm| x@@6 y@@2) (|p2#sm| x2@@2 y2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_20564) (ExhaleHeap@@11 T@PolymorphicMapType_20564) (Mask@@12 T@PolymorphicMapType_20585) (o_76 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@14) o_76 $allocated) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@11) o_76 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@11) o_76 $allocated))
)))
(assert (forall ((p T@Field_30154_30155) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_30154_30154 p v_1 p w))
 :qid |stdinbpl.231:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30154_30154 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_29067_29068) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_29067_29067 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.231:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29067_29067 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_28299_28300) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_28266_28266 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.231:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_28266_28266 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_27541_27542) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_27508_27508 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.231:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27508_27508 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_26891_26892) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_26862_26862 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.231:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26862_26862 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_13131_13135) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_20624_20624 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.231:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20624_20624 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert  (not (IsPredicateField_13131_4669 f_7)))
(assert  (not (IsWandField_13131_4669 f_7)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_20564) (ExhaleHeap@@12 T@PolymorphicMapType_20564) (Mask@@13 T@PolymorphicMapType_20585) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@15 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_20585) (o_2@@29 T@Ref) (f_4@@29 T@Field_28281_28286) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| Mask@@14) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_13043_98525 f_4@@29))) (not (IsWandField_13043_98541 f_4@@29))) (<= (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| Mask@@14) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| Mask@@14) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_20585) (o_2@@30 T@Ref) (f_4@@30 T@Field_13043_20638) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| Mask@@15) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_13043_20638 f_4@@30))) (not (IsWandField_13043_20638 f_4@@30))) (<= (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| Mask@@15) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| Mask@@15) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_20585) (o_2@@31 T@Ref) (f_4@@31 T@Field_13043_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| Mask@@16) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_13043_53 f_4@@31))) (not (IsWandField_13043_53 f_4@@31))) (<= (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| Mask@@16) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| Mask@@16) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_20585) (o_2@@32 T@Ref) (f_4@@32 T@Field_28299_28300) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| Mask@@17) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_13064_13065 f_4@@32))) (not (IsWandField_13064_13065 f_4@@32))) (<= (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| Mask@@17) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| Mask@@17) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_20585) (o_2@@33 T@Ref) (f_4@@33 T@Field_28266_4344) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| Mask@@18) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_13043_4344 f_4@@33))) (not (IsWandField_13043_4344 f_4@@33))) (<= (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| Mask@@18) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| Mask@@18) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_20585) (o_2@@34 T@Ref) (f_4@@34 T@Field_27523_27528) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| Mask@@19) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_12947_97708 f_4@@34))) (not (IsWandField_12947_97724 f_4@@34))) (<= (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| Mask@@19) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| Mask@@19) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_20585) (o_2@@35 T@Ref) (f_4@@35 T@Field_27508_20638) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| Mask@@20) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_12947_20638 f_4@@35))) (not (IsWandField_12947_20638 f_4@@35))) (<= (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| Mask@@20) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| Mask@@20) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_20585) (o_2@@36 T@Ref) (f_4@@36 T@Field_27508_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| Mask@@21) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_12947_53 f_4@@36))) (not (IsWandField_12947_53 f_4@@36))) (<= (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| Mask@@21) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| Mask@@21) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_20585) (o_2@@37 T@Ref) (f_4@@37 T@Field_27541_27542) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| Mask@@22) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_12968_12969 f_4@@37))) (not (IsWandField_12968_12969 f_4@@37))) (<= (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| Mask@@22) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| Mask@@22) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_20585) (o_2@@38 T@Ref) (f_4@@38 T@Field_27508_4000) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| Mask@@23) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_12947_4000 f_4@@38))) (not (IsWandField_12947_4000 f_4@@38))) (<= (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| Mask@@23) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| Mask@@23) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_20585) (o_2@@39 T@Ref) (f_4@@39 T@Field_30168_30173) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| Mask@@24) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_13160_96891 f_4@@39))) (not (IsWandField_13160_96907 f_4@@39))) (<= (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| Mask@@24) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| Mask@@24) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_20585) (o_2@@40 T@Ref) (f_4@@40 T@Field_13160_20638) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| Mask@@25) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_13160_20638 f_4@@40))) (not (IsWandField_13160_20638 f_4@@40))) (<= (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| Mask@@25) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| Mask@@25) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_20585) (o_2@@41 T@Ref) (f_4@@41 T@Field_13160_53) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| Mask@@26) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_13160_53 f_4@@41))) (not (IsWandField_13160_53 f_4@@41))) (<= (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| Mask@@26) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| Mask@@26) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_20585) (o_2@@42 T@Ref) (f_4@@42 T@Field_30154_30155) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| Mask@@27) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_13160_13161 f_4@@42))) (not (IsWandField_13160_77432 f_4@@42))) (<= (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| Mask@@27) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| Mask@@27) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_20585) (o_2@@43 T@Ref) (f_4@@43 T@Field_13160_4669) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| Mask@@28) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_13160_4669 f_4@@43))) (not (IsWandField_13160_4669 f_4@@43))) (<= (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| Mask@@28) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| Mask@@28) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_20585) (o_2@@44 T@Ref) (f_4@@44 T@Field_26875_26880) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| Mask@@29) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_12891_96060 f_4@@44))) (not (IsWandField_12891_96076 f_4@@44))) (<= (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| Mask@@29) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| Mask@@29) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_20585) (o_2@@45 T@Ref) (f_4@@45 T@Field_12891_20638) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| Mask@@30) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_12891_20638 f_4@@45))) (not (IsWandField_12891_20638 f_4@@45))) (<= (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| Mask@@30) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| Mask@@30) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_20585) (o_2@@46 T@Ref) (f_4@@46 T@Field_12891_53) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| Mask@@31) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_12891_53 f_4@@46))) (not (IsWandField_12891_53 f_4@@46))) (<= (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| Mask@@31) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| Mask@@31) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_20585) (o_2@@47 T@Ref) (f_4@@47 T@Field_26891_26892) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| Mask@@32) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_12904_12905 f_4@@47))) (not (IsWandField_12904_12905 f_4@@47))) (<= (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| Mask@@32) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| Mask@@32) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_20585) (o_2@@48 T@Ref) (f_4@@48 T@Field_26862_3676) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| Mask@@33) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_12891_3676 f_4@@48))) (not (IsWandField_12891_3676 f_4@@48))) (<= (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| Mask@@33) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| Mask@@33) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_20585) (o_2@@49 T@Ref) (f_4@@49 T@Field_29080_29085) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| Mask@@34) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_13134_95243 f_4@@49))) (not (IsWandField_13134_95259 f_4@@49))) (<= (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| Mask@@34) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| Mask@@34) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_20585) (o_2@@50 T@Ref) (f_4@@50 T@Field_13134_20638) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| Mask@@35) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_13134_20638 f_4@@50))) (not (IsWandField_13134_20638 f_4@@50))) (<= (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| Mask@@35) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| Mask@@35) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_20585) (o_2@@51 T@Ref) (f_4@@51 T@Field_13134_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| Mask@@36) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_13134_53 f_4@@51))) (not (IsWandField_13134_53 f_4@@51))) (<= (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| Mask@@36) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| Mask@@36) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_20585) (o_2@@52 T@Ref) (f_4@@52 T@Field_29067_29068) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| Mask@@37) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_13134_13135 f_4@@52))) (not (IsWandField_13134_76750 f_4@@52))) (<= (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| Mask@@37) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| Mask@@37) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_20585) (o_2@@53 T@Ref) (f_4@@53 T@Field_13134_4669) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| Mask@@38) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_13134_4669 f_4@@53))) (not (IsWandField_13134_4669 f_4@@53))) (<= (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| Mask@@38) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| Mask@@38) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_20585) (o_2@@54 T@Ref) (f_4@@54 T@Field_13131_26880) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| Mask@@39) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_13131_94412 f_4@@54))) (not (IsWandField_13131_94428 f_4@@54))) (<= (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| Mask@@39) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| Mask@@39) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_20585) (o_2@@55 T@Ref) (f_4@@55 T@Field_20637_20638) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| Mask@@40) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_13131_20638 f_4@@55))) (not (IsWandField_13131_20638 f_4@@55))) (<= (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| Mask@@40) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| Mask@@40) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_20585) (o_2@@56 T@Ref) (f_4@@56 T@Field_20624_53) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| Mask@@41) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_13131_53 f_4@@56))) (not (IsWandField_13131_53 f_4@@56))) (<= (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| Mask@@41) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| Mask@@41) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_20585) (o_2@@57 T@Ref) (f_4@@57 T@Field_13131_13135) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| Mask@@42) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_13131_66362 f_4@@57))) (not (IsWandField_13131_76393 f_4@@57))) (<= (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| Mask@@42) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| Mask@@42) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_20585) (o_2@@58 T@Ref) (f_4@@58 T@Field_29020_4669) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| Mask@@43) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_13131_4669 f_4@@58))) (not (IsWandField_13131_4669 f_4@@58))) (<= (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| Mask@@43) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| Mask@@43) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_20585) (o_2@@59 T@Ref) (f_4@@59 T@Field_27523_27528) ) (! (= (HasDirectPerm_27508_66074 Mask@@44 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| Mask@@44) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27508_66074 Mask@@44 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_20585) (o_2@@60 T@Ref) (f_4@@60 T@Field_27508_20638) ) (! (= (HasDirectPerm_27508_20638 Mask@@45 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| Mask@@45) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27508_20638 Mask@@45 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_20585) (o_2@@61 T@Ref) (f_4@@61 T@Field_27508_53) ) (! (= (HasDirectPerm_27508_53 Mask@@46 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| Mask@@46) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27508_53 Mask@@46 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_20585) (o_2@@62 T@Ref) (f_4@@62 T@Field_27541_27542) ) (! (= (HasDirectPerm_27508_13135 Mask@@47 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| Mask@@47) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27508_13135 Mask@@47 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_20585) (o_2@@63 T@Ref) (f_4@@63 T@Field_27508_4000) ) (! (= (HasDirectPerm_27508_4669 Mask@@48 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| Mask@@48) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27508_4669 Mask@@48 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_20585) (o_2@@64 T@Ref) (f_4@@64 T@Field_28281_28286) ) (! (= (HasDirectPerm_13043_64897 Mask@@49 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| Mask@@49) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13043_64897 Mask@@49 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_20585) (o_2@@65 T@Ref) (f_4@@65 T@Field_13043_20638) ) (! (= (HasDirectPerm_13043_20638 Mask@@50 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| Mask@@50) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13043_20638 Mask@@50 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_20585) (o_2@@66 T@Ref) (f_4@@66 T@Field_13043_53) ) (! (= (HasDirectPerm_13043_53 Mask@@51 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| Mask@@51) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13043_53 Mask@@51 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_20585) (o_2@@67 T@Ref) (f_4@@67 T@Field_28299_28300) ) (! (= (HasDirectPerm_13043_13135 Mask@@52 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| Mask@@52) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13043_13135 Mask@@52 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_20585) (o_2@@68 T@Ref) (f_4@@68 T@Field_28266_4344) ) (! (= (HasDirectPerm_13043_4344 Mask@@53 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| Mask@@53) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13043_4344 Mask@@53 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_20585) (o_2@@69 T@Ref) (f_4@@69 T@Field_30168_30173) ) (! (= (HasDirectPerm_13160_63752 Mask@@54 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| Mask@@54) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13160_63752 Mask@@54 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_20585) (o_2@@70 T@Ref) (f_4@@70 T@Field_13160_20638) ) (! (= (HasDirectPerm_13160_20638 Mask@@55 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| Mask@@55) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13160_20638 Mask@@55 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_20585) (o_2@@71 T@Ref) (f_4@@71 T@Field_13160_53) ) (! (= (HasDirectPerm_13160_53 Mask@@56 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| Mask@@56) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13160_53 Mask@@56 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_20585) (o_2@@72 T@Ref) (f_4@@72 T@Field_30154_30155) ) (! (= (HasDirectPerm_13160_13161 Mask@@57 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| Mask@@57) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13160_13161 Mask@@57 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_20585) (o_2@@73 T@Ref) (f_4@@73 T@Field_13160_4669) ) (! (= (HasDirectPerm_13160_4669 Mask@@58 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| Mask@@58) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13160_4669 Mask@@58 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_20585) (o_2@@74 T@Ref) (f_4@@74 T@Field_26875_26880) ) (! (= (HasDirectPerm_12891_62611 Mask@@59 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| Mask@@59) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12891_62611 Mask@@59 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_20585) (o_2@@75 T@Ref) (f_4@@75 T@Field_12891_20638) ) (! (= (HasDirectPerm_12891_20638 Mask@@60 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| Mask@@60) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12891_20638 Mask@@60 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_20585) (o_2@@76 T@Ref) (f_4@@76 T@Field_12891_53) ) (! (= (HasDirectPerm_12891_53 Mask@@61 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| Mask@@61) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12891_53 Mask@@61 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_20585) (o_2@@77 T@Ref) (f_4@@77 T@Field_26891_26892) ) (! (= (HasDirectPerm_12891_13135 Mask@@62 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| Mask@@62) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12891_13135 Mask@@62 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_20585) (o_2@@78 T@Ref) (f_4@@78 T@Field_26862_3676) ) (! (= (HasDirectPerm_12891_3676 Mask@@63 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| Mask@@63) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12891_3676 Mask@@63 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_20585) (o_2@@79 T@Ref) (f_4@@79 T@Field_29080_29085) ) (! (= (HasDirectPerm_13134_61466 Mask@@64 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| Mask@@64) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13134_61466 Mask@@64 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_20585) (o_2@@80 T@Ref) (f_4@@80 T@Field_13134_20638) ) (! (= (HasDirectPerm_13134_20638 Mask@@65 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| Mask@@65) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13134_20638 Mask@@65 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_20585) (o_2@@81 T@Ref) (f_4@@81 T@Field_13134_53) ) (! (= (HasDirectPerm_13134_53 Mask@@66 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| Mask@@66) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13134_53 Mask@@66 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_20585) (o_2@@82 T@Ref) (f_4@@82 T@Field_29067_29068) ) (! (= (HasDirectPerm_13134_13135 Mask@@67 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| Mask@@67) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13134_13135 Mask@@67 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_20585) (o_2@@83 T@Ref) (f_4@@83 T@Field_13134_4669) ) (! (= (HasDirectPerm_13134_4669 Mask@@68 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| Mask@@68) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13134_4669 Mask@@68 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_20585) (o_2@@84 T@Ref) (f_4@@84 T@Field_13131_26880) ) (! (= (HasDirectPerm_13131_60325 Mask@@69 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| Mask@@69) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13131_60325 Mask@@69 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_20585) (o_2@@85 T@Ref) (f_4@@85 T@Field_20637_20638) ) (! (= (HasDirectPerm_13131_20638 Mask@@70 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| Mask@@70) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13131_20638 Mask@@70 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_20585) (o_2@@86 T@Ref) (f_4@@86 T@Field_20624_53) ) (! (= (HasDirectPerm_13131_53 Mask@@71 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| Mask@@71) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13131_53 Mask@@71 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_20585) (o_2@@87 T@Ref) (f_4@@87 T@Field_13131_13135) ) (! (= (HasDirectPerm_13131_13135 Mask@@72 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| Mask@@72) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13131_13135 Mask@@72 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_20585) (o_2@@88 T@Ref) (f_4@@88 T@Field_29020_4669) ) (! (= (HasDirectPerm_13131_4669 Mask@@73 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| Mask@@73) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13131_4669 Mask@@73 o_2@@88 f_4@@88))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) ) (! (IsWandField_12891_3676 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2))
 :qid |stdinbpl.435:15|
 :skolemid |82|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 Real) ) (! (IsWandField_12904_12905 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3))
 :qid |stdinbpl.439:15|
 :skolemid |83|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@4 (Array T@Ref Bool)) (arg2@@4 Real) (arg3@@4 (Array T@Ref Bool)) (arg4@@4 Real) ) (! (IsWandField_12947_4000 (wand_1 arg1@@4 arg2@@4 arg3@@4 arg4@@4))
 :qid |stdinbpl.467:15|
 :skolemid |89|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@4 arg4@@4))
)))
(assert (forall ((arg1@@5 (Array T@Ref Bool)) (arg2@@5 Real) (arg3@@5 (Array T@Ref Bool)) (arg4@@5 Real) ) (! (IsWandField_12968_12969 (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5))
 :qid |stdinbpl.471:15|
 :skolemid |90|
 :pattern ( (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5))
)))
(assert (forall ((arg1@@6 (Array T@Ref Bool)) (arg2@@6 Real) (arg3@@6 (Array T@Ref Bool)) (arg4@@6 Real) ) (! (IsWandField_13043_4344 (wand_2 arg1@@6 arg2@@6 arg3@@6 arg4@@6))
 :qid |stdinbpl.499:15|
 :skolemid |96|
 :pattern ( (wand_2 arg1@@6 arg2@@6 arg3@@6 arg4@@6))
)))
(assert (forall ((arg1@@7 (Array T@Ref Bool)) (arg2@@7 Real) (arg3@@7 (Array T@Ref Bool)) (arg4@@7 Real) ) (! (IsWandField_13064_13065 (|wand_2#ft| arg1@@7 arg2@@7 arg3@@7 arg4@@7))
 :qid |stdinbpl.503:15|
 :skolemid |97|
 :pattern ( (|wand_2#ft| arg1@@7 arg2@@7 arg3@@7 arg4@@7))
)))
(assert (forall ((p@@5 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@5 f_6) (ite (> p@@5 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.219:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@5 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_20564) (ExhaleHeap@@13 T@PolymorphicMapType_20564) (Mask@@74 T@PolymorphicMapType_20585) (o_76@@0 T@Ref) (f_53 T@Field_27523_27528) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@74) (=> (HasDirectPerm_27508_66074 Mask@@74 o_76@@0 f_53) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@16) o_76@@0 f_53) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@13) o_76@@0 f_53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@74) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@13) o_76@@0 f_53))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_20564) (ExhaleHeap@@14 T@PolymorphicMapType_20564) (Mask@@75 T@PolymorphicMapType_20585) (o_76@@1 T@Ref) (f_53@@0 T@Field_27508_20638) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@75) (=> (HasDirectPerm_27508_20638 Mask@@75 o_76@@1 f_53@@0) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@17) o_76@@1 f_53@@0) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@14) o_76@@1 f_53@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@75) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@14) o_76@@1 f_53@@0))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_20564) (ExhaleHeap@@15 T@PolymorphicMapType_20564) (Mask@@76 T@PolymorphicMapType_20585) (o_76@@2 T@Ref) (f_53@@1 T@Field_27508_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@76) (=> (HasDirectPerm_27508_53 Mask@@76 o_76@@2 f_53@@1) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@18) o_76@@2 f_53@@1) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@15) o_76@@2 f_53@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@76) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@15) o_76@@2 f_53@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_20564) (ExhaleHeap@@16 T@PolymorphicMapType_20564) (Mask@@77 T@PolymorphicMapType_20585) (o_76@@3 T@Ref) (f_53@@2 T@Field_27541_27542) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@77) (=> (HasDirectPerm_27508_13135 Mask@@77 o_76@@3 f_53@@2) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@19) o_76@@3 f_53@@2) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@16) o_76@@3 f_53@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@77) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@16) o_76@@3 f_53@@2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_20564) (ExhaleHeap@@17 T@PolymorphicMapType_20564) (Mask@@78 T@PolymorphicMapType_20585) (o_76@@4 T@Ref) (f_53@@3 T@Field_27508_4000) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@78) (=> (HasDirectPerm_27508_4669 Mask@@78 o_76@@4 f_53@@3) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@20) o_76@@4 f_53@@3) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@17) o_76@@4 f_53@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@78) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@17) o_76@@4 f_53@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_20564) (ExhaleHeap@@18 T@PolymorphicMapType_20564) (Mask@@79 T@PolymorphicMapType_20585) (o_76@@5 T@Ref) (f_53@@4 T@Field_28281_28286) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@79) (=> (HasDirectPerm_13043_64897 Mask@@79 o_76@@5 f_53@@4) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@21) o_76@@5 f_53@@4) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@18) o_76@@5 f_53@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@79) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@18) o_76@@5 f_53@@4))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_20564) (ExhaleHeap@@19 T@PolymorphicMapType_20564) (Mask@@80 T@PolymorphicMapType_20585) (o_76@@6 T@Ref) (f_53@@5 T@Field_13043_20638) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@80) (=> (HasDirectPerm_13043_20638 Mask@@80 o_76@@6 f_53@@5) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@22) o_76@@6 f_53@@5) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@19) o_76@@6 f_53@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@80) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@19) o_76@@6 f_53@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_20564) (ExhaleHeap@@20 T@PolymorphicMapType_20564) (Mask@@81 T@PolymorphicMapType_20585) (o_76@@7 T@Ref) (f_53@@6 T@Field_13043_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@81) (=> (HasDirectPerm_13043_53 Mask@@81 o_76@@7 f_53@@6) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@23) o_76@@7 f_53@@6) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@20) o_76@@7 f_53@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@81) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@20) o_76@@7 f_53@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_20564) (ExhaleHeap@@21 T@PolymorphicMapType_20564) (Mask@@82 T@PolymorphicMapType_20585) (o_76@@8 T@Ref) (f_53@@7 T@Field_28299_28300) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@82) (=> (HasDirectPerm_13043_13135 Mask@@82 o_76@@8 f_53@@7) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@24) o_76@@8 f_53@@7) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@21) o_76@@8 f_53@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@82) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@21) o_76@@8 f_53@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_20564) (ExhaleHeap@@22 T@PolymorphicMapType_20564) (Mask@@83 T@PolymorphicMapType_20585) (o_76@@9 T@Ref) (f_53@@8 T@Field_28266_4344) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@83) (=> (HasDirectPerm_13043_4344 Mask@@83 o_76@@9 f_53@@8) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@25) o_76@@9 f_53@@8) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@22) o_76@@9 f_53@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@83) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@22) o_76@@9 f_53@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_20564) (ExhaleHeap@@23 T@PolymorphicMapType_20564) (Mask@@84 T@PolymorphicMapType_20585) (o_76@@10 T@Ref) (f_53@@9 T@Field_30168_30173) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@84) (=> (HasDirectPerm_13160_63752 Mask@@84 o_76@@10 f_53@@9) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@26) o_76@@10 f_53@@9) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@23) o_76@@10 f_53@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@84) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@23) o_76@@10 f_53@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_20564) (ExhaleHeap@@24 T@PolymorphicMapType_20564) (Mask@@85 T@PolymorphicMapType_20585) (o_76@@11 T@Ref) (f_53@@10 T@Field_13160_20638) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@85) (=> (HasDirectPerm_13160_20638 Mask@@85 o_76@@11 f_53@@10) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@27) o_76@@11 f_53@@10) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@24) o_76@@11 f_53@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@85) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@24) o_76@@11 f_53@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_20564) (ExhaleHeap@@25 T@PolymorphicMapType_20564) (Mask@@86 T@PolymorphicMapType_20585) (o_76@@12 T@Ref) (f_53@@11 T@Field_13160_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@86) (=> (HasDirectPerm_13160_53 Mask@@86 o_76@@12 f_53@@11) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@28) o_76@@12 f_53@@11) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@25) o_76@@12 f_53@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@86) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@25) o_76@@12 f_53@@11))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_20564) (ExhaleHeap@@26 T@PolymorphicMapType_20564) (Mask@@87 T@PolymorphicMapType_20585) (o_76@@13 T@Ref) (f_53@@12 T@Field_30154_30155) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@87) (=> (HasDirectPerm_13160_13161 Mask@@87 o_76@@13 f_53@@12) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@29) o_76@@13 f_53@@12) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@26) o_76@@13 f_53@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@87) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@26) o_76@@13 f_53@@12))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_20564) (ExhaleHeap@@27 T@PolymorphicMapType_20564) (Mask@@88 T@PolymorphicMapType_20585) (o_76@@14 T@Ref) (f_53@@13 T@Field_13160_4669) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@88) (=> (HasDirectPerm_13160_4669 Mask@@88 o_76@@14 f_53@@13) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@30) o_76@@14 f_53@@13) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@27) o_76@@14 f_53@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@88) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@27) o_76@@14 f_53@@13))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_20564) (ExhaleHeap@@28 T@PolymorphicMapType_20564) (Mask@@89 T@PolymorphicMapType_20585) (o_76@@15 T@Ref) (f_53@@14 T@Field_26875_26880) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@89) (=> (HasDirectPerm_12891_62611 Mask@@89 o_76@@15 f_53@@14) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@31) o_76@@15 f_53@@14) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@28) o_76@@15 f_53@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@89) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@28) o_76@@15 f_53@@14))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_20564) (ExhaleHeap@@29 T@PolymorphicMapType_20564) (Mask@@90 T@PolymorphicMapType_20585) (o_76@@16 T@Ref) (f_53@@15 T@Field_12891_20638) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@90) (=> (HasDirectPerm_12891_20638 Mask@@90 o_76@@16 f_53@@15) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@32) o_76@@16 f_53@@15) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@29) o_76@@16 f_53@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@90) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@29) o_76@@16 f_53@@15))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_20564) (ExhaleHeap@@30 T@PolymorphicMapType_20564) (Mask@@91 T@PolymorphicMapType_20585) (o_76@@17 T@Ref) (f_53@@16 T@Field_12891_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@91) (=> (HasDirectPerm_12891_53 Mask@@91 o_76@@17 f_53@@16) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@33) o_76@@17 f_53@@16) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@30) o_76@@17 f_53@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@91) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@30) o_76@@17 f_53@@16))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_20564) (ExhaleHeap@@31 T@PolymorphicMapType_20564) (Mask@@92 T@PolymorphicMapType_20585) (o_76@@18 T@Ref) (f_53@@17 T@Field_26891_26892) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@92) (=> (HasDirectPerm_12891_13135 Mask@@92 o_76@@18 f_53@@17) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@34) o_76@@18 f_53@@17) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@31) o_76@@18 f_53@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@92) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@31) o_76@@18 f_53@@17))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_20564) (ExhaleHeap@@32 T@PolymorphicMapType_20564) (Mask@@93 T@PolymorphicMapType_20585) (o_76@@19 T@Ref) (f_53@@18 T@Field_26862_3676) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@93) (=> (HasDirectPerm_12891_3676 Mask@@93 o_76@@19 f_53@@18) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@35) o_76@@19 f_53@@18) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@32) o_76@@19 f_53@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@93) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@32) o_76@@19 f_53@@18))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_20564) (ExhaleHeap@@33 T@PolymorphicMapType_20564) (Mask@@94 T@PolymorphicMapType_20585) (o_76@@20 T@Ref) (f_53@@19 T@Field_29080_29085) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@94) (=> (HasDirectPerm_13134_61466 Mask@@94 o_76@@20 f_53@@19) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@36) o_76@@20 f_53@@19) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@33) o_76@@20 f_53@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@94) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@33) o_76@@20 f_53@@19))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_20564) (ExhaleHeap@@34 T@PolymorphicMapType_20564) (Mask@@95 T@PolymorphicMapType_20585) (o_76@@21 T@Ref) (f_53@@20 T@Field_13134_20638) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@95) (=> (HasDirectPerm_13134_20638 Mask@@95 o_76@@21 f_53@@20) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@37) o_76@@21 f_53@@20) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@34) o_76@@21 f_53@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@95) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@34) o_76@@21 f_53@@20))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_20564) (ExhaleHeap@@35 T@PolymorphicMapType_20564) (Mask@@96 T@PolymorphicMapType_20585) (o_76@@22 T@Ref) (f_53@@21 T@Field_13134_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@96) (=> (HasDirectPerm_13134_53 Mask@@96 o_76@@22 f_53@@21) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@38) o_76@@22 f_53@@21) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@35) o_76@@22 f_53@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@96) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@35) o_76@@22 f_53@@21))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_20564) (ExhaleHeap@@36 T@PolymorphicMapType_20564) (Mask@@97 T@PolymorphicMapType_20585) (o_76@@23 T@Ref) (f_53@@22 T@Field_29067_29068) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@97) (=> (HasDirectPerm_13134_13135 Mask@@97 o_76@@23 f_53@@22) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@39) o_76@@23 f_53@@22) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@36) o_76@@23 f_53@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@97) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@36) o_76@@23 f_53@@22))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_20564) (ExhaleHeap@@37 T@PolymorphicMapType_20564) (Mask@@98 T@PolymorphicMapType_20585) (o_76@@24 T@Ref) (f_53@@23 T@Field_13134_4669) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@37 Mask@@98) (=> (HasDirectPerm_13134_4669 Mask@@98 o_76@@24 f_53@@23) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@40) o_76@@24 f_53@@23) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@37) o_76@@24 f_53@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@37 Mask@@98) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@37) o_76@@24 f_53@@23))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_20564) (ExhaleHeap@@38 T@PolymorphicMapType_20564) (Mask@@99 T@PolymorphicMapType_20585) (o_76@@25 T@Ref) (f_53@@24 T@Field_13131_26880) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@38 Mask@@99) (=> (HasDirectPerm_13131_60325 Mask@@99 o_76@@25 f_53@@24) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@41) o_76@@25 f_53@@24) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@38) o_76@@25 f_53@@24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@38 Mask@@99) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@38) o_76@@25 f_53@@24))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_20564) (ExhaleHeap@@39 T@PolymorphicMapType_20564) (Mask@@100 T@PolymorphicMapType_20585) (o_76@@26 T@Ref) (f_53@@25 T@Field_20637_20638) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@39 Mask@@100) (=> (HasDirectPerm_13131_20638 Mask@@100 o_76@@26 f_53@@25) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@42) o_76@@26 f_53@@25) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@39) o_76@@26 f_53@@25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@39 Mask@@100) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@39) o_76@@26 f_53@@25))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_20564) (ExhaleHeap@@40 T@PolymorphicMapType_20564) (Mask@@101 T@PolymorphicMapType_20585) (o_76@@27 T@Ref) (f_53@@26 T@Field_20624_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@40 Mask@@101) (=> (HasDirectPerm_13131_53 Mask@@101 o_76@@27 f_53@@26) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@43) o_76@@27 f_53@@26) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@40) o_76@@27 f_53@@26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@40 Mask@@101) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@40) o_76@@27 f_53@@26))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_20564) (ExhaleHeap@@41 T@PolymorphicMapType_20564) (Mask@@102 T@PolymorphicMapType_20585) (o_76@@28 T@Ref) (f_53@@27 T@Field_13131_13135) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@41 Mask@@102) (=> (HasDirectPerm_13131_13135 Mask@@102 o_76@@28 f_53@@27) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@44) o_76@@28 f_53@@27) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@41) o_76@@28 f_53@@27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@41 Mask@@102) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@41) o_76@@28 f_53@@27))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_20564) (ExhaleHeap@@42 T@PolymorphicMapType_20564) (Mask@@103 T@PolymorphicMapType_20585) (o_76@@29 T@Ref) (f_53@@28 T@Field_29020_4669) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@42 Mask@@103) (=> (HasDirectPerm_13131_4669 Mask@@103 o_76@@29 f_53@@28) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@45) o_76@@29 f_53@@28) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@42) o_76@@29 f_53@@28))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@42 Mask@@103) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@42) o_76@@29 f_53@@28))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 T@Ref) (arg4@@8 Real) ) (!  (not (IsPredicateField_12891_3676 (wand arg1@@8 arg2@@8 arg3@@8 arg4@@8)))
 :qid |stdinbpl.443:15|
 :skolemid |84|
 :pattern ( (wand arg1@@8 arg2@@8 arg3@@8 arg4@@8))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 T@Ref) (arg4@@9 Real) ) (!  (not (IsPredicateField_12904_12905 (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9)))
 :qid |stdinbpl.447:15|
 :skolemid |85|
 :pattern ( (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9))
)))
(assert (forall ((arg1@@10 (Array T@Ref Bool)) (arg2@@10 Real) (arg3@@10 (Array T@Ref Bool)) (arg4@@10 Real) ) (!  (not (IsPredicateField_12947_4000 (wand_1 arg1@@10 arg2@@10 arg3@@10 arg4@@10)))
 :qid |stdinbpl.475:15|
 :skolemid |91|
 :pattern ( (wand_1 arg1@@10 arg2@@10 arg3@@10 arg4@@10))
)))
(assert (forall ((arg1@@11 (Array T@Ref Bool)) (arg2@@11 Real) (arg3@@11 (Array T@Ref Bool)) (arg4@@11 Real) ) (!  (not (IsPredicateField_12968_12969 (|wand_1#ft| arg1@@11 arg2@@11 arg3@@11 arg4@@11)))
 :qid |stdinbpl.479:15|
 :skolemid |92|
 :pattern ( (|wand_1#ft| arg1@@11 arg2@@11 arg3@@11 arg4@@11))
)))
(assert (forall ((arg1@@12 (Array T@Ref Bool)) (arg2@@12 Real) (arg3@@12 (Array T@Ref Bool)) (arg4@@12 Real) ) (!  (not (IsPredicateField_13043_4344 (wand_2 arg1@@12 arg2@@12 arg3@@12 arg4@@12)))
 :qid |stdinbpl.507:15|
 :skolemid |98|
 :pattern ( (wand_2 arg1@@12 arg2@@12 arg3@@12 arg4@@12))
)))
(assert (forall ((arg1@@13 (Array T@Ref Bool)) (arg2@@13 Real) (arg3@@13 (Array T@Ref Bool)) (arg4@@13 Real) ) (!  (not (IsPredicateField_13064_13065 (|wand_2#ft| arg1@@13 arg2@@13 arg3@@13 arg4@@13)))
 :qid |stdinbpl.511:15|
 :skolemid |99|
 :pattern ( (|wand_2#ft| arg1@@13 arg2@@13 arg3@@13 arg4@@13))
)))
(assert (forall ((arg1@@14 T@Ref) (arg2@@14 Real) (arg3@@14 T@Ref) (arg4@@14 Real) ) (! (= (|wand#sm| arg1@@14 arg2@@14 arg3@@14 arg4@@14) (WandMaskField_12904 (|wand#ft| arg1@@14 arg2@@14 arg3@@14 arg4@@14)))
 :qid |stdinbpl.451:15|
 :skolemid |86|
 :pattern ( (WandMaskField_12904 (|wand#ft| arg1@@14 arg2@@14 arg3@@14 arg4@@14)))
)))
(assert (forall ((arg1@@15 (Array T@Ref Bool)) (arg2@@15 Real) (arg3@@15 (Array T@Ref Bool)) (arg4@@15 Real) ) (! (= (|wand_1#sm| arg1@@15 arg2@@15 arg3@@15 arg4@@15) (WandMaskField_12968 (|wand_1#ft| arg1@@15 arg2@@15 arg3@@15 arg4@@15)))
 :qid |stdinbpl.483:15|
 :skolemid |93|
 :pattern ( (WandMaskField_12968 (|wand_1#ft| arg1@@15 arg2@@15 arg3@@15 arg4@@15)))
)))
(assert (forall ((arg1@@16 (Array T@Ref Bool)) (arg2@@16 Real) (arg3@@16 (Array T@Ref Bool)) (arg4@@16 Real) ) (! (= (|wand_2#sm| arg1@@16 arg2@@16 arg3@@16 arg4@@16) (WandMaskField_13064 (|wand_2#ft| arg1@@16 arg2@@16 arg3@@16 arg4@@16)))
 :qid |stdinbpl.515:15|
 :skolemid |100|
 :pattern ( (WandMaskField_13064 (|wand_2#ft| arg1@@16 arg2@@16 arg3@@16 arg4@@16)))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_28281_28286) ) (! (= (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_13043_20638) ) (! (= (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_13043_53) ) (! (= (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_28299_28300) ) (! (= (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_28266_4344) ) (! (= (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_27523_27528) ) (! (= (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_27508_20638) ) (! (= (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_27508_53) ) (! (= (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_27541_27542) ) (! (= (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_27508_4000) ) (! (= (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((o_2@@99 T@Ref) (f_4@@99 T@Field_30168_30173) ) (! (= (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| ZeroMask) o_2@@99 f_4@@99) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| ZeroMask) o_2@@99 f_4@@99))
)))
(assert (forall ((o_2@@100 T@Ref) (f_4@@100 T@Field_13160_20638) ) (! (= (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| ZeroMask) o_2@@100 f_4@@100) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| ZeroMask) o_2@@100 f_4@@100))
)))
(assert (forall ((o_2@@101 T@Ref) (f_4@@101 T@Field_13160_53) ) (! (= (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| ZeroMask) o_2@@101 f_4@@101) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| ZeroMask) o_2@@101 f_4@@101))
)))
(assert (forall ((o_2@@102 T@Ref) (f_4@@102 T@Field_30154_30155) ) (! (= (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| ZeroMask) o_2@@102 f_4@@102) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| ZeroMask) o_2@@102 f_4@@102))
)))
(assert (forall ((o_2@@103 T@Ref) (f_4@@103 T@Field_13160_4669) ) (! (= (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| ZeroMask) o_2@@103 f_4@@103) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| ZeroMask) o_2@@103 f_4@@103))
)))
(assert (forall ((o_2@@104 T@Ref) (f_4@@104 T@Field_26875_26880) ) (! (= (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| ZeroMask) o_2@@104 f_4@@104) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| ZeroMask) o_2@@104 f_4@@104))
)))
(assert (forall ((o_2@@105 T@Ref) (f_4@@105 T@Field_12891_20638) ) (! (= (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| ZeroMask) o_2@@105 f_4@@105) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| ZeroMask) o_2@@105 f_4@@105))
)))
(assert (forall ((o_2@@106 T@Ref) (f_4@@106 T@Field_12891_53) ) (! (= (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| ZeroMask) o_2@@106 f_4@@106) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| ZeroMask) o_2@@106 f_4@@106))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_26891_26892) ) (! (= (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_26862_3676) ) (! (= (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_29080_29085) ) (! (= (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_13134_20638) ) (! (= (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_13134_53) ) (! (= (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_29067_29068) ) (! (= (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_13134_4669) ) (! (= (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_13131_26880) ) (! (= (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_20637_20638) ) (! (= (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_20624_53) ) (! (= (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_13131_13135) ) (! (= (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_29020_4669) ) (! (= (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_20564) (ExhaleHeap@@43 T@PolymorphicMapType_20564) (Mask@@104 T@PolymorphicMapType_20585) (pm_f_42@@11 T@Field_27541_27542) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@43 Mask@@104) (=> (and (HasDirectPerm_27508_13135 Mask@@104 null pm_f_42@@11) (IsPredicateField_12968_12969 pm_f_42@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42 T@Ref) (f_53@@29 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42 f_53@@29) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@46) o2_42 f_53@@29) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42 f_53@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42 f_53@@29))
)) (forall ((o2_42@@0 T@Ref) (f_53@@30 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@0 f_53@@30) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@46) o2_42@@0 f_53@@30) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@0 f_53@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@0 f_53@@30))
))) (forall ((o2_42@@1 T@Ref) (f_53@@31 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@1 f_53@@31) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@46) o2_42@@1 f_53@@31) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@1 f_53@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@1 f_53@@31))
))) (forall ((o2_42@@2 T@Ref) (f_53@@32 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@2 f_53@@32) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@46) o2_42@@2 f_53@@32) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@2 f_53@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@2 f_53@@32))
))) (forall ((o2_42@@3 T@Ref) (f_53@@33 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@3 f_53@@33) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@46) o2_42@@3 f_53@@33) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@3 f_53@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@3 f_53@@33))
))) (forall ((o2_42@@4 T@Ref) (f_53@@34 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@4 f_53@@34) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@46) o2_42@@4 f_53@@34) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@4 f_53@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@4 f_53@@34))
))) (forall ((o2_42@@5 T@Ref) (f_53@@35 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@5 f_53@@35) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@46) o2_42@@5 f_53@@35) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@5 f_53@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@5 f_53@@35))
))) (forall ((o2_42@@6 T@Ref) (f_53@@36 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@6 f_53@@36) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@46) o2_42@@6 f_53@@36) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@6 f_53@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@6 f_53@@36))
))) (forall ((o2_42@@7 T@Ref) (f_53@@37 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@7 f_53@@37) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@46) o2_42@@7 f_53@@37) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@7 f_53@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@7 f_53@@37))
))) (forall ((o2_42@@8 T@Ref) (f_53@@38 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@8 f_53@@38) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@46) o2_42@@8 f_53@@38) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@8 f_53@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@8 f_53@@38))
))) (forall ((o2_42@@9 T@Ref) (f_53@@39 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@9 f_53@@39) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@46) o2_42@@9 f_53@@39) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@9 f_53@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@9 f_53@@39))
))) (forall ((o2_42@@10 T@Ref) (f_53@@40 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@10 f_53@@40) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@46) o2_42@@10 f_53@@40) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@10 f_53@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@10 f_53@@40))
))) (forall ((o2_42@@11 T@Ref) (f_53@@41 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@11 f_53@@41) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@46) o2_42@@11 f_53@@41) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@11 f_53@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@11 f_53@@41))
))) (forall ((o2_42@@12 T@Ref) (f_53@@42 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@12 f_53@@42) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) o2_42@@12 f_53@@42) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@12 f_53@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@12 f_53@@42))
))) (forall ((o2_42@@13 T@Ref) (f_53@@43 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@13 f_53@@43) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@46) o2_42@@13 f_53@@43) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@13 f_53@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@13 f_53@@43))
))) (forall ((o2_42@@14 T@Ref) (f_53@@44 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@14 f_53@@44) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@46) o2_42@@14 f_53@@44) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@14 f_53@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@14 f_53@@44))
))) (forall ((o2_42@@15 T@Ref) (f_53@@45 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@15 f_53@@45) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@46) o2_42@@15 f_53@@45) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@15 f_53@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@15 f_53@@45))
))) (forall ((o2_42@@16 T@Ref) (f_53@@46 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@16 f_53@@46) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@46) o2_42@@16 f_53@@46) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@16 f_53@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@16 f_53@@46))
))) (forall ((o2_42@@17 T@Ref) (f_53@@47 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@17 f_53@@47) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@46) o2_42@@17 f_53@@47) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@17 f_53@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@17 f_53@@47))
))) (forall ((o2_42@@18 T@Ref) (f_53@@48 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@18 f_53@@48) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@46) o2_42@@18 f_53@@48) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@18 f_53@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@18 f_53@@48))
))) (forall ((o2_42@@19 T@Ref) (f_53@@49 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@19 f_53@@49) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@46) o2_42@@19 f_53@@49) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@19 f_53@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@19 f_53@@49))
))) (forall ((o2_42@@20 T@Ref) (f_53@@50 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@20 f_53@@50) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@46) o2_42@@20 f_53@@50) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@20 f_53@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@20 f_53@@50))
))) (forall ((o2_42@@21 T@Ref) (f_53@@51 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@21 f_53@@51) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@46) o2_42@@21 f_53@@51) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@21 f_53@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@21 f_53@@51))
))) (forall ((o2_42@@22 T@Ref) (f_53@@52 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@22 f_53@@52) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@46) o2_42@@22 f_53@@52) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@22 f_53@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@22 f_53@@52))
))) (forall ((o2_42@@23 T@Ref) (f_53@@53 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@23 f_53@@53) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@46) o2_42@@23 f_53@@53) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@23 f_53@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@23 f_53@@53))
))) (forall ((o2_42@@24 T@Ref) (f_53@@54 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@24 f_53@@54) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@46) o2_42@@24 f_53@@54) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@24 f_53@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@24 f_53@@54))
))) (forall ((o2_42@@25 T@Ref) (f_53@@55 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@25 f_53@@55) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@46) o2_42@@25 f_53@@55) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@25 f_53@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@25 f_53@@55))
))) (forall ((o2_42@@26 T@Ref) (f_53@@56 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@26 f_53@@56) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@46) o2_42@@26 f_53@@56) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@26 f_53@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@26 f_53@@56))
))) (forall ((o2_42@@27 T@Ref) (f_53@@57 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@27 f_53@@57) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@46) o2_42@@27 f_53@@57) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@27 f_53@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@27 f_53@@57))
))) (forall ((o2_42@@28 T@Ref) (f_53@@58 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@46) null (PredicateMaskField_27508 pm_f_42@@11))) o2_42@@28 f_53@@58) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@46) o2_42@@28 f_53@@58) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@28 f_53@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@43) o2_42@@28 f_53@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@43 Mask@@104) (IsPredicateField_12968_12969 pm_f_42@@11))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_20564) (ExhaleHeap@@44 T@PolymorphicMapType_20564) (Mask@@105 T@PolymorphicMapType_20585) (pm_f_42@@12 T@Field_28299_28300) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@44 Mask@@105) (=> (and (HasDirectPerm_13043_13135 Mask@@105 null pm_f_42@@12) (IsPredicateField_13064_13065 pm_f_42@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@29 T@Ref) (f_53@@59 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@29 f_53@@59) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@47) o2_42@@29 f_53@@59) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@29 f_53@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@29 f_53@@59))
)) (forall ((o2_42@@30 T@Ref) (f_53@@60 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@30 f_53@@60) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@47) o2_42@@30 f_53@@60) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@30 f_53@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@30 f_53@@60))
))) (forall ((o2_42@@31 T@Ref) (f_53@@61 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@31 f_53@@61) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@47) o2_42@@31 f_53@@61) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@31 f_53@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@31 f_53@@61))
))) (forall ((o2_42@@32 T@Ref) (f_53@@62 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@32 f_53@@62) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@47) o2_42@@32 f_53@@62) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@32 f_53@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@32 f_53@@62))
))) (forall ((o2_42@@33 T@Ref) (f_53@@63 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@33 f_53@@63) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@47) o2_42@@33 f_53@@63) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@33 f_53@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@33 f_53@@63))
))) (forall ((o2_42@@34 T@Ref) (f_53@@64 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@34 f_53@@64) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@47) o2_42@@34 f_53@@64) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@34 f_53@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@34 f_53@@64))
))) (forall ((o2_42@@35 T@Ref) (f_53@@65 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@35 f_53@@65) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@47) o2_42@@35 f_53@@65) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@35 f_53@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@35 f_53@@65))
))) (forall ((o2_42@@36 T@Ref) (f_53@@66 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@36 f_53@@66) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@47) o2_42@@36 f_53@@66) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@36 f_53@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@36 f_53@@66))
))) (forall ((o2_42@@37 T@Ref) (f_53@@67 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@37 f_53@@67) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@47) o2_42@@37 f_53@@67) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@37 f_53@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@37 f_53@@67))
))) (forall ((o2_42@@38 T@Ref) (f_53@@68 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@38 f_53@@68) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@47) o2_42@@38 f_53@@68) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@38 f_53@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@38 f_53@@68))
))) (forall ((o2_42@@39 T@Ref) (f_53@@69 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@39 f_53@@69) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@47) o2_42@@39 f_53@@69) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@39 f_53@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@39 f_53@@69))
))) (forall ((o2_42@@40 T@Ref) (f_53@@70 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@40 f_53@@70) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@47) o2_42@@40 f_53@@70) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@40 f_53@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@40 f_53@@70))
))) (forall ((o2_42@@41 T@Ref) (f_53@@71 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@41 f_53@@71) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@47) o2_42@@41 f_53@@71) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@41 f_53@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@41 f_53@@71))
))) (forall ((o2_42@@42 T@Ref) (f_53@@72 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@42 f_53@@72) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@47) o2_42@@42 f_53@@72) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@42 f_53@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@42 f_53@@72))
))) (forall ((o2_42@@43 T@Ref) (f_53@@73 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@43 f_53@@73) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@47) o2_42@@43 f_53@@73) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@43 f_53@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@43 f_53@@73))
))) (forall ((o2_42@@44 T@Ref) (f_53@@74 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@44 f_53@@74) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@47) o2_42@@44 f_53@@74) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@44 f_53@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@44 f_53@@74))
))) (forall ((o2_42@@45 T@Ref) (f_53@@75 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@45 f_53@@75) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@47) o2_42@@45 f_53@@75) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@45 f_53@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@45 f_53@@75))
))) (forall ((o2_42@@46 T@Ref) (f_53@@76 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@46 f_53@@76) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@47) o2_42@@46 f_53@@76) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@46 f_53@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@46 f_53@@76))
))) (forall ((o2_42@@47 T@Ref) (f_53@@77 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@47 f_53@@77) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) o2_42@@47 f_53@@77) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@47 f_53@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@47 f_53@@77))
))) (forall ((o2_42@@48 T@Ref) (f_53@@78 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@48 f_53@@78) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@47) o2_42@@48 f_53@@78) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@48 f_53@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@48 f_53@@78))
))) (forall ((o2_42@@49 T@Ref) (f_53@@79 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@49 f_53@@79) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@47) o2_42@@49 f_53@@79) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@49 f_53@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@49 f_53@@79))
))) (forall ((o2_42@@50 T@Ref) (f_53@@80 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@50 f_53@@80) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@47) o2_42@@50 f_53@@80) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@50 f_53@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@50 f_53@@80))
))) (forall ((o2_42@@51 T@Ref) (f_53@@81 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@51 f_53@@81) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@47) o2_42@@51 f_53@@81) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@51 f_53@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@51 f_53@@81))
))) (forall ((o2_42@@52 T@Ref) (f_53@@82 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@52 f_53@@82) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@47) o2_42@@52 f_53@@82) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@52 f_53@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@52 f_53@@82))
))) (forall ((o2_42@@53 T@Ref) (f_53@@83 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@53 f_53@@83) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@47) o2_42@@53 f_53@@83) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@53 f_53@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@53 f_53@@83))
))) (forall ((o2_42@@54 T@Ref) (f_53@@84 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@54 f_53@@84) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@47) o2_42@@54 f_53@@84) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@54 f_53@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@54 f_53@@84))
))) (forall ((o2_42@@55 T@Ref) (f_53@@85 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@55 f_53@@85) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@47) o2_42@@55 f_53@@85) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@55 f_53@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@55 f_53@@85))
))) (forall ((o2_42@@56 T@Ref) (f_53@@86 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@56 f_53@@86) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@47) o2_42@@56 f_53@@86) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@56 f_53@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@56 f_53@@86))
))) (forall ((o2_42@@57 T@Ref) (f_53@@87 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@57 f_53@@87) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@47) o2_42@@57 f_53@@87) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@57 f_53@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@57 f_53@@87))
))) (forall ((o2_42@@58 T@Ref) (f_53@@88 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@47) null (PredicateMaskField_13043 pm_f_42@@12))) o2_42@@58 f_53@@88) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@47) o2_42@@58 f_53@@88) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@58 f_53@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@44) o2_42@@58 f_53@@88))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@44 Mask@@105) (IsPredicateField_13064_13065 pm_f_42@@12))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_20564) (ExhaleHeap@@45 T@PolymorphicMapType_20564) (Mask@@106 T@PolymorphicMapType_20585) (pm_f_42@@13 T@Field_30154_30155) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@45 Mask@@106) (=> (and (HasDirectPerm_13160_13161 Mask@@106 null pm_f_42@@13) (IsPredicateField_13160_13161 pm_f_42@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@59 T@Ref) (f_53@@89 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@59 f_53@@89) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@48) o2_42@@59 f_53@@89) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@59 f_53@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@59 f_53@@89))
)) (forall ((o2_42@@60 T@Ref) (f_53@@90 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@60 f_53@@90) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@48) o2_42@@60 f_53@@90) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@60 f_53@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@60 f_53@@90))
))) (forall ((o2_42@@61 T@Ref) (f_53@@91 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@61 f_53@@91) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@48) o2_42@@61 f_53@@91) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@61 f_53@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@61 f_53@@91))
))) (forall ((o2_42@@62 T@Ref) (f_53@@92 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@62 f_53@@92) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@48) o2_42@@62 f_53@@92) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@62 f_53@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@62 f_53@@92))
))) (forall ((o2_42@@63 T@Ref) (f_53@@93 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@63 f_53@@93) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@48) o2_42@@63 f_53@@93) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@63 f_53@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@63 f_53@@93))
))) (forall ((o2_42@@64 T@Ref) (f_53@@94 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@64 f_53@@94) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@48) o2_42@@64 f_53@@94) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@64 f_53@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@64 f_53@@94))
))) (forall ((o2_42@@65 T@Ref) (f_53@@95 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@65 f_53@@95) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@48) o2_42@@65 f_53@@95) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@65 f_53@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@65 f_53@@95))
))) (forall ((o2_42@@66 T@Ref) (f_53@@96 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@66 f_53@@96) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@48) o2_42@@66 f_53@@96) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@66 f_53@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@66 f_53@@96))
))) (forall ((o2_42@@67 T@Ref) (f_53@@97 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@67 f_53@@97) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@48) o2_42@@67 f_53@@97) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@67 f_53@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@67 f_53@@97))
))) (forall ((o2_42@@68 T@Ref) (f_53@@98 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@68 f_53@@98) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@48) o2_42@@68 f_53@@98) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@68 f_53@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@68 f_53@@98))
))) (forall ((o2_42@@69 T@Ref) (f_53@@99 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@69 f_53@@99) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@48) o2_42@@69 f_53@@99) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@69 f_53@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@69 f_53@@99))
))) (forall ((o2_42@@70 T@Ref) (f_53@@100 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@70 f_53@@100) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@48) o2_42@@70 f_53@@100) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@70 f_53@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@70 f_53@@100))
))) (forall ((o2_42@@71 T@Ref) (f_53@@101 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@71 f_53@@101) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@48) o2_42@@71 f_53@@101) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@71 f_53@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@71 f_53@@101))
))) (forall ((o2_42@@72 T@Ref) (f_53@@102 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@72 f_53@@102) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@48) o2_42@@72 f_53@@102) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@72 f_53@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@72 f_53@@102))
))) (forall ((o2_42@@73 T@Ref) (f_53@@103 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@73 f_53@@103) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@48) o2_42@@73 f_53@@103) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@73 f_53@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@73 f_53@@103))
))) (forall ((o2_42@@74 T@Ref) (f_53@@104 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@74 f_53@@104) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@48) o2_42@@74 f_53@@104) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@74 f_53@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@74 f_53@@104))
))) (forall ((o2_42@@75 T@Ref) (f_53@@105 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@75 f_53@@105) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@48) o2_42@@75 f_53@@105) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@75 f_53@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@75 f_53@@105))
))) (forall ((o2_42@@76 T@Ref) (f_53@@106 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@76 f_53@@106) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@48) o2_42@@76 f_53@@106) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@76 f_53@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@76 f_53@@106))
))) (forall ((o2_42@@77 T@Ref) (f_53@@107 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@77 f_53@@107) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@48) o2_42@@77 f_53@@107) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@77 f_53@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@77 f_53@@107))
))) (forall ((o2_42@@78 T@Ref) (f_53@@108 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@78 f_53@@108) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@48) o2_42@@78 f_53@@108) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@78 f_53@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@78 f_53@@108))
))) (forall ((o2_42@@79 T@Ref) (f_53@@109 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@79 f_53@@109) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@48) o2_42@@79 f_53@@109) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@79 f_53@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@79 f_53@@109))
))) (forall ((o2_42@@80 T@Ref) (f_53@@110 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@80 f_53@@110) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@48) o2_42@@80 f_53@@110) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@80 f_53@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@80 f_53@@110))
))) (forall ((o2_42@@81 T@Ref) (f_53@@111 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@81 f_53@@111) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@48) o2_42@@81 f_53@@111) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@81 f_53@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@81 f_53@@111))
))) (forall ((o2_42@@82 T@Ref) (f_53@@112 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@82 f_53@@112) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@48) o2_42@@82 f_53@@112) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@82 f_53@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@82 f_53@@112))
))) (forall ((o2_42@@83 T@Ref) (f_53@@113 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@83 f_53@@113) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@48) o2_42@@83 f_53@@113) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@83 f_53@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@83 f_53@@113))
))) (forall ((o2_42@@84 T@Ref) (f_53@@114 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@84 f_53@@114) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@48) o2_42@@84 f_53@@114) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@84 f_53@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@84 f_53@@114))
))) (forall ((o2_42@@85 T@Ref) (f_53@@115 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@85 f_53@@115) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@48) o2_42@@85 f_53@@115) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@85 f_53@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@85 f_53@@115))
))) (forall ((o2_42@@86 T@Ref) (f_53@@116 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@86 f_53@@116) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@48) o2_42@@86 f_53@@116) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@86 f_53@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@86 f_53@@116))
))) (forall ((o2_42@@87 T@Ref) (f_53@@117 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@87 f_53@@117) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) o2_42@@87 f_53@@117) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@87 f_53@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@87 f_53@@117))
))) (forall ((o2_42@@88 T@Ref) (f_53@@118 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@48) null (PredicateMaskField_13160 pm_f_42@@13))) o2_42@@88 f_53@@118) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@48) o2_42@@88 f_53@@118) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@88 f_53@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@45) o2_42@@88 f_53@@118))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@45 Mask@@106) (IsPredicateField_13160_13161 pm_f_42@@13))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_20564) (ExhaleHeap@@46 T@PolymorphicMapType_20564) (Mask@@107 T@PolymorphicMapType_20585) (pm_f_42@@14 T@Field_26891_26892) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@46 Mask@@107) (=> (and (HasDirectPerm_12891_13135 Mask@@107 null pm_f_42@@14) (IsPredicateField_12904_12905 pm_f_42@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@89 T@Ref) (f_53@@119 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@89 f_53@@119) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@49) o2_42@@89 f_53@@119) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@89 f_53@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@89 f_53@@119))
)) (forall ((o2_42@@90 T@Ref) (f_53@@120 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@90 f_53@@120) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@49) o2_42@@90 f_53@@120) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@90 f_53@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@90 f_53@@120))
))) (forall ((o2_42@@91 T@Ref) (f_53@@121 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@91 f_53@@121) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@49) o2_42@@91 f_53@@121) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@91 f_53@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@91 f_53@@121))
))) (forall ((o2_42@@92 T@Ref) (f_53@@122 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@92 f_53@@122) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@49) o2_42@@92 f_53@@122) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@92 f_53@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@92 f_53@@122))
))) (forall ((o2_42@@93 T@Ref) (f_53@@123 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@93 f_53@@123) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@49) o2_42@@93 f_53@@123) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@93 f_53@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@93 f_53@@123))
))) (forall ((o2_42@@94 T@Ref) (f_53@@124 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@94 f_53@@124) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@49) o2_42@@94 f_53@@124) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@94 f_53@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@94 f_53@@124))
))) (forall ((o2_42@@95 T@Ref) (f_53@@125 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@95 f_53@@125) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@49) o2_42@@95 f_53@@125) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@95 f_53@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@95 f_53@@125))
))) (forall ((o2_42@@96 T@Ref) (f_53@@126 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@96 f_53@@126) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@49) o2_42@@96 f_53@@126) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@96 f_53@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@96 f_53@@126))
))) (forall ((o2_42@@97 T@Ref) (f_53@@127 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@97 f_53@@127) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) o2_42@@97 f_53@@127) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@97 f_53@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@97 f_53@@127))
))) (forall ((o2_42@@98 T@Ref) (f_53@@128 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@98 f_53@@128) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@49) o2_42@@98 f_53@@128) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@98 f_53@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@98 f_53@@128))
))) (forall ((o2_42@@99 T@Ref) (f_53@@129 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@99 f_53@@129) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@49) o2_42@@99 f_53@@129) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@99 f_53@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@99 f_53@@129))
))) (forall ((o2_42@@100 T@Ref) (f_53@@130 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@100 f_53@@130) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@49) o2_42@@100 f_53@@130) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@100 f_53@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@100 f_53@@130))
))) (forall ((o2_42@@101 T@Ref) (f_53@@131 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@101 f_53@@131) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@49) o2_42@@101 f_53@@131) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@101 f_53@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@101 f_53@@131))
))) (forall ((o2_42@@102 T@Ref) (f_53@@132 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@102 f_53@@132) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@49) o2_42@@102 f_53@@132) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@102 f_53@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@102 f_53@@132))
))) (forall ((o2_42@@103 T@Ref) (f_53@@133 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@103 f_53@@133) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@49) o2_42@@103 f_53@@133) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@103 f_53@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@103 f_53@@133))
))) (forall ((o2_42@@104 T@Ref) (f_53@@134 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@104 f_53@@134) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@49) o2_42@@104 f_53@@134) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@104 f_53@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@104 f_53@@134))
))) (forall ((o2_42@@105 T@Ref) (f_53@@135 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@105 f_53@@135) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@49) o2_42@@105 f_53@@135) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@105 f_53@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@105 f_53@@135))
))) (forall ((o2_42@@106 T@Ref) (f_53@@136 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@106 f_53@@136) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@49) o2_42@@106 f_53@@136) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@106 f_53@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@106 f_53@@136))
))) (forall ((o2_42@@107 T@Ref) (f_53@@137 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@107 f_53@@137) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@49) o2_42@@107 f_53@@137) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@107 f_53@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@107 f_53@@137))
))) (forall ((o2_42@@108 T@Ref) (f_53@@138 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@108 f_53@@138) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@49) o2_42@@108 f_53@@138) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@108 f_53@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@108 f_53@@138))
))) (forall ((o2_42@@109 T@Ref) (f_53@@139 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@109 f_53@@139) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@49) o2_42@@109 f_53@@139) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@109 f_53@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@109 f_53@@139))
))) (forall ((o2_42@@110 T@Ref) (f_53@@140 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@110 f_53@@140) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@49) o2_42@@110 f_53@@140) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@110 f_53@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@110 f_53@@140))
))) (forall ((o2_42@@111 T@Ref) (f_53@@141 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@111 f_53@@141) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@49) o2_42@@111 f_53@@141) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@111 f_53@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@111 f_53@@141))
))) (forall ((o2_42@@112 T@Ref) (f_53@@142 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@112 f_53@@142) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@49) o2_42@@112 f_53@@142) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@112 f_53@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@112 f_53@@142))
))) (forall ((o2_42@@113 T@Ref) (f_53@@143 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@113 f_53@@143) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@49) o2_42@@113 f_53@@143) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@113 f_53@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@113 f_53@@143))
))) (forall ((o2_42@@114 T@Ref) (f_53@@144 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@114 f_53@@144) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@49) o2_42@@114 f_53@@144) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@114 f_53@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@114 f_53@@144))
))) (forall ((o2_42@@115 T@Ref) (f_53@@145 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@115 f_53@@145) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@49) o2_42@@115 f_53@@145) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@115 f_53@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@115 f_53@@145))
))) (forall ((o2_42@@116 T@Ref) (f_53@@146 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@116 f_53@@146) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@49) o2_42@@116 f_53@@146) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@116 f_53@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@116 f_53@@146))
))) (forall ((o2_42@@117 T@Ref) (f_53@@147 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@117 f_53@@147) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@49) o2_42@@117 f_53@@147) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@117 f_53@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@117 f_53@@147))
))) (forall ((o2_42@@118 T@Ref) (f_53@@148 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@49) null (PredicateMaskField_12891 pm_f_42@@14))) o2_42@@118 f_53@@148) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@49) o2_42@@118 f_53@@148) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@118 f_53@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@46) o2_42@@118 f_53@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@46 Mask@@107) (IsPredicateField_12904_12905 pm_f_42@@14))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_20564) (ExhaleHeap@@47 T@PolymorphicMapType_20564) (Mask@@108 T@PolymorphicMapType_20585) (pm_f_42@@15 T@Field_29067_29068) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@47 Mask@@108) (=> (and (HasDirectPerm_13134_13135 Mask@@108 null pm_f_42@@15) (IsPredicateField_13134_13135 pm_f_42@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@119 T@Ref) (f_53@@149 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@119 f_53@@149) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@50) o2_42@@119 f_53@@149) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@119 f_53@@149)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@119 f_53@@149))
)) (forall ((o2_42@@120 T@Ref) (f_53@@150 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@120 f_53@@150) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@50) o2_42@@120 f_53@@150) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@120 f_53@@150)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@120 f_53@@150))
))) (forall ((o2_42@@121 T@Ref) (f_53@@151 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@121 f_53@@151) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@50) o2_42@@121 f_53@@151) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@121 f_53@@151)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@121 f_53@@151))
))) (forall ((o2_42@@122 T@Ref) (f_53@@152 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@122 f_53@@152) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@50) o2_42@@122 f_53@@152) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@122 f_53@@152)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@122 f_53@@152))
))) (forall ((o2_42@@123 T@Ref) (f_53@@153 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@123 f_53@@153) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@50) o2_42@@123 f_53@@153) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@123 f_53@@153)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@123 f_53@@153))
))) (forall ((o2_42@@124 T@Ref) (f_53@@154 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@124 f_53@@154) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@50) o2_42@@124 f_53@@154) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@124 f_53@@154)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@124 f_53@@154))
))) (forall ((o2_42@@125 T@Ref) (f_53@@155 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@125 f_53@@155) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@50) o2_42@@125 f_53@@155) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@125 f_53@@155)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@125 f_53@@155))
))) (forall ((o2_42@@126 T@Ref) (f_53@@156 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@126 f_53@@156) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@50) o2_42@@126 f_53@@156) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@126 f_53@@156)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@126 f_53@@156))
))) (forall ((o2_42@@127 T@Ref) (f_53@@157 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@127 f_53@@157) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@50) o2_42@@127 f_53@@157) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@127 f_53@@157)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@127 f_53@@157))
))) (forall ((o2_42@@128 T@Ref) (f_53@@158 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@128 f_53@@158) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@50) o2_42@@128 f_53@@158) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@128 f_53@@158)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@128 f_53@@158))
))) (forall ((o2_42@@129 T@Ref) (f_53@@159 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@129 f_53@@159) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@50) o2_42@@129 f_53@@159) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@129 f_53@@159)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@129 f_53@@159))
))) (forall ((o2_42@@130 T@Ref) (f_53@@160 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@130 f_53@@160) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@50) o2_42@@130 f_53@@160) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@130 f_53@@160)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@130 f_53@@160))
))) (forall ((o2_42@@131 T@Ref) (f_53@@161 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@131 f_53@@161) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@50) o2_42@@131 f_53@@161) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@131 f_53@@161)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@131 f_53@@161))
))) (forall ((o2_42@@132 T@Ref) (f_53@@162 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@132 f_53@@162) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@50) o2_42@@132 f_53@@162) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@132 f_53@@162)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@132 f_53@@162))
))) (forall ((o2_42@@133 T@Ref) (f_53@@163 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@133 f_53@@163) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@50) o2_42@@133 f_53@@163) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@133 f_53@@163)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@133 f_53@@163))
))) (forall ((o2_42@@134 T@Ref) (f_53@@164 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@134 f_53@@164) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@50) o2_42@@134 f_53@@164) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@134 f_53@@164)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@134 f_53@@164))
))) (forall ((o2_42@@135 T@Ref) (f_53@@165 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@135 f_53@@165) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@50) o2_42@@135 f_53@@165) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@135 f_53@@165)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@135 f_53@@165))
))) (forall ((o2_42@@136 T@Ref) (f_53@@166 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@136 f_53@@166) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@50) o2_42@@136 f_53@@166) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@136 f_53@@166)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@136 f_53@@166))
))) (forall ((o2_42@@137 T@Ref) (f_53@@167 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@137 f_53@@167) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@50) o2_42@@137 f_53@@167) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@137 f_53@@167)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@137 f_53@@167))
))) (forall ((o2_42@@138 T@Ref) (f_53@@168 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@138 f_53@@168) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@50) o2_42@@138 f_53@@168) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@138 f_53@@168)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@138 f_53@@168))
))) (forall ((o2_42@@139 T@Ref) (f_53@@169 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@139 f_53@@169) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@50) o2_42@@139 f_53@@169) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@139 f_53@@169)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@139 f_53@@169))
))) (forall ((o2_42@@140 T@Ref) (f_53@@170 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@140 f_53@@170) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@50) o2_42@@140 f_53@@170) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@140 f_53@@170)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@140 f_53@@170))
))) (forall ((o2_42@@141 T@Ref) (f_53@@171 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@141 f_53@@171) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@50) o2_42@@141 f_53@@171) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@141 f_53@@171)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@141 f_53@@171))
))) (forall ((o2_42@@142 T@Ref) (f_53@@172 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@142 f_53@@172) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) o2_42@@142 f_53@@172) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@142 f_53@@172)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@142 f_53@@172))
))) (forall ((o2_42@@143 T@Ref) (f_53@@173 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@143 f_53@@173) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@50) o2_42@@143 f_53@@173) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@143 f_53@@173)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@143 f_53@@173))
))) (forall ((o2_42@@144 T@Ref) (f_53@@174 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@144 f_53@@174) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@50) o2_42@@144 f_53@@174) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@144 f_53@@174)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@144 f_53@@174))
))) (forall ((o2_42@@145 T@Ref) (f_53@@175 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@145 f_53@@175) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@50) o2_42@@145 f_53@@175) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@145 f_53@@175)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@145 f_53@@175))
))) (forall ((o2_42@@146 T@Ref) (f_53@@176 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@146 f_53@@176) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@50) o2_42@@146 f_53@@176) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@146 f_53@@176)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@146 f_53@@176))
))) (forall ((o2_42@@147 T@Ref) (f_53@@177 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@147 f_53@@177) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@50) o2_42@@147 f_53@@177) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@147 f_53@@177)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@147 f_53@@177))
))) (forall ((o2_42@@148 T@Ref) (f_53@@178 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@50) null (PredicateMaskField_13134 pm_f_42@@15))) o2_42@@148 f_53@@178) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@50) o2_42@@148 f_53@@178) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@148 f_53@@178)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@47) o2_42@@148 f_53@@178))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@47 Mask@@108) (IsPredicateField_13134_13135 pm_f_42@@15))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_20564) (ExhaleHeap@@48 T@PolymorphicMapType_20564) (Mask@@109 T@PolymorphicMapType_20585) (pm_f_42@@16 T@Field_13131_13135) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@48 Mask@@109) (=> (and (HasDirectPerm_13131_13135 Mask@@109 null pm_f_42@@16) (IsPredicateField_13131_66362 pm_f_42@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@149 T@Ref) (f_53@@179 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@149 f_53@@179) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@51) o2_42@@149 f_53@@179) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@149 f_53@@179)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@149 f_53@@179))
)) (forall ((o2_42@@150 T@Ref) (f_53@@180 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@150 f_53@@180) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@51) o2_42@@150 f_53@@180) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@150 f_53@@180)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@150 f_53@@180))
))) (forall ((o2_42@@151 T@Ref) (f_53@@181 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@151 f_53@@181) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@51) o2_42@@151 f_53@@181) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@151 f_53@@181)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@151 f_53@@181))
))) (forall ((o2_42@@152 T@Ref) (f_53@@182 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@152 f_53@@182) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) o2_42@@152 f_53@@182) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@152 f_53@@182)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@152 f_53@@182))
))) (forall ((o2_42@@153 T@Ref) (f_53@@183 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@153 f_53@@183) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@51) o2_42@@153 f_53@@183) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@153 f_53@@183)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@153 f_53@@183))
))) (forall ((o2_42@@154 T@Ref) (f_53@@184 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@154 f_53@@184) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@51) o2_42@@154 f_53@@184) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@154 f_53@@184)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@154 f_53@@184))
))) (forall ((o2_42@@155 T@Ref) (f_53@@185 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@155 f_53@@185) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@51) o2_42@@155 f_53@@185) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@155 f_53@@185)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@155 f_53@@185))
))) (forall ((o2_42@@156 T@Ref) (f_53@@186 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@156 f_53@@186) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@51) o2_42@@156 f_53@@186) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@156 f_53@@186)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@156 f_53@@186))
))) (forall ((o2_42@@157 T@Ref) (f_53@@187 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@157 f_53@@187) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@51) o2_42@@157 f_53@@187) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@157 f_53@@187)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@157 f_53@@187))
))) (forall ((o2_42@@158 T@Ref) (f_53@@188 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@158 f_53@@188) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@51) o2_42@@158 f_53@@188) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@158 f_53@@188)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@158 f_53@@188))
))) (forall ((o2_42@@159 T@Ref) (f_53@@189 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@159 f_53@@189) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@51) o2_42@@159 f_53@@189) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@159 f_53@@189)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@159 f_53@@189))
))) (forall ((o2_42@@160 T@Ref) (f_53@@190 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@160 f_53@@190) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@51) o2_42@@160 f_53@@190) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@160 f_53@@190)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@160 f_53@@190))
))) (forall ((o2_42@@161 T@Ref) (f_53@@191 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@161 f_53@@191) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@51) o2_42@@161 f_53@@191) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@161 f_53@@191)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@161 f_53@@191))
))) (forall ((o2_42@@162 T@Ref) (f_53@@192 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@162 f_53@@192) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@51) o2_42@@162 f_53@@192) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@162 f_53@@192)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@162 f_53@@192))
))) (forall ((o2_42@@163 T@Ref) (f_53@@193 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@163 f_53@@193) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@51) o2_42@@163 f_53@@193) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@163 f_53@@193)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@163 f_53@@193))
))) (forall ((o2_42@@164 T@Ref) (f_53@@194 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@164 f_53@@194) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@51) o2_42@@164 f_53@@194) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@164 f_53@@194)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@164 f_53@@194))
))) (forall ((o2_42@@165 T@Ref) (f_53@@195 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@165 f_53@@195) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@51) o2_42@@165 f_53@@195) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@165 f_53@@195)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@165 f_53@@195))
))) (forall ((o2_42@@166 T@Ref) (f_53@@196 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@166 f_53@@196) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@51) o2_42@@166 f_53@@196) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@166 f_53@@196)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@166 f_53@@196))
))) (forall ((o2_42@@167 T@Ref) (f_53@@197 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@167 f_53@@197) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@51) o2_42@@167 f_53@@197) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@167 f_53@@197)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@167 f_53@@197))
))) (forall ((o2_42@@168 T@Ref) (f_53@@198 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@168 f_53@@198) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@51) o2_42@@168 f_53@@198) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@168 f_53@@198)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@168 f_53@@198))
))) (forall ((o2_42@@169 T@Ref) (f_53@@199 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@169 f_53@@199) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@51) o2_42@@169 f_53@@199) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@169 f_53@@199)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@169 f_53@@199))
))) (forall ((o2_42@@170 T@Ref) (f_53@@200 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@170 f_53@@200) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@51) o2_42@@170 f_53@@200) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@170 f_53@@200)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@170 f_53@@200))
))) (forall ((o2_42@@171 T@Ref) (f_53@@201 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@171 f_53@@201) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@51) o2_42@@171 f_53@@201) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@171 f_53@@201)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@171 f_53@@201))
))) (forall ((o2_42@@172 T@Ref) (f_53@@202 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@172 f_53@@202) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@51) o2_42@@172 f_53@@202) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@172 f_53@@202)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@172 f_53@@202))
))) (forall ((o2_42@@173 T@Ref) (f_53@@203 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@173 f_53@@203) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@51) o2_42@@173 f_53@@203) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@173 f_53@@203)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@173 f_53@@203))
))) (forall ((o2_42@@174 T@Ref) (f_53@@204 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@174 f_53@@204) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@51) o2_42@@174 f_53@@204) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@174 f_53@@204)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@174 f_53@@204))
))) (forall ((o2_42@@175 T@Ref) (f_53@@205 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@175 f_53@@205) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@51) o2_42@@175 f_53@@205) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@175 f_53@@205)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@175 f_53@@205))
))) (forall ((o2_42@@176 T@Ref) (f_53@@206 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@176 f_53@@206) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@51) o2_42@@176 f_53@@206) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@176 f_53@@206)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@176 f_53@@206))
))) (forall ((o2_42@@177 T@Ref) (f_53@@207 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@177 f_53@@207) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@51) o2_42@@177 f_53@@207) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@177 f_53@@207)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@177 f_53@@207))
))) (forall ((o2_42@@178 T@Ref) (f_53@@208 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@51) null (PredicateMaskField_13131 pm_f_42@@16))) o2_42@@178 f_53@@208) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@51) o2_42@@178 f_53@@208) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@178 f_53@@208)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@48) o2_42@@178 f_53@@208))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@48 Mask@@109) (IsPredicateField_13131_66362 pm_f_42@@16))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_20564) (ExhaleHeap@@49 T@PolymorphicMapType_20564) (Mask@@110 T@PolymorphicMapType_20585) (pm_f_42@@17 T@Field_27541_27542) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@49 Mask@@110) (=> (and (HasDirectPerm_27508_13135 Mask@@110 null pm_f_42@@17) (IsWandField_12968_12969 pm_f_42@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@179 T@Ref) (f_53@@209 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@179 f_53@@209) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@52) o2_42@@179 f_53@@209) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@179 f_53@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@179 f_53@@209))
)) (forall ((o2_42@@180 T@Ref) (f_53@@210 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@180 f_53@@210) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@52) o2_42@@180 f_53@@210) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@180 f_53@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@180 f_53@@210))
))) (forall ((o2_42@@181 T@Ref) (f_53@@211 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@181 f_53@@211) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@52) o2_42@@181 f_53@@211) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@181 f_53@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@181 f_53@@211))
))) (forall ((o2_42@@182 T@Ref) (f_53@@212 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@182 f_53@@212) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@52) o2_42@@182 f_53@@212) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@182 f_53@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@182 f_53@@212))
))) (forall ((o2_42@@183 T@Ref) (f_53@@213 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@183 f_53@@213) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@52) o2_42@@183 f_53@@213) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@183 f_53@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@183 f_53@@213))
))) (forall ((o2_42@@184 T@Ref) (f_53@@214 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@184 f_53@@214) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@52) o2_42@@184 f_53@@214) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@184 f_53@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@184 f_53@@214))
))) (forall ((o2_42@@185 T@Ref) (f_53@@215 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@185 f_53@@215) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@52) o2_42@@185 f_53@@215) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@185 f_53@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@185 f_53@@215))
))) (forall ((o2_42@@186 T@Ref) (f_53@@216 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@186 f_53@@216) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@52) o2_42@@186 f_53@@216) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@186 f_53@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@186 f_53@@216))
))) (forall ((o2_42@@187 T@Ref) (f_53@@217 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@187 f_53@@217) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@52) o2_42@@187 f_53@@217) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@187 f_53@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@187 f_53@@217))
))) (forall ((o2_42@@188 T@Ref) (f_53@@218 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@188 f_53@@218) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@52) o2_42@@188 f_53@@218) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@188 f_53@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@188 f_53@@218))
))) (forall ((o2_42@@189 T@Ref) (f_53@@219 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@189 f_53@@219) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@52) o2_42@@189 f_53@@219) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@189 f_53@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@189 f_53@@219))
))) (forall ((o2_42@@190 T@Ref) (f_53@@220 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@190 f_53@@220) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@52) o2_42@@190 f_53@@220) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@190 f_53@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@190 f_53@@220))
))) (forall ((o2_42@@191 T@Ref) (f_53@@221 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@191 f_53@@221) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@52) o2_42@@191 f_53@@221) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@191 f_53@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@191 f_53@@221))
))) (forall ((o2_42@@192 T@Ref) (f_53@@222 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@192 f_53@@222) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) o2_42@@192 f_53@@222) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@192 f_53@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@192 f_53@@222))
))) (forall ((o2_42@@193 T@Ref) (f_53@@223 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@193 f_53@@223) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@52) o2_42@@193 f_53@@223) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@193 f_53@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@193 f_53@@223))
))) (forall ((o2_42@@194 T@Ref) (f_53@@224 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@194 f_53@@224) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@52) o2_42@@194 f_53@@224) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@194 f_53@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@194 f_53@@224))
))) (forall ((o2_42@@195 T@Ref) (f_53@@225 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@195 f_53@@225) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@52) o2_42@@195 f_53@@225) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@195 f_53@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@195 f_53@@225))
))) (forall ((o2_42@@196 T@Ref) (f_53@@226 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@196 f_53@@226) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@52) o2_42@@196 f_53@@226) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@196 f_53@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@196 f_53@@226))
))) (forall ((o2_42@@197 T@Ref) (f_53@@227 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@197 f_53@@227) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@52) o2_42@@197 f_53@@227) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@197 f_53@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@197 f_53@@227))
))) (forall ((o2_42@@198 T@Ref) (f_53@@228 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@198 f_53@@228) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@52) o2_42@@198 f_53@@228) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@198 f_53@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@198 f_53@@228))
))) (forall ((o2_42@@199 T@Ref) (f_53@@229 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@199 f_53@@229) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@52) o2_42@@199 f_53@@229) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@199 f_53@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@199 f_53@@229))
))) (forall ((o2_42@@200 T@Ref) (f_53@@230 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@200 f_53@@230) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@52) o2_42@@200 f_53@@230) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@200 f_53@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@200 f_53@@230))
))) (forall ((o2_42@@201 T@Ref) (f_53@@231 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@201 f_53@@231) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@52) o2_42@@201 f_53@@231) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@201 f_53@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@201 f_53@@231))
))) (forall ((o2_42@@202 T@Ref) (f_53@@232 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@202 f_53@@232) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@52) o2_42@@202 f_53@@232) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@202 f_53@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@202 f_53@@232))
))) (forall ((o2_42@@203 T@Ref) (f_53@@233 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@203 f_53@@233) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@52) o2_42@@203 f_53@@233) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@203 f_53@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@203 f_53@@233))
))) (forall ((o2_42@@204 T@Ref) (f_53@@234 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@204 f_53@@234) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@52) o2_42@@204 f_53@@234) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@204 f_53@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@204 f_53@@234))
))) (forall ((o2_42@@205 T@Ref) (f_53@@235 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@205 f_53@@235) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@52) o2_42@@205 f_53@@235) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@205 f_53@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@205 f_53@@235))
))) (forall ((o2_42@@206 T@Ref) (f_53@@236 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@206 f_53@@236) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@52) o2_42@@206 f_53@@236) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@206 f_53@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@206 f_53@@236))
))) (forall ((o2_42@@207 T@Ref) (f_53@@237 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@207 f_53@@237) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@52) o2_42@@207 f_53@@237) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@207 f_53@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@207 f_53@@237))
))) (forall ((o2_42@@208 T@Ref) (f_53@@238 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@52) null (WandMaskField_12968 pm_f_42@@17))) o2_42@@208 f_53@@238) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@52) o2_42@@208 f_53@@238) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@208 f_53@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@49) o2_42@@208 f_53@@238))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@49 Mask@@110) (IsWandField_12968_12969 pm_f_42@@17))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_20564) (ExhaleHeap@@50 T@PolymorphicMapType_20564) (Mask@@111 T@PolymorphicMapType_20585) (pm_f_42@@18 T@Field_28299_28300) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@50 Mask@@111) (=> (and (HasDirectPerm_13043_13135 Mask@@111 null pm_f_42@@18) (IsWandField_13064_13065 pm_f_42@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@209 T@Ref) (f_53@@239 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@209 f_53@@239) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@53) o2_42@@209 f_53@@239) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@209 f_53@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@209 f_53@@239))
)) (forall ((o2_42@@210 T@Ref) (f_53@@240 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@210 f_53@@240) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@53) o2_42@@210 f_53@@240) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@210 f_53@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@210 f_53@@240))
))) (forall ((o2_42@@211 T@Ref) (f_53@@241 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@211 f_53@@241) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@53) o2_42@@211 f_53@@241) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@211 f_53@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@211 f_53@@241))
))) (forall ((o2_42@@212 T@Ref) (f_53@@242 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@212 f_53@@242) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@53) o2_42@@212 f_53@@242) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@212 f_53@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@212 f_53@@242))
))) (forall ((o2_42@@213 T@Ref) (f_53@@243 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@213 f_53@@243) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@53) o2_42@@213 f_53@@243) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@213 f_53@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@213 f_53@@243))
))) (forall ((o2_42@@214 T@Ref) (f_53@@244 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@214 f_53@@244) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@53) o2_42@@214 f_53@@244) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@214 f_53@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@214 f_53@@244))
))) (forall ((o2_42@@215 T@Ref) (f_53@@245 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@215 f_53@@245) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@53) o2_42@@215 f_53@@245) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@215 f_53@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@215 f_53@@245))
))) (forall ((o2_42@@216 T@Ref) (f_53@@246 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@216 f_53@@246) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@53) o2_42@@216 f_53@@246) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@216 f_53@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@216 f_53@@246))
))) (forall ((o2_42@@217 T@Ref) (f_53@@247 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@217 f_53@@247) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@53) o2_42@@217 f_53@@247) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@217 f_53@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@217 f_53@@247))
))) (forall ((o2_42@@218 T@Ref) (f_53@@248 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@218 f_53@@248) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@53) o2_42@@218 f_53@@248) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@218 f_53@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@218 f_53@@248))
))) (forall ((o2_42@@219 T@Ref) (f_53@@249 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@219 f_53@@249) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@53) o2_42@@219 f_53@@249) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@219 f_53@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@219 f_53@@249))
))) (forall ((o2_42@@220 T@Ref) (f_53@@250 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@220 f_53@@250) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@53) o2_42@@220 f_53@@250) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@220 f_53@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@220 f_53@@250))
))) (forall ((o2_42@@221 T@Ref) (f_53@@251 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@221 f_53@@251) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@53) o2_42@@221 f_53@@251) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@221 f_53@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@221 f_53@@251))
))) (forall ((o2_42@@222 T@Ref) (f_53@@252 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@222 f_53@@252) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@53) o2_42@@222 f_53@@252) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@222 f_53@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@222 f_53@@252))
))) (forall ((o2_42@@223 T@Ref) (f_53@@253 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@223 f_53@@253) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@53) o2_42@@223 f_53@@253) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@223 f_53@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@223 f_53@@253))
))) (forall ((o2_42@@224 T@Ref) (f_53@@254 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@224 f_53@@254) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@53) o2_42@@224 f_53@@254) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@224 f_53@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@224 f_53@@254))
))) (forall ((o2_42@@225 T@Ref) (f_53@@255 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@225 f_53@@255) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@53) o2_42@@225 f_53@@255) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@225 f_53@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@225 f_53@@255))
))) (forall ((o2_42@@226 T@Ref) (f_53@@256 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@226 f_53@@256) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@53) o2_42@@226 f_53@@256) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@226 f_53@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@226 f_53@@256))
))) (forall ((o2_42@@227 T@Ref) (f_53@@257 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@227 f_53@@257) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) o2_42@@227 f_53@@257) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@227 f_53@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@227 f_53@@257))
))) (forall ((o2_42@@228 T@Ref) (f_53@@258 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@228 f_53@@258) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@53) o2_42@@228 f_53@@258) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@228 f_53@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@228 f_53@@258))
))) (forall ((o2_42@@229 T@Ref) (f_53@@259 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@229 f_53@@259) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@53) o2_42@@229 f_53@@259) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@229 f_53@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@229 f_53@@259))
))) (forall ((o2_42@@230 T@Ref) (f_53@@260 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@230 f_53@@260) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@53) o2_42@@230 f_53@@260) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@230 f_53@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@230 f_53@@260))
))) (forall ((o2_42@@231 T@Ref) (f_53@@261 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@231 f_53@@261) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@53) o2_42@@231 f_53@@261) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@231 f_53@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@231 f_53@@261))
))) (forall ((o2_42@@232 T@Ref) (f_53@@262 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@232 f_53@@262) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@53) o2_42@@232 f_53@@262) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@232 f_53@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@232 f_53@@262))
))) (forall ((o2_42@@233 T@Ref) (f_53@@263 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@233 f_53@@263) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@53) o2_42@@233 f_53@@263) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@233 f_53@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@233 f_53@@263))
))) (forall ((o2_42@@234 T@Ref) (f_53@@264 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@234 f_53@@264) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@53) o2_42@@234 f_53@@264) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@234 f_53@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@234 f_53@@264))
))) (forall ((o2_42@@235 T@Ref) (f_53@@265 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@235 f_53@@265) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@53) o2_42@@235 f_53@@265) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@235 f_53@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@235 f_53@@265))
))) (forall ((o2_42@@236 T@Ref) (f_53@@266 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@236 f_53@@266) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@53) o2_42@@236 f_53@@266) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@236 f_53@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@236 f_53@@266))
))) (forall ((o2_42@@237 T@Ref) (f_53@@267 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@237 f_53@@267) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@53) o2_42@@237 f_53@@267) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@237 f_53@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@237 f_53@@267))
))) (forall ((o2_42@@238 T@Ref) (f_53@@268 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@53) null (WandMaskField_13064 pm_f_42@@18))) o2_42@@238 f_53@@268) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@53) o2_42@@238 f_53@@268) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@238 f_53@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@50) o2_42@@238 f_53@@268))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@50 Mask@@111) (IsWandField_13064_13065 pm_f_42@@18))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_20564) (ExhaleHeap@@51 T@PolymorphicMapType_20564) (Mask@@112 T@PolymorphicMapType_20585) (pm_f_42@@19 T@Field_30154_30155) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@51 Mask@@112) (=> (and (HasDirectPerm_13160_13161 Mask@@112 null pm_f_42@@19) (IsWandField_13160_77432 pm_f_42@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@239 T@Ref) (f_53@@269 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@239 f_53@@269) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@54) o2_42@@239 f_53@@269) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@239 f_53@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@239 f_53@@269))
)) (forall ((o2_42@@240 T@Ref) (f_53@@270 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@240 f_53@@270) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@54) o2_42@@240 f_53@@270) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@240 f_53@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@240 f_53@@270))
))) (forall ((o2_42@@241 T@Ref) (f_53@@271 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@241 f_53@@271) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@54) o2_42@@241 f_53@@271) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@241 f_53@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@241 f_53@@271))
))) (forall ((o2_42@@242 T@Ref) (f_53@@272 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@242 f_53@@272) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@54) o2_42@@242 f_53@@272) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@242 f_53@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@242 f_53@@272))
))) (forall ((o2_42@@243 T@Ref) (f_53@@273 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@243 f_53@@273) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@54) o2_42@@243 f_53@@273) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@243 f_53@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@243 f_53@@273))
))) (forall ((o2_42@@244 T@Ref) (f_53@@274 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@244 f_53@@274) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@54) o2_42@@244 f_53@@274) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@244 f_53@@274)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@244 f_53@@274))
))) (forall ((o2_42@@245 T@Ref) (f_53@@275 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@245 f_53@@275) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@54) o2_42@@245 f_53@@275) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@245 f_53@@275)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@245 f_53@@275))
))) (forall ((o2_42@@246 T@Ref) (f_53@@276 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@246 f_53@@276) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@54) o2_42@@246 f_53@@276) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@246 f_53@@276)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@246 f_53@@276))
))) (forall ((o2_42@@247 T@Ref) (f_53@@277 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@247 f_53@@277) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@54) o2_42@@247 f_53@@277) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@247 f_53@@277)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@247 f_53@@277))
))) (forall ((o2_42@@248 T@Ref) (f_53@@278 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@248 f_53@@278) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@54) o2_42@@248 f_53@@278) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@248 f_53@@278)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@248 f_53@@278))
))) (forall ((o2_42@@249 T@Ref) (f_53@@279 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@249 f_53@@279) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@54) o2_42@@249 f_53@@279) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@249 f_53@@279)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@249 f_53@@279))
))) (forall ((o2_42@@250 T@Ref) (f_53@@280 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@250 f_53@@280) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@54) o2_42@@250 f_53@@280) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@250 f_53@@280)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@250 f_53@@280))
))) (forall ((o2_42@@251 T@Ref) (f_53@@281 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@251 f_53@@281) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@54) o2_42@@251 f_53@@281) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@251 f_53@@281)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@251 f_53@@281))
))) (forall ((o2_42@@252 T@Ref) (f_53@@282 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@252 f_53@@282) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@54) o2_42@@252 f_53@@282) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@252 f_53@@282)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@252 f_53@@282))
))) (forall ((o2_42@@253 T@Ref) (f_53@@283 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@253 f_53@@283) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@54) o2_42@@253 f_53@@283) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@253 f_53@@283)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@253 f_53@@283))
))) (forall ((o2_42@@254 T@Ref) (f_53@@284 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@254 f_53@@284) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@54) o2_42@@254 f_53@@284) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@254 f_53@@284)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@254 f_53@@284))
))) (forall ((o2_42@@255 T@Ref) (f_53@@285 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@255 f_53@@285) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@54) o2_42@@255 f_53@@285) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@255 f_53@@285)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@255 f_53@@285))
))) (forall ((o2_42@@256 T@Ref) (f_53@@286 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@256 f_53@@286) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@54) o2_42@@256 f_53@@286) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@256 f_53@@286)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@256 f_53@@286))
))) (forall ((o2_42@@257 T@Ref) (f_53@@287 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@257 f_53@@287) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@54) o2_42@@257 f_53@@287) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@257 f_53@@287)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@257 f_53@@287))
))) (forall ((o2_42@@258 T@Ref) (f_53@@288 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@258 f_53@@288) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@54) o2_42@@258 f_53@@288) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@258 f_53@@288)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@258 f_53@@288))
))) (forall ((o2_42@@259 T@Ref) (f_53@@289 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@259 f_53@@289) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@54) o2_42@@259 f_53@@289) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@259 f_53@@289)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@259 f_53@@289))
))) (forall ((o2_42@@260 T@Ref) (f_53@@290 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@260 f_53@@290) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@54) o2_42@@260 f_53@@290) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@260 f_53@@290)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@260 f_53@@290))
))) (forall ((o2_42@@261 T@Ref) (f_53@@291 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@261 f_53@@291) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@54) o2_42@@261 f_53@@291) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@261 f_53@@291)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@261 f_53@@291))
))) (forall ((o2_42@@262 T@Ref) (f_53@@292 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@262 f_53@@292) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@54) o2_42@@262 f_53@@292) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@262 f_53@@292)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@262 f_53@@292))
))) (forall ((o2_42@@263 T@Ref) (f_53@@293 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@263 f_53@@293) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@54) o2_42@@263 f_53@@293) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@263 f_53@@293)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@263 f_53@@293))
))) (forall ((o2_42@@264 T@Ref) (f_53@@294 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@264 f_53@@294) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@54) o2_42@@264 f_53@@294) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@264 f_53@@294)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@264 f_53@@294))
))) (forall ((o2_42@@265 T@Ref) (f_53@@295 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@265 f_53@@295) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@54) o2_42@@265 f_53@@295) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@265 f_53@@295)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@265 f_53@@295))
))) (forall ((o2_42@@266 T@Ref) (f_53@@296 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@266 f_53@@296) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@54) o2_42@@266 f_53@@296) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@266 f_53@@296)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@266 f_53@@296))
))) (forall ((o2_42@@267 T@Ref) (f_53@@297 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@267 f_53@@297) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) o2_42@@267 f_53@@297) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@267 f_53@@297)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@267 f_53@@297))
))) (forall ((o2_42@@268 T@Ref) (f_53@@298 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@54) null (WandMaskField_13160 pm_f_42@@19))) o2_42@@268 f_53@@298) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@54) o2_42@@268 f_53@@298) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@268 f_53@@298)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@51) o2_42@@268 f_53@@298))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@51 Mask@@112) (IsWandField_13160_77432 pm_f_42@@19))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_20564) (ExhaleHeap@@52 T@PolymorphicMapType_20564) (Mask@@113 T@PolymorphicMapType_20585) (pm_f_42@@20 T@Field_26891_26892) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@52 Mask@@113) (=> (and (HasDirectPerm_12891_13135 Mask@@113 null pm_f_42@@20) (IsWandField_12904_12905 pm_f_42@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@269 T@Ref) (f_53@@299 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@269 f_53@@299) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@55) o2_42@@269 f_53@@299) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@269 f_53@@299)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@269 f_53@@299))
)) (forall ((o2_42@@270 T@Ref) (f_53@@300 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@270 f_53@@300) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@55) o2_42@@270 f_53@@300) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@270 f_53@@300)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@270 f_53@@300))
))) (forall ((o2_42@@271 T@Ref) (f_53@@301 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@271 f_53@@301) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@55) o2_42@@271 f_53@@301) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@271 f_53@@301)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@271 f_53@@301))
))) (forall ((o2_42@@272 T@Ref) (f_53@@302 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@272 f_53@@302) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@55) o2_42@@272 f_53@@302) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@272 f_53@@302)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@272 f_53@@302))
))) (forall ((o2_42@@273 T@Ref) (f_53@@303 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@273 f_53@@303) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@55) o2_42@@273 f_53@@303) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@273 f_53@@303)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@273 f_53@@303))
))) (forall ((o2_42@@274 T@Ref) (f_53@@304 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@274 f_53@@304) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@55) o2_42@@274 f_53@@304) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@274 f_53@@304)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@274 f_53@@304))
))) (forall ((o2_42@@275 T@Ref) (f_53@@305 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@275 f_53@@305) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@55) o2_42@@275 f_53@@305) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@275 f_53@@305)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@275 f_53@@305))
))) (forall ((o2_42@@276 T@Ref) (f_53@@306 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@276 f_53@@306) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@55) o2_42@@276 f_53@@306) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@276 f_53@@306)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@276 f_53@@306))
))) (forall ((o2_42@@277 T@Ref) (f_53@@307 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@277 f_53@@307) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) o2_42@@277 f_53@@307) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@277 f_53@@307)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@277 f_53@@307))
))) (forall ((o2_42@@278 T@Ref) (f_53@@308 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@278 f_53@@308) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@55) o2_42@@278 f_53@@308) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@278 f_53@@308)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@278 f_53@@308))
))) (forall ((o2_42@@279 T@Ref) (f_53@@309 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@279 f_53@@309) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@55) o2_42@@279 f_53@@309) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@279 f_53@@309)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@279 f_53@@309))
))) (forall ((o2_42@@280 T@Ref) (f_53@@310 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@280 f_53@@310) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@55) o2_42@@280 f_53@@310) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@280 f_53@@310)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@280 f_53@@310))
))) (forall ((o2_42@@281 T@Ref) (f_53@@311 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@281 f_53@@311) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@55) o2_42@@281 f_53@@311) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@281 f_53@@311)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@281 f_53@@311))
))) (forall ((o2_42@@282 T@Ref) (f_53@@312 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@282 f_53@@312) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@55) o2_42@@282 f_53@@312) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@282 f_53@@312)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@282 f_53@@312))
))) (forall ((o2_42@@283 T@Ref) (f_53@@313 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@283 f_53@@313) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@55) o2_42@@283 f_53@@313) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@283 f_53@@313)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@283 f_53@@313))
))) (forall ((o2_42@@284 T@Ref) (f_53@@314 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@284 f_53@@314) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@55) o2_42@@284 f_53@@314) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@284 f_53@@314)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@284 f_53@@314))
))) (forall ((o2_42@@285 T@Ref) (f_53@@315 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@285 f_53@@315) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@55) o2_42@@285 f_53@@315) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@285 f_53@@315)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@285 f_53@@315))
))) (forall ((o2_42@@286 T@Ref) (f_53@@316 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@286 f_53@@316) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@55) o2_42@@286 f_53@@316) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@286 f_53@@316)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@286 f_53@@316))
))) (forall ((o2_42@@287 T@Ref) (f_53@@317 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@287 f_53@@317) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@55) o2_42@@287 f_53@@317) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@287 f_53@@317)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@287 f_53@@317))
))) (forall ((o2_42@@288 T@Ref) (f_53@@318 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@288 f_53@@318) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@55) o2_42@@288 f_53@@318) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@288 f_53@@318)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@288 f_53@@318))
))) (forall ((o2_42@@289 T@Ref) (f_53@@319 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@289 f_53@@319) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@55) o2_42@@289 f_53@@319) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@289 f_53@@319)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@289 f_53@@319))
))) (forall ((o2_42@@290 T@Ref) (f_53@@320 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@290 f_53@@320) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@55) o2_42@@290 f_53@@320) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@290 f_53@@320)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@290 f_53@@320))
))) (forall ((o2_42@@291 T@Ref) (f_53@@321 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@291 f_53@@321) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@55) o2_42@@291 f_53@@321) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@291 f_53@@321)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@291 f_53@@321))
))) (forall ((o2_42@@292 T@Ref) (f_53@@322 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@292 f_53@@322) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@55) o2_42@@292 f_53@@322) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@292 f_53@@322)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@292 f_53@@322))
))) (forall ((o2_42@@293 T@Ref) (f_53@@323 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@293 f_53@@323) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@55) o2_42@@293 f_53@@323) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@293 f_53@@323)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@293 f_53@@323))
))) (forall ((o2_42@@294 T@Ref) (f_53@@324 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@294 f_53@@324) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@55) o2_42@@294 f_53@@324) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@294 f_53@@324)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@294 f_53@@324))
))) (forall ((o2_42@@295 T@Ref) (f_53@@325 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@295 f_53@@325) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@55) o2_42@@295 f_53@@325) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@295 f_53@@325)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@295 f_53@@325))
))) (forall ((o2_42@@296 T@Ref) (f_53@@326 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@296 f_53@@326) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@55) o2_42@@296 f_53@@326) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@296 f_53@@326)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@296 f_53@@326))
))) (forall ((o2_42@@297 T@Ref) (f_53@@327 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@297 f_53@@327) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@55) o2_42@@297 f_53@@327) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@297 f_53@@327)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@297 f_53@@327))
))) (forall ((o2_42@@298 T@Ref) (f_53@@328 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@55) null (WandMaskField_12904 pm_f_42@@20))) o2_42@@298 f_53@@328) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@55) o2_42@@298 f_53@@328) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@298 f_53@@328)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@52) o2_42@@298 f_53@@328))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@52 Mask@@113) (IsWandField_12904_12905 pm_f_42@@20))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_20564) (ExhaleHeap@@53 T@PolymorphicMapType_20564) (Mask@@114 T@PolymorphicMapType_20585) (pm_f_42@@21 T@Field_29067_29068) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@53 Mask@@114) (=> (and (HasDirectPerm_13134_13135 Mask@@114 null pm_f_42@@21) (IsWandField_13134_76750 pm_f_42@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@299 T@Ref) (f_53@@329 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@299 f_53@@329) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@56) o2_42@@299 f_53@@329) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@299 f_53@@329)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@299 f_53@@329))
)) (forall ((o2_42@@300 T@Ref) (f_53@@330 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@300 f_53@@330) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@56) o2_42@@300 f_53@@330) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@300 f_53@@330)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@300 f_53@@330))
))) (forall ((o2_42@@301 T@Ref) (f_53@@331 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@301 f_53@@331) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@56) o2_42@@301 f_53@@331) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@301 f_53@@331)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@301 f_53@@331))
))) (forall ((o2_42@@302 T@Ref) (f_53@@332 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@302 f_53@@332) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@56) o2_42@@302 f_53@@332) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@302 f_53@@332)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@302 f_53@@332))
))) (forall ((o2_42@@303 T@Ref) (f_53@@333 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@303 f_53@@333) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@56) o2_42@@303 f_53@@333) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@303 f_53@@333)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@303 f_53@@333))
))) (forall ((o2_42@@304 T@Ref) (f_53@@334 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@304 f_53@@334) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@56) o2_42@@304 f_53@@334) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@304 f_53@@334)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@304 f_53@@334))
))) (forall ((o2_42@@305 T@Ref) (f_53@@335 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@305 f_53@@335) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@56) o2_42@@305 f_53@@335) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@305 f_53@@335)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@305 f_53@@335))
))) (forall ((o2_42@@306 T@Ref) (f_53@@336 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@306 f_53@@336) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@56) o2_42@@306 f_53@@336) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@306 f_53@@336)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@306 f_53@@336))
))) (forall ((o2_42@@307 T@Ref) (f_53@@337 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@307 f_53@@337) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@56) o2_42@@307 f_53@@337) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@307 f_53@@337)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@307 f_53@@337))
))) (forall ((o2_42@@308 T@Ref) (f_53@@338 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@308 f_53@@338) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@56) o2_42@@308 f_53@@338) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@308 f_53@@338)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@308 f_53@@338))
))) (forall ((o2_42@@309 T@Ref) (f_53@@339 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@309 f_53@@339) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@56) o2_42@@309 f_53@@339) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@309 f_53@@339)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@309 f_53@@339))
))) (forall ((o2_42@@310 T@Ref) (f_53@@340 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@310 f_53@@340) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@56) o2_42@@310 f_53@@340) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@310 f_53@@340)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@310 f_53@@340))
))) (forall ((o2_42@@311 T@Ref) (f_53@@341 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@311 f_53@@341) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@56) o2_42@@311 f_53@@341) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@311 f_53@@341)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@311 f_53@@341))
))) (forall ((o2_42@@312 T@Ref) (f_53@@342 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@312 f_53@@342) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@56) o2_42@@312 f_53@@342) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@312 f_53@@342)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@312 f_53@@342))
))) (forall ((o2_42@@313 T@Ref) (f_53@@343 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@313 f_53@@343) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@56) o2_42@@313 f_53@@343) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@313 f_53@@343)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@313 f_53@@343))
))) (forall ((o2_42@@314 T@Ref) (f_53@@344 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@314 f_53@@344) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@56) o2_42@@314 f_53@@344) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@314 f_53@@344)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@314 f_53@@344))
))) (forall ((o2_42@@315 T@Ref) (f_53@@345 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@315 f_53@@345) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@56) o2_42@@315 f_53@@345) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@315 f_53@@345)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@315 f_53@@345))
))) (forall ((o2_42@@316 T@Ref) (f_53@@346 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@316 f_53@@346) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@56) o2_42@@316 f_53@@346) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@316 f_53@@346)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@316 f_53@@346))
))) (forall ((o2_42@@317 T@Ref) (f_53@@347 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@317 f_53@@347) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@56) o2_42@@317 f_53@@347) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@317 f_53@@347)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@317 f_53@@347))
))) (forall ((o2_42@@318 T@Ref) (f_53@@348 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@318 f_53@@348) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@56) o2_42@@318 f_53@@348) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@318 f_53@@348)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@318 f_53@@348))
))) (forall ((o2_42@@319 T@Ref) (f_53@@349 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@319 f_53@@349) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@56) o2_42@@319 f_53@@349) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@319 f_53@@349)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@319 f_53@@349))
))) (forall ((o2_42@@320 T@Ref) (f_53@@350 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@320 f_53@@350) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@56) o2_42@@320 f_53@@350) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@320 f_53@@350)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@320 f_53@@350))
))) (forall ((o2_42@@321 T@Ref) (f_53@@351 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@321 f_53@@351) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@56) o2_42@@321 f_53@@351) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@321 f_53@@351)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@321 f_53@@351))
))) (forall ((o2_42@@322 T@Ref) (f_53@@352 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@322 f_53@@352) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) o2_42@@322 f_53@@352) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@322 f_53@@352)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@322 f_53@@352))
))) (forall ((o2_42@@323 T@Ref) (f_53@@353 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@323 f_53@@353) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@56) o2_42@@323 f_53@@353) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@323 f_53@@353)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@323 f_53@@353))
))) (forall ((o2_42@@324 T@Ref) (f_53@@354 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@324 f_53@@354) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@56) o2_42@@324 f_53@@354) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@324 f_53@@354)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@324 f_53@@354))
))) (forall ((o2_42@@325 T@Ref) (f_53@@355 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@325 f_53@@355) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@56) o2_42@@325 f_53@@355) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@325 f_53@@355)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@325 f_53@@355))
))) (forall ((o2_42@@326 T@Ref) (f_53@@356 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@326 f_53@@356) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@56) o2_42@@326 f_53@@356) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@326 f_53@@356)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@326 f_53@@356))
))) (forall ((o2_42@@327 T@Ref) (f_53@@357 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@327 f_53@@357) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@56) o2_42@@327 f_53@@357) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@327 f_53@@357)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@327 f_53@@357))
))) (forall ((o2_42@@328 T@Ref) (f_53@@358 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@56) null (WandMaskField_13134 pm_f_42@@21))) o2_42@@328 f_53@@358) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@56) o2_42@@328 f_53@@358) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@328 f_53@@358)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@53) o2_42@@328 f_53@@358))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@53 Mask@@114) (IsWandField_13134_76750 pm_f_42@@21))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_20564) (ExhaleHeap@@54 T@PolymorphicMapType_20564) (Mask@@115 T@PolymorphicMapType_20585) (pm_f_42@@22 T@Field_13131_13135) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@54 Mask@@115) (=> (and (HasDirectPerm_13131_13135 Mask@@115 null pm_f_42@@22) (IsWandField_13131_76393 pm_f_42@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_42@@329 T@Ref) (f_53@@359 T@Field_20624_53) ) (!  (=> (select (|PolymorphicMapType_21113_20624_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@329 f_53@@359) (= (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@57) o2_42@@329 f_53@@359) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@329 f_53@@359)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@329 f_53@@359))
)) (forall ((o2_42@@330 T@Ref) (f_53@@360 T@Field_20637_20638) ) (!  (=> (select (|PolymorphicMapType_21113_20624_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@330 f_53@@360) (= (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@57) o2_42@@330 f_53@@360) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@330 f_53@@360)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@330 f_53@@360))
))) (forall ((o2_42@@331 T@Ref) (f_53@@361 T@Field_29020_4669) ) (!  (=> (select (|PolymorphicMapType_21113_20624_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@331 f_53@@361) (= (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@57) o2_42@@331 f_53@@361) (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@331 f_53@@361)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@331 f_53@@361))
))) (forall ((o2_42@@332 T@Ref) (f_53@@362 T@Field_13131_26880) ) (!  (=> (select (|PolymorphicMapType_21113_20624_69017#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@332 f_53@@362) (= (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) o2_42@@332 f_53@@362) (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@332 f_53@@362)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@332 f_53@@362))
))) (forall ((o2_42@@333 T@Ref) (f_53@@363 T@Field_13131_13135) ) (!  (=> (select (|PolymorphicMapType_21113_20624_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@333 f_53@@363) (= (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@57) o2_42@@333 f_53@@363) (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@333 f_53@@363)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@333 f_53@@363))
))) (forall ((o2_42@@334 T@Ref) (f_53@@364 T@Field_12891_53) ) (!  (=> (select (|PolymorphicMapType_21113_26862_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@334 f_53@@364) (= (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@57) o2_42@@334 f_53@@364) (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@334 f_53@@364)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@334 f_53@@364))
))) (forall ((o2_42@@335 T@Ref) (f_53@@365 T@Field_12891_20638) ) (!  (=> (select (|PolymorphicMapType_21113_26862_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@335 f_53@@365) (= (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@57) o2_42@@335 f_53@@365) (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@335 f_53@@365)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@335 f_53@@365))
))) (forall ((o2_42@@336 T@Ref) (f_53@@366 T@Field_26862_3676) ) (!  (=> (select (|PolymorphicMapType_21113_26862_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@336 f_53@@366) (= (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@57) o2_42@@336 f_53@@366) (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@336 f_53@@366)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@336 f_53@@366))
))) (forall ((o2_42@@337 T@Ref) (f_53@@367 T@Field_26875_26880) ) (!  (=> (select (|PolymorphicMapType_21113_26862_70065#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@337 f_53@@367) (= (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@57) o2_42@@337 f_53@@367) (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@337 f_53@@367)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@337 f_53@@367))
))) (forall ((o2_42@@338 T@Ref) (f_53@@368 T@Field_26891_26892) ) (!  (=> (select (|PolymorphicMapType_21113_26862_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@338 f_53@@368) (= (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@57) o2_42@@338 f_53@@368) (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@338 f_53@@368)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@338 f_53@@368))
))) (forall ((o2_42@@339 T@Ref) (f_53@@369 T@Field_27508_53) ) (!  (=> (select (|PolymorphicMapType_21113_27508_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@339 f_53@@369) (= (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@57) o2_42@@339 f_53@@369) (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@339 f_53@@369)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@339 f_53@@369))
))) (forall ((o2_42@@340 T@Ref) (f_53@@370 T@Field_27508_20638) ) (!  (=> (select (|PolymorphicMapType_21113_27508_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@340 f_53@@370) (= (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@57) o2_42@@340 f_53@@370) (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@340 f_53@@370)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@340 f_53@@370))
))) (forall ((o2_42@@341 T@Ref) (f_53@@371 T@Field_27508_4000) ) (!  (=> (select (|PolymorphicMapType_21113_27508_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@341 f_53@@371) (= (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@57) o2_42@@341 f_53@@371) (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@341 f_53@@371)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@341 f_53@@371))
))) (forall ((o2_42@@342 T@Ref) (f_53@@372 T@Field_27523_27528) ) (!  (=> (select (|PolymorphicMapType_21113_27508_71113#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@342 f_53@@372) (= (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@57) o2_42@@342 f_53@@372) (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@342 f_53@@372)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@342 f_53@@372))
))) (forall ((o2_42@@343 T@Ref) (f_53@@373 T@Field_27541_27542) ) (!  (=> (select (|PolymorphicMapType_21113_27508_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@343 f_53@@373) (= (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@57) o2_42@@343 f_53@@373) (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@343 f_53@@373)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@343 f_53@@373))
))) (forall ((o2_42@@344 T@Ref) (f_53@@374 T@Field_13043_53) ) (!  (=> (select (|PolymorphicMapType_21113_28266_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@344 f_53@@374) (= (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@57) o2_42@@344 f_53@@374) (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@344 f_53@@374)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@344 f_53@@374))
))) (forall ((o2_42@@345 T@Ref) (f_53@@375 T@Field_13043_20638) ) (!  (=> (select (|PolymorphicMapType_21113_28266_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@345 f_53@@375) (= (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@57) o2_42@@345 f_53@@375) (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@345 f_53@@375)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@345 f_53@@375))
))) (forall ((o2_42@@346 T@Ref) (f_53@@376 T@Field_28266_4344) ) (!  (=> (select (|PolymorphicMapType_21113_28266_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@346 f_53@@376) (= (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@57) o2_42@@346 f_53@@376) (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@346 f_53@@376)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@346 f_53@@376))
))) (forall ((o2_42@@347 T@Ref) (f_53@@377 T@Field_28281_28286) ) (!  (=> (select (|PolymorphicMapType_21113_28266_72161#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@347 f_53@@377) (= (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@57) o2_42@@347 f_53@@377) (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@347 f_53@@377)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@347 f_53@@377))
))) (forall ((o2_42@@348 T@Ref) (f_53@@378 T@Field_28299_28300) ) (!  (=> (select (|PolymorphicMapType_21113_28266_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@348 f_53@@378) (= (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@57) o2_42@@348 f_53@@378) (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@348 f_53@@378)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@348 f_53@@378))
))) (forall ((o2_42@@349 T@Ref) (f_53@@379 T@Field_13134_53) ) (!  (=> (select (|PolymorphicMapType_21113_29067_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@349 f_53@@379) (= (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@57) o2_42@@349 f_53@@379) (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@349 f_53@@379)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@349 f_53@@379))
))) (forall ((o2_42@@350 T@Ref) (f_53@@380 T@Field_13134_20638) ) (!  (=> (select (|PolymorphicMapType_21113_29067_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@350 f_53@@380) (= (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@57) o2_42@@350 f_53@@380) (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@350 f_53@@380)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@350 f_53@@380))
))) (forall ((o2_42@@351 T@Ref) (f_53@@381 T@Field_13134_4669) ) (!  (=> (select (|PolymorphicMapType_21113_29067_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@351 f_53@@381) (= (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@57) o2_42@@351 f_53@@381) (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@351 f_53@@381)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@351 f_53@@381))
))) (forall ((o2_42@@352 T@Ref) (f_53@@382 T@Field_29080_29085) ) (!  (=> (select (|PolymorphicMapType_21113_29067_73209#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@352 f_53@@382) (= (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@57) o2_42@@352 f_53@@382) (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@352 f_53@@382)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@352 f_53@@382))
))) (forall ((o2_42@@353 T@Ref) (f_53@@383 T@Field_29067_29068) ) (!  (=> (select (|PolymorphicMapType_21113_29067_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@353 f_53@@383) (= (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@57) o2_42@@353 f_53@@383) (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@353 f_53@@383)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@353 f_53@@383))
))) (forall ((o2_42@@354 T@Ref) (f_53@@384 T@Field_13160_53) ) (!  (=> (select (|PolymorphicMapType_21113_30154_53#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@354 f_53@@384) (= (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@57) o2_42@@354 f_53@@384) (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@354 f_53@@384)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@354 f_53@@384))
))) (forall ((o2_42@@355 T@Ref) (f_53@@385 T@Field_13160_20638) ) (!  (=> (select (|PolymorphicMapType_21113_30154_20638#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@355 f_53@@385) (= (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@57) o2_42@@355 f_53@@385) (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@355 f_53@@385)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@355 f_53@@385))
))) (forall ((o2_42@@356 T@Ref) (f_53@@386 T@Field_13160_4669) ) (!  (=> (select (|PolymorphicMapType_21113_30154_3676#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@356 f_53@@386) (= (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@57) o2_42@@356 f_53@@386) (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@356 f_53@@386)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@356 f_53@@386))
))) (forall ((o2_42@@357 T@Ref) (f_53@@387 T@Field_30168_30173) ) (!  (=> (select (|PolymorphicMapType_21113_30154_74257#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@357 f_53@@387) (= (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@57) o2_42@@357 f_53@@387) (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@357 f_53@@387)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@357 f_53@@387))
))) (forall ((o2_42@@358 T@Ref) (f_53@@388 T@Field_30154_30155) ) (!  (=> (select (|PolymorphicMapType_21113_30154_26892#PolymorphicMapType_21113| (select (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@57) null (WandMaskField_13131 pm_f_42@@22))) o2_42@@358 f_53@@388) (= (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@57) o2_42@@358 f_53@@388) (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@358 f_53@@388)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| ExhaleHeap@@54) o2_42@@358 f_53@@388))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@54 Mask@@115) (IsWandField_13131_76393 pm_f_42@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_20585) (SummandMask1 T@PolymorphicMapType_20585) (SummandMask2 T@PolymorphicMapType_20585) (o_2@@119 T@Ref) (f_4@@119 T@Field_28281_28286) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| ResultMask) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| SummandMask1) o_2@@119 f_4@@119) (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| SummandMask2) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| ResultMask) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| SummandMask1) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| SummandMask2) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_20585) (SummandMask1@@0 T@PolymorphicMapType_20585) (SummandMask2@@0 T@PolymorphicMapType_20585) (o_2@@120 T@Ref) (f_4@@120 T@Field_13043_20638) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| ResultMask@@0) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| SummandMask1@@0) o_2@@120 f_4@@120) (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| SummandMask2@@0) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| ResultMask@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| SummandMask1@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| SummandMask2@@0) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_20585) (SummandMask1@@1 T@PolymorphicMapType_20585) (SummandMask2@@1 T@PolymorphicMapType_20585) (o_2@@121 T@Ref) (f_4@@121 T@Field_13043_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| ResultMask@@1) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| SummandMask1@@1) o_2@@121 f_4@@121) (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| SummandMask2@@1) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| ResultMask@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| SummandMask1@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| SummandMask2@@1) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_20585) (SummandMask1@@2 T@PolymorphicMapType_20585) (SummandMask2@@2 T@PolymorphicMapType_20585) (o_2@@122 T@Ref) (f_4@@122 T@Field_28299_28300) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| ResultMask@@2) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| SummandMask1@@2) o_2@@122 f_4@@122) (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| SummandMask2@@2) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| ResultMask@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| SummandMask1@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| SummandMask2@@2) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_20585) (SummandMask1@@3 T@PolymorphicMapType_20585) (SummandMask2@@3 T@PolymorphicMapType_20585) (o_2@@123 T@Ref) (f_4@@123 T@Field_28266_4344) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| ResultMask@@3) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| SummandMask1@@3) o_2@@123 f_4@@123) (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| SummandMask2@@3) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| ResultMask@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| SummandMask1@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| SummandMask2@@3) o_2@@123 f_4@@123))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_20585) (SummandMask1@@4 T@PolymorphicMapType_20585) (SummandMask2@@4 T@PolymorphicMapType_20585) (o_2@@124 T@Ref) (f_4@@124 T@Field_27523_27528) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| ResultMask@@4) o_2@@124 f_4@@124) (+ (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| SummandMask1@@4) o_2@@124 f_4@@124) (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| SummandMask2@@4) o_2@@124 f_4@@124))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| ResultMask@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| SummandMask1@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| SummandMask2@@4) o_2@@124 f_4@@124))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_20585) (SummandMask1@@5 T@PolymorphicMapType_20585) (SummandMask2@@5 T@PolymorphicMapType_20585) (o_2@@125 T@Ref) (f_4@@125 T@Field_27508_20638) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| ResultMask@@5) o_2@@125 f_4@@125) (+ (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| SummandMask1@@5) o_2@@125 f_4@@125) (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| SummandMask2@@5) o_2@@125 f_4@@125))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| ResultMask@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| SummandMask1@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| SummandMask2@@5) o_2@@125 f_4@@125))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_20585) (SummandMask1@@6 T@PolymorphicMapType_20585) (SummandMask2@@6 T@PolymorphicMapType_20585) (o_2@@126 T@Ref) (f_4@@126 T@Field_27508_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| ResultMask@@6) o_2@@126 f_4@@126) (+ (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| SummandMask1@@6) o_2@@126 f_4@@126) (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| SummandMask2@@6) o_2@@126 f_4@@126))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| ResultMask@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| SummandMask1@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| SummandMask2@@6) o_2@@126 f_4@@126))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_20585) (SummandMask1@@7 T@PolymorphicMapType_20585) (SummandMask2@@7 T@PolymorphicMapType_20585) (o_2@@127 T@Ref) (f_4@@127 T@Field_27541_27542) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| ResultMask@@7) o_2@@127 f_4@@127) (+ (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| SummandMask1@@7) o_2@@127 f_4@@127) (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| SummandMask2@@7) o_2@@127 f_4@@127))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| ResultMask@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| SummandMask1@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| SummandMask2@@7) o_2@@127 f_4@@127))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_20585) (SummandMask1@@8 T@PolymorphicMapType_20585) (SummandMask2@@8 T@PolymorphicMapType_20585) (o_2@@128 T@Ref) (f_4@@128 T@Field_27508_4000) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| ResultMask@@8) o_2@@128 f_4@@128) (+ (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| SummandMask1@@8) o_2@@128 f_4@@128) (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| SummandMask2@@8) o_2@@128 f_4@@128))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| ResultMask@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| SummandMask1@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| SummandMask2@@8) o_2@@128 f_4@@128))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_20585) (SummandMask1@@9 T@PolymorphicMapType_20585) (SummandMask2@@9 T@PolymorphicMapType_20585) (o_2@@129 T@Ref) (f_4@@129 T@Field_30168_30173) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| ResultMask@@9) o_2@@129 f_4@@129) (+ (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| SummandMask1@@9) o_2@@129 f_4@@129) (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| SummandMask2@@9) o_2@@129 f_4@@129))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| ResultMask@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| SummandMask1@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| SummandMask2@@9) o_2@@129 f_4@@129))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_20585) (SummandMask1@@10 T@PolymorphicMapType_20585) (SummandMask2@@10 T@PolymorphicMapType_20585) (o_2@@130 T@Ref) (f_4@@130 T@Field_13160_20638) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| ResultMask@@10) o_2@@130 f_4@@130) (+ (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| SummandMask1@@10) o_2@@130 f_4@@130) (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| SummandMask2@@10) o_2@@130 f_4@@130))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| ResultMask@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| SummandMask1@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| SummandMask2@@10) o_2@@130 f_4@@130))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_20585) (SummandMask1@@11 T@PolymorphicMapType_20585) (SummandMask2@@11 T@PolymorphicMapType_20585) (o_2@@131 T@Ref) (f_4@@131 T@Field_13160_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| ResultMask@@11) o_2@@131 f_4@@131) (+ (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| SummandMask1@@11) o_2@@131 f_4@@131) (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| SummandMask2@@11) o_2@@131 f_4@@131))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| ResultMask@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| SummandMask1@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| SummandMask2@@11) o_2@@131 f_4@@131))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_20585) (SummandMask1@@12 T@PolymorphicMapType_20585) (SummandMask2@@12 T@PolymorphicMapType_20585) (o_2@@132 T@Ref) (f_4@@132 T@Field_30154_30155) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| ResultMask@@12) o_2@@132 f_4@@132) (+ (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| SummandMask1@@12) o_2@@132 f_4@@132) (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| SummandMask2@@12) o_2@@132 f_4@@132))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| ResultMask@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| SummandMask1@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| SummandMask2@@12) o_2@@132 f_4@@132))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_20585) (SummandMask1@@13 T@PolymorphicMapType_20585) (SummandMask2@@13 T@PolymorphicMapType_20585) (o_2@@133 T@Ref) (f_4@@133 T@Field_13160_4669) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| ResultMask@@13) o_2@@133 f_4@@133) (+ (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| SummandMask1@@13) o_2@@133 f_4@@133) (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| SummandMask2@@13) o_2@@133 f_4@@133))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| ResultMask@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| SummandMask1@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| SummandMask2@@13) o_2@@133 f_4@@133))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_20585) (SummandMask1@@14 T@PolymorphicMapType_20585) (SummandMask2@@14 T@PolymorphicMapType_20585) (o_2@@134 T@Ref) (f_4@@134 T@Field_26875_26880) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| ResultMask@@14) o_2@@134 f_4@@134) (+ (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| SummandMask1@@14) o_2@@134 f_4@@134) (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| SummandMask2@@14) o_2@@134 f_4@@134))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| ResultMask@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| SummandMask1@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| SummandMask2@@14) o_2@@134 f_4@@134))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_20585) (SummandMask1@@15 T@PolymorphicMapType_20585) (SummandMask2@@15 T@PolymorphicMapType_20585) (o_2@@135 T@Ref) (f_4@@135 T@Field_12891_20638) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| ResultMask@@15) o_2@@135 f_4@@135) (+ (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| SummandMask1@@15) o_2@@135 f_4@@135) (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| SummandMask2@@15) o_2@@135 f_4@@135))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| ResultMask@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| SummandMask1@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| SummandMask2@@15) o_2@@135 f_4@@135))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_20585) (SummandMask1@@16 T@PolymorphicMapType_20585) (SummandMask2@@16 T@PolymorphicMapType_20585) (o_2@@136 T@Ref) (f_4@@136 T@Field_12891_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| ResultMask@@16) o_2@@136 f_4@@136) (+ (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| SummandMask1@@16) o_2@@136 f_4@@136) (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| SummandMask2@@16) o_2@@136 f_4@@136))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| ResultMask@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| SummandMask1@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| SummandMask2@@16) o_2@@136 f_4@@136))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_20585) (SummandMask1@@17 T@PolymorphicMapType_20585) (SummandMask2@@17 T@PolymorphicMapType_20585) (o_2@@137 T@Ref) (f_4@@137 T@Field_26891_26892) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| ResultMask@@17) o_2@@137 f_4@@137) (+ (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| SummandMask1@@17) o_2@@137 f_4@@137) (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| SummandMask2@@17) o_2@@137 f_4@@137))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| ResultMask@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| SummandMask1@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| SummandMask2@@17) o_2@@137 f_4@@137))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_20585) (SummandMask1@@18 T@PolymorphicMapType_20585) (SummandMask2@@18 T@PolymorphicMapType_20585) (o_2@@138 T@Ref) (f_4@@138 T@Field_26862_3676) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| ResultMask@@18) o_2@@138 f_4@@138) (+ (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| SummandMask1@@18) o_2@@138 f_4@@138) (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| SummandMask2@@18) o_2@@138 f_4@@138))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| ResultMask@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| SummandMask1@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| SummandMask2@@18) o_2@@138 f_4@@138))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_20585) (SummandMask1@@19 T@PolymorphicMapType_20585) (SummandMask2@@19 T@PolymorphicMapType_20585) (o_2@@139 T@Ref) (f_4@@139 T@Field_29080_29085) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| ResultMask@@19) o_2@@139 f_4@@139) (+ (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| SummandMask1@@19) o_2@@139 f_4@@139) (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| SummandMask2@@19) o_2@@139 f_4@@139))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| ResultMask@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| SummandMask1@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| SummandMask2@@19) o_2@@139 f_4@@139))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_20585) (SummandMask1@@20 T@PolymorphicMapType_20585) (SummandMask2@@20 T@PolymorphicMapType_20585) (o_2@@140 T@Ref) (f_4@@140 T@Field_13134_20638) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| ResultMask@@20) o_2@@140 f_4@@140) (+ (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| SummandMask1@@20) o_2@@140 f_4@@140) (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| SummandMask2@@20) o_2@@140 f_4@@140))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| ResultMask@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| SummandMask1@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| SummandMask2@@20) o_2@@140 f_4@@140))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_20585) (SummandMask1@@21 T@PolymorphicMapType_20585) (SummandMask2@@21 T@PolymorphicMapType_20585) (o_2@@141 T@Ref) (f_4@@141 T@Field_13134_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| ResultMask@@21) o_2@@141 f_4@@141) (+ (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| SummandMask1@@21) o_2@@141 f_4@@141) (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| SummandMask2@@21) o_2@@141 f_4@@141))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| ResultMask@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| SummandMask1@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| SummandMask2@@21) o_2@@141 f_4@@141))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_20585) (SummandMask1@@22 T@PolymorphicMapType_20585) (SummandMask2@@22 T@PolymorphicMapType_20585) (o_2@@142 T@Ref) (f_4@@142 T@Field_29067_29068) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| ResultMask@@22) o_2@@142 f_4@@142) (+ (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| SummandMask1@@22) o_2@@142 f_4@@142) (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| SummandMask2@@22) o_2@@142 f_4@@142))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| ResultMask@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| SummandMask1@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| SummandMask2@@22) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_20585) (SummandMask1@@23 T@PolymorphicMapType_20585) (SummandMask2@@23 T@PolymorphicMapType_20585) (o_2@@143 T@Ref) (f_4@@143 T@Field_13134_4669) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| ResultMask@@23) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| SummandMask1@@23) o_2@@143 f_4@@143) (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| SummandMask2@@23) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| ResultMask@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| SummandMask1@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| SummandMask2@@23) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_20585) (SummandMask1@@24 T@PolymorphicMapType_20585) (SummandMask2@@24 T@PolymorphicMapType_20585) (o_2@@144 T@Ref) (f_4@@144 T@Field_13131_26880) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| ResultMask@@24) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| SummandMask1@@24) o_2@@144 f_4@@144) (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| SummandMask2@@24) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| ResultMask@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| SummandMask1@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| SummandMask2@@24) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_20585) (SummandMask1@@25 T@PolymorphicMapType_20585) (SummandMask2@@25 T@PolymorphicMapType_20585) (o_2@@145 T@Ref) (f_4@@145 T@Field_20637_20638) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| ResultMask@@25) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| SummandMask1@@25) o_2@@145 f_4@@145) (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| SummandMask2@@25) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| ResultMask@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| SummandMask1@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| SummandMask2@@25) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_20585) (SummandMask1@@26 T@PolymorphicMapType_20585) (SummandMask2@@26 T@PolymorphicMapType_20585) (o_2@@146 T@Ref) (f_4@@146 T@Field_20624_53) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| ResultMask@@26) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| SummandMask1@@26) o_2@@146 f_4@@146) (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| SummandMask2@@26) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| ResultMask@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| SummandMask1@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| SummandMask2@@26) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_20585) (SummandMask1@@27 T@PolymorphicMapType_20585) (SummandMask2@@27 T@PolymorphicMapType_20585) (o_2@@147 T@Ref) (f_4@@147 T@Field_13131_13135) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| ResultMask@@27) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| SummandMask1@@27) o_2@@147 f_4@@147) (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| SummandMask2@@27) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| ResultMask@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| SummandMask1@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| SummandMask2@@27) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_20585) (SummandMask1@@28 T@PolymorphicMapType_20585) (SummandMask2@@28 T@PolymorphicMapType_20585) (o_2@@148 T@Ref) (f_4@@148 T@Field_29020_4669) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| ResultMask@@28) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| SummandMask1@@28) o_2@@148 f_4@@148) (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| SummandMask2@@28) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| ResultMask@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| SummandMask1@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| SummandMask2@@28) o_2@@148 f_4@@148))
)))
(assert (forall ((x@@7 T@Ref) (i@@3 Int) ) (! (= (getPredWandId_13134_13135 (P x@@7 i@@3)) 0)
 :qid |stdinbpl.551:15|
 :skolemid |105|
 :pattern ( (P x@@7 i@@3))
)))
(assert (forall ((x@@8 T@Ref) (y@@3 T@Ref) ) (! (= (getPredWandId_13160_13161 (p2 x@@8 y@@3)) 1)
 :qid |stdinbpl.610:15|
 :skolemid |111|
 :pattern ( (p2 x@@8 y@@3))
)))
(assert (forall ((x@@9 T@Ref) (i@@4 Int) ) (! (= (PredicateMaskField_13134 (P x@@9 i@@4)) (|P#sm| x@@9 i@@4))
 :qid |stdinbpl.543:15|
 :skolemid |103|
 :pattern ( (PredicateMaskField_13134 (P x@@9 i@@4)))
)))
(assert (forall ((x@@10 T@Ref) (y@@4 T@Ref) ) (! (= (PredicateMaskField_13160 (p2 x@@10 y@@4)) (|p2#sm| x@@10 y@@4))
 :qid |stdinbpl.602:15|
 :skolemid |109|
 :pattern ( (PredicateMaskField_13160 (p2 x@@10 y@@4)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_20564) (o_14 T@Ref) (f_14 T@Field_27523_27528) (v T@PolymorphicMapType_21113) ) (! (succHeap Heap@@58 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@58) (store (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@58) o_14 f_14 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@58) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@58) (store (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@58) o_14 f_14 v)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_20564) (o_14@@0 T@Ref) (f_14@@0 T@Field_27541_27542) (v@@0 T@FrameType) ) (! (succHeap Heap@@59 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@59) (store (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@59) o_14@@0 f_14@@0 v@@0) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@59) (store (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@59) o_14@@0 f_14@@0 v@@0) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@59) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_20564) (o_14@@1 T@Ref) (f_14@@1 T@Field_27508_4000) (v@@1 Int) ) (! (succHeap Heap@@60 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@60) (store (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@60) o_14@@1 f_14@@1 v@@1) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@60) (store (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@60) o_14@@1 f_14@@1 v@@1) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@60) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_20564) (o_14@@2 T@Ref) (f_14@@2 T@Field_27508_20638) (v@@2 T@Ref) ) (! (succHeap Heap@@61 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@61) (store (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@61) o_14@@2 f_14@@2 v@@2) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@61) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@61) (store (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@61) o_14@@2 f_14@@2 v@@2) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_20564) (o_14@@3 T@Ref) (f_14@@3 T@Field_27508_53) (v@@3 Bool) ) (! (succHeap Heap@@62 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@62) (store (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@62) o_14@@3 f_14@@3 v@@3) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@62) (store (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@62) o_14@@3 f_14@@3 v@@3) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@62) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_20564) (o_14@@4 T@Ref) (f_14@@4 T@Field_28281_28286) (v@@4 T@PolymorphicMapType_21113) ) (! (succHeap Heap@@63 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@63) (store (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@63) o_14@@4 f_14@@4 v@@4) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@63) (store (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@63) o_14@@4 f_14@@4 v@@4) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@63) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_20564) (o_14@@5 T@Ref) (f_14@@5 T@Field_28299_28300) (v@@5 T@FrameType) ) (! (succHeap Heap@@64 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@64) (store (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@64) o_14@@5 f_14@@5 v@@5) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@64) (store (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@64) o_14@@5 f_14@@5 v@@5) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@64) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_20564) (o_14@@6 T@Ref) (f_14@@6 T@Field_28266_4344) (v@@6 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@65) (store (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@65) o_14@@6 f_14@@6 v@@6) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@65) (store (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@65) o_14@@6 f_14@@6 v@@6) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@65) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_20564) (o_14@@7 T@Ref) (f_14@@7 T@Field_13043_20638) (v@@7 T@Ref) ) (! (succHeap Heap@@66 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@66) (store (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@66) o_14@@7 f_14@@7 v@@7) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@66) (store (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@66) o_14@@7 f_14@@7 v@@7) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@66) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_20564) (o_14@@8 T@Ref) (f_14@@8 T@Field_13043_53) (v@@8 Bool) ) (! (succHeap Heap@@67 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@67) (store (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@67) o_14@@8 f_14@@8 v@@8) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@67) (store (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@67) o_14@@8 f_14@@8 v@@8) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@67) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_20564) (o_14@@9 T@Ref) (f_14@@9 T@Field_30168_30173) (v@@9 T@PolymorphicMapType_21113) ) (! (succHeap Heap@@68 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@68) (store (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@68) o_14@@9 f_14@@9 v@@9) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@68) (store (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@68) o_14@@9 f_14@@9 v@@9) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@68) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_20564) (o_14@@10 T@Ref) (f_14@@10 T@Field_30154_30155) (v@@10 T@FrameType) ) (! (succHeap Heap@@69 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@69) (store (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@69) o_14@@10 f_14@@10 v@@10) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@69) (store (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@69) o_14@@10 f_14@@10 v@@10) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@69) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_20564) (o_14@@11 T@Ref) (f_14@@11 T@Field_13160_4669) (v@@11 Int) ) (! (succHeap Heap@@70 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@70) (store (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@70) o_14@@11 f_14@@11 v@@11) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@70) (store (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@70) o_14@@11 f_14@@11 v@@11) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@70) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_20564) (o_14@@12 T@Ref) (f_14@@12 T@Field_13160_20638) (v@@12 T@Ref) ) (! (succHeap Heap@@71 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@71) (store (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@71) o_14@@12 f_14@@12 v@@12) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@71) (store (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@71) o_14@@12 f_14@@12 v@@12) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@71) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_20564) (o_14@@13 T@Ref) (f_14@@13 T@Field_13160_53) (v@@13 Bool) ) (! (succHeap Heap@@72 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@72) (store (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@72) o_14@@13 f_14@@13 v@@13) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@72) (store (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@72) o_14@@13 f_14@@13 v@@13) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@72) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_20564) (o_14@@14 T@Ref) (f_14@@14 T@Field_26875_26880) (v@@14 T@PolymorphicMapType_21113) ) (! (succHeap Heap@@73 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@73) (store (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@73) o_14@@14 f_14@@14 v@@14) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@73) (store (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@73) o_14@@14 f_14@@14 v@@14) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@73) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_20564) (o_14@@15 T@Ref) (f_14@@15 T@Field_26891_26892) (v@@15 T@FrameType) ) (! (succHeap Heap@@74 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@74) (store (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@74) o_14@@15 f_14@@15 v@@15) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@74) (store (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@74) o_14@@15 f_14@@15 v@@15) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@74) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_20564) (o_14@@16 T@Ref) (f_14@@16 T@Field_26862_3676) (v@@16 Int) ) (! (succHeap Heap@@75 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@75) (store (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@75) o_14@@16 f_14@@16 v@@16) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@75) (store (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@75) o_14@@16 f_14@@16 v@@16) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@75) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_20564) (o_14@@17 T@Ref) (f_14@@17 T@Field_12891_20638) (v@@17 T@Ref) ) (! (succHeap Heap@@76 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@76) (store (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@76) o_14@@17 f_14@@17 v@@17) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@76) (store (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@76) o_14@@17 f_14@@17 v@@17) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@76) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_20564) (o_14@@18 T@Ref) (f_14@@18 T@Field_12891_53) (v@@18 Bool) ) (! (succHeap Heap@@77 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@77) (store (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@77) o_14@@18 f_14@@18 v@@18) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@77) (store (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@77) o_14@@18 f_14@@18 v@@18) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@77) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_20564) (o_14@@19 T@Ref) (f_14@@19 T@Field_29080_29085) (v@@19 T@PolymorphicMapType_21113) ) (! (succHeap Heap@@78 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@78) (store (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@78) o_14@@19 f_14@@19 v@@19) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@78) (store (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@78) o_14@@19 f_14@@19 v@@19) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@78) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_20564) (o_14@@20 T@Ref) (f_14@@20 T@Field_29067_29068) (v@@20 T@FrameType) ) (! (succHeap Heap@@79 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@79) (store (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@79) o_14@@20 f_14@@20 v@@20) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@79) (store (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@79) o_14@@20 f_14@@20 v@@20) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@79) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_20564) (o_14@@21 T@Ref) (f_14@@21 T@Field_13134_4669) (v@@21 Int) ) (! (succHeap Heap@@80 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@80) (store (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@80) o_14@@21 f_14@@21 v@@21) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@80) (store (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@80) o_14@@21 f_14@@21 v@@21) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@80) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_20564) (o_14@@22 T@Ref) (f_14@@22 T@Field_13134_20638) (v@@22 T@Ref) ) (! (succHeap Heap@@81 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@81) (store (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@81) o_14@@22 f_14@@22 v@@22) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@81) (store (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@81) o_14@@22 f_14@@22 v@@22) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@81) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_20564) (o_14@@23 T@Ref) (f_14@@23 T@Field_13134_53) (v@@23 Bool) ) (! (succHeap Heap@@82 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@82) (store (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@82) o_14@@23 f_14@@23 v@@23) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@82) (store (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@82) o_14@@23 f_14@@23 v@@23) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@82) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_20564) (o_14@@24 T@Ref) (f_14@@24 T@Field_13131_26880) (v@@24 T@PolymorphicMapType_21113) ) (! (succHeap Heap@@83 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@83) (store (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@83) o_14@@24 f_14@@24 v@@24) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@83) (store (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@83) o_14@@24 f_14@@24 v@@24) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@83) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_20564) (o_14@@25 T@Ref) (f_14@@25 T@Field_13131_13135) (v@@25 T@FrameType) ) (! (succHeap Heap@@84 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@84) (store (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@84) o_14@@25 f_14@@25 v@@25) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@84) (store (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@84) o_14@@25 f_14@@25 v@@25) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@84) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_20564) (o_14@@26 T@Ref) (f_14@@26 T@Field_29020_4669) (v@@26 Int) ) (! (succHeap Heap@@85 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@85) (store (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@85) o_14@@26 f_14@@26 v@@26) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@85) (store (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@85) o_14@@26 f_14@@26 v@@26) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@85) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_20564) (o_14@@27 T@Ref) (f_14@@27 T@Field_20637_20638) (v@@27 T@Ref) ) (! (succHeap Heap@@86 (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@86) (store (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@86) o_14@@27 f_14@@27 v@@27) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@86) (store (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@86) o_14@@27 f_14@@27 v@@27) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@86) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_20564) (o_14@@28 T@Ref) (f_14@@28 T@Field_20624_53) (v@@28 Bool) ) (! (succHeap Heap@@87 (PolymorphicMapType_20564 (store (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@87) o_14@@28 f_14@@28 v@@28) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20564 (store (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@87) o_14@@28 f_14@@28 v@@28) (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13131_4669#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_3676#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_4344#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13131_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13131_60367#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_4669#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13134_61508#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_12891_62653#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_4669#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13160_63794#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_13043_64939#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_4669#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_13135#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_53#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_20638#PolymorphicMapType_20564| Heap@@87) (|PolymorphicMapType_20564_27508_66116#PolymorphicMapType_20564| Heap@@87)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.331:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.332:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_14@@29 T@Ref) (f_19 T@Field_20637_20638) (Heap@@88 T@PolymorphicMapType_20564) ) (!  (=> (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@88) o_14@@29 $allocated) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@88) (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@88) o_14@@29 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_20564_12529_12530#PolymorphicMapType_20564| Heap@@88) o_14@@29 f_19))
)))
(assert (forall ((p@@6 T@Field_30154_30155) (v_1@@5 T@FrameType) (q T@Field_30154_30155) (w@@5 T@FrameType) (r T@Field_30154_30155) (u T@FrameType) ) (!  (=> (and (InsidePredicate_30154_30154 p@@6 v_1@@5 q w@@5) (InsidePredicate_30154_30154 q w@@5 r u)) (InsidePredicate_30154_30154 p@@6 v_1@@5 r u))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_30154 p@@6 v_1@@5 q w@@5) (InsidePredicate_30154_30154 q w@@5 r u))
)))
(assert (forall ((p@@7 T@Field_30154_30155) (v_1@@6 T@FrameType) (q@@0 T@Field_30154_30155) (w@@6 T@FrameType) (r@@0 T@Field_29067_29068) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_30154 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_30154_29067 q@@0 w@@6 r@@0 u@@0)) (InsidePredicate_30154_29067 p@@7 v_1@@6 r@@0 u@@0))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_30154 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_30154_29067 q@@0 w@@6 r@@0 u@@0))
)))
(assert (forall ((p@@8 T@Field_30154_30155) (v_1@@7 T@FrameType) (q@@1 T@Field_30154_30155) (w@@7 T@FrameType) (r@@1 T@Field_28299_28300) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_30154 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_30154_28266 q@@1 w@@7 r@@1 u@@1)) (InsidePredicate_30154_28266 p@@8 v_1@@7 r@@1 u@@1))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_30154 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_30154_28266 q@@1 w@@7 r@@1 u@@1))
)))
(assert (forall ((p@@9 T@Field_30154_30155) (v_1@@8 T@FrameType) (q@@2 T@Field_30154_30155) (w@@8 T@FrameType) (r@@2 T@Field_27541_27542) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_30154 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_30154_27508 q@@2 w@@8 r@@2 u@@2)) (InsidePredicate_30154_27508 p@@9 v_1@@8 r@@2 u@@2))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_30154 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_30154_27508 q@@2 w@@8 r@@2 u@@2))
)))
(assert (forall ((p@@10 T@Field_30154_30155) (v_1@@9 T@FrameType) (q@@3 T@Field_30154_30155) (w@@9 T@FrameType) (r@@3 T@Field_26891_26892) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_30154 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_30154_26862 q@@3 w@@9 r@@3 u@@3)) (InsidePredicate_30154_26862 p@@10 v_1@@9 r@@3 u@@3))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_30154 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_30154_26862 q@@3 w@@9 r@@3 u@@3))
)))
(assert (forall ((p@@11 T@Field_30154_30155) (v_1@@10 T@FrameType) (q@@4 T@Field_30154_30155) (w@@10 T@FrameType) (r@@4 T@Field_13131_13135) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_30154 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_30154_20624 q@@4 w@@10 r@@4 u@@4)) (InsidePredicate_30154_20624 p@@11 v_1@@10 r@@4 u@@4))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_30154 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_30154_20624 q@@4 w@@10 r@@4 u@@4))
)))
(assert (forall ((p@@12 T@Field_30154_30155) (v_1@@11 T@FrameType) (q@@5 T@Field_29067_29068) (w@@11 T@FrameType) (r@@5 T@Field_30154_30155) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_29067 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_29067_30154 q@@5 w@@11 r@@5 u@@5)) (InsidePredicate_30154_30154 p@@12 v_1@@11 r@@5 u@@5))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_29067 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_29067_30154 q@@5 w@@11 r@@5 u@@5))
)))
(assert (forall ((p@@13 T@Field_30154_30155) (v_1@@12 T@FrameType) (q@@6 T@Field_29067_29068) (w@@12 T@FrameType) (r@@6 T@Field_29067_29068) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_29067 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_29067_29067 q@@6 w@@12 r@@6 u@@6)) (InsidePredicate_30154_29067 p@@13 v_1@@12 r@@6 u@@6))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_29067 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_29067_29067 q@@6 w@@12 r@@6 u@@6))
)))
(assert (forall ((p@@14 T@Field_30154_30155) (v_1@@13 T@FrameType) (q@@7 T@Field_29067_29068) (w@@13 T@FrameType) (r@@7 T@Field_28299_28300) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_29067 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_29067_28266 q@@7 w@@13 r@@7 u@@7)) (InsidePredicate_30154_28266 p@@14 v_1@@13 r@@7 u@@7))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_29067 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_29067_28266 q@@7 w@@13 r@@7 u@@7))
)))
(assert (forall ((p@@15 T@Field_30154_30155) (v_1@@14 T@FrameType) (q@@8 T@Field_29067_29068) (w@@14 T@FrameType) (r@@8 T@Field_27541_27542) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_29067 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_29067_27508 q@@8 w@@14 r@@8 u@@8)) (InsidePredicate_30154_27508 p@@15 v_1@@14 r@@8 u@@8))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_29067 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_29067_27508 q@@8 w@@14 r@@8 u@@8))
)))
(assert (forall ((p@@16 T@Field_30154_30155) (v_1@@15 T@FrameType) (q@@9 T@Field_29067_29068) (w@@15 T@FrameType) (r@@9 T@Field_26891_26892) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_29067 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_29067_26862 q@@9 w@@15 r@@9 u@@9)) (InsidePredicate_30154_26862 p@@16 v_1@@15 r@@9 u@@9))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_29067 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_29067_26862 q@@9 w@@15 r@@9 u@@9))
)))
(assert (forall ((p@@17 T@Field_30154_30155) (v_1@@16 T@FrameType) (q@@10 T@Field_29067_29068) (w@@16 T@FrameType) (r@@10 T@Field_13131_13135) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_29067 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_29067_20624 q@@10 w@@16 r@@10 u@@10)) (InsidePredicate_30154_20624 p@@17 v_1@@16 r@@10 u@@10))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_29067 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_29067_20624 q@@10 w@@16 r@@10 u@@10))
)))
(assert (forall ((p@@18 T@Field_30154_30155) (v_1@@17 T@FrameType) (q@@11 T@Field_28299_28300) (w@@17 T@FrameType) (r@@11 T@Field_30154_30155) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_28266 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_28266_30154 q@@11 w@@17 r@@11 u@@11)) (InsidePredicate_30154_30154 p@@18 v_1@@17 r@@11 u@@11))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_28266 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_28266_30154 q@@11 w@@17 r@@11 u@@11))
)))
(assert (forall ((p@@19 T@Field_30154_30155) (v_1@@18 T@FrameType) (q@@12 T@Field_28299_28300) (w@@18 T@FrameType) (r@@12 T@Field_29067_29068) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_28266 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_28266_29067 q@@12 w@@18 r@@12 u@@12)) (InsidePredicate_30154_29067 p@@19 v_1@@18 r@@12 u@@12))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_28266 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_28266_29067 q@@12 w@@18 r@@12 u@@12))
)))
(assert (forall ((p@@20 T@Field_30154_30155) (v_1@@19 T@FrameType) (q@@13 T@Field_28299_28300) (w@@19 T@FrameType) (r@@13 T@Field_28299_28300) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_28266 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_28266_28266 q@@13 w@@19 r@@13 u@@13)) (InsidePredicate_30154_28266 p@@20 v_1@@19 r@@13 u@@13))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_28266 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_28266_28266 q@@13 w@@19 r@@13 u@@13))
)))
(assert (forall ((p@@21 T@Field_30154_30155) (v_1@@20 T@FrameType) (q@@14 T@Field_28299_28300) (w@@20 T@FrameType) (r@@14 T@Field_27541_27542) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_28266 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_28266_27508 q@@14 w@@20 r@@14 u@@14)) (InsidePredicate_30154_27508 p@@21 v_1@@20 r@@14 u@@14))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_28266 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_28266_27508 q@@14 w@@20 r@@14 u@@14))
)))
(assert (forall ((p@@22 T@Field_30154_30155) (v_1@@21 T@FrameType) (q@@15 T@Field_28299_28300) (w@@21 T@FrameType) (r@@15 T@Field_26891_26892) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_28266 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_28266_26862 q@@15 w@@21 r@@15 u@@15)) (InsidePredicate_30154_26862 p@@22 v_1@@21 r@@15 u@@15))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_28266 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_28266_26862 q@@15 w@@21 r@@15 u@@15))
)))
(assert (forall ((p@@23 T@Field_30154_30155) (v_1@@22 T@FrameType) (q@@16 T@Field_28299_28300) (w@@22 T@FrameType) (r@@16 T@Field_13131_13135) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_28266 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_28266_20624 q@@16 w@@22 r@@16 u@@16)) (InsidePredicate_30154_20624 p@@23 v_1@@22 r@@16 u@@16))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_28266 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_28266_20624 q@@16 w@@22 r@@16 u@@16))
)))
(assert (forall ((p@@24 T@Field_30154_30155) (v_1@@23 T@FrameType) (q@@17 T@Field_27541_27542) (w@@23 T@FrameType) (r@@17 T@Field_30154_30155) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_27508 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_27508_30154 q@@17 w@@23 r@@17 u@@17)) (InsidePredicate_30154_30154 p@@24 v_1@@23 r@@17 u@@17))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_27508 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_27508_30154 q@@17 w@@23 r@@17 u@@17))
)))
(assert (forall ((p@@25 T@Field_30154_30155) (v_1@@24 T@FrameType) (q@@18 T@Field_27541_27542) (w@@24 T@FrameType) (r@@18 T@Field_29067_29068) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_27508 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_27508_29067 q@@18 w@@24 r@@18 u@@18)) (InsidePredicate_30154_29067 p@@25 v_1@@24 r@@18 u@@18))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_27508 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_27508_29067 q@@18 w@@24 r@@18 u@@18))
)))
(assert (forall ((p@@26 T@Field_30154_30155) (v_1@@25 T@FrameType) (q@@19 T@Field_27541_27542) (w@@25 T@FrameType) (r@@19 T@Field_28299_28300) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_27508 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_27508_28266 q@@19 w@@25 r@@19 u@@19)) (InsidePredicate_30154_28266 p@@26 v_1@@25 r@@19 u@@19))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_27508 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_27508_28266 q@@19 w@@25 r@@19 u@@19))
)))
(assert (forall ((p@@27 T@Field_30154_30155) (v_1@@26 T@FrameType) (q@@20 T@Field_27541_27542) (w@@26 T@FrameType) (r@@20 T@Field_27541_27542) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_27508 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_27508_27508 q@@20 w@@26 r@@20 u@@20)) (InsidePredicate_30154_27508 p@@27 v_1@@26 r@@20 u@@20))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_27508 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_27508_27508 q@@20 w@@26 r@@20 u@@20))
)))
(assert (forall ((p@@28 T@Field_30154_30155) (v_1@@27 T@FrameType) (q@@21 T@Field_27541_27542) (w@@27 T@FrameType) (r@@21 T@Field_26891_26892) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_27508 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_27508_26862 q@@21 w@@27 r@@21 u@@21)) (InsidePredicate_30154_26862 p@@28 v_1@@27 r@@21 u@@21))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_27508 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_27508_26862 q@@21 w@@27 r@@21 u@@21))
)))
(assert (forall ((p@@29 T@Field_30154_30155) (v_1@@28 T@FrameType) (q@@22 T@Field_27541_27542) (w@@28 T@FrameType) (r@@22 T@Field_13131_13135) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_27508 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_27508_20624 q@@22 w@@28 r@@22 u@@22)) (InsidePredicate_30154_20624 p@@29 v_1@@28 r@@22 u@@22))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_27508 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_27508_20624 q@@22 w@@28 r@@22 u@@22))
)))
(assert (forall ((p@@30 T@Field_30154_30155) (v_1@@29 T@FrameType) (q@@23 T@Field_26891_26892) (w@@29 T@FrameType) (r@@23 T@Field_30154_30155) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_26862 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_26862_30154 q@@23 w@@29 r@@23 u@@23)) (InsidePredicate_30154_30154 p@@30 v_1@@29 r@@23 u@@23))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_26862 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_26862_30154 q@@23 w@@29 r@@23 u@@23))
)))
(assert (forall ((p@@31 T@Field_30154_30155) (v_1@@30 T@FrameType) (q@@24 T@Field_26891_26892) (w@@30 T@FrameType) (r@@24 T@Field_29067_29068) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_26862 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_26862_29067 q@@24 w@@30 r@@24 u@@24)) (InsidePredicate_30154_29067 p@@31 v_1@@30 r@@24 u@@24))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_26862 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_26862_29067 q@@24 w@@30 r@@24 u@@24))
)))
(assert (forall ((p@@32 T@Field_30154_30155) (v_1@@31 T@FrameType) (q@@25 T@Field_26891_26892) (w@@31 T@FrameType) (r@@25 T@Field_28299_28300) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_26862 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_26862_28266 q@@25 w@@31 r@@25 u@@25)) (InsidePredicate_30154_28266 p@@32 v_1@@31 r@@25 u@@25))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_26862 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_26862_28266 q@@25 w@@31 r@@25 u@@25))
)))
(assert (forall ((p@@33 T@Field_30154_30155) (v_1@@32 T@FrameType) (q@@26 T@Field_26891_26892) (w@@32 T@FrameType) (r@@26 T@Field_27541_27542) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_26862 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_26862_27508 q@@26 w@@32 r@@26 u@@26)) (InsidePredicate_30154_27508 p@@33 v_1@@32 r@@26 u@@26))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_26862 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_26862_27508 q@@26 w@@32 r@@26 u@@26))
)))
(assert (forall ((p@@34 T@Field_30154_30155) (v_1@@33 T@FrameType) (q@@27 T@Field_26891_26892) (w@@33 T@FrameType) (r@@27 T@Field_26891_26892) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_26862 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_26862_26862 q@@27 w@@33 r@@27 u@@27)) (InsidePredicate_30154_26862 p@@34 v_1@@33 r@@27 u@@27))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_26862 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_26862_26862 q@@27 w@@33 r@@27 u@@27))
)))
(assert (forall ((p@@35 T@Field_30154_30155) (v_1@@34 T@FrameType) (q@@28 T@Field_26891_26892) (w@@34 T@FrameType) (r@@28 T@Field_13131_13135) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_26862 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_26862_20624 q@@28 w@@34 r@@28 u@@28)) (InsidePredicate_30154_20624 p@@35 v_1@@34 r@@28 u@@28))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_26862 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_26862_20624 q@@28 w@@34 r@@28 u@@28))
)))
(assert (forall ((p@@36 T@Field_30154_30155) (v_1@@35 T@FrameType) (q@@29 T@Field_13131_13135) (w@@35 T@FrameType) (r@@29 T@Field_30154_30155) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_20624 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_20624_30154 q@@29 w@@35 r@@29 u@@29)) (InsidePredicate_30154_30154 p@@36 v_1@@35 r@@29 u@@29))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_20624 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_20624_30154 q@@29 w@@35 r@@29 u@@29))
)))
(assert (forall ((p@@37 T@Field_30154_30155) (v_1@@36 T@FrameType) (q@@30 T@Field_13131_13135) (w@@36 T@FrameType) (r@@30 T@Field_29067_29068) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_20624 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_20624_29067 q@@30 w@@36 r@@30 u@@30)) (InsidePredicate_30154_29067 p@@37 v_1@@36 r@@30 u@@30))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_20624 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_20624_29067 q@@30 w@@36 r@@30 u@@30))
)))
(assert (forall ((p@@38 T@Field_30154_30155) (v_1@@37 T@FrameType) (q@@31 T@Field_13131_13135) (w@@37 T@FrameType) (r@@31 T@Field_28299_28300) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_20624 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_20624_28266 q@@31 w@@37 r@@31 u@@31)) (InsidePredicate_30154_28266 p@@38 v_1@@37 r@@31 u@@31))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_20624 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_20624_28266 q@@31 w@@37 r@@31 u@@31))
)))
(assert (forall ((p@@39 T@Field_30154_30155) (v_1@@38 T@FrameType) (q@@32 T@Field_13131_13135) (w@@38 T@FrameType) (r@@32 T@Field_27541_27542) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_20624 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_20624_27508 q@@32 w@@38 r@@32 u@@32)) (InsidePredicate_30154_27508 p@@39 v_1@@38 r@@32 u@@32))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_20624 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_20624_27508 q@@32 w@@38 r@@32 u@@32))
)))
(assert (forall ((p@@40 T@Field_30154_30155) (v_1@@39 T@FrameType) (q@@33 T@Field_13131_13135) (w@@39 T@FrameType) (r@@33 T@Field_26891_26892) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_20624 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_20624_26862 q@@33 w@@39 r@@33 u@@33)) (InsidePredicate_30154_26862 p@@40 v_1@@39 r@@33 u@@33))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_20624 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_20624_26862 q@@33 w@@39 r@@33 u@@33))
)))
(assert (forall ((p@@41 T@Field_30154_30155) (v_1@@40 T@FrameType) (q@@34 T@Field_13131_13135) (w@@40 T@FrameType) (r@@34 T@Field_13131_13135) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_30154_20624 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_20624_20624 q@@34 w@@40 r@@34 u@@34)) (InsidePredicate_30154_20624 p@@41 v_1@@40 r@@34 u@@34))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30154_20624 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_20624_20624 q@@34 w@@40 r@@34 u@@34))
)))
(assert (forall ((p@@42 T@Field_29067_29068) (v_1@@41 T@FrameType) (q@@35 T@Field_30154_30155) (w@@41 T@FrameType) (r@@35 T@Field_30154_30155) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_30154 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_30154_30154 q@@35 w@@41 r@@35 u@@35)) (InsidePredicate_29067_30154 p@@42 v_1@@41 r@@35 u@@35))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_30154 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_30154_30154 q@@35 w@@41 r@@35 u@@35))
)))
(assert (forall ((p@@43 T@Field_29067_29068) (v_1@@42 T@FrameType) (q@@36 T@Field_30154_30155) (w@@42 T@FrameType) (r@@36 T@Field_29067_29068) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_30154 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_30154_29067 q@@36 w@@42 r@@36 u@@36)) (InsidePredicate_29067_29067 p@@43 v_1@@42 r@@36 u@@36))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_30154 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_30154_29067 q@@36 w@@42 r@@36 u@@36))
)))
(assert (forall ((p@@44 T@Field_29067_29068) (v_1@@43 T@FrameType) (q@@37 T@Field_30154_30155) (w@@43 T@FrameType) (r@@37 T@Field_28299_28300) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_30154 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_30154_28266 q@@37 w@@43 r@@37 u@@37)) (InsidePredicate_29067_28266 p@@44 v_1@@43 r@@37 u@@37))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_30154 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_30154_28266 q@@37 w@@43 r@@37 u@@37))
)))
(assert (forall ((p@@45 T@Field_29067_29068) (v_1@@44 T@FrameType) (q@@38 T@Field_30154_30155) (w@@44 T@FrameType) (r@@38 T@Field_27541_27542) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_30154 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_30154_27508 q@@38 w@@44 r@@38 u@@38)) (InsidePredicate_29067_27508 p@@45 v_1@@44 r@@38 u@@38))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_30154 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_30154_27508 q@@38 w@@44 r@@38 u@@38))
)))
(assert (forall ((p@@46 T@Field_29067_29068) (v_1@@45 T@FrameType) (q@@39 T@Field_30154_30155) (w@@45 T@FrameType) (r@@39 T@Field_26891_26892) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_30154 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_30154_26862 q@@39 w@@45 r@@39 u@@39)) (InsidePredicate_29067_26862 p@@46 v_1@@45 r@@39 u@@39))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_30154 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_30154_26862 q@@39 w@@45 r@@39 u@@39))
)))
(assert (forall ((p@@47 T@Field_29067_29068) (v_1@@46 T@FrameType) (q@@40 T@Field_30154_30155) (w@@46 T@FrameType) (r@@40 T@Field_13131_13135) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_30154 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_30154_20624 q@@40 w@@46 r@@40 u@@40)) (InsidePredicate_29067_20624 p@@47 v_1@@46 r@@40 u@@40))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_30154 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_30154_20624 q@@40 w@@46 r@@40 u@@40))
)))
(assert (forall ((p@@48 T@Field_29067_29068) (v_1@@47 T@FrameType) (q@@41 T@Field_29067_29068) (w@@47 T@FrameType) (r@@41 T@Field_30154_30155) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_29067 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_29067_30154 q@@41 w@@47 r@@41 u@@41)) (InsidePredicate_29067_30154 p@@48 v_1@@47 r@@41 u@@41))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_29067 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_29067_30154 q@@41 w@@47 r@@41 u@@41))
)))
(assert (forall ((p@@49 T@Field_29067_29068) (v_1@@48 T@FrameType) (q@@42 T@Field_29067_29068) (w@@48 T@FrameType) (r@@42 T@Field_29067_29068) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_29067 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_29067_29067 q@@42 w@@48 r@@42 u@@42)) (InsidePredicate_29067_29067 p@@49 v_1@@48 r@@42 u@@42))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_29067 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_29067_29067 q@@42 w@@48 r@@42 u@@42))
)))
(assert (forall ((p@@50 T@Field_29067_29068) (v_1@@49 T@FrameType) (q@@43 T@Field_29067_29068) (w@@49 T@FrameType) (r@@43 T@Field_28299_28300) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_29067 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_29067_28266 q@@43 w@@49 r@@43 u@@43)) (InsidePredicate_29067_28266 p@@50 v_1@@49 r@@43 u@@43))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_29067 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_29067_28266 q@@43 w@@49 r@@43 u@@43))
)))
(assert (forall ((p@@51 T@Field_29067_29068) (v_1@@50 T@FrameType) (q@@44 T@Field_29067_29068) (w@@50 T@FrameType) (r@@44 T@Field_27541_27542) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_29067 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_29067_27508 q@@44 w@@50 r@@44 u@@44)) (InsidePredicate_29067_27508 p@@51 v_1@@50 r@@44 u@@44))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_29067 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_29067_27508 q@@44 w@@50 r@@44 u@@44))
)))
(assert (forall ((p@@52 T@Field_29067_29068) (v_1@@51 T@FrameType) (q@@45 T@Field_29067_29068) (w@@51 T@FrameType) (r@@45 T@Field_26891_26892) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_29067 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_29067_26862 q@@45 w@@51 r@@45 u@@45)) (InsidePredicate_29067_26862 p@@52 v_1@@51 r@@45 u@@45))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_29067 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_29067_26862 q@@45 w@@51 r@@45 u@@45))
)))
(assert (forall ((p@@53 T@Field_29067_29068) (v_1@@52 T@FrameType) (q@@46 T@Field_29067_29068) (w@@52 T@FrameType) (r@@46 T@Field_13131_13135) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_29067 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_29067_20624 q@@46 w@@52 r@@46 u@@46)) (InsidePredicate_29067_20624 p@@53 v_1@@52 r@@46 u@@46))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_29067 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_29067_20624 q@@46 w@@52 r@@46 u@@46))
)))
(assert (forall ((p@@54 T@Field_29067_29068) (v_1@@53 T@FrameType) (q@@47 T@Field_28299_28300) (w@@53 T@FrameType) (r@@47 T@Field_30154_30155) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_28266 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_28266_30154 q@@47 w@@53 r@@47 u@@47)) (InsidePredicate_29067_30154 p@@54 v_1@@53 r@@47 u@@47))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_28266 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_28266_30154 q@@47 w@@53 r@@47 u@@47))
)))
(assert (forall ((p@@55 T@Field_29067_29068) (v_1@@54 T@FrameType) (q@@48 T@Field_28299_28300) (w@@54 T@FrameType) (r@@48 T@Field_29067_29068) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_28266 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_28266_29067 q@@48 w@@54 r@@48 u@@48)) (InsidePredicate_29067_29067 p@@55 v_1@@54 r@@48 u@@48))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_28266 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_28266_29067 q@@48 w@@54 r@@48 u@@48))
)))
(assert (forall ((p@@56 T@Field_29067_29068) (v_1@@55 T@FrameType) (q@@49 T@Field_28299_28300) (w@@55 T@FrameType) (r@@49 T@Field_28299_28300) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_28266 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_28266_28266 q@@49 w@@55 r@@49 u@@49)) (InsidePredicate_29067_28266 p@@56 v_1@@55 r@@49 u@@49))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_28266 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_28266_28266 q@@49 w@@55 r@@49 u@@49))
)))
(assert (forall ((p@@57 T@Field_29067_29068) (v_1@@56 T@FrameType) (q@@50 T@Field_28299_28300) (w@@56 T@FrameType) (r@@50 T@Field_27541_27542) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_28266 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_28266_27508 q@@50 w@@56 r@@50 u@@50)) (InsidePredicate_29067_27508 p@@57 v_1@@56 r@@50 u@@50))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_28266 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_28266_27508 q@@50 w@@56 r@@50 u@@50))
)))
(assert (forall ((p@@58 T@Field_29067_29068) (v_1@@57 T@FrameType) (q@@51 T@Field_28299_28300) (w@@57 T@FrameType) (r@@51 T@Field_26891_26892) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_28266 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_28266_26862 q@@51 w@@57 r@@51 u@@51)) (InsidePredicate_29067_26862 p@@58 v_1@@57 r@@51 u@@51))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_28266 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_28266_26862 q@@51 w@@57 r@@51 u@@51))
)))
(assert (forall ((p@@59 T@Field_29067_29068) (v_1@@58 T@FrameType) (q@@52 T@Field_28299_28300) (w@@58 T@FrameType) (r@@52 T@Field_13131_13135) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_28266 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_28266_20624 q@@52 w@@58 r@@52 u@@52)) (InsidePredicate_29067_20624 p@@59 v_1@@58 r@@52 u@@52))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_28266 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_28266_20624 q@@52 w@@58 r@@52 u@@52))
)))
(assert (forall ((p@@60 T@Field_29067_29068) (v_1@@59 T@FrameType) (q@@53 T@Field_27541_27542) (w@@59 T@FrameType) (r@@53 T@Field_30154_30155) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_27508 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_27508_30154 q@@53 w@@59 r@@53 u@@53)) (InsidePredicate_29067_30154 p@@60 v_1@@59 r@@53 u@@53))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_27508 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_27508_30154 q@@53 w@@59 r@@53 u@@53))
)))
(assert (forall ((p@@61 T@Field_29067_29068) (v_1@@60 T@FrameType) (q@@54 T@Field_27541_27542) (w@@60 T@FrameType) (r@@54 T@Field_29067_29068) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_27508 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_27508_29067 q@@54 w@@60 r@@54 u@@54)) (InsidePredicate_29067_29067 p@@61 v_1@@60 r@@54 u@@54))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_27508 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_27508_29067 q@@54 w@@60 r@@54 u@@54))
)))
(assert (forall ((p@@62 T@Field_29067_29068) (v_1@@61 T@FrameType) (q@@55 T@Field_27541_27542) (w@@61 T@FrameType) (r@@55 T@Field_28299_28300) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_27508 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_27508_28266 q@@55 w@@61 r@@55 u@@55)) (InsidePredicate_29067_28266 p@@62 v_1@@61 r@@55 u@@55))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_27508 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_27508_28266 q@@55 w@@61 r@@55 u@@55))
)))
(assert (forall ((p@@63 T@Field_29067_29068) (v_1@@62 T@FrameType) (q@@56 T@Field_27541_27542) (w@@62 T@FrameType) (r@@56 T@Field_27541_27542) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_27508 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_27508_27508 q@@56 w@@62 r@@56 u@@56)) (InsidePredicate_29067_27508 p@@63 v_1@@62 r@@56 u@@56))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_27508 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_27508_27508 q@@56 w@@62 r@@56 u@@56))
)))
(assert (forall ((p@@64 T@Field_29067_29068) (v_1@@63 T@FrameType) (q@@57 T@Field_27541_27542) (w@@63 T@FrameType) (r@@57 T@Field_26891_26892) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_27508 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_27508_26862 q@@57 w@@63 r@@57 u@@57)) (InsidePredicate_29067_26862 p@@64 v_1@@63 r@@57 u@@57))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_27508 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_27508_26862 q@@57 w@@63 r@@57 u@@57))
)))
(assert (forall ((p@@65 T@Field_29067_29068) (v_1@@64 T@FrameType) (q@@58 T@Field_27541_27542) (w@@64 T@FrameType) (r@@58 T@Field_13131_13135) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_27508 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_27508_20624 q@@58 w@@64 r@@58 u@@58)) (InsidePredicate_29067_20624 p@@65 v_1@@64 r@@58 u@@58))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_27508 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_27508_20624 q@@58 w@@64 r@@58 u@@58))
)))
(assert (forall ((p@@66 T@Field_29067_29068) (v_1@@65 T@FrameType) (q@@59 T@Field_26891_26892) (w@@65 T@FrameType) (r@@59 T@Field_30154_30155) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_26862 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_26862_30154 q@@59 w@@65 r@@59 u@@59)) (InsidePredicate_29067_30154 p@@66 v_1@@65 r@@59 u@@59))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_26862 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_26862_30154 q@@59 w@@65 r@@59 u@@59))
)))
(assert (forall ((p@@67 T@Field_29067_29068) (v_1@@66 T@FrameType) (q@@60 T@Field_26891_26892) (w@@66 T@FrameType) (r@@60 T@Field_29067_29068) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_26862 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_26862_29067 q@@60 w@@66 r@@60 u@@60)) (InsidePredicate_29067_29067 p@@67 v_1@@66 r@@60 u@@60))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_26862 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_26862_29067 q@@60 w@@66 r@@60 u@@60))
)))
(assert (forall ((p@@68 T@Field_29067_29068) (v_1@@67 T@FrameType) (q@@61 T@Field_26891_26892) (w@@67 T@FrameType) (r@@61 T@Field_28299_28300) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_26862 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_26862_28266 q@@61 w@@67 r@@61 u@@61)) (InsidePredicate_29067_28266 p@@68 v_1@@67 r@@61 u@@61))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_26862 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_26862_28266 q@@61 w@@67 r@@61 u@@61))
)))
(assert (forall ((p@@69 T@Field_29067_29068) (v_1@@68 T@FrameType) (q@@62 T@Field_26891_26892) (w@@68 T@FrameType) (r@@62 T@Field_27541_27542) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_26862 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_26862_27508 q@@62 w@@68 r@@62 u@@62)) (InsidePredicate_29067_27508 p@@69 v_1@@68 r@@62 u@@62))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_26862 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_26862_27508 q@@62 w@@68 r@@62 u@@62))
)))
(assert (forall ((p@@70 T@Field_29067_29068) (v_1@@69 T@FrameType) (q@@63 T@Field_26891_26892) (w@@69 T@FrameType) (r@@63 T@Field_26891_26892) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_26862 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_26862_26862 q@@63 w@@69 r@@63 u@@63)) (InsidePredicate_29067_26862 p@@70 v_1@@69 r@@63 u@@63))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_26862 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_26862_26862 q@@63 w@@69 r@@63 u@@63))
)))
(assert (forall ((p@@71 T@Field_29067_29068) (v_1@@70 T@FrameType) (q@@64 T@Field_26891_26892) (w@@70 T@FrameType) (r@@64 T@Field_13131_13135) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_26862 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_26862_20624 q@@64 w@@70 r@@64 u@@64)) (InsidePredicate_29067_20624 p@@71 v_1@@70 r@@64 u@@64))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_26862 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_26862_20624 q@@64 w@@70 r@@64 u@@64))
)))
(assert (forall ((p@@72 T@Field_29067_29068) (v_1@@71 T@FrameType) (q@@65 T@Field_13131_13135) (w@@71 T@FrameType) (r@@65 T@Field_30154_30155) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_20624 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_20624_30154 q@@65 w@@71 r@@65 u@@65)) (InsidePredicate_29067_30154 p@@72 v_1@@71 r@@65 u@@65))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_20624 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_20624_30154 q@@65 w@@71 r@@65 u@@65))
)))
(assert (forall ((p@@73 T@Field_29067_29068) (v_1@@72 T@FrameType) (q@@66 T@Field_13131_13135) (w@@72 T@FrameType) (r@@66 T@Field_29067_29068) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_20624 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_20624_29067 q@@66 w@@72 r@@66 u@@66)) (InsidePredicate_29067_29067 p@@73 v_1@@72 r@@66 u@@66))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_20624 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_20624_29067 q@@66 w@@72 r@@66 u@@66))
)))
(assert (forall ((p@@74 T@Field_29067_29068) (v_1@@73 T@FrameType) (q@@67 T@Field_13131_13135) (w@@73 T@FrameType) (r@@67 T@Field_28299_28300) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_20624 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_20624_28266 q@@67 w@@73 r@@67 u@@67)) (InsidePredicate_29067_28266 p@@74 v_1@@73 r@@67 u@@67))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_20624 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_20624_28266 q@@67 w@@73 r@@67 u@@67))
)))
(assert (forall ((p@@75 T@Field_29067_29068) (v_1@@74 T@FrameType) (q@@68 T@Field_13131_13135) (w@@74 T@FrameType) (r@@68 T@Field_27541_27542) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_20624 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_20624_27508 q@@68 w@@74 r@@68 u@@68)) (InsidePredicate_29067_27508 p@@75 v_1@@74 r@@68 u@@68))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_20624 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_20624_27508 q@@68 w@@74 r@@68 u@@68))
)))
(assert (forall ((p@@76 T@Field_29067_29068) (v_1@@75 T@FrameType) (q@@69 T@Field_13131_13135) (w@@75 T@FrameType) (r@@69 T@Field_26891_26892) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_20624 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_20624_26862 q@@69 w@@75 r@@69 u@@69)) (InsidePredicate_29067_26862 p@@76 v_1@@75 r@@69 u@@69))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_20624 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_20624_26862 q@@69 w@@75 r@@69 u@@69))
)))
(assert (forall ((p@@77 T@Field_29067_29068) (v_1@@76 T@FrameType) (q@@70 T@Field_13131_13135) (w@@76 T@FrameType) (r@@70 T@Field_13131_13135) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_29067_20624 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_20624_20624 q@@70 w@@76 r@@70 u@@70)) (InsidePredicate_29067_20624 p@@77 v_1@@76 r@@70 u@@70))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29067_20624 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_20624_20624 q@@70 w@@76 r@@70 u@@70))
)))
(assert (forall ((p@@78 T@Field_28299_28300) (v_1@@77 T@FrameType) (q@@71 T@Field_30154_30155) (w@@77 T@FrameType) (r@@71 T@Field_30154_30155) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_30154 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_30154_30154 q@@71 w@@77 r@@71 u@@71)) (InsidePredicate_28266_30154 p@@78 v_1@@77 r@@71 u@@71))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_30154 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_30154_30154 q@@71 w@@77 r@@71 u@@71))
)))
(assert (forall ((p@@79 T@Field_28299_28300) (v_1@@78 T@FrameType) (q@@72 T@Field_30154_30155) (w@@78 T@FrameType) (r@@72 T@Field_29067_29068) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_30154 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_30154_29067 q@@72 w@@78 r@@72 u@@72)) (InsidePredicate_28266_29067 p@@79 v_1@@78 r@@72 u@@72))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_30154 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_30154_29067 q@@72 w@@78 r@@72 u@@72))
)))
(assert (forall ((p@@80 T@Field_28299_28300) (v_1@@79 T@FrameType) (q@@73 T@Field_30154_30155) (w@@79 T@FrameType) (r@@73 T@Field_28299_28300) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_30154 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_30154_28266 q@@73 w@@79 r@@73 u@@73)) (InsidePredicate_28266_28266 p@@80 v_1@@79 r@@73 u@@73))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_30154 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_30154_28266 q@@73 w@@79 r@@73 u@@73))
)))
(assert (forall ((p@@81 T@Field_28299_28300) (v_1@@80 T@FrameType) (q@@74 T@Field_30154_30155) (w@@80 T@FrameType) (r@@74 T@Field_27541_27542) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_30154 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_30154_27508 q@@74 w@@80 r@@74 u@@74)) (InsidePredicate_28266_27508 p@@81 v_1@@80 r@@74 u@@74))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_30154 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_30154_27508 q@@74 w@@80 r@@74 u@@74))
)))
(assert (forall ((p@@82 T@Field_28299_28300) (v_1@@81 T@FrameType) (q@@75 T@Field_30154_30155) (w@@81 T@FrameType) (r@@75 T@Field_26891_26892) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_30154 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_30154_26862 q@@75 w@@81 r@@75 u@@75)) (InsidePredicate_28266_26862 p@@82 v_1@@81 r@@75 u@@75))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_30154 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_30154_26862 q@@75 w@@81 r@@75 u@@75))
)))
(assert (forall ((p@@83 T@Field_28299_28300) (v_1@@82 T@FrameType) (q@@76 T@Field_30154_30155) (w@@82 T@FrameType) (r@@76 T@Field_13131_13135) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_30154 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_30154_20624 q@@76 w@@82 r@@76 u@@76)) (InsidePredicate_28266_20624 p@@83 v_1@@82 r@@76 u@@76))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_30154 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_30154_20624 q@@76 w@@82 r@@76 u@@76))
)))
(assert (forall ((p@@84 T@Field_28299_28300) (v_1@@83 T@FrameType) (q@@77 T@Field_29067_29068) (w@@83 T@FrameType) (r@@77 T@Field_30154_30155) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_29067 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_29067_30154 q@@77 w@@83 r@@77 u@@77)) (InsidePredicate_28266_30154 p@@84 v_1@@83 r@@77 u@@77))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_29067 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_29067_30154 q@@77 w@@83 r@@77 u@@77))
)))
(assert (forall ((p@@85 T@Field_28299_28300) (v_1@@84 T@FrameType) (q@@78 T@Field_29067_29068) (w@@84 T@FrameType) (r@@78 T@Field_29067_29068) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_29067 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_29067_29067 q@@78 w@@84 r@@78 u@@78)) (InsidePredicate_28266_29067 p@@85 v_1@@84 r@@78 u@@78))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_29067 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_29067_29067 q@@78 w@@84 r@@78 u@@78))
)))
(assert (forall ((p@@86 T@Field_28299_28300) (v_1@@85 T@FrameType) (q@@79 T@Field_29067_29068) (w@@85 T@FrameType) (r@@79 T@Field_28299_28300) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_29067 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_29067_28266 q@@79 w@@85 r@@79 u@@79)) (InsidePredicate_28266_28266 p@@86 v_1@@85 r@@79 u@@79))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_29067 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_29067_28266 q@@79 w@@85 r@@79 u@@79))
)))
(assert (forall ((p@@87 T@Field_28299_28300) (v_1@@86 T@FrameType) (q@@80 T@Field_29067_29068) (w@@86 T@FrameType) (r@@80 T@Field_27541_27542) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_29067 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_29067_27508 q@@80 w@@86 r@@80 u@@80)) (InsidePredicate_28266_27508 p@@87 v_1@@86 r@@80 u@@80))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_29067 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_29067_27508 q@@80 w@@86 r@@80 u@@80))
)))
(assert (forall ((p@@88 T@Field_28299_28300) (v_1@@87 T@FrameType) (q@@81 T@Field_29067_29068) (w@@87 T@FrameType) (r@@81 T@Field_26891_26892) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_29067 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_29067_26862 q@@81 w@@87 r@@81 u@@81)) (InsidePredicate_28266_26862 p@@88 v_1@@87 r@@81 u@@81))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_29067 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_29067_26862 q@@81 w@@87 r@@81 u@@81))
)))
(assert (forall ((p@@89 T@Field_28299_28300) (v_1@@88 T@FrameType) (q@@82 T@Field_29067_29068) (w@@88 T@FrameType) (r@@82 T@Field_13131_13135) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_29067 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_29067_20624 q@@82 w@@88 r@@82 u@@82)) (InsidePredicate_28266_20624 p@@89 v_1@@88 r@@82 u@@82))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_29067 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_29067_20624 q@@82 w@@88 r@@82 u@@82))
)))
(assert (forall ((p@@90 T@Field_28299_28300) (v_1@@89 T@FrameType) (q@@83 T@Field_28299_28300) (w@@89 T@FrameType) (r@@83 T@Field_30154_30155) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_28266 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_28266_30154 q@@83 w@@89 r@@83 u@@83)) (InsidePredicate_28266_30154 p@@90 v_1@@89 r@@83 u@@83))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_28266 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_28266_30154 q@@83 w@@89 r@@83 u@@83))
)))
(assert (forall ((p@@91 T@Field_28299_28300) (v_1@@90 T@FrameType) (q@@84 T@Field_28299_28300) (w@@90 T@FrameType) (r@@84 T@Field_29067_29068) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_28266 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_28266_29067 q@@84 w@@90 r@@84 u@@84)) (InsidePredicate_28266_29067 p@@91 v_1@@90 r@@84 u@@84))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_28266 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_28266_29067 q@@84 w@@90 r@@84 u@@84))
)))
(assert (forall ((p@@92 T@Field_28299_28300) (v_1@@91 T@FrameType) (q@@85 T@Field_28299_28300) (w@@91 T@FrameType) (r@@85 T@Field_28299_28300) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_28266 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_28266_28266 q@@85 w@@91 r@@85 u@@85)) (InsidePredicate_28266_28266 p@@92 v_1@@91 r@@85 u@@85))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_28266 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_28266_28266 q@@85 w@@91 r@@85 u@@85))
)))
(assert (forall ((p@@93 T@Field_28299_28300) (v_1@@92 T@FrameType) (q@@86 T@Field_28299_28300) (w@@92 T@FrameType) (r@@86 T@Field_27541_27542) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_28266 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_28266_27508 q@@86 w@@92 r@@86 u@@86)) (InsidePredicate_28266_27508 p@@93 v_1@@92 r@@86 u@@86))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_28266 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_28266_27508 q@@86 w@@92 r@@86 u@@86))
)))
(assert (forall ((p@@94 T@Field_28299_28300) (v_1@@93 T@FrameType) (q@@87 T@Field_28299_28300) (w@@93 T@FrameType) (r@@87 T@Field_26891_26892) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_28266 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_28266_26862 q@@87 w@@93 r@@87 u@@87)) (InsidePredicate_28266_26862 p@@94 v_1@@93 r@@87 u@@87))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_28266 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_28266_26862 q@@87 w@@93 r@@87 u@@87))
)))
(assert (forall ((p@@95 T@Field_28299_28300) (v_1@@94 T@FrameType) (q@@88 T@Field_28299_28300) (w@@94 T@FrameType) (r@@88 T@Field_13131_13135) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_28266 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_28266_20624 q@@88 w@@94 r@@88 u@@88)) (InsidePredicate_28266_20624 p@@95 v_1@@94 r@@88 u@@88))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_28266 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_28266_20624 q@@88 w@@94 r@@88 u@@88))
)))
(assert (forall ((p@@96 T@Field_28299_28300) (v_1@@95 T@FrameType) (q@@89 T@Field_27541_27542) (w@@95 T@FrameType) (r@@89 T@Field_30154_30155) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_27508 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_27508_30154 q@@89 w@@95 r@@89 u@@89)) (InsidePredicate_28266_30154 p@@96 v_1@@95 r@@89 u@@89))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_27508 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_27508_30154 q@@89 w@@95 r@@89 u@@89))
)))
(assert (forall ((p@@97 T@Field_28299_28300) (v_1@@96 T@FrameType) (q@@90 T@Field_27541_27542) (w@@96 T@FrameType) (r@@90 T@Field_29067_29068) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_27508 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_27508_29067 q@@90 w@@96 r@@90 u@@90)) (InsidePredicate_28266_29067 p@@97 v_1@@96 r@@90 u@@90))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_27508 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_27508_29067 q@@90 w@@96 r@@90 u@@90))
)))
(assert (forall ((p@@98 T@Field_28299_28300) (v_1@@97 T@FrameType) (q@@91 T@Field_27541_27542) (w@@97 T@FrameType) (r@@91 T@Field_28299_28300) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_27508 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_27508_28266 q@@91 w@@97 r@@91 u@@91)) (InsidePredicate_28266_28266 p@@98 v_1@@97 r@@91 u@@91))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_27508 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_27508_28266 q@@91 w@@97 r@@91 u@@91))
)))
(assert (forall ((p@@99 T@Field_28299_28300) (v_1@@98 T@FrameType) (q@@92 T@Field_27541_27542) (w@@98 T@FrameType) (r@@92 T@Field_27541_27542) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_27508 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_27508_27508 q@@92 w@@98 r@@92 u@@92)) (InsidePredicate_28266_27508 p@@99 v_1@@98 r@@92 u@@92))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_27508 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_27508_27508 q@@92 w@@98 r@@92 u@@92))
)))
(assert (forall ((p@@100 T@Field_28299_28300) (v_1@@99 T@FrameType) (q@@93 T@Field_27541_27542) (w@@99 T@FrameType) (r@@93 T@Field_26891_26892) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_27508 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_27508_26862 q@@93 w@@99 r@@93 u@@93)) (InsidePredicate_28266_26862 p@@100 v_1@@99 r@@93 u@@93))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_27508 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_27508_26862 q@@93 w@@99 r@@93 u@@93))
)))
(assert (forall ((p@@101 T@Field_28299_28300) (v_1@@100 T@FrameType) (q@@94 T@Field_27541_27542) (w@@100 T@FrameType) (r@@94 T@Field_13131_13135) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_27508 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_27508_20624 q@@94 w@@100 r@@94 u@@94)) (InsidePredicate_28266_20624 p@@101 v_1@@100 r@@94 u@@94))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_27508 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_27508_20624 q@@94 w@@100 r@@94 u@@94))
)))
(assert (forall ((p@@102 T@Field_28299_28300) (v_1@@101 T@FrameType) (q@@95 T@Field_26891_26892) (w@@101 T@FrameType) (r@@95 T@Field_30154_30155) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_26862 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_26862_30154 q@@95 w@@101 r@@95 u@@95)) (InsidePredicate_28266_30154 p@@102 v_1@@101 r@@95 u@@95))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_26862 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_26862_30154 q@@95 w@@101 r@@95 u@@95))
)))
(assert (forall ((p@@103 T@Field_28299_28300) (v_1@@102 T@FrameType) (q@@96 T@Field_26891_26892) (w@@102 T@FrameType) (r@@96 T@Field_29067_29068) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_26862 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_26862_29067 q@@96 w@@102 r@@96 u@@96)) (InsidePredicate_28266_29067 p@@103 v_1@@102 r@@96 u@@96))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_26862 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_26862_29067 q@@96 w@@102 r@@96 u@@96))
)))
(assert (forall ((p@@104 T@Field_28299_28300) (v_1@@103 T@FrameType) (q@@97 T@Field_26891_26892) (w@@103 T@FrameType) (r@@97 T@Field_28299_28300) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_26862 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_26862_28266 q@@97 w@@103 r@@97 u@@97)) (InsidePredicate_28266_28266 p@@104 v_1@@103 r@@97 u@@97))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_26862 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_26862_28266 q@@97 w@@103 r@@97 u@@97))
)))
(assert (forall ((p@@105 T@Field_28299_28300) (v_1@@104 T@FrameType) (q@@98 T@Field_26891_26892) (w@@104 T@FrameType) (r@@98 T@Field_27541_27542) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_26862 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_26862_27508 q@@98 w@@104 r@@98 u@@98)) (InsidePredicate_28266_27508 p@@105 v_1@@104 r@@98 u@@98))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_26862 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_26862_27508 q@@98 w@@104 r@@98 u@@98))
)))
(assert (forall ((p@@106 T@Field_28299_28300) (v_1@@105 T@FrameType) (q@@99 T@Field_26891_26892) (w@@105 T@FrameType) (r@@99 T@Field_26891_26892) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_26862 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_26862_26862 q@@99 w@@105 r@@99 u@@99)) (InsidePredicate_28266_26862 p@@106 v_1@@105 r@@99 u@@99))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_26862 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_26862_26862 q@@99 w@@105 r@@99 u@@99))
)))
(assert (forall ((p@@107 T@Field_28299_28300) (v_1@@106 T@FrameType) (q@@100 T@Field_26891_26892) (w@@106 T@FrameType) (r@@100 T@Field_13131_13135) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_26862 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_26862_20624 q@@100 w@@106 r@@100 u@@100)) (InsidePredicate_28266_20624 p@@107 v_1@@106 r@@100 u@@100))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_26862 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_26862_20624 q@@100 w@@106 r@@100 u@@100))
)))
(assert (forall ((p@@108 T@Field_28299_28300) (v_1@@107 T@FrameType) (q@@101 T@Field_13131_13135) (w@@107 T@FrameType) (r@@101 T@Field_30154_30155) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_20624 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_20624_30154 q@@101 w@@107 r@@101 u@@101)) (InsidePredicate_28266_30154 p@@108 v_1@@107 r@@101 u@@101))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_20624 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_20624_30154 q@@101 w@@107 r@@101 u@@101))
)))
(assert (forall ((p@@109 T@Field_28299_28300) (v_1@@108 T@FrameType) (q@@102 T@Field_13131_13135) (w@@108 T@FrameType) (r@@102 T@Field_29067_29068) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_20624 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_20624_29067 q@@102 w@@108 r@@102 u@@102)) (InsidePredicate_28266_29067 p@@109 v_1@@108 r@@102 u@@102))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_20624 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_20624_29067 q@@102 w@@108 r@@102 u@@102))
)))
(assert (forall ((p@@110 T@Field_28299_28300) (v_1@@109 T@FrameType) (q@@103 T@Field_13131_13135) (w@@109 T@FrameType) (r@@103 T@Field_28299_28300) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_20624 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_20624_28266 q@@103 w@@109 r@@103 u@@103)) (InsidePredicate_28266_28266 p@@110 v_1@@109 r@@103 u@@103))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_20624 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_20624_28266 q@@103 w@@109 r@@103 u@@103))
)))
(assert (forall ((p@@111 T@Field_28299_28300) (v_1@@110 T@FrameType) (q@@104 T@Field_13131_13135) (w@@110 T@FrameType) (r@@104 T@Field_27541_27542) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_20624 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_20624_27508 q@@104 w@@110 r@@104 u@@104)) (InsidePredicate_28266_27508 p@@111 v_1@@110 r@@104 u@@104))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_20624 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_20624_27508 q@@104 w@@110 r@@104 u@@104))
)))
(assert (forall ((p@@112 T@Field_28299_28300) (v_1@@111 T@FrameType) (q@@105 T@Field_13131_13135) (w@@111 T@FrameType) (r@@105 T@Field_26891_26892) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_20624 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_20624_26862 q@@105 w@@111 r@@105 u@@105)) (InsidePredicate_28266_26862 p@@112 v_1@@111 r@@105 u@@105))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_20624 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_20624_26862 q@@105 w@@111 r@@105 u@@105))
)))
(assert (forall ((p@@113 T@Field_28299_28300) (v_1@@112 T@FrameType) (q@@106 T@Field_13131_13135) (w@@112 T@FrameType) (r@@106 T@Field_13131_13135) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_28266_20624 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_20624_20624 q@@106 w@@112 r@@106 u@@106)) (InsidePredicate_28266_20624 p@@113 v_1@@112 r@@106 u@@106))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28266_20624 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_20624_20624 q@@106 w@@112 r@@106 u@@106))
)))
(assert (forall ((p@@114 T@Field_27541_27542) (v_1@@113 T@FrameType) (q@@107 T@Field_30154_30155) (w@@113 T@FrameType) (r@@107 T@Field_30154_30155) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_30154 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_30154_30154 q@@107 w@@113 r@@107 u@@107)) (InsidePredicate_27508_30154 p@@114 v_1@@113 r@@107 u@@107))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_30154 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_30154_30154 q@@107 w@@113 r@@107 u@@107))
)))
(assert (forall ((p@@115 T@Field_27541_27542) (v_1@@114 T@FrameType) (q@@108 T@Field_30154_30155) (w@@114 T@FrameType) (r@@108 T@Field_29067_29068) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_30154 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_30154_29067 q@@108 w@@114 r@@108 u@@108)) (InsidePredicate_27508_29067 p@@115 v_1@@114 r@@108 u@@108))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_30154 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_30154_29067 q@@108 w@@114 r@@108 u@@108))
)))
(assert (forall ((p@@116 T@Field_27541_27542) (v_1@@115 T@FrameType) (q@@109 T@Field_30154_30155) (w@@115 T@FrameType) (r@@109 T@Field_28299_28300) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_30154 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_30154_28266 q@@109 w@@115 r@@109 u@@109)) (InsidePredicate_27508_28266 p@@116 v_1@@115 r@@109 u@@109))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_30154 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_30154_28266 q@@109 w@@115 r@@109 u@@109))
)))
(assert (forall ((p@@117 T@Field_27541_27542) (v_1@@116 T@FrameType) (q@@110 T@Field_30154_30155) (w@@116 T@FrameType) (r@@110 T@Field_27541_27542) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_30154 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_30154_27508 q@@110 w@@116 r@@110 u@@110)) (InsidePredicate_27508_27508 p@@117 v_1@@116 r@@110 u@@110))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_30154 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_30154_27508 q@@110 w@@116 r@@110 u@@110))
)))
(assert (forall ((p@@118 T@Field_27541_27542) (v_1@@117 T@FrameType) (q@@111 T@Field_30154_30155) (w@@117 T@FrameType) (r@@111 T@Field_26891_26892) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_30154 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_30154_26862 q@@111 w@@117 r@@111 u@@111)) (InsidePredicate_27508_26862 p@@118 v_1@@117 r@@111 u@@111))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_30154 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_30154_26862 q@@111 w@@117 r@@111 u@@111))
)))
(assert (forall ((p@@119 T@Field_27541_27542) (v_1@@118 T@FrameType) (q@@112 T@Field_30154_30155) (w@@118 T@FrameType) (r@@112 T@Field_13131_13135) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_30154 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_30154_20624 q@@112 w@@118 r@@112 u@@112)) (InsidePredicate_27508_20624 p@@119 v_1@@118 r@@112 u@@112))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_30154 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_30154_20624 q@@112 w@@118 r@@112 u@@112))
)))
(assert (forall ((p@@120 T@Field_27541_27542) (v_1@@119 T@FrameType) (q@@113 T@Field_29067_29068) (w@@119 T@FrameType) (r@@113 T@Field_30154_30155) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_29067 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_29067_30154 q@@113 w@@119 r@@113 u@@113)) (InsidePredicate_27508_30154 p@@120 v_1@@119 r@@113 u@@113))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_29067 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_29067_30154 q@@113 w@@119 r@@113 u@@113))
)))
(assert (forall ((p@@121 T@Field_27541_27542) (v_1@@120 T@FrameType) (q@@114 T@Field_29067_29068) (w@@120 T@FrameType) (r@@114 T@Field_29067_29068) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_29067 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_29067_29067 q@@114 w@@120 r@@114 u@@114)) (InsidePredicate_27508_29067 p@@121 v_1@@120 r@@114 u@@114))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_29067 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_29067_29067 q@@114 w@@120 r@@114 u@@114))
)))
(assert (forall ((p@@122 T@Field_27541_27542) (v_1@@121 T@FrameType) (q@@115 T@Field_29067_29068) (w@@121 T@FrameType) (r@@115 T@Field_28299_28300) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_29067 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_29067_28266 q@@115 w@@121 r@@115 u@@115)) (InsidePredicate_27508_28266 p@@122 v_1@@121 r@@115 u@@115))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_29067 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_29067_28266 q@@115 w@@121 r@@115 u@@115))
)))
(assert (forall ((p@@123 T@Field_27541_27542) (v_1@@122 T@FrameType) (q@@116 T@Field_29067_29068) (w@@122 T@FrameType) (r@@116 T@Field_27541_27542) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_29067 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_29067_27508 q@@116 w@@122 r@@116 u@@116)) (InsidePredicate_27508_27508 p@@123 v_1@@122 r@@116 u@@116))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_29067 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_29067_27508 q@@116 w@@122 r@@116 u@@116))
)))
(assert (forall ((p@@124 T@Field_27541_27542) (v_1@@123 T@FrameType) (q@@117 T@Field_29067_29068) (w@@123 T@FrameType) (r@@117 T@Field_26891_26892) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_29067 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_29067_26862 q@@117 w@@123 r@@117 u@@117)) (InsidePredicate_27508_26862 p@@124 v_1@@123 r@@117 u@@117))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_29067 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_29067_26862 q@@117 w@@123 r@@117 u@@117))
)))
(assert (forall ((p@@125 T@Field_27541_27542) (v_1@@124 T@FrameType) (q@@118 T@Field_29067_29068) (w@@124 T@FrameType) (r@@118 T@Field_13131_13135) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_29067 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_29067_20624 q@@118 w@@124 r@@118 u@@118)) (InsidePredicate_27508_20624 p@@125 v_1@@124 r@@118 u@@118))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_29067 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_29067_20624 q@@118 w@@124 r@@118 u@@118))
)))
(assert (forall ((p@@126 T@Field_27541_27542) (v_1@@125 T@FrameType) (q@@119 T@Field_28299_28300) (w@@125 T@FrameType) (r@@119 T@Field_30154_30155) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_28266 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_28266_30154 q@@119 w@@125 r@@119 u@@119)) (InsidePredicate_27508_30154 p@@126 v_1@@125 r@@119 u@@119))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_28266 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_28266_30154 q@@119 w@@125 r@@119 u@@119))
)))
(assert (forall ((p@@127 T@Field_27541_27542) (v_1@@126 T@FrameType) (q@@120 T@Field_28299_28300) (w@@126 T@FrameType) (r@@120 T@Field_29067_29068) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_28266 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_28266_29067 q@@120 w@@126 r@@120 u@@120)) (InsidePredicate_27508_29067 p@@127 v_1@@126 r@@120 u@@120))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_28266 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_28266_29067 q@@120 w@@126 r@@120 u@@120))
)))
(assert (forall ((p@@128 T@Field_27541_27542) (v_1@@127 T@FrameType) (q@@121 T@Field_28299_28300) (w@@127 T@FrameType) (r@@121 T@Field_28299_28300) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_28266 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_28266_28266 q@@121 w@@127 r@@121 u@@121)) (InsidePredicate_27508_28266 p@@128 v_1@@127 r@@121 u@@121))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_28266 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_28266_28266 q@@121 w@@127 r@@121 u@@121))
)))
(assert (forall ((p@@129 T@Field_27541_27542) (v_1@@128 T@FrameType) (q@@122 T@Field_28299_28300) (w@@128 T@FrameType) (r@@122 T@Field_27541_27542) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_28266 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_28266_27508 q@@122 w@@128 r@@122 u@@122)) (InsidePredicate_27508_27508 p@@129 v_1@@128 r@@122 u@@122))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_28266 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_28266_27508 q@@122 w@@128 r@@122 u@@122))
)))
(assert (forall ((p@@130 T@Field_27541_27542) (v_1@@129 T@FrameType) (q@@123 T@Field_28299_28300) (w@@129 T@FrameType) (r@@123 T@Field_26891_26892) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_28266 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_28266_26862 q@@123 w@@129 r@@123 u@@123)) (InsidePredicate_27508_26862 p@@130 v_1@@129 r@@123 u@@123))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_28266 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_28266_26862 q@@123 w@@129 r@@123 u@@123))
)))
(assert (forall ((p@@131 T@Field_27541_27542) (v_1@@130 T@FrameType) (q@@124 T@Field_28299_28300) (w@@130 T@FrameType) (r@@124 T@Field_13131_13135) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_28266 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_28266_20624 q@@124 w@@130 r@@124 u@@124)) (InsidePredicate_27508_20624 p@@131 v_1@@130 r@@124 u@@124))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_28266 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_28266_20624 q@@124 w@@130 r@@124 u@@124))
)))
(assert (forall ((p@@132 T@Field_27541_27542) (v_1@@131 T@FrameType) (q@@125 T@Field_27541_27542) (w@@131 T@FrameType) (r@@125 T@Field_30154_30155) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_27508 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_27508_30154 q@@125 w@@131 r@@125 u@@125)) (InsidePredicate_27508_30154 p@@132 v_1@@131 r@@125 u@@125))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_27508 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_27508_30154 q@@125 w@@131 r@@125 u@@125))
)))
(assert (forall ((p@@133 T@Field_27541_27542) (v_1@@132 T@FrameType) (q@@126 T@Field_27541_27542) (w@@132 T@FrameType) (r@@126 T@Field_29067_29068) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_27508 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_27508_29067 q@@126 w@@132 r@@126 u@@126)) (InsidePredicate_27508_29067 p@@133 v_1@@132 r@@126 u@@126))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_27508 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_27508_29067 q@@126 w@@132 r@@126 u@@126))
)))
(assert (forall ((p@@134 T@Field_27541_27542) (v_1@@133 T@FrameType) (q@@127 T@Field_27541_27542) (w@@133 T@FrameType) (r@@127 T@Field_28299_28300) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_27508 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_27508_28266 q@@127 w@@133 r@@127 u@@127)) (InsidePredicate_27508_28266 p@@134 v_1@@133 r@@127 u@@127))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_27508 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_27508_28266 q@@127 w@@133 r@@127 u@@127))
)))
(assert (forall ((p@@135 T@Field_27541_27542) (v_1@@134 T@FrameType) (q@@128 T@Field_27541_27542) (w@@134 T@FrameType) (r@@128 T@Field_27541_27542) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_27508 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_27508_27508 q@@128 w@@134 r@@128 u@@128)) (InsidePredicate_27508_27508 p@@135 v_1@@134 r@@128 u@@128))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_27508 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_27508_27508 q@@128 w@@134 r@@128 u@@128))
)))
(assert (forall ((p@@136 T@Field_27541_27542) (v_1@@135 T@FrameType) (q@@129 T@Field_27541_27542) (w@@135 T@FrameType) (r@@129 T@Field_26891_26892) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_27508 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_27508_26862 q@@129 w@@135 r@@129 u@@129)) (InsidePredicate_27508_26862 p@@136 v_1@@135 r@@129 u@@129))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_27508 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_27508_26862 q@@129 w@@135 r@@129 u@@129))
)))
(assert (forall ((p@@137 T@Field_27541_27542) (v_1@@136 T@FrameType) (q@@130 T@Field_27541_27542) (w@@136 T@FrameType) (r@@130 T@Field_13131_13135) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_27508 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_27508_20624 q@@130 w@@136 r@@130 u@@130)) (InsidePredicate_27508_20624 p@@137 v_1@@136 r@@130 u@@130))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_27508 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_27508_20624 q@@130 w@@136 r@@130 u@@130))
)))
(assert (forall ((p@@138 T@Field_27541_27542) (v_1@@137 T@FrameType) (q@@131 T@Field_26891_26892) (w@@137 T@FrameType) (r@@131 T@Field_30154_30155) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_26862 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_26862_30154 q@@131 w@@137 r@@131 u@@131)) (InsidePredicate_27508_30154 p@@138 v_1@@137 r@@131 u@@131))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_26862 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_26862_30154 q@@131 w@@137 r@@131 u@@131))
)))
(assert (forall ((p@@139 T@Field_27541_27542) (v_1@@138 T@FrameType) (q@@132 T@Field_26891_26892) (w@@138 T@FrameType) (r@@132 T@Field_29067_29068) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_26862 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_26862_29067 q@@132 w@@138 r@@132 u@@132)) (InsidePredicate_27508_29067 p@@139 v_1@@138 r@@132 u@@132))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_26862 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_26862_29067 q@@132 w@@138 r@@132 u@@132))
)))
(assert (forall ((p@@140 T@Field_27541_27542) (v_1@@139 T@FrameType) (q@@133 T@Field_26891_26892) (w@@139 T@FrameType) (r@@133 T@Field_28299_28300) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_26862 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_26862_28266 q@@133 w@@139 r@@133 u@@133)) (InsidePredicate_27508_28266 p@@140 v_1@@139 r@@133 u@@133))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_26862 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_26862_28266 q@@133 w@@139 r@@133 u@@133))
)))
(assert (forall ((p@@141 T@Field_27541_27542) (v_1@@140 T@FrameType) (q@@134 T@Field_26891_26892) (w@@140 T@FrameType) (r@@134 T@Field_27541_27542) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_26862 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_26862_27508 q@@134 w@@140 r@@134 u@@134)) (InsidePredicate_27508_27508 p@@141 v_1@@140 r@@134 u@@134))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_26862 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_26862_27508 q@@134 w@@140 r@@134 u@@134))
)))
(assert (forall ((p@@142 T@Field_27541_27542) (v_1@@141 T@FrameType) (q@@135 T@Field_26891_26892) (w@@141 T@FrameType) (r@@135 T@Field_26891_26892) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_26862 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_26862_26862 q@@135 w@@141 r@@135 u@@135)) (InsidePredicate_27508_26862 p@@142 v_1@@141 r@@135 u@@135))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_26862 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_26862_26862 q@@135 w@@141 r@@135 u@@135))
)))
(assert (forall ((p@@143 T@Field_27541_27542) (v_1@@142 T@FrameType) (q@@136 T@Field_26891_26892) (w@@142 T@FrameType) (r@@136 T@Field_13131_13135) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_26862 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_26862_20624 q@@136 w@@142 r@@136 u@@136)) (InsidePredicate_27508_20624 p@@143 v_1@@142 r@@136 u@@136))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_26862 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_26862_20624 q@@136 w@@142 r@@136 u@@136))
)))
(assert (forall ((p@@144 T@Field_27541_27542) (v_1@@143 T@FrameType) (q@@137 T@Field_13131_13135) (w@@143 T@FrameType) (r@@137 T@Field_30154_30155) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_20624 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_20624_30154 q@@137 w@@143 r@@137 u@@137)) (InsidePredicate_27508_30154 p@@144 v_1@@143 r@@137 u@@137))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_20624 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_20624_30154 q@@137 w@@143 r@@137 u@@137))
)))
(assert (forall ((p@@145 T@Field_27541_27542) (v_1@@144 T@FrameType) (q@@138 T@Field_13131_13135) (w@@144 T@FrameType) (r@@138 T@Field_29067_29068) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_20624 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_20624_29067 q@@138 w@@144 r@@138 u@@138)) (InsidePredicate_27508_29067 p@@145 v_1@@144 r@@138 u@@138))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_20624 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_20624_29067 q@@138 w@@144 r@@138 u@@138))
)))
(assert (forall ((p@@146 T@Field_27541_27542) (v_1@@145 T@FrameType) (q@@139 T@Field_13131_13135) (w@@145 T@FrameType) (r@@139 T@Field_28299_28300) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_20624 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_20624_28266 q@@139 w@@145 r@@139 u@@139)) (InsidePredicate_27508_28266 p@@146 v_1@@145 r@@139 u@@139))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_20624 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_20624_28266 q@@139 w@@145 r@@139 u@@139))
)))
(assert (forall ((p@@147 T@Field_27541_27542) (v_1@@146 T@FrameType) (q@@140 T@Field_13131_13135) (w@@146 T@FrameType) (r@@140 T@Field_27541_27542) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_20624 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_20624_27508 q@@140 w@@146 r@@140 u@@140)) (InsidePredicate_27508_27508 p@@147 v_1@@146 r@@140 u@@140))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_20624 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_20624_27508 q@@140 w@@146 r@@140 u@@140))
)))
(assert (forall ((p@@148 T@Field_27541_27542) (v_1@@147 T@FrameType) (q@@141 T@Field_13131_13135) (w@@147 T@FrameType) (r@@141 T@Field_26891_26892) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_20624 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_20624_26862 q@@141 w@@147 r@@141 u@@141)) (InsidePredicate_27508_26862 p@@148 v_1@@147 r@@141 u@@141))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_20624 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_20624_26862 q@@141 w@@147 r@@141 u@@141))
)))
(assert (forall ((p@@149 T@Field_27541_27542) (v_1@@148 T@FrameType) (q@@142 T@Field_13131_13135) (w@@148 T@FrameType) (r@@142 T@Field_13131_13135) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_27508_20624 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_20624_20624 q@@142 w@@148 r@@142 u@@142)) (InsidePredicate_27508_20624 p@@149 v_1@@148 r@@142 u@@142))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27508_20624 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_20624_20624 q@@142 w@@148 r@@142 u@@142))
)))
(assert (forall ((p@@150 T@Field_26891_26892) (v_1@@149 T@FrameType) (q@@143 T@Field_30154_30155) (w@@149 T@FrameType) (r@@143 T@Field_30154_30155) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_30154 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_30154_30154 q@@143 w@@149 r@@143 u@@143)) (InsidePredicate_26862_30154 p@@150 v_1@@149 r@@143 u@@143))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_30154 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_30154_30154 q@@143 w@@149 r@@143 u@@143))
)))
(assert (forall ((p@@151 T@Field_26891_26892) (v_1@@150 T@FrameType) (q@@144 T@Field_30154_30155) (w@@150 T@FrameType) (r@@144 T@Field_29067_29068) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_30154 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_30154_29067 q@@144 w@@150 r@@144 u@@144)) (InsidePredicate_26862_29067 p@@151 v_1@@150 r@@144 u@@144))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_30154 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_30154_29067 q@@144 w@@150 r@@144 u@@144))
)))
(assert (forall ((p@@152 T@Field_26891_26892) (v_1@@151 T@FrameType) (q@@145 T@Field_30154_30155) (w@@151 T@FrameType) (r@@145 T@Field_28299_28300) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_30154 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_30154_28266 q@@145 w@@151 r@@145 u@@145)) (InsidePredicate_26862_28266 p@@152 v_1@@151 r@@145 u@@145))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_30154 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_30154_28266 q@@145 w@@151 r@@145 u@@145))
)))
(assert (forall ((p@@153 T@Field_26891_26892) (v_1@@152 T@FrameType) (q@@146 T@Field_30154_30155) (w@@152 T@FrameType) (r@@146 T@Field_27541_27542) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_30154 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_30154_27508 q@@146 w@@152 r@@146 u@@146)) (InsidePredicate_26862_27508 p@@153 v_1@@152 r@@146 u@@146))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_30154 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_30154_27508 q@@146 w@@152 r@@146 u@@146))
)))
(assert (forall ((p@@154 T@Field_26891_26892) (v_1@@153 T@FrameType) (q@@147 T@Field_30154_30155) (w@@153 T@FrameType) (r@@147 T@Field_26891_26892) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_30154 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_30154_26862 q@@147 w@@153 r@@147 u@@147)) (InsidePredicate_26862_26862 p@@154 v_1@@153 r@@147 u@@147))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_30154 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_30154_26862 q@@147 w@@153 r@@147 u@@147))
)))
(assert (forall ((p@@155 T@Field_26891_26892) (v_1@@154 T@FrameType) (q@@148 T@Field_30154_30155) (w@@154 T@FrameType) (r@@148 T@Field_13131_13135) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_30154 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_30154_20624 q@@148 w@@154 r@@148 u@@148)) (InsidePredicate_26862_20624 p@@155 v_1@@154 r@@148 u@@148))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_30154 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_30154_20624 q@@148 w@@154 r@@148 u@@148))
)))
(assert (forall ((p@@156 T@Field_26891_26892) (v_1@@155 T@FrameType) (q@@149 T@Field_29067_29068) (w@@155 T@FrameType) (r@@149 T@Field_30154_30155) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_29067 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_29067_30154 q@@149 w@@155 r@@149 u@@149)) (InsidePredicate_26862_30154 p@@156 v_1@@155 r@@149 u@@149))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_29067 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_29067_30154 q@@149 w@@155 r@@149 u@@149))
)))
(assert (forall ((p@@157 T@Field_26891_26892) (v_1@@156 T@FrameType) (q@@150 T@Field_29067_29068) (w@@156 T@FrameType) (r@@150 T@Field_29067_29068) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_29067 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_29067_29067 q@@150 w@@156 r@@150 u@@150)) (InsidePredicate_26862_29067 p@@157 v_1@@156 r@@150 u@@150))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_29067 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_29067_29067 q@@150 w@@156 r@@150 u@@150))
)))
(assert (forall ((p@@158 T@Field_26891_26892) (v_1@@157 T@FrameType) (q@@151 T@Field_29067_29068) (w@@157 T@FrameType) (r@@151 T@Field_28299_28300) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_29067 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_29067_28266 q@@151 w@@157 r@@151 u@@151)) (InsidePredicate_26862_28266 p@@158 v_1@@157 r@@151 u@@151))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_29067 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_29067_28266 q@@151 w@@157 r@@151 u@@151))
)))
(assert (forall ((p@@159 T@Field_26891_26892) (v_1@@158 T@FrameType) (q@@152 T@Field_29067_29068) (w@@158 T@FrameType) (r@@152 T@Field_27541_27542) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_29067 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_29067_27508 q@@152 w@@158 r@@152 u@@152)) (InsidePredicate_26862_27508 p@@159 v_1@@158 r@@152 u@@152))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_29067 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_29067_27508 q@@152 w@@158 r@@152 u@@152))
)))
(assert (forall ((p@@160 T@Field_26891_26892) (v_1@@159 T@FrameType) (q@@153 T@Field_29067_29068) (w@@159 T@FrameType) (r@@153 T@Field_26891_26892) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_29067 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_29067_26862 q@@153 w@@159 r@@153 u@@153)) (InsidePredicate_26862_26862 p@@160 v_1@@159 r@@153 u@@153))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_29067 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_29067_26862 q@@153 w@@159 r@@153 u@@153))
)))
(assert (forall ((p@@161 T@Field_26891_26892) (v_1@@160 T@FrameType) (q@@154 T@Field_29067_29068) (w@@160 T@FrameType) (r@@154 T@Field_13131_13135) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_29067 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_29067_20624 q@@154 w@@160 r@@154 u@@154)) (InsidePredicate_26862_20624 p@@161 v_1@@160 r@@154 u@@154))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_29067 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_29067_20624 q@@154 w@@160 r@@154 u@@154))
)))
(assert (forall ((p@@162 T@Field_26891_26892) (v_1@@161 T@FrameType) (q@@155 T@Field_28299_28300) (w@@161 T@FrameType) (r@@155 T@Field_30154_30155) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_28266 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_28266_30154 q@@155 w@@161 r@@155 u@@155)) (InsidePredicate_26862_30154 p@@162 v_1@@161 r@@155 u@@155))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_28266 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_28266_30154 q@@155 w@@161 r@@155 u@@155))
)))
(assert (forall ((p@@163 T@Field_26891_26892) (v_1@@162 T@FrameType) (q@@156 T@Field_28299_28300) (w@@162 T@FrameType) (r@@156 T@Field_29067_29068) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_28266 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_28266_29067 q@@156 w@@162 r@@156 u@@156)) (InsidePredicate_26862_29067 p@@163 v_1@@162 r@@156 u@@156))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_28266 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_28266_29067 q@@156 w@@162 r@@156 u@@156))
)))
(assert (forall ((p@@164 T@Field_26891_26892) (v_1@@163 T@FrameType) (q@@157 T@Field_28299_28300) (w@@163 T@FrameType) (r@@157 T@Field_28299_28300) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_28266 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_28266_28266 q@@157 w@@163 r@@157 u@@157)) (InsidePredicate_26862_28266 p@@164 v_1@@163 r@@157 u@@157))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_28266 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_28266_28266 q@@157 w@@163 r@@157 u@@157))
)))
(assert (forall ((p@@165 T@Field_26891_26892) (v_1@@164 T@FrameType) (q@@158 T@Field_28299_28300) (w@@164 T@FrameType) (r@@158 T@Field_27541_27542) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_28266 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_28266_27508 q@@158 w@@164 r@@158 u@@158)) (InsidePredicate_26862_27508 p@@165 v_1@@164 r@@158 u@@158))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_28266 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_28266_27508 q@@158 w@@164 r@@158 u@@158))
)))
(assert (forall ((p@@166 T@Field_26891_26892) (v_1@@165 T@FrameType) (q@@159 T@Field_28299_28300) (w@@165 T@FrameType) (r@@159 T@Field_26891_26892) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_28266 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_28266_26862 q@@159 w@@165 r@@159 u@@159)) (InsidePredicate_26862_26862 p@@166 v_1@@165 r@@159 u@@159))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_28266 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_28266_26862 q@@159 w@@165 r@@159 u@@159))
)))
(assert (forall ((p@@167 T@Field_26891_26892) (v_1@@166 T@FrameType) (q@@160 T@Field_28299_28300) (w@@166 T@FrameType) (r@@160 T@Field_13131_13135) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_28266 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_28266_20624 q@@160 w@@166 r@@160 u@@160)) (InsidePredicate_26862_20624 p@@167 v_1@@166 r@@160 u@@160))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_28266 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_28266_20624 q@@160 w@@166 r@@160 u@@160))
)))
(assert (forall ((p@@168 T@Field_26891_26892) (v_1@@167 T@FrameType) (q@@161 T@Field_27541_27542) (w@@167 T@FrameType) (r@@161 T@Field_30154_30155) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_27508 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_27508_30154 q@@161 w@@167 r@@161 u@@161)) (InsidePredicate_26862_30154 p@@168 v_1@@167 r@@161 u@@161))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_27508 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_27508_30154 q@@161 w@@167 r@@161 u@@161))
)))
(assert (forall ((p@@169 T@Field_26891_26892) (v_1@@168 T@FrameType) (q@@162 T@Field_27541_27542) (w@@168 T@FrameType) (r@@162 T@Field_29067_29068) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_27508 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_27508_29067 q@@162 w@@168 r@@162 u@@162)) (InsidePredicate_26862_29067 p@@169 v_1@@168 r@@162 u@@162))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_27508 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_27508_29067 q@@162 w@@168 r@@162 u@@162))
)))
(assert (forall ((p@@170 T@Field_26891_26892) (v_1@@169 T@FrameType) (q@@163 T@Field_27541_27542) (w@@169 T@FrameType) (r@@163 T@Field_28299_28300) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_27508 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_27508_28266 q@@163 w@@169 r@@163 u@@163)) (InsidePredicate_26862_28266 p@@170 v_1@@169 r@@163 u@@163))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_27508 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_27508_28266 q@@163 w@@169 r@@163 u@@163))
)))
(assert (forall ((p@@171 T@Field_26891_26892) (v_1@@170 T@FrameType) (q@@164 T@Field_27541_27542) (w@@170 T@FrameType) (r@@164 T@Field_27541_27542) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_27508 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_27508_27508 q@@164 w@@170 r@@164 u@@164)) (InsidePredicate_26862_27508 p@@171 v_1@@170 r@@164 u@@164))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_27508 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_27508_27508 q@@164 w@@170 r@@164 u@@164))
)))
(assert (forall ((p@@172 T@Field_26891_26892) (v_1@@171 T@FrameType) (q@@165 T@Field_27541_27542) (w@@171 T@FrameType) (r@@165 T@Field_26891_26892) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_27508 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_27508_26862 q@@165 w@@171 r@@165 u@@165)) (InsidePredicate_26862_26862 p@@172 v_1@@171 r@@165 u@@165))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_27508 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_27508_26862 q@@165 w@@171 r@@165 u@@165))
)))
(assert (forall ((p@@173 T@Field_26891_26892) (v_1@@172 T@FrameType) (q@@166 T@Field_27541_27542) (w@@172 T@FrameType) (r@@166 T@Field_13131_13135) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_27508 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_27508_20624 q@@166 w@@172 r@@166 u@@166)) (InsidePredicate_26862_20624 p@@173 v_1@@172 r@@166 u@@166))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_27508 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_27508_20624 q@@166 w@@172 r@@166 u@@166))
)))
(assert (forall ((p@@174 T@Field_26891_26892) (v_1@@173 T@FrameType) (q@@167 T@Field_26891_26892) (w@@173 T@FrameType) (r@@167 T@Field_30154_30155) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_26862 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_26862_30154 q@@167 w@@173 r@@167 u@@167)) (InsidePredicate_26862_30154 p@@174 v_1@@173 r@@167 u@@167))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_26862 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_26862_30154 q@@167 w@@173 r@@167 u@@167))
)))
(assert (forall ((p@@175 T@Field_26891_26892) (v_1@@174 T@FrameType) (q@@168 T@Field_26891_26892) (w@@174 T@FrameType) (r@@168 T@Field_29067_29068) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_26862 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_26862_29067 q@@168 w@@174 r@@168 u@@168)) (InsidePredicate_26862_29067 p@@175 v_1@@174 r@@168 u@@168))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_26862 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_26862_29067 q@@168 w@@174 r@@168 u@@168))
)))
(assert (forall ((p@@176 T@Field_26891_26892) (v_1@@175 T@FrameType) (q@@169 T@Field_26891_26892) (w@@175 T@FrameType) (r@@169 T@Field_28299_28300) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_26862 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_26862_28266 q@@169 w@@175 r@@169 u@@169)) (InsidePredicate_26862_28266 p@@176 v_1@@175 r@@169 u@@169))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_26862 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_26862_28266 q@@169 w@@175 r@@169 u@@169))
)))
(assert (forall ((p@@177 T@Field_26891_26892) (v_1@@176 T@FrameType) (q@@170 T@Field_26891_26892) (w@@176 T@FrameType) (r@@170 T@Field_27541_27542) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_26862 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_26862_27508 q@@170 w@@176 r@@170 u@@170)) (InsidePredicate_26862_27508 p@@177 v_1@@176 r@@170 u@@170))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_26862 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_26862_27508 q@@170 w@@176 r@@170 u@@170))
)))
(assert (forall ((p@@178 T@Field_26891_26892) (v_1@@177 T@FrameType) (q@@171 T@Field_26891_26892) (w@@177 T@FrameType) (r@@171 T@Field_26891_26892) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_26862 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_26862_26862 q@@171 w@@177 r@@171 u@@171)) (InsidePredicate_26862_26862 p@@178 v_1@@177 r@@171 u@@171))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_26862 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_26862_26862 q@@171 w@@177 r@@171 u@@171))
)))
(assert (forall ((p@@179 T@Field_26891_26892) (v_1@@178 T@FrameType) (q@@172 T@Field_26891_26892) (w@@178 T@FrameType) (r@@172 T@Field_13131_13135) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_26862 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_26862_20624 q@@172 w@@178 r@@172 u@@172)) (InsidePredicate_26862_20624 p@@179 v_1@@178 r@@172 u@@172))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_26862 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_26862_20624 q@@172 w@@178 r@@172 u@@172))
)))
(assert (forall ((p@@180 T@Field_26891_26892) (v_1@@179 T@FrameType) (q@@173 T@Field_13131_13135) (w@@179 T@FrameType) (r@@173 T@Field_30154_30155) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_20624 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_20624_30154 q@@173 w@@179 r@@173 u@@173)) (InsidePredicate_26862_30154 p@@180 v_1@@179 r@@173 u@@173))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_20624 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_20624_30154 q@@173 w@@179 r@@173 u@@173))
)))
(assert (forall ((p@@181 T@Field_26891_26892) (v_1@@180 T@FrameType) (q@@174 T@Field_13131_13135) (w@@180 T@FrameType) (r@@174 T@Field_29067_29068) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_20624 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_20624_29067 q@@174 w@@180 r@@174 u@@174)) (InsidePredicate_26862_29067 p@@181 v_1@@180 r@@174 u@@174))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_20624 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_20624_29067 q@@174 w@@180 r@@174 u@@174))
)))
(assert (forall ((p@@182 T@Field_26891_26892) (v_1@@181 T@FrameType) (q@@175 T@Field_13131_13135) (w@@181 T@FrameType) (r@@175 T@Field_28299_28300) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_20624 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_20624_28266 q@@175 w@@181 r@@175 u@@175)) (InsidePredicate_26862_28266 p@@182 v_1@@181 r@@175 u@@175))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_20624 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_20624_28266 q@@175 w@@181 r@@175 u@@175))
)))
(assert (forall ((p@@183 T@Field_26891_26892) (v_1@@182 T@FrameType) (q@@176 T@Field_13131_13135) (w@@182 T@FrameType) (r@@176 T@Field_27541_27542) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_20624 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_20624_27508 q@@176 w@@182 r@@176 u@@176)) (InsidePredicate_26862_27508 p@@183 v_1@@182 r@@176 u@@176))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_20624 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_20624_27508 q@@176 w@@182 r@@176 u@@176))
)))
(assert (forall ((p@@184 T@Field_26891_26892) (v_1@@183 T@FrameType) (q@@177 T@Field_13131_13135) (w@@183 T@FrameType) (r@@177 T@Field_26891_26892) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_20624 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_20624_26862 q@@177 w@@183 r@@177 u@@177)) (InsidePredicate_26862_26862 p@@184 v_1@@183 r@@177 u@@177))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_20624 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_20624_26862 q@@177 w@@183 r@@177 u@@177))
)))
(assert (forall ((p@@185 T@Field_26891_26892) (v_1@@184 T@FrameType) (q@@178 T@Field_13131_13135) (w@@184 T@FrameType) (r@@178 T@Field_13131_13135) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_26862_20624 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_20624_20624 q@@178 w@@184 r@@178 u@@178)) (InsidePredicate_26862_20624 p@@185 v_1@@184 r@@178 u@@178))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26862_20624 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_20624_20624 q@@178 w@@184 r@@178 u@@178))
)))
(assert (forall ((p@@186 T@Field_13131_13135) (v_1@@185 T@FrameType) (q@@179 T@Field_30154_30155) (w@@185 T@FrameType) (r@@179 T@Field_30154_30155) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_30154 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_30154_30154 q@@179 w@@185 r@@179 u@@179)) (InsidePredicate_20624_30154 p@@186 v_1@@185 r@@179 u@@179))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_30154 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_30154_30154 q@@179 w@@185 r@@179 u@@179))
)))
(assert (forall ((p@@187 T@Field_13131_13135) (v_1@@186 T@FrameType) (q@@180 T@Field_30154_30155) (w@@186 T@FrameType) (r@@180 T@Field_29067_29068) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_30154 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_30154_29067 q@@180 w@@186 r@@180 u@@180)) (InsidePredicate_20624_29067 p@@187 v_1@@186 r@@180 u@@180))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_30154 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_30154_29067 q@@180 w@@186 r@@180 u@@180))
)))
(assert (forall ((p@@188 T@Field_13131_13135) (v_1@@187 T@FrameType) (q@@181 T@Field_30154_30155) (w@@187 T@FrameType) (r@@181 T@Field_28299_28300) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_30154 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_30154_28266 q@@181 w@@187 r@@181 u@@181)) (InsidePredicate_20624_28266 p@@188 v_1@@187 r@@181 u@@181))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_30154 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_30154_28266 q@@181 w@@187 r@@181 u@@181))
)))
(assert (forall ((p@@189 T@Field_13131_13135) (v_1@@188 T@FrameType) (q@@182 T@Field_30154_30155) (w@@188 T@FrameType) (r@@182 T@Field_27541_27542) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_30154 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_30154_27508 q@@182 w@@188 r@@182 u@@182)) (InsidePredicate_20624_27508 p@@189 v_1@@188 r@@182 u@@182))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_30154 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_30154_27508 q@@182 w@@188 r@@182 u@@182))
)))
(assert (forall ((p@@190 T@Field_13131_13135) (v_1@@189 T@FrameType) (q@@183 T@Field_30154_30155) (w@@189 T@FrameType) (r@@183 T@Field_26891_26892) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_30154 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_30154_26862 q@@183 w@@189 r@@183 u@@183)) (InsidePredicate_20624_26862 p@@190 v_1@@189 r@@183 u@@183))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_30154 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_30154_26862 q@@183 w@@189 r@@183 u@@183))
)))
(assert (forall ((p@@191 T@Field_13131_13135) (v_1@@190 T@FrameType) (q@@184 T@Field_30154_30155) (w@@190 T@FrameType) (r@@184 T@Field_13131_13135) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_30154 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_30154_20624 q@@184 w@@190 r@@184 u@@184)) (InsidePredicate_20624_20624 p@@191 v_1@@190 r@@184 u@@184))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_30154 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_30154_20624 q@@184 w@@190 r@@184 u@@184))
)))
(assert (forall ((p@@192 T@Field_13131_13135) (v_1@@191 T@FrameType) (q@@185 T@Field_29067_29068) (w@@191 T@FrameType) (r@@185 T@Field_30154_30155) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_29067 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_29067_30154 q@@185 w@@191 r@@185 u@@185)) (InsidePredicate_20624_30154 p@@192 v_1@@191 r@@185 u@@185))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_29067 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_29067_30154 q@@185 w@@191 r@@185 u@@185))
)))
(assert (forall ((p@@193 T@Field_13131_13135) (v_1@@192 T@FrameType) (q@@186 T@Field_29067_29068) (w@@192 T@FrameType) (r@@186 T@Field_29067_29068) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_29067 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_29067_29067 q@@186 w@@192 r@@186 u@@186)) (InsidePredicate_20624_29067 p@@193 v_1@@192 r@@186 u@@186))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_29067 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_29067_29067 q@@186 w@@192 r@@186 u@@186))
)))
(assert (forall ((p@@194 T@Field_13131_13135) (v_1@@193 T@FrameType) (q@@187 T@Field_29067_29068) (w@@193 T@FrameType) (r@@187 T@Field_28299_28300) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_29067 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_29067_28266 q@@187 w@@193 r@@187 u@@187)) (InsidePredicate_20624_28266 p@@194 v_1@@193 r@@187 u@@187))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_29067 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_29067_28266 q@@187 w@@193 r@@187 u@@187))
)))
(assert (forall ((p@@195 T@Field_13131_13135) (v_1@@194 T@FrameType) (q@@188 T@Field_29067_29068) (w@@194 T@FrameType) (r@@188 T@Field_27541_27542) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_29067 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_29067_27508 q@@188 w@@194 r@@188 u@@188)) (InsidePredicate_20624_27508 p@@195 v_1@@194 r@@188 u@@188))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_29067 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_29067_27508 q@@188 w@@194 r@@188 u@@188))
)))
(assert (forall ((p@@196 T@Field_13131_13135) (v_1@@195 T@FrameType) (q@@189 T@Field_29067_29068) (w@@195 T@FrameType) (r@@189 T@Field_26891_26892) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_29067 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_29067_26862 q@@189 w@@195 r@@189 u@@189)) (InsidePredicate_20624_26862 p@@196 v_1@@195 r@@189 u@@189))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_29067 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_29067_26862 q@@189 w@@195 r@@189 u@@189))
)))
(assert (forall ((p@@197 T@Field_13131_13135) (v_1@@196 T@FrameType) (q@@190 T@Field_29067_29068) (w@@196 T@FrameType) (r@@190 T@Field_13131_13135) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_29067 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_29067_20624 q@@190 w@@196 r@@190 u@@190)) (InsidePredicate_20624_20624 p@@197 v_1@@196 r@@190 u@@190))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_29067 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_29067_20624 q@@190 w@@196 r@@190 u@@190))
)))
(assert (forall ((p@@198 T@Field_13131_13135) (v_1@@197 T@FrameType) (q@@191 T@Field_28299_28300) (w@@197 T@FrameType) (r@@191 T@Field_30154_30155) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_28266 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_28266_30154 q@@191 w@@197 r@@191 u@@191)) (InsidePredicate_20624_30154 p@@198 v_1@@197 r@@191 u@@191))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_28266 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_28266_30154 q@@191 w@@197 r@@191 u@@191))
)))
(assert (forall ((p@@199 T@Field_13131_13135) (v_1@@198 T@FrameType) (q@@192 T@Field_28299_28300) (w@@198 T@FrameType) (r@@192 T@Field_29067_29068) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_28266 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_28266_29067 q@@192 w@@198 r@@192 u@@192)) (InsidePredicate_20624_29067 p@@199 v_1@@198 r@@192 u@@192))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_28266 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_28266_29067 q@@192 w@@198 r@@192 u@@192))
)))
(assert (forall ((p@@200 T@Field_13131_13135) (v_1@@199 T@FrameType) (q@@193 T@Field_28299_28300) (w@@199 T@FrameType) (r@@193 T@Field_28299_28300) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_28266 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_28266_28266 q@@193 w@@199 r@@193 u@@193)) (InsidePredicate_20624_28266 p@@200 v_1@@199 r@@193 u@@193))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_28266 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_28266_28266 q@@193 w@@199 r@@193 u@@193))
)))
(assert (forall ((p@@201 T@Field_13131_13135) (v_1@@200 T@FrameType) (q@@194 T@Field_28299_28300) (w@@200 T@FrameType) (r@@194 T@Field_27541_27542) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_28266 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_28266_27508 q@@194 w@@200 r@@194 u@@194)) (InsidePredicate_20624_27508 p@@201 v_1@@200 r@@194 u@@194))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_28266 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_28266_27508 q@@194 w@@200 r@@194 u@@194))
)))
(assert (forall ((p@@202 T@Field_13131_13135) (v_1@@201 T@FrameType) (q@@195 T@Field_28299_28300) (w@@201 T@FrameType) (r@@195 T@Field_26891_26892) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_28266 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_28266_26862 q@@195 w@@201 r@@195 u@@195)) (InsidePredicate_20624_26862 p@@202 v_1@@201 r@@195 u@@195))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_28266 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_28266_26862 q@@195 w@@201 r@@195 u@@195))
)))
(assert (forall ((p@@203 T@Field_13131_13135) (v_1@@202 T@FrameType) (q@@196 T@Field_28299_28300) (w@@202 T@FrameType) (r@@196 T@Field_13131_13135) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_28266 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_28266_20624 q@@196 w@@202 r@@196 u@@196)) (InsidePredicate_20624_20624 p@@203 v_1@@202 r@@196 u@@196))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_28266 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_28266_20624 q@@196 w@@202 r@@196 u@@196))
)))
(assert (forall ((p@@204 T@Field_13131_13135) (v_1@@203 T@FrameType) (q@@197 T@Field_27541_27542) (w@@203 T@FrameType) (r@@197 T@Field_30154_30155) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_27508 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_27508_30154 q@@197 w@@203 r@@197 u@@197)) (InsidePredicate_20624_30154 p@@204 v_1@@203 r@@197 u@@197))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_27508 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_27508_30154 q@@197 w@@203 r@@197 u@@197))
)))
(assert (forall ((p@@205 T@Field_13131_13135) (v_1@@204 T@FrameType) (q@@198 T@Field_27541_27542) (w@@204 T@FrameType) (r@@198 T@Field_29067_29068) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_27508 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_27508_29067 q@@198 w@@204 r@@198 u@@198)) (InsidePredicate_20624_29067 p@@205 v_1@@204 r@@198 u@@198))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_27508 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_27508_29067 q@@198 w@@204 r@@198 u@@198))
)))
(assert (forall ((p@@206 T@Field_13131_13135) (v_1@@205 T@FrameType) (q@@199 T@Field_27541_27542) (w@@205 T@FrameType) (r@@199 T@Field_28299_28300) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_27508 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_27508_28266 q@@199 w@@205 r@@199 u@@199)) (InsidePredicate_20624_28266 p@@206 v_1@@205 r@@199 u@@199))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_27508 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_27508_28266 q@@199 w@@205 r@@199 u@@199))
)))
(assert (forall ((p@@207 T@Field_13131_13135) (v_1@@206 T@FrameType) (q@@200 T@Field_27541_27542) (w@@206 T@FrameType) (r@@200 T@Field_27541_27542) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_27508 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_27508_27508 q@@200 w@@206 r@@200 u@@200)) (InsidePredicate_20624_27508 p@@207 v_1@@206 r@@200 u@@200))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_27508 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_27508_27508 q@@200 w@@206 r@@200 u@@200))
)))
(assert (forall ((p@@208 T@Field_13131_13135) (v_1@@207 T@FrameType) (q@@201 T@Field_27541_27542) (w@@207 T@FrameType) (r@@201 T@Field_26891_26892) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_27508 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_27508_26862 q@@201 w@@207 r@@201 u@@201)) (InsidePredicate_20624_26862 p@@208 v_1@@207 r@@201 u@@201))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_27508 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_27508_26862 q@@201 w@@207 r@@201 u@@201))
)))
(assert (forall ((p@@209 T@Field_13131_13135) (v_1@@208 T@FrameType) (q@@202 T@Field_27541_27542) (w@@208 T@FrameType) (r@@202 T@Field_13131_13135) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_27508 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_27508_20624 q@@202 w@@208 r@@202 u@@202)) (InsidePredicate_20624_20624 p@@209 v_1@@208 r@@202 u@@202))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_27508 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_27508_20624 q@@202 w@@208 r@@202 u@@202))
)))
(assert (forall ((p@@210 T@Field_13131_13135) (v_1@@209 T@FrameType) (q@@203 T@Field_26891_26892) (w@@209 T@FrameType) (r@@203 T@Field_30154_30155) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_26862 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_26862_30154 q@@203 w@@209 r@@203 u@@203)) (InsidePredicate_20624_30154 p@@210 v_1@@209 r@@203 u@@203))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_26862 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_26862_30154 q@@203 w@@209 r@@203 u@@203))
)))
(assert (forall ((p@@211 T@Field_13131_13135) (v_1@@210 T@FrameType) (q@@204 T@Field_26891_26892) (w@@210 T@FrameType) (r@@204 T@Field_29067_29068) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_26862 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_26862_29067 q@@204 w@@210 r@@204 u@@204)) (InsidePredicate_20624_29067 p@@211 v_1@@210 r@@204 u@@204))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_26862 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_26862_29067 q@@204 w@@210 r@@204 u@@204))
)))
(assert (forall ((p@@212 T@Field_13131_13135) (v_1@@211 T@FrameType) (q@@205 T@Field_26891_26892) (w@@211 T@FrameType) (r@@205 T@Field_28299_28300) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_26862 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_26862_28266 q@@205 w@@211 r@@205 u@@205)) (InsidePredicate_20624_28266 p@@212 v_1@@211 r@@205 u@@205))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_26862 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_26862_28266 q@@205 w@@211 r@@205 u@@205))
)))
(assert (forall ((p@@213 T@Field_13131_13135) (v_1@@212 T@FrameType) (q@@206 T@Field_26891_26892) (w@@212 T@FrameType) (r@@206 T@Field_27541_27542) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_26862 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_26862_27508 q@@206 w@@212 r@@206 u@@206)) (InsidePredicate_20624_27508 p@@213 v_1@@212 r@@206 u@@206))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_26862 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_26862_27508 q@@206 w@@212 r@@206 u@@206))
)))
(assert (forall ((p@@214 T@Field_13131_13135) (v_1@@213 T@FrameType) (q@@207 T@Field_26891_26892) (w@@213 T@FrameType) (r@@207 T@Field_26891_26892) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_26862 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_26862_26862 q@@207 w@@213 r@@207 u@@207)) (InsidePredicate_20624_26862 p@@214 v_1@@213 r@@207 u@@207))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_26862 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_26862_26862 q@@207 w@@213 r@@207 u@@207))
)))
(assert (forall ((p@@215 T@Field_13131_13135) (v_1@@214 T@FrameType) (q@@208 T@Field_26891_26892) (w@@214 T@FrameType) (r@@208 T@Field_13131_13135) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_26862 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_26862_20624 q@@208 w@@214 r@@208 u@@208)) (InsidePredicate_20624_20624 p@@215 v_1@@214 r@@208 u@@208))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_26862 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_26862_20624 q@@208 w@@214 r@@208 u@@208))
)))
(assert (forall ((p@@216 T@Field_13131_13135) (v_1@@215 T@FrameType) (q@@209 T@Field_13131_13135) (w@@215 T@FrameType) (r@@209 T@Field_30154_30155) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_20624 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_20624_30154 q@@209 w@@215 r@@209 u@@209)) (InsidePredicate_20624_30154 p@@216 v_1@@215 r@@209 u@@209))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_20624 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_20624_30154 q@@209 w@@215 r@@209 u@@209))
)))
(assert (forall ((p@@217 T@Field_13131_13135) (v_1@@216 T@FrameType) (q@@210 T@Field_13131_13135) (w@@216 T@FrameType) (r@@210 T@Field_29067_29068) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_20624 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_20624_29067 q@@210 w@@216 r@@210 u@@210)) (InsidePredicate_20624_29067 p@@217 v_1@@216 r@@210 u@@210))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_20624 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_20624_29067 q@@210 w@@216 r@@210 u@@210))
)))
(assert (forall ((p@@218 T@Field_13131_13135) (v_1@@217 T@FrameType) (q@@211 T@Field_13131_13135) (w@@217 T@FrameType) (r@@211 T@Field_28299_28300) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_20624 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_20624_28266 q@@211 w@@217 r@@211 u@@211)) (InsidePredicate_20624_28266 p@@218 v_1@@217 r@@211 u@@211))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_20624 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_20624_28266 q@@211 w@@217 r@@211 u@@211))
)))
(assert (forall ((p@@219 T@Field_13131_13135) (v_1@@218 T@FrameType) (q@@212 T@Field_13131_13135) (w@@218 T@FrameType) (r@@212 T@Field_27541_27542) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_20624 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_20624_27508 q@@212 w@@218 r@@212 u@@212)) (InsidePredicate_20624_27508 p@@219 v_1@@218 r@@212 u@@212))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_20624 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_20624_27508 q@@212 w@@218 r@@212 u@@212))
)))
(assert (forall ((p@@220 T@Field_13131_13135) (v_1@@219 T@FrameType) (q@@213 T@Field_13131_13135) (w@@219 T@FrameType) (r@@213 T@Field_26891_26892) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_20624 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_20624_26862 q@@213 w@@219 r@@213 u@@213)) (InsidePredicate_20624_26862 p@@220 v_1@@219 r@@213 u@@213))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_20624 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_20624_26862 q@@213 w@@219 r@@213 u@@213))
)))
(assert (forall ((p@@221 T@Field_13131_13135) (v_1@@220 T@FrameType) (q@@214 T@Field_13131_13135) (w@@220 T@FrameType) (r@@214 T@Field_13131_13135) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_20624_20624 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_20624_20624 q@@214 w@@220 r@@214 u@@214)) (InsidePredicate_20624_20624 p@@221 v_1@@220 r@@214 u@@214))
 :qid |stdinbpl.226:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20624_20624 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_20624_20624 q@@214 w@@220 r@@214 u@@214))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.337:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@17 T@Ref) (arg2@@17 Real) (arg3@@17 T@Ref) (arg4@@17 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) ) (!  (=> (= (wand arg1@@17 arg2@@17 arg3@@17 arg4@@17) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@17 arg1_2) (and (= arg2@@17 arg2_2) (and (= arg3@@17 arg3_2) (= arg4@@17 arg4_2)))))
 :qid |stdinbpl.459:15|
 :skolemid |88|
 :pattern ( (wand arg1@@17 arg2@@17 arg3@@17 arg4@@17) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(assert (forall ((arg1@@18 (Array T@Ref Bool)) (arg2@@18 Real) (arg3@@18 (Array T@Ref Bool)) (arg4@@18 Real) (arg1_2@@0 (Array T@Ref Bool)) (arg2_2@@0 Real) (arg3_2@@0 (Array T@Ref Bool)) (arg4_2@@0 Real) ) (!  (=> (= (wand_1 arg1@@18 arg2@@18 arg3@@18 arg4@@18) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0)) (and (= arg1@@18 arg1_2@@0) (and (= arg2@@18 arg2_2@@0) (and (= arg3@@18 arg3_2@@0) (= arg4@@18 arg4_2@@0)))))
 :qid |stdinbpl.491:15|
 :skolemid |95|
 :pattern ( (wand_1 arg1@@18 arg2@@18 arg3@@18 arg4@@18) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0))
)))
(assert (forall ((arg1@@19 (Array T@Ref Bool)) (arg2@@19 Real) (arg3@@19 (Array T@Ref Bool)) (arg4@@19 Real) (arg1_2@@1 (Array T@Ref Bool)) (arg2_2@@1 Real) (arg3_2@@1 (Array T@Ref Bool)) (arg4_2@@1 Real) ) (!  (=> (= (wand_2 arg1@@19 arg2@@19 arg3@@19 arg4@@19) (wand_2 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@1)) (and (= arg1@@19 arg1_2@@1) (and (= arg2@@19 arg2_2@@1) (and (= arg3@@19 arg3_2@@1) (= arg4@@19 arg4_2@@1)))))
 :qid |stdinbpl.523:15|
 :skolemid |102|
 :pattern ( (wand_2 arg1@@19 arg2@@19 arg3@@19 arg4@@19) (wand_2 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@1))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_20585)
(declare-fun a_17 () T@Ref)
(declare-fun Heap@@89 () T@PolymorphicMapType_20564)
(declare-fun x@@11 () T@Ref)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun y@@5 () T@Ref)
(declare-fun invRecv5 (T@Ref T@Ref) T@Ref)
(declare-fun qpRange5 (T@Ref T@Ref) Bool)
(declare-fun getPredWandId_12891_12905 (T@Field_26891_26892) Int)
(declare-fun getPredWandId_12891_53 (T@Field_12891_53) Int)
(declare-fun getPredWandId_12891_20638 (T@Field_12891_20638) Int)
(declare-fun getPredWandId_12891_139309 (T@Field_26875_26880) Int)
(declare-fun getPredWandId_12947_12905 (T@Field_27541_27542) Int)
(declare-fun getPredWandId_12947_53 (T@Field_27508_53) Int)
(declare-fun getPredWandId_12947_20638 (T@Field_27508_20638) Int)
(declare-fun getPredWandId_12947_140118 (T@Field_27523_27528) Int)
(declare-fun getPredWandId_13043_12905 (T@Field_28299_28300) Int)
(declare-fun getPredWandId_13043_53 (T@Field_13043_53) Int)
(declare-fun getPredWandId_13043_20638 (T@Field_13043_20638) Int)
(declare-fun getPredWandId_13043_140927 (T@Field_28281_28286) Int)
(declare-fun getPredWandId_13131_3676 (T@Field_29020_4669) Int)
(declare-fun getPredWandId_13131_12905 (T@Field_13131_13135) Int)
(declare-fun getPredWandId_13131_53 (T@Field_20624_53) Int)
(declare-fun getPredWandId_13131_20638 (T@Field_20637_20638) Int)
(declare-fun getPredWandId_13131_141743 (T@Field_13131_26880) Int)
(declare-fun getPredWandId_13134_3676 (T@Field_13134_4669) Int)
(declare-fun getPredWandId_13134_53 (T@Field_13134_53) Int)
(declare-fun getPredWandId_13134_20638 (T@Field_13134_20638) Int)
(declare-fun getPredWandId_13134_142552 (T@Field_29080_29085) Int)
(declare-fun getPredWandId_13160_3676 (T@Field_13160_4669) Int)
(declare-fun getPredWandId_13160_53 (T@Field_13160_53) Int)
(declare-fun getPredWandId_13160_20638 (T@Field_13160_20638) Int)
(declare-fun getPredWandId_13160_143361 (T@Field_30168_30173) Int)
(set-info :boogie-vc-id m4)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon5_correct true))
(let ((anon9_Else_correct  (=> (and (not (HasDirectPerm_13160_13161 QPMask@0 null (p2 a_17 a_17))) (= (ControlFlow 0 7) 4)) anon5_correct)))
(let ((anon9_Then_correct  (=> (HasDirectPerm_13160_13161 QPMask@0 null (p2 a_17 a_17)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_13160_13161 QPMask@0 null (p2 a_17 a_17))) (=> (HasDirectPerm_13160_13161 QPMask@0 null (p2 a_17 a_17)) (=> (= (ControlFlow 0 5) 4) anon5_correct))))))
(let ((anon8_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((a_4_2 T@Ref) ) (!  (=> (HasDirectPerm_13160_13161 QPMask@0 null (p2 a_4_2 a_4_2)) (= a_4_2 x@@11))
 :qid |stdinbpl.1385:15|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| QPMask@0) null (p2 a_4_2 a_4_2)))
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@89) null (p2 a_4_2 a_4_2)))
)))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (forall ((a_1_1 T@Ref) (a_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1 a_1_2)) (or (= a_1_1 x@@11) (= a_1_1 y@@5))) (or (= a_1_2 x@@11) (= a_1_2 y@@5))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_1_1 a_1_2)) (not (= x@@11 x@@11))))
 :qid |stdinbpl.1332:17|
 :skolemid |149|
 :pattern ( (neverTriggered5 a_1_1) (neverTriggered5 a_1_2))
))) (=> (forall ((a_1_1@@0 T@Ref) (a_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1@@0 a_1_2@@0)) (or (= a_1_1@@0 x@@11) (= a_1_1@@0 y@@5))) (or (= a_1_2@@0 x@@11) (= a_1_2@@0 y@@5))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_1_1@@0 a_1_2@@0)) (not (= x@@11 x@@11))))
 :qid |stdinbpl.1332:17|
 :skolemid |149|
 :pattern ( (neverTriggered5 a_1_1@@0) (neverTriggered5 a_1_2@@0))
)) (=> (forall ((a_1_1@@1 T@Ref) ) (!  (=> (and (or (= a_1_1@@1 x@@11) (= a_1_1@@1 y@@5)) (< NoPerm FullPerm)) (and (= (invRecv5 a_1_1@@1 x@@11) a_1_1@@1) (qpRange5 a_1_1@@1 x@@11)))
 :qid |stdinbpl.1338:22|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_20564_13160_13161#PolymorphicMapType_20564| Heap@@89) null (p2 a_1_1@@1 x@@11)))
 :pattern ( (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| ZeroMask) null (p2 a_1_1@@1 x@@11)))
)) (=> (and (forall ((x_1_1_1 T@Ref) (y_1_1_1 T@Ref) ) (!  (=> (and (and (or (= (invRecv5 x_1_1_1 y_1_1_1) x@@11) (= (invRecv5 x_1_1_1 y_1_1_1) y@@5)) (< NoPerm FullPerm)) (qpRange5 x_1_1_1 y_1_1_1)) (and (= (invRecv5 x_1_1_1 y_1_1_1) x_1_1_1) (= x@@11 y_1_1_1)))
 :qid |stdinbpl.1342:22|
 :skolemid |151|
 :pattern ( (invRecv5 x_1_1_1 y_1_1_1))
)) (forall ((x_1_1_1@@0 T@Ref) (y_1_1_1@@0 T@Ref) ) (!  (=> (and (and (or (= (invRecv5 x_1_1_1@@0 y_1_1_1@@0) x@@11) (= (invRecv5 x_1_1_1@@0 y_1_1_1@@0) y@@5)) (< NoPerm FullPerm)) (qpRange5 x_1_1_1@@0 y_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv5 x_1_1_1@@0 y_1_1_1@@0) x_1_1_1@@0) (= x@@11 y_1_1_1@@0))) (= (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| QPMask@0) null (p2 x_1_1_1@@0 y_1_1_1@@0)) (+ (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| ZeroMask) null (p2 x_1_1_1@@0 y_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.1348:22|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| QPMask@0) null (p2 x_1_1_1@@0 y_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_26862_3676) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_12891_3676 f_5))) (not (= (getPredWandId_12891_3676 f_5) 1))) (= (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_20585_12891_3676#PolymorphicMapType_20585| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_26891_26892) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_12904_12905 f_5@@0))) (not (= (getPredWandId_12891_12905 f_5@@0) 1))) (= (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_20585_12891_13135#PolymorphicMapType_20585| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_12891_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_12891_53 f_5@@1))) (not (= (getPredWandId_12891_53 f_5@@1) 1))) (= (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_20585_12891_53#PolymorphicMapType_20585| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_12891_20638) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_12891_20638 f_5@@2))) (not (= (getPredWandId_12891_20638 f_5@@2) 1))) (= (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_20585_12891_20638#PolymorphicMapType_20585| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_26875_26880) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_12891_96060 f_5@@3))) (not (= (getPredWandId_12891_139309 f_5@@3) 1))) (= (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_20585_12891_90384#PolymorphicMapType_20585| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_27508_4000) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_12947_4000 f_5@@4))) (not (= (getPredWandId_12947_4000 f_5@@4) 1))) (= (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_20585_12947_4000#PolymorphicMapType_20585| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_27541_27542) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_12968_12969 f_5@@5))) (not (= (getPredWandId_12947_12905 f_5@@5) 1))) (= (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_20585_12947_13135#PolymorphicMapType_20585| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_27508_53) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_12947_53 f_5@@6))) (not (= (getPredWandId_12947_53 f_5@@6) 1))) (= (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_20585_12947_53#PolymorphicMapType_20585| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_27508_20638) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_12947_20638 f_5@@7))) (not (= (getPredWandId_12947_20638 f_5@@7) 1))) (= (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| ZeroMask) o_4@@7 f_5@@7) (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| QPMask@0) o_4@@7 f_5@@7)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| ZeroMask) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_20585_12947_20638#PolymorphicMapType_20585| QPMask@0) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_27523_27528) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_12947_97708 f_5@@8))) (not (= (getPredWandId_12947_140118 f_5@@8) 1))) (= (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| ZeroMask) o_4@@8 f_5@@8) (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| QPMask@0) o_4@@8 f_5@@8)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| ZeroMask) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_20585_12947_91209#PolymorphicMapType_20585| QPMask@0) o_4@@8 f_5@@8))
))) (forall ((o_4@@9 T@Ref) (f_5@@9 T@Field_28266_4344) ) (!  (=> (or (or (not (= o_4@@9 null)) (not (IsPredicateField_13043_4344 f_5@@9))) (not (= (getPredWandId_13043_4344 f_5@@9) 1))) (= (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| ZeroMask) o_4@@9 f_5@@9) (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| QPMask@0) o_4@@9 f_5@@9)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| ZeroMask) o_4@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_20585_13043_4344#PolymorphicMapType_20585| QPMask@0) o_4@@9 f_5@@9))
))) (forall ((o_4@@10 T@Ref) (f_5@@10 T@Field_28299_28300) ) (!  (=> (or (or (not (= o_4@@10 null)) (not (IsPredicateField_13064_13065 f_5@@10))) (not (= (getPredWandId_13043_12905 f_5@@10) 1))) (= (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| ZeroMask) o_4@@10 f_5@@10) (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| QPMask@0) o_4@@10 f_5@@10)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| ZeroMask) o_4@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_20585_13043_13135#PolymorphicMapType_20585| QPMask@0) o_4@@10 f_5@@10))
))) (forall ((o_4@@11 T@Ref) (f_5@@11 T@Field_13043_53) ) (!  (=> (or (or (not (= o_4@@11 null)) (not (IsPredicateField_13043_53 f_5@@11))) (not (= (getPredWandId_13043_53 f_5@@11) 1))) (= (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| ZeroMask) o_4@@11 f_5@@11) (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| QPMask@0) o_4@@11 f_5@@11)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| ZeroMask) o_4@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_20585_13043_53#PolymorphicMapType_20585| QPMask@0) o_4@@11 f_5@@11))
))) (forall ((o_4@@12 T@Ref) (f_5@@12 T@Field_13043_20638) ) (!  (=> (or (or (not (= o_4@@12 null)) (not (IsPredicateField_13043_20638 f_5@@12))) (not (= (getPredWandId_13043_20638 f_5@@12) 1))) (= (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| ZeroMask) o_4@@12 f_5@@12) (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| QPMask@0) o_4@@12 f_5@@12)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| ZeroMask) o_4@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_20585_13043_20638#PolymorphicMapType_20585| QPMask@0) o_4@@12 f_5@@12))
))) (forall ((o_4@@13 T@Ref) (f_5@@13 T@Field_28281_28286) ) (!  (=> (or (or (not (= o_4@@13 null)) (not (IsPredicateField_13043_98525 f_5@@13))) (not (= (getPredWandId_13043_140927 f_5@@13) 1))) (= (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| ZeroMask) o_4@@13 f_5@@13) (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| QPMask@0) o_4@@13 f_5@@13)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| ZeroMask) o_4@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_20585_13043_91623#PolymorphicMapType_20585| QPMask@0) o_4@@13 f_5@@13))
))) (forall ((o_4@@14 T@Ref) (f_5@@14 T@Field_29020_4669) ) (!  (=> (or (or (not (= o_4@@14 null)) (not (IsPredicateField_13131_4669 f_5@@14))) (not (= (getPredWandId_13131_3676 f_5@@14) 1))) (= (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| ZeroMask) o_4@@14 f_5@@14) (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| QPMask@0) o_4@@14 f_5@@14)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| ZeroMask) o_4@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_20585_13131_4669#PolymorphicMapType_20585| QPMask@0) o_4@@14 f_5@@14))
))) (forall ((o_4@@15 T@Ref) (f_5@@15 T@Field_13131_13135) ) (!  (=> (or (or (not (= o_4@@15 null)) (not (IsPredicateField_13131_66362 f_5@@15))) (not (= (getPredWandId_13131_12905 f_5@@15) 1))) (= (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| ZeroMask) o_4@@15 f_5@@15) (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| QPMask@0) o_4@@15 f_5@@15)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| ZeroMask) o_4@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_20585_13131_13135#PolymorphicMapType_20585| QPMask@0) o_4@@15 f_5@@15))
))) (forall ((o_4@@16 T@Ref) (f_5@@16 T@Field_20624_53) ) (!  (=> (or (or (not (= o_4@@16 null)) (not (IsPredicateField_13131_53 f_5@@16))) (not (= (getPredWandId_13131_53 f_5@@16) 1))) (= (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| ZeroMask) o_4@@16 f_5@@16) (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| QPMask@0) o_4@@16 f_5@@16)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| ZeroMask) o_4@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_20585_13131_53#PolymorphicMapType_20585| QPMask@0) o_4@@16 f_5@@16))
))) (forall ((o_4@@17 T@Ref) (f_5@@17 T@Field_20637_20638) ) (!  (=> (or (or (not (= o_4@@17 null)) (not (IsPredicateField_13131_20638 f_5@@17))) (not (= (getPredWandId_13131_20638 f_5@@17) 1))) (= (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| ZeroMask) o_4@@17 f_5@@17) (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| QPMask@0) o_4@@17 f_5@@17)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| ZeroMask) o_4@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_20585_13131_20638#PolymorphicMapType_20585| QPMask@0) o_4@@17 f_5@@17))
))) (forall ((o_4@@18 T@Ref) (f_5@@18 T@Field_13131_26880) ) (!  (=> (or (or (not (= o_4@@18 null)) (not (IsPredicateField_13131_94412 f_5@@18))) (not (= (getPredWandId_13131_141743 f_5@@18) 1))) (= (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| ZeroMask) o_4@@18 f_5@@18) (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| QPMask@0) o_4@@18 f_5@@18)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| ZeroMask) o_4@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_20585_13131_89559#PolymorphicMapType_20585| QPMask@0) o_4@@18 f_5@@18))
))) (forall ((o_4@@19 T@Ref) (f_5@@19 T@Field_13134_4669) ) (!  (=> (or (or (not (= o_4@@19 null)) (not (IsPredicateField_13134_4669 f_5@@19))) (not (= (getPredWandId_13134_3676 f_5@@19) 1))) (= (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| ZeroMask) o_4@@19 f_5@@19) (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| QPMask@0) o_4@@19 f_5@@19)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| ZeroMask) o_4@@19 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_20585_13134_4669#PolymorphicMapType_20585| QPMask@0) o_4@@19 f_5@@19))
))) (forall ((o_4@@20 T@Ref) (f_5@@20 T@Field_29067_29068) ) (!  (=> (or (or (not (= o_4@@20 null)) (not (IsPredicateField_13134_13135 f_5@@20))) (not (= (getPredWandId_13134_13135 f_5@@20) 1))) (= (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| ZeroMask) o_4@@20 f_5@@20) (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| QPMask@0) o_4@@20 f_5@@20)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| ZeroMask) o_4@@20 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_20585_13134_13135#PolymorphicMapType_20585| QPMask@0) o_4@@20 f_5@@20))
))) (forall ((o_4@@21 T@Ref) (f_5@@21 T@Field_13134_53) ) (!  (=> (or (or (not (= o_4@@21 null)) (not (IsPredicateField_13134_53 f_5@@21))) (not (= (getPredWandId_13134_53 f_5@@21) 1))) (= (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| ZeroMask) o_4@@21 f_5@@21) (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| QPMask@0) o_4@@21 f_5@@21)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| ZeroMask) o_4@@21 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_20585_13134_53#PolymorphicMapType_20585| QPMask@0) o_4@@21 f_5@@21))
))) (forall ((o_4@@22 T@Ref) (f_5@@22 T@Field_13134_20638) ) (!  (=> (or (or (not (= o_4@@22 null)) (not (IsPredicateField_13134_20638 f_5@@22))) (not (= (getPredWandId_13134_20638 f_5@@22) 1))) (= (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| ZeroMask) o_4@@22 f_5@@22) (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| QPMask@0) o_4@@22 f_5@@22)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| ZeroMask) o_4@@22 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_20585_13134_20638#PolymorphicMapType_20585| QPMask@0) o_4@@22 f_5@@22))
))) (forall ((o_4@@23 T@Ref) (f_5@@23 T@Field_29080_29085) ) (!  (=> (or (or (not (= o_4@@23 null)) (not (IsPredicateField_13134_95243 f_5@@23))) (not (= (getPredWandId_13134_142552 f_5@@23) 1))) (= (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| ZeroMask) o_4@@23 f_5@@23) (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| QPMask@0) o_4@@23 f_5@@23)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| ZeroMask) o_4@@23 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_20585_13134_89970#PolymorphicMapType_20585| QPMask@0) o_4@@23 f_5@@23))
))) (forall ((o_4@@24 T@Ref) (f_5@@24 T@Field_13160_4669) ) (!  (=> (or (or (not (= o_4@@24 null)) (not (IsPredicateField_13160_4669 f_5@@24))) (not (= (getPredWandId_13160_3676 f_5@@24) 1))) (= (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| ZeroMask) o_4@@24 f_5@@24) (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| QPMask@0) o_4@@24 f_5@@24)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| ZeroMask) o_4@@24 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_20585_13160_4669#PolymorphicMapType_20585| QPMask@0) o_4@@24 f_5@@24))
))) (forall ((o_4@@25 T@Ref) (f_5@@25 T@Field_30154_30155) ) (!  (=> (or (or (not (= o_4@@25 null)) (not (IsPredicateField_13160_13161 f_5@@25))) (not (= (getPredWandId_13160_13161 f_5@@25) 1))) (= (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| ZeroMask) o_4@@25 f_5@@25) (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| QPMask@0) o_4@@25 f_5@@25)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| ZeroMask) o_4@@25 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| QPMask@0) o_4@@25 f_5@@25))
))) (forall ((o_4@@26 T@Ref) (f_5@@26 T@Field_13160_53) ) (!  (=> (or (or (not (= o_4@@26 null)) (not (IsPredicateField_13160_53 f_5@@26))) (not (= (getPredWandId_13160_53 f_5@@26) 1))) (= (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| ZeroMask) o_4@@26 f_5@@26) (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| QPMask@0) o_4@@26 f_5@@26)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| ZeroMask) o_4@@26 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_20585_13160_53#PolymorphicMapType_20585| QPMask@0) o_4@@26 f_5@@26))
))) (forall ((o_4@@27 T@Ref) (f_5@@27 T@Field_13160_20638) ) (!  (=> (or (or (not (= o_4@@27 null)) (not (IsPredicateField_13160_20638 f_5@@27))) (not (= (getPredWandId_13160_20638 f_5@@27) 1))) (= (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| ZeroMask) o_4@@27 f_5@@27) (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| QPMask@0) o_4@@27 f_5@@27)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| ZeroMask) o_4@@27 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_20585_13160_20638#PolymorphicMapType_20585| QPMask@0) o_4@@27 f_5@@27))
))) (forall ((o_4@@28 T@Ref) (f_5@@28 T@Field_30168_30173) ) (!  (=> (or (or (not (= o_4@@28 null)) (not (IsPredicateField_13160_96891 f_5@@28))) (not (= (getPredWandId_13160_143361 f_5@@28) 1))) (= (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| ZeroMask) o_4@@28 f_5@@28) (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| QPMask@0) o_4@@28 f_5@@28)))
 :qid |stdinbpl.1354:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| ZeroMask) o_4@@28 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_20585_13160_90795#PolymorphicMapType_20585| QPMask@0) o_4@@28 f_5@@28))
))) (forall ((x_1_1_1@@1 T@Ref) (y_1_1_1@@1 T@Ref) ) (!  (=> (not (and (and (or (= (invRecv5 x_1_1_1@@1 y_1_1_1@@1) x@@11) (= (invRecv5 x_1_1_1@@1 y_1_1_1@@1) y@@5)) (< NoPerm FullPerm)) (qpRange5 x_1_1_1@@1 y_1_1_1@@1))) (= (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| QPMask@0) null (p2 x_1_1_1@@1 y_1_1_1@@1)) (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| ZeroMask) null (p2 x_1_1_1@@1 y_1_1_1@@1))))
 :qid |stdinbpl.1358:22|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_20585_13160_13161#PolymorphicMapType_20585| QPMask@0) null (p2 x_1_1_1@@1 y_1_1_1@@1)))
))) (and (state Heap@@89 QPMask@0) (state Heap@@89 QPMask@0))) (and (and (state Heap@@89 QPMask@0) (not (= x@@11 y@@5))) (and (state Heap@@89 QPMask@0) (state Heap@@89 QPMask@0)))) (and (and (=> (= (ControlFlow 0 8) 3) anon8_Else_correct) (=> (= (ControlFlow 0 8) 5) anon9_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct)))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@89 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@89) x@@11 $allocated) (select (|PolymorphicMapType_20564_12526_53#PolymorphicMapType_20564| Heap@@89) y@@5 $allocated))) (and (=> (= (ControlFlow 0 10) 1) anon7_Then_correct) (=> (= (ControlFlow 0 10) 8) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid