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
(declare-sort T@Field_12234_53 0)
(declare-sort T@Field_12247_12248 0)
(declare-sort T@Field_17082_1867 0)
(declare-sort T@Field_15573_15578 0)
(declare-sort T@Field_17129_17130 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17142_17147 0)
(declare-sort T@Field_16127_16132 0)
(declare-sort T@Field_6532_53 0)
(declare-sort T@Field_6532_12248 0)
(declare-sort T@Field_6532_1199 0)
(declare-sort T@Field_12234_6533 0)
(declare-sort T@Field_12234_15578 0)
(declare-sort T@Field_15588_15589 0)
(declare-sort T@Field_15561_53 0)
(declare-sort T@Field_15561_12248 0)
(declare-sort T@Field_15561_1199 0)
(declare-sort T@Field_16141_16142 0)
(declare-sort T@Field_16116_53 0)
(declare-sort T@Field_16116_12248 0)
(declare-sort T@Field_16116_1460 0)
(declare-sort T@Field_16612_16613 0)
(declare-sort T@Field_16585_53 0)
(declare-sort T@Field_16585_12248 0)
(declare-sort T@Field_16585_1668 0)
(declare-sort T@Field_16597_16602 0)
(declare-datatypes ((T@PolymorphicMapType_12195 0)) (((PolymorphicMapType_12195 (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| (Array T@Ref T@Field_17082_1867 Real)) (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| (Array T@Ref T@Field_15561_1199 Real)) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| (Array T@Ref T@Field_16116_1460 Real)) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_17129_17130 Real)) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| (Array T@Ref T@Field_16585_1668 Real)) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_12234_6533 Real)) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| (Array T@Ref T@Field_12234_53 Real)) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_12247_12248 Real)) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| (Array T@Ref T@Field_12234_15578 Real)) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_15588_15589 Real)) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| (Array T@Ref T@Field_15561_53 Real)) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_15561_12248 Real)) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| (Array T@Ref T@Field_15573_15578 Real)) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_16141_16142 Real)) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| (Array T@Ref T@Field_16116_53 Real)) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_16116_12248 Real)) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| (Array T@Ref T@Field_16127_16132 Real)) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| (Array T@Ref T@Field_6532_1199 Real)) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| (Array T@Ref T@Field_6532_53 Real)) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_6532_12248 Real)) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| (Array T@Ref T@Field_17142_17147 Real)) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_16612_16613 Real)) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| (Array T@Ref T@Field_16585_53 Real)) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_16585_12248 Real)) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| (Array T@Ref T@Field_16597_16602 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12723 0)) (((PolymorphicMapType_12723 (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_17082_1867 Bool)) (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (Array T@Ref T@Field_12234_53 Bool)) (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_12247_12248 Bool)) (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (Array T@Ref T@Field_12234_15578 Bool)) (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_12234_6533 Bool)) (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_15561_1199 Bool)) (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (Array T@Ref T@Field_15561_53 Bool)) (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_15561_12248 Bool)) (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (Array T@Ref T@Field_15573_15578 Bool)) (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_15588_15589 Bool)) (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_16116_1460 Bool)) (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (Array T@Ref T@Field_16116_53 Bool)) (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_16116_12248 Bool)) (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (Array T@Ref T@Field_16127_16132 Bool)) (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_16141_16142 Bool)) (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_16585_1668 Bool)) (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (Array T@Ref T@Field_16585_53 Bool)) (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_16585_12248 Bool)) (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (Array T@Ref T@Field_16597_16602 Bool)) (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_16612_16613 Bool)) (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_6532_1199 Bool)) (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (Array T@Ref T@Field_6532_53 Bool)) (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_6532_12248 Bool)) (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (Array T@Ref T@Field_17142_17147 Bool)) (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_17129_17130 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12174 0)) (((PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| (Array T@Ref T@Field_12234_53 Bool)) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| (Array T@Ref T@Field_12247_12248 T@Ref)) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| (Array T@Ref T@Field_17082_1867 Int)) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| (Array T@Ref T@Field_15573_15578 T@PolymorphicMapType_12723)) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_17129_17130 T@FrameType)) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| (Array T@Ref T@Field_17142_17147 T@PolymorphicMapType_12723)) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| (Array T@Ref T@Field_16127_16132 T@PolymorphicMapType_12723)) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| (Array T@Ref T@Field_6532_53 Bool)) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| (Array T@Ref T@Field_6532_12248 T@Ref)) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| (Array T@Ref T@Field_6532_1199 Int)) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_12234_6533 T@FrameType)) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| (Array T@Ref T@Field_12234_15578 T@PolymorphicMapType_12723)) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_15588_15589 T@FrameType)) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| (Array T@Ref T@Field_15561_53 Bool)) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| (Array T@Ref T@Field_15561_12248 T@Ref)) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| (Array T@Ref T@Field_15561_1199 Int)) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_16141_16142 T@FrameType)) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| (Array T@Ref T@Field_16116_53 Bool)) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| (Array T@Ref T@Field_16116_12248 T@Ref)) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| (Array T@Ref T@Field_16116_1460 Int)) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_16612_16613 T@FrameType)) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| (Array T@Ref T@Field_16585_53 Bool)) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| (Array T@Ref T@Field_16585_12248 T@Ref)) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| (Array T@Ref T@Field_16585_1668 Int)) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| (Array T@Ref T@Field_16597_16602 T@PolymorphicMapType_12723)) ) ) ))
(declare-fun $allocated () T@Field_12234_53)
(declare-fun f_7 () T@Field_17082_1867)
(declare-fun succHeap (T@PolymorphicMapType_12174 T@PolymorphicMapType_12174) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12174 T@PolymorphicMapType_12174) Bool)
(declare-fun state (T@PolymorphicMapType_12174 T@PolymorphicMapType_12195) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12195) Bool)
(declare-fun wand (Bool T@Ref Real) T@Field_15561_1199)
(declare-fun IsWandField_6474_1199 (T@Field_15561_1199) Bool)
(declare-fun |wand#ft| (Bool T@Ref Real) T@Field_15588_15589)
(declare-fun IsWandField_6483_6484 (T@Field_15588_15589) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12723)
(declare-fun getPredWandId_6474_1199 (T@Field_15561_1199) Int)
(declare-fun IsPredicateField_6474_1199 (T@Field_15561_1199) Bool)
(declare-fun IsPredicateField_6483_6484 (T@Field_15588_15589) Bool)
(declare-fun wand_1 (Bool Bool) T@Field_16116_1460)
(declare-fun IsWandField_6502_1460 (T@Field_16116_1460) Bool)
(declare-fun |wand_1#ft| (Bool Bool) T@Field_16141_16142)
(declare-fun IsWandField_6507_6508 (T@Field_16141_16142) Bool)
(declare-fun wand_2 (T@Ref Bool) T@Field_16585_1668)
(declare-fun IsWandField_6511_1668 (T@Field_16585_1668) Bool)
(declare-fun |wand_2#ft| (T@Ref Bool) T@Field_16612_16613)
(declare-fun IsWandField_6518_6519 (T@Field_16612_16613) Bool)
(declare-fun IsPredicateField_6502_1460 (T@Field_16116_1460) Bool)
(declare-fun IsPredicateField_6507_6508 (T@Field_16141_16142) Bool)
(declare-fun IsPredicateField_6511_1668 (T@Field_16585_1668) Bool)
(declare-fun IsPredicateField_6518_6519 (T@Field_16612_16613) Bool)
(declare-fun P (T@Ref) T@Field_17129_17130)
(declare-fun IsPredicateField_6532_6533 (T@Field_17129_17130) Bool)
(declare-fun |P#trigger_6532| (T@PolymorphicMapType_12174 T@Field_17129_17130) Bool)
(declare-fun |P#everUsed_6532| (T@Field_17129_17130) Bool)
(declare-fun WandMaskField_6483 (T@Field_15588_15589) T@Field_15573_15578)
(declare-fun |wand#sm| (Bool T@Ref Real) T@Field_15573_15578)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12174 T@PolymorphicMapType_12174 T@PolymorphicMapType_12195) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16585 (T@Field_16612_16613) T@Field_16597_16602)
(declare-fun HasDirectPerm_16585_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_16612_16613) Bool)
(declare-fun PredicateMaskField_16116 (T@Field_16141_16142) T@Field_16127_16132)
(declare-fun HasDirectPerm_16116_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_16141_16142) Bool)
(declare-fun PredicateMaskField_15561 (T@Field_15588_15589) T@Field_15573_15578)
(declare-fun HasDirectPerm_15561_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_15588_15589) Bool)
(declare-fun IsPredicateField_12234_44340 (T@Field_12234_6533) Bool)
(declare-fun PredicateMaskField_12234 (T@Field_12234_6533) T@Field_12234_15578)
(declare-fun HasDirectPerm_12234_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_12234_6533) Bool)
(declare-fun PredicateMaskField_6532 (T@Field_17129_17130) T@Field_17142_17147)
(declare-fun HasDirectPerm_6532_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_17129_17130) Bool)
(declare-fun WandMaskField_6518 (T@Field_16612_16613) T@Field_16597_16602)
(declare-fun WandMaskField_6507 (T@Field_16141_16142) T@Field_16127_16132)
(declare-fun IsWandField_12234_52737 (T@Field_12234_6533) Bool)
(declare-fun WandMaskField_12234 (T@Field_12234_6533) T@Field_12234_15578)
(declare-fun IsWandField_6532_52380 (T@Field_17129_17130) Bool)
(declare-fun WandMaskField_6532 (T@Field_17129_17130) T@Field_17142_17147)
(declare-fun |P#sm| (T@Ref) T@Field_17142_17147)
(declare-fun dummyHeap () T@PolymorphicMapType_12174)
(declare-fun ZeroMask () T@PolymorphicMapType_12195)
(declare-fun InsidePredicate_17129_17129 (T@Field_17129_17130 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_16585 (T@Field_16612_16613 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_16116 (T@Field_16141_16142 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_15561 (T@Field_15588_15589 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_12234 (T@Field_12234_6533 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun IsPredicateField_6529_1867 (T@Field_17082_1867) Bool)
(declare-fun IsWandField_6529_1867 (T@Field_17082_1867) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6511_70769 (T@Field_16597_16602) Bool)
(declare-fun IsWandField_6511_70785 (T@Field_16597_16602) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6511_12248 (T@Field_16585_12248) Bool)
(declare-fun IsWandField_6511_12248 (T@Field_16585_12248) Bool)
(declare-fun IsPredicateField_6511_53 (T@Field_16585_53) Bool)
(declare-fun IsWandField_6511_53 (T@Field_16585_53) Bool)
(declare-fun IsPredicateField_6532_69952 (T@Field_17142_17147) Bool)
(declare-fun IsWandField_6532_69968 (T@Field_17142_17147) Bool)
(declare-fun IsPredicateField_6532_12248 (T@Field_6532_12248) Bool)
(declare-fun IsWandField_6532_12248 (T@Field_6532_12248) Bool)
(declare-fun IsPredicateField_6532_53 (T@Field_6532_53) Bool)
(declare-fun IsWandField_6532_53 (T@Field_6532_53) Bool)
(declare-fun IsPredicateField_6532_1867 (T@Field_6532_1199) Bool)
(declare-fun IsWandField_6532_1867 (T@Field_6532_1199) Bool)
(declare-fun IsPredicateField_6502_69121 (T@Field_16127_16132) Bool)
(declare-fun IsWandField_6502_69137 (T@Field_16127_16132) Bool)
(declare-fun IsPredicateField_6502_12248 (T@Field_16116_12248) Bool)
(declare-fun IsWandField_6502_12248 (T@Field_16116_12248) Bool)
(declare-fun IsPredicateField_6502_53 (T@Field_16116_53) Bool)
(declare-fun IsWandField_6502_53 (T@Field_16116_53) Bool)
(declare-fun IsPredicateField_6474_68304 (T@Field_15573_15578) Bool)
(declare-fun IsWandField_6474_68320 (T@Field_15573_15578) Bool)
(declare-fun IsPredicateField_6474_12248 (T@Field_15561_12248) Bool)
(declare-fun IsWandField_6474_12248 (T@Field_15561_12248) Bool)
(declare-fun IsPredicateField_6474_53 (T@Field_15561_53) Bool)
(declare-fun IsWandField_6474_53 (T@Field_15561_53) Bool)
(declare-fun IsPredicateField_6529_67487 (T@Field_12234_15578) Bool)
(declare-fun IsWandField_6529_67503 (T@Field_12234_15578) Bool)
(declare-fun IsPredicateField_6529_12248 (T@Field_12247_12248) Bool)
(declare-fun IsWandField_6529_12248 (T@Field_12247_12248) Bool)
(declare-fun IsPredicateField_6529_53 (T@Field_12234_53) Bool)
(declare-fun IsWandField_6529_53 (T@Field_12234_53) Bool)
(declare-fun HasDirectPerm_16585_43727 (T@PolymorphicMapType_12195 T@Ref T@Field_16597_16602) Bool)
(declare-fun HasDirectPerm_16585_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_16585_1668) Bool)
(declare-fun HasDirectPerm_16585_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_16585_12248) Bool)
(declare-fun HasDirectPerm_16585_53 (T@PolymorphicMapType_12195 T@Ref T@Field_16585_53) Bool)
(declare-fun HasDirectPerm_16116_42593 (T@PolymorphicMapType_12195 T@Ref T@Field_16127_16132) Bool)
(declare-fun HasDirectPerm_16116_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_16116_1460) Bool)
(declare-fun HasDirectPerm_16116_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_16116_12248) Bool)
(declare-fun HasDirectPerm_16116_53 (T@PolymorphicMapType_12195 T@Ref T@Field_16116_53) Bool)
(declare-fun HasDirectPerm_15561_41459 (T@PolymorphicMapType_12195 T@Ref T@Field_15573_15578) Bool)
(declare-fun HasDirectPerm_15561_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_15561_1199) Bool)
(declare-fun HasDirectPerm_15561_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_15561_12248) Bool)
(declare-fun HasDirectPerm_15561_53 (T@PolymorphicMapType_12195 T@Ref T@Field_15561_53) Bool)
(declare-fun HasDirectPerm_12234_40282 (T@PolymorphicMapType_12195 T@Ref T@Field_12234_15578) Bool)
(declare-fun HasDirectPerm_12234_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_17082_1867) Bool)
(declare-fun HasDirectPerm_12234_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_12247_12248) Bool)
(declare-fun HasDirectPerm_12234_53 (T@PolymorphicMapType_12195 T@Ref T@Field_12234_53) Bool)
(declare-fun HasDirectPerm_6532_39189 (T@PolymorphicMapType_12195 T@Ref T@Field_17142_17147) Bool)
(declare-fun HasDirectPerm_6532_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_6532_1199) Bool)
(declare-fun HasDirectPerm_6532_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_6532_12248) Bool)
(declare-fun HasDirectPerm_6532_53 (T@PolymorphicMapType_12195 T@Ref T@Field_6532_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12195 T@PolymorphicMapType_12195 T@PolymorphicMapType_12195) Bool)
(declare-fun getPredWandId_6502_1460 (T@Field_16116_1460) Int)
(declare-fun getPredWandId_6511_1668 (T@Field_16585_1668) Int)
(declare-fun getPredWandId_6532_6533 (T@Field_17129_17130) Int)
(declare-fun |wand_1#sm| (Bool Bool) T@Field_16127_16132)
(declare-fun |wand_2#sm| (T@Ref Bool) T@Field_16597_16602)
(declare-fun InsidePredicate_17129_16585 (T@Field_17129_17130 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_17129_16116 (T@Field_17129_17130 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_17129_15561 (T@Field_17129_17130 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(declare-fun InsidePredicate_17129_12234 (T@Field_17129_17130 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_17129 (T@Field_16612_16613 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_16116 (T@Field_16612_16613 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_15561 (T@Field_16612_16613 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_12234 (T@Field_16612_16613 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_17129 (T@Field_16141_16142 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_16585 (T@Field_16141_16142 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_15561 (T@Field_16141_16142 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_12234 (T@Field_16141_16142 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_17129 (T@Field_15588_15589 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_16585 (T@Field_15588_15589 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_16116 (T@Field_15588_15589 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_12234 (T@Field_15588_15589 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_17129 (T@Field_12234_6533 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_16585 (T@Field_12234_6533 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_16116 (T@Field_12234_6533 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_15561 (T@Field_12234_6533 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_12174) (Heap1 T@PolymorphicMapType_12174) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12174) (Mask T@PolymorphicMapType_12195) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12174) (Heap1@@0 T@PolymorphicMapType_12174) (Heap2 T@PolymorphicMapType_12174) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((arg1 Bool) (arg2 T@Ref) (arg3 Real) ) (! (IsWandField_6474_1199 (wand arg1 arg2 arg3))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1 arg2 arg3))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 T@Ref) (arg3@@0 Real) ) (! (IsWandField_6483_6484 (|wand#ft| arg1@@0 arg2@@0 arg3@@0))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@0 arg2@@0 arg3@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17129_17130) ) (!  (not (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17142_17147) ) (!  (not (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6532_12248) ) (!  (not (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6532_53) ) (!  (not (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6532_1199) ) (!  (not (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_16612_16613) ) (!  (not (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16597_16602) ) (!  (not (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16585_12248) ) (!  (not (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16585_53) ) (!  (not (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16585_1668) ) (!  (not (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_16141_16142) ) (!  (not (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_16127_16132) ) (!  (not (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_16116_12248) ) (!  (not (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_16116_53) ) (!  (not (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_16116_1460) ) (!  (not (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_15588_15589) ) (!  (not (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_15573_15578) ) (!  (not (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_15561_12248) ) (!  (not (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_15561_53) ) (!  (not (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15561_1199) ) (!  (not (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_12234_6533) ) (!  (not (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_12234_15578) ) (!  (not (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_12247_12248) ) (!  (not (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_12234_53) ) (!  (not (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_17082_1867) ) (!  (not (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) (arg3@@1 Real) ) (! (= (getPredWandId_6474_1199 (wand arg1@@1 arg2@@1 arg3@@1)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 T@Ref) (arg3@@2 Real) ) (!  (not (IsPredicateField_6474_1199 (wand arg1@@2 arg2@@2 arg3@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) (arg3@@3 Real) ) (!  (not (IsPredicateField_6483_6484 (|wand#ft| arg1@@3 arg2@@3 arg3@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 Bool) ) (! (IsWandField_6502_1460 (wand_1 arg1@@4 arg2@@4))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@4 arg2@@4))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 Bool) ) (! (IsWandField_6507_6508 (|wand_1#ft| arg1@@5 arg2@@5))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@5 arg2@@5))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Bool) ) (! (IsWandField_6511_1668 (wand_2 arg1@@6 arg2@@6))
 :qid |stdinbpl.248:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@6 arg2@@6))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Bool) ) (! (IsWandField_6518_6519 (|wand_2#ft| arg1@@7 arg2@@7))
 :qid |stdinbpl.252:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@7 arg2@@7))
)))
(assert (forall ((arg1@@8 Bool) (arg2@@8 Bool) ) (!  (not (IsPredicateField_6502_1460 (wand_1 arg1@@8 arg2@@8)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@8 arg2@@8))
)))
(assert (forall ((arg1@@9 Bool) (arg2@@9 Bool) ) (!  (not (IsPredicateField_6507_6508 (|wand_1#ft| arg1@@9 arg2@@9)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@9 arg2@@9))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 Bool) ) (!  (not (IsPredicateField_6511_1668 (wand_2 arg1@@10 arg2@@10)))
 :qid |stdinbpl.256:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@10 arg2@@10))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Bool) ) (!  (not (IsPredicateField_6518_6519 (|wand_2#ft| arg1@@11 arg2@@11)))
 :qid |stdinbpl.260:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@11 arg2@@11))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_6532_6533 (P x))
 :qid |stdinbpl.296:15|
 :skolemid |44|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12174) (x@@0 T@Ref) ) (! (|P#everUsed_6532| (P x@@0))
 :qid |stdinbpl.315:15|
 :skolemid |48|
 :pattern ( (|P#trigger_6532| Heap@@0 (P x@@0)))
)))
(assert (forall ((arg1@@12 Bool) (arg2@@12 T@Ref) (arg3@@4 Real) ) (! (= (|wand#sm| arg1@@12 arg2@@12 arg3@@4) (WandMaskField_6483 (|wand#ft| arg1@@12 arg2@@12 arg3@@4)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_6483 (|wand#ft| arg1@@12 arg2@@12 arg3@@4)))
)))
(assert (forall ((arg1@@13 T@Ref) (arg2@@13 Bool) (arg1_2 T@Ref) (arg2_2 Bool) ) (!  (=> (= (wand_2 arg1@@13 arg2@@13) (wand_2 arg1_2 arg2_2)) (and (= arg1@@13 arg1_2) (= arg2@@13 arg2_2)))
 :qid |stdinbpl.272:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@13 arg2@@13) (wand_2 arg1_2 arg2_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12174) (ExhaleHeap T@PolymorphicMapType_12174) (Mask@@0 T@PolymorphicMapType_12195) (pm_f_5 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16585_6533 Mask@@0 null pm_f_5) (IsPredicateField_6518_6519 pm_f_5)) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@1) null (PredicateMaskField_16585 pm_f_5)) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap) null (PredicateMaskField_16585 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_6518_6519 pm_f_5) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap) null (PredicateMaskField_16585 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12174) (ExhaleHeap@@0 T@PolymorphicMapType_12174) (Mask@@1 T@PolymorphicMapType_12195) (pm_f_5@@0 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16116_6533 Mask@@1 null pm_f_5@@0) (IsPredicateField_6507_6508 pm_f_5@@0)) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@2) null (PredicateMaskField_16116 pm_f_5@@0)) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@0) null (PredicateMaskField_16116 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6507_6508 pm_f_5@@0) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@0) null (PredicateMaskField_16116 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12174) (ExhaleHeap@@1 T@PolymorphicMapType_12174) (Mask@@2 T@PolymorphicMapType_12195) (pm_f_5@@1 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_15561_6533 Mask@@2 null pm_f_5@@1) (IsPredicateField_6483_6484 pm_f_5@@1)) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@3) null (PredicateMaskField_15561 pm_f_5@@1)) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@1) null (PredicateMaskField_15561 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6483_6484 pm_f_5@@1) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@1) null (PredicateMaskField_15561 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12174) (ExhaleHeap@@2 T@PolymorphicMapType_12174) (Mask@@3 T@PolymorphicMapType_12195) (pm_f_5@@2 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12234_6533 Mask@@3 null pm_f_5@@2) (IsPredicateField_12234_44340 pm_f_5@@2)) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@4) null (PredicateMaskField_12234 pm_f_5@@2)) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@2) null (PredicateMaskField_12234 pm_f_5@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsPredicateField_12234_44340 pm_f_5@@2) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@2) null (PredicateMaskField_12234 pm_f_5@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12174) (ExhaleHeap@@3 T@PolymorphicMapType_12174) (Mask@@4 T@PolymorphicMapType_12195) (pm_f_5@@3 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6532_6533 Mask@@4 null pm_f_5@@3) (IsPredicateField_6532_6533 pm_f_5@@3)) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@5) null (PredicateMaskField_6532 pm_f_5@@3)) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@3) null (PredicateMaskField_6532 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6532_6533 pm_f_5@@3) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@3) null (PredicateMaskField_6532 pm_f_5@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12174) (ExhaleHeap@@4 T@PolymorphicMapType_12174) (Mask@@5 T@PolymorphicMapType_12195) (pm_f_5@@4 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_16585_6533 Mask@@5 null pm_f_5@@4) (IsWandField_6518_6519 pm_f_5@@4)) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@6) null (WandMaskField_6518 pm_f_5@@4)) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@4) null (WandMaskField_6518 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_6518_6519 pm_f_5@@4) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@4) null (WandMaskField_6518 pm_f_5@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12174) (ExhaleHeap@@5 T@PolymorphicMapType_12174) (Mask@@6 T@PolymorphicMapType_12195) (pm_f_5@@5 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_16116_6533 Mask@@6 null pm_f_5@@5) (IsWandField_6507_6508 pm_f_5@@5)) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@7) null (WandMaskField_6507 pm_f_5@@5)) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@5) null (WandMaskField_6507 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6507_6508 pm_f_5@@5) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@5) null (WandMaskField_6507 pm_f_5@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12174) (ExhaleHeap@@6 T@PolymorphicMapType_12174) (Mask@@7 T@PolymorphicMapType_12195) (pm_f_5@@6 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_15561_6533 Mask@@7 null pm_f_5@@6) (IsWandField_6483_6484 pm_f_5@@6)) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@8) null (WandMaskField_6483 pm_f_5@@6)) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@6) null (WandMaskField_6483 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6483_6484 pm_f_5@@6) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@6) null (WandMaskField_6483 pm_f_5@@6)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12174) (ExhaleHeap@@7 T@PolymorphicMapType_12174) (Mask@@8 T@PolymorphicMapType_12195) (pm_f_5@@7 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_12234_6533 Mask@@8 null pm_f_5@@7) (IsWandField_12234_52737 pm_f_5@@7)) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@9) null (WandMaskField_12234 pm_f_5@@7)) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@7) null (WandMaskField_12234 pm_f_5@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (IsWandField_12234_52737 pm_f_5@@7) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@7) null (WandMaskField_12234 pm_f_5@@7)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12174) (ExhaleHeap@@8 T@PolymorphicMapType_12174) (Mask@@9 T@PolymorphicMapType_12195) (pm_f_5@@8 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_6532_6533 Mask@@9 null pm_f_5@@8) (IsWandField_6532_52380 pm_f_5@@8)) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@10) null (WandMaskField_6532 pm_f_5@@8)) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@8) null (WandMaskField_6532 pm_f_5@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (IsWandField_6532_52380 pm_f_5@@8) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@8) null (WandMaskField_6532 pm_f_5@@8)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.306:15|
 :skolemid |46|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.310:15|
 :skolemid |47|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12174) (ExhaleHeap@@9 T@PolymorphicMapType_12174) (Mask@@10 T@PolymorphicMapType_12195) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@11) o_12 $allocated) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@9) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@9) o_12 $allocated))
)))
(assert (forall ((p T@Field_17129_17130) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17129_17129 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17129_17129 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16612_16613) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16585_16585 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16585_16585 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_16141_16142) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_16116_16116 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16116_16116 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_15588_15589) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_15561_15561 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15561_15561 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_12234_6533) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_12234_12234 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12234_12234 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert  (not (IsPredicateField_6529_1867 f_7)))
(assert  (not (IsWandField_6529_1867 f_7)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12174) (ExhaleHeap@@10 T@PolymorphicMapType_12174) (Mask@@11 T@PolymorphicMapType_12195) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (succHeap Heap@@12 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12195) (o_2@@24 T@Ref) (f_4@@24 T@Field_16597_16602) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@@12) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6511_70769 f_4@@24))) (not (IsWandField_6511_70785 f_4@@24))) (<= (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@@12) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@@12) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12195) (o_2@@25 T@Ref) (f_4@@25 T@Field_16585_12248) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@@13) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6511_12248 f_4@@25))) (not (IsWandField_6511_12248 f_4@@25))) (<= (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@@13) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@@13) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12195) (o_2@@26 T@Ref) (f_4@@26 T@Field_16585_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@@14) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6511_53 f_4@@26))) (not (IsWandField_6511_53 f_4@@26))) (<= (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@@14) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@@14) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12195) (o_2@@27 T@Ref) (f_4@@27 T@Field_16612_16613) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@@15) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6518_6519 f_4@@27))) (not (IsWandField_6518_6519 f_4@@27))) (<= (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@@15) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@@15) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12195) (o_2@@28 T@Ref) (f_4@@28 T@Field_16585_1668) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@@16) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6511_1668 f_4@@28))) (not (IsWandField_6511_1668 f_4@@28))) (<= (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@@16) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@@16) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12195) (o_2@@29 T@Ref) (f_4@@29 T@Field_17142_17147) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@@17) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6532_69952 f_4@@29))) (not (IsWandField_6532_69968 f_4@@29))) (<= (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@@17) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@@17) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12195) (o_2@@30 T@Ref) (f_4@@30 T@Field_6532_12248) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@@18) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6532_12248 f_4@@30))) (not (IsWandField_6532_12248 f_4@@30))) (<= (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@@18) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@@18) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12195) (o_2@@31 T@Ref) (f_4@@31 T@Field_6532_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@@19) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6532_53 f_4@@31))) (not (IsWandField_6532_53 f_4@@31))) (<= (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@@19) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@@19) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12195) (o_2@@32 T@Ref) (f_4@@32 T@Field_17129_17130) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@@20) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6532_6533 f_4@@32))) (not (IsWandField_6532_52380 f_4@@32))) (<= (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@@20) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@@20) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12195) (o_2@@33 T@Ref) (f_4@@33 T@Field_6532_1199) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@@21) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6532_1867 f_4@@33))) (not (IsWandField_6532_1867 f_4@@33))) (<= (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@@21) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@@21) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12195) (o_2@@34 T@Ref) (f_4@@34 T@Field_16127_16132) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@@22) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6502_69121 f_4@@34))) (not (IsWandField_6502_69137 f_4@@34))) (<= (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@@22) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@@22) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12195) (o_2@@35 T@Ref) (f_4@@35 T@Field_16116_12248) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@@23) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6502_12248 f_4@@35))) (not (IsWandField_6502_12248 f_4@@35))) (<= (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@@23) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@@23) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12195) (o_2@@36 T@Ref) (f_4@@36 T@Field_16116_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@@24) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_6502_53 f_4@@36))) (not (IsWandField_6502_53 f_4@@36))) (<= (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@@24) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@@24) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12195) (o_2@@37 T@Ref) (f_4@@37 T@Field_16141_16142) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@@25) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_6507_6508 f_4@@37))) (not (IsWandField_6507_6508 f_4@@37))) (<= (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@@25) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@@25) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12195) (o_2@@38 T@Ref) (f_4@@38 T@Field_16116_1460) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@@26) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_6502_1460 f_4@@38))) (not (IsWandField_6502_1460 f_4@@38))) (<= (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@@26) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@@26) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12195) (o_2@@39 T@Ref) (f_4@@39 T@Field_15573_15578) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@@27) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_6474_68304 f_4@@39))) (not (IsWandField_6474_68320 f_4@@39))) (<= (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@@27) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@@27) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12195) (o_2@@40 T@Ref) (f_4@@40 T@Field_15561_12248) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@@28) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_6474_12248 f_4@@40))) (not (IsWandField_6474_12248 f_4@@40))) (<= (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@@28) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@@28) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12195) (o_2@@41 T@Ref) (f_4@@41 T@Field_15561_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@@29) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_6474_53 f_4@@41))) (not (IsWandField_6474_53 f_4@@41))) (<= (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@@29) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@@29) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_12195) (o_2@@42 T@Ref) (f_4@@42 T@Field_15588_15589) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@@30) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_6483_6484 f_4@@42))) (not (IsWandField_6483_6484 f_4@@42))) (<= (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@@30) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@@30) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_12195) (o_2@@43 T@Ref) (f_4@@43 T@Field_15561_1199) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@@31) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_6474_1199 f_4@@43))) (not (IsWandField_6474_1199 f_4@@43))) (<= (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@@31) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@@31) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_12195) (o_2@@44 T@Ref) (f_4@@44 T@Field_12234_15578) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@@32) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_6529_67487 f_4@@44))) (not (IsWandField_6529_67503 f_4@@44))) (<= (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@@32) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@@32) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_12195) (o_2@@45 T@Ref) (f_4@@45 T@Field_12247_12248) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@@33) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_6529_12248 f_4@@45))) (not (IsWandField_6529_12248 f_4@@45))) (<= (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@@33) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@@33) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_12195) (o_2@@46 T@Ref) (f_4@@46 T@Field_12234_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@@34) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_6529_53 f_4@@46))) (not (IsWandField_6529_53 f_4@@46))) (<= (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@@34) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@@34) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_12195) (o_2@@47 T@Ref) (f_4@@47 T@Field_12234_6533) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@@35) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_12234_44340 f_4@@47))) (not (IsWandField_12234_52737 f_4@@47))) (<= (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@@35) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@@35) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_12195) (o_2@@48 T@Ref) (f_4@@48 T@Field_17082_1867) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@@36) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_6529_1867 f_4@@48))) (not (IsWandField_6529_1867 f_4@@48))) (<= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@@36) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@@36) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_12195) (o_2@@49 T@Ref) (f_4@@49 T@Field_16597_16602) ) (! (= (HasDirectPerm_16585_43727 Mask@@37 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@@37) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_43727 Mask@@37 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_12195) (o_2@@50 T@Ref) (f_4@@50 T@Field_16585_1668) ) (! (= (HasDirectPerm_16585_1199 Mask@@38 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@@38) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_1199 Mask@@38 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_12195) (o_2@@51 T@Ref) (f_4@@51 T@Field_16585_12248) ) (! (= (HasDirectPerm_16585_12248 Mask@@39 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@@39) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_12248 Mask@@39 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_12195) (o_2@@52 T@Ref) (f_4@@52 T@Field_16585_53) ) (! (= (HasDirectPerm_16585_53 Mask@@40 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@@40) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_53 Mask@@40 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_12195) (o_2@@53 T@Ref) (f_4@@53 T@Field_16612_16613) ) (! (= (HasDirectPerm_16585_6533 Mask@@41 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@@41) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_6533 Mask@@41 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_12195) (o_2@@54 T@Ref) (f_4@@54 T@Field_16127_16132) ) (! (= (HasDirectPerm_16116_42593 Mask@@42 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@@42) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_42593 Mask@@42 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_12195) (o_2@@55 T@Ref) (f_4@@55 T@Field_16116_1460) ) (! (= (HasDirectPerm_16116_1199 Mask@@43 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@@43) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_1199 Mask@@43 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_12195) (o_2@@56 T@Ref) (f_4@@56 T@Field_16116_12248) ) (! (= (HasDirectPerm_16116_12248 Mask@@44 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@@44) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_12248 Mask@@44 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_12195) (o_2@@57 T@Ref) (f_4@@57 T@Field_16116_53) ) (! (= (HasDirectPerm_16116_53 Mask@@45 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@@45) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_53 Mask@@45 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_12195) (o_2@@58 T@Ref) (f_4@@58 T@Field_16141_16142) ) (! (= (HasDirectPerm_16116_6533 Mask@@46 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@@46) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_6533 Mask@@46 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_12195) (o_2@@59 T@Ref) (f_4@@59 T@Field_15573_15578) ) (! (= (HasDirectPerm_15561_41459 Mask@@47 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@@47) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_41459 Mask@@47 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_12195) (o_2@@60 T@Ref) (f_4@@60 T@Field_15561_1199) ) (! (= (HasDirectPerm_15561_1199 Mask@@48 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@@48) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_1199 Mask@@48 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_12195) (o_2@@61 T@Ref) (f_4@@61 T@Field_15561_12248) ) (! (= (HasDirectPerm_15561_12248 Mask@@49 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@@49) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_12248 Mask@@49 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_12195) (o_2@@62 T@Ref) (f_4@@62 T@Field_15561_53) ) (! (= (HasDirectPerm_15561_53 Mask@@50 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@@50) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_53 Mask@@50 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_12195) (o_2@@63 T@Ref) (f_4@@63 T@Field_15588_15589) ) (! (= (HasDirectPerm_15561_6533 Mask@@51 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@@51) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_6533 Mask@@51 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_12195) (o_2@@64 T@Ref) (f_4@@64 T@Field_12234_15578) ) (! (= (HasDirectPerm_12234_40282 Mask@@52 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@@52) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_40282 Mask@@52 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_12195) (o_2@@65 T@Ref) (f_4@@65 T@Field_17082_1867) ) (! (= (HasDirectPerm_12234_1199 Mask@@53 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@@53) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_1199 Mask@@53 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_12195) (o_2@@66 T@Ref) (f_4@@66 T@Field_12247_12248) ) (! (= (HasDirectPerm_12234_12248 Mask@@54 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@@54) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_12248 Mask@@54 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_12195) (o_2@@67 T@Ref) (f_4@@67 T@Field_12234_53) ) (! (= (HasDirectPerm_12234_53 Mask@@55 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@@55) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_53 Mask@@55 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_12195) (o_2@@68 T@Ref) (f_4@@68 T@Field_12234_6533) ) (! (= (HasDirectPerm_12234_6533 Mask@@56 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@@56) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_6533 Mask@@56 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_12195) (o_2@@69 T@Ref) (f_4@@69 T@Field_17142_17147) ) (! (= (HasDirectPerm_6532_39189 Mask@@57 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@@57) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_39189 Mask@@57 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_12195) (o_2@@70 T@Ref) (f_4@@70 T@Field_6532_1199) ) (! (= (HasDirectPerm_6532_1199 Mask@@58 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@@58) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_1199 Mask@@58 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_12195) (o_2@@71 T@Ref) (f_4@@71 T@Field_6532_12248) ) (! (= (HasDirectPerm_6532_12248 Mask@@59 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@@59) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_12248 Mask@@59 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_12195) (o_2@@72 T@Ref) (f_4@@72 T@Field_6532_53) ) (! (= (HasDirectPerm_6532_53 Mask@@60 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@@60) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_53 Mask@@60 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_12195) (o_2@@73 T@Ref) (f_4@@73 T@Field_17129_17130) ) (! (= (HasDirectPerm_6532_6533 Mask@@61 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@@61) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_6533 Mask@@61 o_2@@73 f_4@@73))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12174) (ExhaleHeap@@11 T@PolymorphicMapType_12174) (Mask@@62 T@PolymorphicMapType_12195) (o_12@@0 T@Ref) (f_16 T@Field_16597_16602) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_16585_43727 Mask@@62 o_12@@0 f_16) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@13) o_12@@0 f_16) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@11) o_12@@0 f_16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@11) o_12@@0 f_16))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12174) (ExhaleHeap@@12 T@PolymorphicMapType_12174) (Mask@@63 T@PolymorphicMapType_12195) (o_12@@1 T@Ref) (f_16@@0 T@Field_16585_1668) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_16585_1199 Mask@@63 o_12@@1 f_16@@0) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@14) o_12@@1 f_16@@0) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@12) o_12@@1 f_16@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@12) o_12@@1 f_16@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12174) (ExhaleHeap@@13 T@PolymorphicMapType_12174) (Mask@@64 T@PolymorphicMapType_12195) (o_12@@2 T@Ref) (f_16@@1 T@Field_16585_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_16585_12248 Mask@@64 o_12@@2 f_16@@1) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@15) o_12@@2 f_16@@1) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@13) o_12@@2 f_16@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@13) o_12@@2 f_16@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12174) (ExhaleHeap@@14 T@PolymorphicMapType_12174) (Mask@@65 T@PolymorphicMapType_12195) (o_12@@3 T@Ref) (f_16@@2 T@Field_16585_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_16585_53 Mask@@65 o_12@@3 f_16@@2) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@16) o_12@@3 f_16@@2) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@14) o_12@@3 f_16@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@14) o_12@@3 f_16@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12174) (ExhaleHeap@@15 T@PolymorphicMapType_12174) (Mask@@66 T@PolymorphicMapType_12195) (o_12@@4 T@Ref) (f_16@@3 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_16585_6533 Mask@@66 o_12@@4 f_16@@3) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@17) o_12@@4 f_16@@3) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@15) o_12@@4 f_16@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@15) o_12@@4 f_16@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12174) (ExhaleHeap@@16 T@PolymorphicMapType_12174) (Mask@@67 T@PolymorphicMapType_12195) (o_12@@5 T@Ref) (f_16@@4 T@Field_16127_16132) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_16116_42593 Mask@@67 o_12@@5 f_16@@4) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@18) o_12@@5 f_16@@4) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@16) o_12@@5 f_16@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@16) o_12@@5 f_16@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12174) (ExhaleHeap@@17 T@PolymorphicMapType_12174) (Mask@@68 T@PolymorphicMapType_12195) (o_12@@6 T@Ref) (f_16@@5 T@Field_16116_1460) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_16116_1199 Mask@@68 o_12@@6 f_16@@5) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@19) o_12@@6 f_16@@5) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@17) o_12@@6 f_16@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@17) o_12@@6 f_16@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12174) (ExhaleHeap@@18 T@PolymorphicMapType_12174) (Mask@@69 T@PolymorphicMapType_12195) (o_12@@7 T@Ref) (f_16@@6 T@Field_16116_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_16116_12248 Mask@@69 o_12@@7 f_16@@6) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@20) o_12@@7 f_16@@6) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@18) o_12@@7 f_16@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@18) o_12@@7 f_16@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12174) (ExhaleHeap@@19 T@PolymorphicMapType_12174) (Mask@@70 T@PolymorphicMapType_12195) (o_12@@8 T@Ref) (f_16@@7 T@Field_16116_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_16116_53 Mask@@70 o_12@@8 f_16@@7) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@21) o_12@@8 f_16@@7) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@19) o_12@@8 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@19) o_12@@8 f_16@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12174) (ExhaleHeap@@20 T@PolymorphicMapType_12174) (Mask@@71 T@PolymorphicMapType_12195) (o_12@@9 T@Ref) (f_16@@8 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_16116_6533 Mask@@71 o_12@@9 f_16@@8) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@22) o_12@@9 f_16@@8) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@20) o_12@@9 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@20) o_12@@9 f_16@@8))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12174) (ExhaleHeap@@21 T@PolymorphicMapType_12174) (Mask@@72 T@PolymorphicMapType_12195) (o_12@@10 T@Ref) (f_16@@9 T@Field_15573_15578) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_15561_41459 Mask@@72 o_12@@10 f_16@@9) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@23) o_12@@10 f_16@@9) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@21) o_12@@10 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@21) o_12@@10 f_16@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12174) (ExhaleHeap@@22 T@PolymorphicMapType_12174) (Mask@@73 T@PolymorphicMapType_12195) (o_12@@11 T@Ref) (f_16@@10 T@Field_15561_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_15561_1199 Mask@@73 o_12@@11 f_16@@10) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@24) o_12@@11 f_16@@10) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@22) o_12@@11 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@22) o_12@@11 f_16@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12174) (ExhaleHeap@@23 T@PolymorphicMapType_12174) (Mask@@74 T@PolymorphicMapType_12195) (o_12@@12 T@Ref) (f_16@@11 T@Field_15561_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_15561_12248 Mask@@74 o_12@@12 f_16@@11) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@25) o_12@@12 f_16@@11) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@23) o_12@@12 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@23) o_12@@12 f_16@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12174) (ExhaleHeap@@24 T@PolymorphicMapType_12174) (Mask@@75 T@PolymorphicMapType_12195) (o_12@@13 T@Ref) (f_16@@12 T@Field_15561_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_15561_53 Mask@@75 o_12@@13 f_16@@12) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@26) o_12@@13 f_16@@12) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@24) o_12@@13 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@24) o_12@@13 f_16@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12174) (ExhaleHeap@@25 T@PolymorphicMapType_12174) (Mask@@76 T@PolymorphicMapType_12195) (o_12@@14 T@Ref) (f_16@@13 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_15561_6533 Mask@@76 o_12@@14 f_16@@13) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@27) o_12@@14 f_16@@13) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@25) o_12@@14 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@25) o_12@@14 f_16@@13))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12174) (ExhaleHeap@@26 T@PolymorphicMapType_12174) (Mask@@77 T@PolymorphicMapType_12195) (o_12@@15 T@Ref) (f_16@@14 T@Field_12234_15578) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_12234_40282 Mask@@77 o_12@@15 f_16@@14) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@28) o_12@@15 f_16@@14) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@26) o_12@@15 f_16@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@26) o_12@@15 f_16@@14))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12174) (ExhaleHeap@@27 T@PolymorphicMapType_12174) (Mask@@78 T@PolymorphicMapType_12195) (o_12@@16 T@Ref) (f_16@@15 T@Field_17082_1867) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_12234_1199 Mask@@78 o_12@@16 f_16@@15) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@29) o_12@@16 f_16@@15) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@27) o_12@@16 f_16@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@27) o_12@@16 f_16@@15))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12174) (ExhaleHeap@@28 T@PolymorphicMapType_12174) (Mask@@79 T@PolymorphicMapType_12195) (o_12@@17 T@Ref) (f_16@@16 T@Field_12247_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_12234_12248 Mask@@79 o_12@@17 f_16@@16) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@30) o_12@@17 f_16@@16) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@28) o_12@@17 f_16@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@28) o_12@@17 f_16@@16))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12174) (ExhaleHeap@@29 T@PolymorphicMapType_12174) (Mask@@80 T@PolymorphicMapType_12195) (o_12@@18 T@Ref) (f_16@@17 T@Field_12234_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_12234_53 Mask@@80 o_12@@18 f_16@@17) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@31) o_12@@18 f_16@@17) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@29) o_12@@18 f_16@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@29) o_12@@18 f_16@@17))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12174) (ExhaleHeap@@30 T@PolymorphicMapType_12174) (Mask@@81 T@PolymorphicMapType_12195) (o_12@@19 T@Ref) (f_16@@18 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_12234_6533 Mask@@81 o_12@@19 f_16@@18) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@32) o_12@@19 f_16@@18) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@30) o_12@@19 f_16@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@30) o_12@@19 f_16@@18))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12174) (ExhaleHeap@@31 T@PolymorphicMapType_12174) (Mask@@82 T@PolymorphicMapType_12195) (o_12@@20 T@Ref) (f_16@@19 T@Field_17142_17147) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_6532_39189 Mask@@82 o_12@@20 f_16@@19) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@33) o_12@@20 f_16@@19) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@31) o_12@@20 f_16@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@31) o_12@@20 f_16@@19))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12174) (ExhaleHeap@@32 T@PolymorphicMapType_12174) (Mask@@83 T@PolymorphicMapType_12195) (o_12@@21 T@Ref) (f_16@@20 T@Field_6532_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_6532_1199 Mask@@83 o_12@@21 f_16@@20) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@34) o_12@@21 f_16@@20) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@32) o_12@@21 f_16@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@32) o_12@@21 f_16@@20))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12174) (ExhaleHeap@@33 T@PolymorphicMapType_12174) (Mask@@84 T@PolymorphicMapType_12195) (o_12@@22 T@Ref) (f_16@@21 T@Field_6532_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_6532_12248 Mask@@84 o_12@@22 f_16@@21) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@35) o_12@@22 f_16@@21) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@33) o_12@@22 f_16@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@33) o_12@@22 f_16@@21))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12174) (ExhaleHeap@@34 T@PolymorphicMapType_12174) (Mask@@85 T@PolymorphicMapType_12195) (o_12@@23 T@Ref) (f_16@@22 T@Field_6532_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_6532_53 Mask@@85 o_12@@23 f_16@@22) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@36) o_12@@23 f_16@@22) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@34) o_12@@23 f_16@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@34) o_12@@23 f_16@@22))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12174) (ExhaleHeap@@35 T@PolymorphicMapType_12174) (Mask@@86 T@PolymorphicMapType_12195) (o_12@@24 T@Ref) (f_16@@23 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_6532_6533 Mask@@86 o_12@@24 f_16@@23) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@37) o_12@@24 f_16@@23) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@35) o_12@@24 f_16@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@35) o_12@@24 f_16@@23))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_16597_16602) ) (! (= (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_16585_12248) ) (! (= (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_16585_53) ) (! (= (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_16612_16613) ) (! (= (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_16585_1668) ) (! (= (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_17142_17147) ) (! (= (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_6532_12248) ) (! (= (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_6532_53) ) (! (= (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_17129_17130) ) (! (= (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_6532_1199) ) (! (= (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_16127_16132) ) (! (= (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_16116_12248) ) (! (= (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_16116_53) ) (! (= (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_16141_16142) ) (! (= (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_16116_1460) ) (! (= (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_15573_15578) ) (! (= (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_15561_12248) ) (! (= (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_15561_53) ) (! (= (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_15588_15589) ) (! (= (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_15561_1199) ) (! (= (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_12234_15578) ) (! (= (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_12247_12248) ) (! (= (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_12234_53) ) (! (= (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_12234_6533) ) (! (= (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_17082_1867) ) (! (= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12195) (SummandMask1 T@PolymorphicMapType_12195) (SummandMask2 T@PolymorphicMapType_12195) (o_2@@99 T@Ref) (f_4@@99 T@Field_16597_16602) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12195) (SummandMask1@@0 T@PolymorphicMapType_12195) (SummandMask2@@0 T@PolymorphicMapType_12195) (o_2@@100 T@Ref) (f_4@@100 T@Field_16585_12248) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12195) (SummandMask1@@1 T@PolymorphicMapType_12195) (SummandMask2@@1 T@PolymorphicMapType_12195) (o_2@@101 T@Ref) (f_4@@101 T@Field_16585_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12195) (SummandMask1@@2 T@PolymorphicMapType_12195) (SummandMask2@@2 T@PolymorphicMapType_12195) (o_2@@102 T@Ref) (f_4@@102 T@Field_16612_16613) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12195) (SummandMask1@@3 T@PolymorphicMapType_12195) (SummandMask2@@3 T@PolymorphicMapType_12195) (o_2@@103 T@Ref) (f_4@@103 T@Field_16585_1668) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12195) (SummandMask1@@4 T@PolymorphicMapType_12195) (SummandMask2@@4 T@PolymorphicMapType_12195) (o_2@@104 T@Ref) (f_4@@104 T@Field_17142_17147) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12195) (SummandMask1@@5 T@PolymorphicMapType_12195) (SummandMask2@@5 T@PolymorphicMapType_12195) (o_2@@105 T@Ref) (f_4@@105 T@Field_6532_12248) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12195) (SummandMask1@@6 T@PolymorphicMapType_12195) (SummandMask2@@6 T@PolymorphicMapType_12195) (o_2@@106 T@Ref) (f_4@@106 T@Field_6532_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12195) (SummandMask1@@7 T@PolymorphicMapType_12195) (SummandMask2@@7 T@PolymorphicMapType_12195) (o_2@@107 T@Ref) (f_4@@107 T@Field_17129_17130) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12195) (SummandMask1@@8 T@PolymorphicMapType_12195) (SummandMask2@@8 T@PolymorphicMapType_12195) (o_2@@108 T@Ref) (f_4@@108 T@Field_6532_1199) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_12195) (SummandMask1@@9 T@PolymorphicMapType_12195) (SummandMask2@@9 T@PolymorphicMapType_12195) (o_2@@109 T@Ref) (f_4@@109 T@Field_16127_16132) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_12195) (SummandMask1@@10 T@PolymorphicMapType_12195) (SummandMask2@@10 T@PolymorphicMapType_12195) (o_2@@110 T@Ref) (f_4@@110 T@Field_16116_12248) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_12195) (SummandMask1@@11 T@PolymorphicMapType_12195) (SummandMask2@@11 T@PolymorphicMapType_12195) (o_2@@111 T@Ref) (f_4@@111 T@Field_16116_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_12195) (SummandMask1@@12 T@PolymorphicMapType_12195) (SummandMask2@@12 T@PolymorphicMapType_12195) (o_2@@112 T@Ref) (f_4@@112 T@Field_16141_16142) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_12195) (SummandMask1@@13 T@PolymorphicMapType_12195) (SummandMask2@@13 T@PolymorphicMapType_12195) (o_2@@113 T@Ref) (f_4@@113 T@Field_16116_1460) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_12195) (SummandMask1@@14 T@PolymorphicMapType_12195) (SummandMask2@@14 T@PolymorphicMapType_12195) (o_2@@114 T@Ref) (f_4@@114 T@Field_15573_15578) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_12195) (SummandMask1@@15 T@PolymorphicMapType_12195) (SummandMask2@@15 T@PolymorphicMapType_12195) (o_2@@115 T@Ref) (f_4@@115 T@Field_15561_12248) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_12195) (SummandMask1@@16 T@PolymorphicMapType_12195) (SummandMask2@@16 T@PolymorphicMapType_12195) (o_2@@116 T@Ref) (f_4@@116 T@Field_15561_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_12195) (SummandMask1@@17 T@PolymorphicMapType_12195) (SummandMask2@@17 T@PolymorphicMapType_12195) (o_2@@117 T@Ref) (f_4@@117 T@Field_15588_15589) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_12195) (SummandMask1@@18 T@PolymorphicMapType_12195) (SummandMask2@@18 T@PolymorphicMapType_12195) (o_2@@118 T@Ref) (f_4@@118 T@Field_15561_1199) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_12195) (SummandMask1@@19 T@PolymorphicMapType_12195) (SummandMask2@@19 T@PolymorphicMapType_12195) (o_2@@119 T@Ref) (f_4@@119 T@Field_12234_15578) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_12195) (SummandMask1@@20 T@PolymorphicMapType_12195) (SummandMask2@@20 T@PolymorphicMapType_12195) (o_2@@120 T@Ref) (f_4@@120 T@Field_12247_12248) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_12195) (SummandMask1@@21 T@PolymorphicMapType_12195) (SummandMask2@@21 T@PolymorphicMapType_12195) (o_2@@121 T@Ref) (f_4@@121 T@Field_12234_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_12195) (SummandMask1@@22 T@PolymorphicMapType_12195) (SummandMask2@@22 T@PolymorphicMapType_12195) (o_2@@122 T@Ref) (f_4@@122 T@Field_12234_6533) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_12195) (SummandMask1@@23 T@PolymorphicMapType_12195) (SummandMask2@@23 T@PolymorphicMapType_12195) (o_2@@123 T@Ref) (f_4@@123 T@Field_17082_1867) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((arg1@@14 Bool) (arg2@@14 Bool) (arg1_2@@0 Bool) (arg2_2@@0 Bool) ) (!  (=> (= (wand_1 arg1@@14 arg2@@14) (wand_1 arg1_2@@0 arg2_2@@0)) (and (= arg1@@14 arg1_2@@0) (= arg2@@14 arg2_2@@0)))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@14 arg2@@14) (wand_1 arg1_2@@0 arg2_2@@0))
)))
(assert (forall ((arg1@@15 Bool) (arg2@@15 T@Ref) (arg3@@5 Real) (arg1_2@@1 Bool) (arg2_2@@1 T@Ref) (arg3_2 Real) ) (!  (=> (= (wand arg1@@15 arg2@@15 arg3@@5) (wand arg1_2@@1 arg2_2@@1 arg3_2)) (and (= arg1@@15 arg1_2@@1) (and (= arg2@@15 arg2_2@@1) (= arg3@@5 arg3_2))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@15 arg2@@15 arg3@@5) (wand arg1_2@@1 arg2_2@@1 arg3_2))
)))
(assert (forall ((arg1@@16 Bool) (arg2@@16 Bool) ) (! (= (getPredWandId_6502_1460 (wand_1 arg1@@16 arg2@@16)) 2)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@16 arg2@@16))
)))
(assert (forall ((arg1@@17 T@Ref) (arg2@@17 Bool) ) (! (= (getPredWandId_6511_1668 (wand_2 arg1@@17 arg2@@17)) 3)
 :qid |stdinbpl.268:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@17 arg2@@17))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_6532_6533 (P x@@3)) 0)
 :qid |stdinbpl.300:15|
 :skolemid |45|
 :pattern ( (P x@@3))
)))
(assert (forall ((arg1@@18 Bool) (arg2@@18 Bool) ) (! (= (|wand_1#sm| arg1@@18 arg2@@18) (WandMaskField_6507 (|wand_1#ft| arg1@@18 arg2@@18)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_6507 (|wand_1#ft| arg1@@18 arg2@@18)))
)))
(assert (forall ((arg1@@19 T@Ref) (arg2@@19 Bool) ) (! (= (|wand_2#sm| arg1@@19 arg2@@19) (WandMaskField_6518 (|wand_2#ft| arg1@@19 arg2@@19)))
 :qid |stdinbpl.264:15|
 :skolemid |40|
 :pattern ( (WandMaskField_6518 (|wand_2#ft| arg1@@19 arg2@@19)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12174) (o_11 T@Ref) (f_17 T@Field_16612_16613) (v T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@38) (store (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@38) o_11 f_17 v) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@38) (store (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@38) o_11 f_17 v) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12174) (o_11@@0 T@Ref) (f_17@@0 T@Field_16597_16602) (v@@0 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@39 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@39) (store (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@39) o_11@@0 f_17@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@39) (store (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@39) o_11@@0 f_17@@0 v@@0)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12174) (o_11@@1 T@Ref) (f_17@@1 T@Field_16585_1668) (v@@1 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@40) (store (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@40) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@40) (store (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@40) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12174) (o_11@@2 T@Ref) (f_17@@2 T@Field_16585_12248) (v@@2 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@41) (store (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@41) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@41) (store (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@41) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12174) (o_11@@3 T@Ref) (f_17@@3 T@Field_16585_53) (v@@3 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@42) (store (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@42) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@42) (store (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@42) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12174) (o_11@@4 T@Ref) (f_17@@4 T@Field_16141_16142) (v@@4 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@43) (store (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@43) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@43) (store (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@43) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12174) (o_11@@5 T@Ref) (f_17@@5 T@Field_16127_16132) (v@@5 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@44 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@44) (store (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@44) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@44) (store (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@44) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_12174) (o_11@@6 T@Ref) (f_17@@6 T@Field_16116_1460) (v@@6 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@45) (store (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@45) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@45) (store (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@45) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_12174) (o_11@@7 T@Ref) (f_17@@7 T@Field_16116_12248) (v@@7 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@46) (store (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@46) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@46) (store (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@46) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_12174) (o_11@@8 T@Ref) (f_17@@8 T@Field_16116_53) (v@@8 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@47) (store (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@47) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@47) (store (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@47) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_12174) (o_11@@9 T@Ref) (f_17@@9 T@Field_17129_17130) (v@@9 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@48) (store (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@48) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@48) (store (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@48) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_12174) (o_11@@10 T@Ref) (f_17@@10 T@Field_17142_17147) (v@@10 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@49 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@49) (store (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@49) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@49) (store (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@49) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_12174) (o_11@@11 T@Ref) (f_17@@11 T@Field_6532_1199) (v@@11 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@50) (store (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@50) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@50) (store (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@50) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_12174) (o_11@@12 T@Ref) (f_17@@12 T@Field_6532_12248) (v@@12 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@51) (store (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@51) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@51) (store (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@51) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_12174) (o_11@@13 T@Ref) (f_17@@13 T@Field_6532_53) (v@@13 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@52) (store (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@52) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@52) (store (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@52) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_12174) (o_11@@14 T@Ref) (f_17@@14 T@Field_15588_15589) (v@@14 T@FrameType) ) (! (succHeap Heap@@53 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@53) (store (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@53) o_11@@14 f_17@@14 v@@14) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@53) (store (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@53) o_11@@14 f_17@@14 v@@14) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_12174) (o_11@@15 T@Ref) (f_17@@15 T@Field_15573_15578) (v@@15 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@54 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@54) (store (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@54) o_11@@15 f_17@@15 v@@15) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@54) (store (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@54) o_11@@15 f_17@@15 v@@15) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_12174) (o_11@@16 T@Ref) (f_17@@16 T@Field_15561_1199) (v@@16 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@55) (store (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@55) o_11@@16 f_17@@16 v@@16) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@55) (store (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@55) o_11@@16 f_17@@16 v@@16) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_12174) (o_11@@17 T@Ref) (f_17@@17 T@Field_15561_12248) (v@@17 T@Ref) ) (! (succHeap Heap@@56 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@56) (store (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@56) o_11@@17 f_17@@17 v@@17) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@56) (store (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@56) o_11@@17 f_17@@17 v@@17) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_12174) (o_11@@18 T@Ref) (f_17@@18 T@Field_15561_53) (v@@18 Bool) ) (! (succHeap Heap@@57 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@57) (store (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@57) o_11@@18 f_17@@18 v@@18) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@57) (store (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@57) o_11@@18 f_17@@18 v@@18) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_12174) (o_11@@19 T@Ref) (f_17@@19 T@Field_12234_6533) (v@@19 T@FrameType) ) (! (succHeap Heap@@58 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@58) (store (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@58) o_11@@19 f_17@@19 v@@19) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@58) (store (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@58) o_11@@19 f_17@@19 v@@19) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_12174) (o_11@@20 T@Ref) (f_17@@20 T@Field_12234_15578) (v@@20 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@59 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@59) (store (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@59) o_11@@20 f_17@@20 v@@20) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@59) (store (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@59) o_11@@20 f_17@@20 v@@20) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_12174) (o_11@@21 T@Ref) (f_17@@21 T@Field_17082_1867) (v@@21 Int) ) (! (succHeap Heap@@60 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@60) (store (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@60) o_11@@21 f_17@@21 v@@21) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@60) (store (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@60) o_11@@21 f_17@@21 v@@21) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_12174) (o_11@@22 T@Ref) (f_17@@22 T@Field_12247_12248) (v@@22 T@Ref) ) (! (succHeap Heap@@61 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@61) (store (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@61) o_11@@22 f_17@@22 v@@22) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@61) (store (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@61) o_11@@22 f_17@@22 v@@22) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_12174) (o_11@@23 T@Ref) (f_17@@23 T@Field_12234_53) (v@@23 Bool) ) (! (succHeap Heap@@62 (PolymorphicMapType_12174 (store (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@62) o_11@@23 f_17@@23 v@@23) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (store (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@62) o_11@@23 f_17@@23 v@@23) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@62)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_6532 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.292:15|
 :skolemid |43|
 :pattern ( (PredicateMaskField_6532 (P x@@4)))
)))
(assert (forall ((o_11@@24 T@Ref) (f_10 T@Field_12247_12248) (Heap@@63 T@PolymorphicMapType_12174) ) (!  (=> (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@63) o_11@@24 $allocated) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@63) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@63) o_11@@24 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@63) o_11@@24 f_10))
)))
(assert (forall ((p@@5 T@Field_17129_17130) (v_1@@4 T@FrameType) (q T@Field_17129_17130) (w@@4 T@FrameType) (r T@Field_17129_17130) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@5 v_1@@4 q w@@4) (InsidePredicate_17129_17129 q w@@4 r u)) (InsidePredicate_17129_17129 p@@5 v_1@@4 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@5 v_1@@4 q w@@4) (InsidePredicate_17129_17129 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_17129_17130) (v_1@@5 T@FrameType) (q@@0 T@Field_17129_17130) (w@@5 T@FrameType) (r@@0 T@Field_16612_16613) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_17129_16585 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_17129_16585 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_17129_16585 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_17129_17130) (v_1@@6 T@FrameType) (q@@1 T@Field_17129_17130) (w@@6 T@FrameType) (r@@1 T@Field_16141_16142) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_17129_16116 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_17129_16116 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_17129_16116 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_17129_17130) (v_1@@7 T@FrameType) (q@@2 T@Field_17129_17130) (w@@7 T@FrameType) (r@@2 T@Field_15588_15589) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_17129_15561 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_17129_15561 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_17129_15561 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_17129_17130) (v_1@@8 T@FrameType) (q@@3 T@Field_17129_17130) (w@@8 T@FrameType) (r@@3 T@Field_12234_6533) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_17129_12234 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_17129_12234 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_17129_12234 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_17129_17130) (v_1@@9 T@FrameType) (q@@4 T@Field_16612_16613) (w@@9 T@FrameType) (r@@4 T@Field_17129_17130) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_16585_17129 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_17129_17129 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_16585_17129 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_17129_17130) (v_1@@10 T@FrameType) (q@@5 T@Field_16612_16613) (w@@10 T@FrameType) (r@@5 T@Field_16612_16613) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_16585_16585 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_17129_16585 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_16585_16585 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_17129_17130) (v_1@@11 T@FrameType) (q@@6 T@Field_16612_16613) (w@@11 T@FrameType) (r@@6 T@Field_16141_16142) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_16585_16116 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_17129_16116 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_16585_16116 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_17129_17130) (v_1@@12 T@FrameType) (q@@7 T@Field_16612_16613) (w@@12 T@FrameType) (r@@7 T@Field_15588_15589) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_16585_15561 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_17129_15561 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_16585_15561 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_17129_17130) (v_1@@13 T@FrameType) (q@@8 T@Field_16612_16613) (w@@13 T@FrameType) (r@@8 T@Field_12234_6533) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_16585_12234 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_17129_12234 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_16585_12234 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_17129_17130) (v_1@@14 T@FrameType) (q@@9 T@Field_16141_16142) (w@@14 T@FrameType) (r@@9 T@Field_17129_17130) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_16116_17129 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_17129_17129 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_16116_17129 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_17129_17130) (v_1@@15 T@FrameType) (q@@10 T@Field_16141_16142) (w@@15 T@FrameType) (r@@10 T@Field_16612_16613) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_16116_16585 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_17129_16585 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_16116_16585 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_17129_17130) (v_1@@16 T@FrameType) (q@@11 T@Field_16141_16142) (w@@16 T@FrameType) (r@@11 T@Field_16141_16142) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_16116_16116 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_17129_16116 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_16116_16116 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_17129_17130) (v_1@@17 T@FrameType) (q@@12 T@Field_16141_16142) (w@@17 T@FrameType) (r@@12 T@Field_15588_15589) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_16116_15561 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_17129_15561 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_16116_15561 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_17129_17130) (v_1@@18 T@FrameType) (q@@13 T@Field_16141_16142) (w@@18 T@FrameType) (r@@13 T@Field_12234_6533) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_16116_12234 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_17129_12234 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_16116_12234 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_17129_17130) (v_1@@19 T@FrameType) (q@@14 T@Field_15588_15589) (w@@19 T@FrameType) (r@@14 T@Field_17129_17130) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_15561_17129 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_17129_17129 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_15561_17129 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_17129_17130) (v_1@@20 T@FrameType) (q@@15 T@Field_15588_15589) (w@@20 T@FrameType) (r@@15 T@Field_16612_16613) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_15561_16585 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_17129_16585 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_15561_16585 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_17129_17130) (v_1@@21 T@FrameType) (q@@16 T@Field_15588_15589) (w@@21 T@FrameType) (r@@16 T@Field_16141_16142) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_15561_16116 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_17129_16116 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_15561_16116 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_17129_17130) (v_1@@22 T@FrameType) (q@@17 T@Field_15588_15589) (w@@22 T@FrameType) (r@@17 T@Field_15588_15589) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_15561_15561 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_17129_15561 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_15561_15561 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_17129_17130) (v_1@@23 T@FrameType) (q@@18 T@Field_15588_15589) (w@@23 T@FrameType) (r@@18 T@Field_12234_6533) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_15561_12234 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_17129_12234 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_15561_12234 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_17129_17130) (v_1@@24 T@FrameType) (q@@19 T@Field_12234_6533) (w@@24 T@FrameType) (r@@19 T@Field_17129_17130) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_12234_17129 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_17129_17129 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_12234_17129 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_17129_17130) (v_1@@25 T@FrameType) (q@@20 T@Field_12234_6533) (w@@25 T@FrameType) (r@@20 T@Field_16612_16613) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_12234_16585 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_17129_16585 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_12234_16585 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_17129_17130) (v_1@@26 T@FrameType) (q@@21 T@Field_12234_6533) (w@@26 T@FrameType) (r@@21 T@Field_16141_16142) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_12234_16116 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_17129_16116 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_12234_16116 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_17129_17130) (v_1@@27 T@FrameType) (q@@22 T@Field_12234_6533) (w@@27 T@FrameType) (r@@22 T@Field_15588_15589) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_12234_15561 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_17129_15561 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_12234_15561 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_17129_17130) (v_1@@28 T@FrameType) (q@@23 T@Field_12234_6533) (w@@28 T@FrameType) (r@@23 T@Field_12234_6533) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_12234_12234 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_17129_12234 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_12234_12234 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_16612_16613) (v_1@@29 T@FrameType) (q@@24 T@Field_17129_17130) (w@@29 T@FrameType) (r@@24 T@Field_17129_17130) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_17129_17129 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_16585_17129 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_17129_17129 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_16612_16613) (v_1@@30 T@FrameType) (q@@25 T@Field_17129_17130) (w@@30 T@FrameType) (r@@25 T@Field_16612_16613) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_17129_16585 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_16585_16585 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_17129_16585 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_16612_16613) (v_1@@31 T@FrameType) (q@@26 T@Field_17129_17130) (w@@31 T@FrameType) (r@@26 T@Field_16141_16142) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_17129_16116 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_16585_16116 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_17129_16116 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_16612_16613) (v_1@@32 T@FrameType) (q@@27 T@Field_17129_17130) (w@@32 T@FrameType) (r@@27 T@Field_15588_15589) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_17129_15561 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_16585_15561 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_17129_15561 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_16612_16613) (v_1@@33 T@FrameType) (q@@28 T@Field_17129_17130) (w@@33 T@FrameType) (r@@28 T@Field_12234_6533) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_17129_12234 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_16585_12234 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_17129_12234 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_16612_16613) (v_1@@34 T@FrameType) (q@@29 T@Field_16612_16613) (w@@34 T@FrameType) (r@@29 T@Field_17129_17130) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_16585_17129 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_16585_17129 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_16585_17129 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_16612_16613) (v_1@@35 T@FrameType) (q@@30 T@Field_16612_16613) (w@@35 T@FrameType) (r@@30 T@Field_16612_16613) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_16585_16585 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_16585_16585 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_16585_16585 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_16612_16613) (v_1@@36 T@FrameType) (q@@31 T@Field_16612_16613) (w@@36 T@FrameType) (r@@31 T@Field_16141_16142) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_16585_16116 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_16585_16116 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_16585_16116 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_16612_16613) (v_1@@37 T@FrameType) (q@@32 T@Field_16612_16613) (w@@37 T@FrameType) (r@@32 T@Field_15588_15589) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_16585_15561 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_16585_15561 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_16585_15561 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_16612_16613) (v_1@@38 T@FrameType) (q@@33 T@Field_16612_16613) (w@@38 T@FrameType) (r@@33 T@Field_12234_6533) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_16585_12234 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_16585_12234 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_16585_12234 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_16612_16613) (v_1@@39 T@FrameType) (q@@34 T@Field_16141_16142) (w@@39 T@FrameType) (r@@34 T@Field_17129_17130) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_16116_17129 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_16585_17129 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_16116_17129 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_16612_16613) (v_1@@40 T@FrameType) (q@@35 T@Field_16141_16142) (w@@40 T@FrameType) (r@@35 T@Field_16612_16613) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_16116_16585 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_16585_16585 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_16116_16585 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_16612_16613) (v_1@@41 T@FrameType) (q@@36 T@Field_16141_16142) (w@@41 T@FrameType) (r@@36 T@Field_16141_16142) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_16116_16116 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_16585_16116 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_16116_16116 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_16612_16613) (v_1@@42 T@FrameType) (q@@37 T@Field_16141_16142) (w@@42 T@FrameType) (r@@37 T@Field_15588_15589) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_16116_15561 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_16585_15561 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_16116_15561 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_16612_16613) (v_1@@43 T@FrameType) (q@@38 T@Field_16141_16142) (w@@43 T@FrameType) (r@@38 T@Field_12234_6533) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_16116_12234 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_16585_12234 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_16116_12234 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_16612_16613) (v_1@@44 T@FrameType) (q@@39 T@Field_15588_15589) (w@@44 T@FrameType) (r@@39 T@Field_17129_17130) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_15561_17129 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_16585_17129 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_15561_17129 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_16612_16613) (v_1@@45 T@FrameType) (q@@40 T@Field_15588_15589) (w@@45 T@FrameType) (r@@40 T@Field_16612_16613) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_15561_16585 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_16585_16585 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_15561_16585 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_16612_16613) (v_1@@46 T@FrameType) (q@@41 T@Field_15588_15589) (w@@46 T@FrameType) (r@@41 T@Field_16141_16142) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_15561_16116 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_16585_16116 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_15561_16116 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_16612_16613) (v_1@@47 T@FrameType) (q@@42 T@Field_15588_15589) (w@@47 T@FrameType) (r@@42 T@Field_15588_15589) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_15561_15561 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_16585_15561 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_15561_15561 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_16612_16613) (v_1@@48 T@FrameType) (q@@43 T@Field_15588_15589) (w@@48 T@FrameType) (r@@43 T@Field_12234_6533) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_15561_12234 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_16585_12234 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_15561_12234 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_16612_16613) (v_1@@49 T@FrameType) (q@@44 T@Field_12234_6533) (w@@49 T@FrameType) (r@@44 T@Field_17129_17130) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_12234_17129 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_16585_17129 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_12234_17129 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_16612_16613) (v_1@@50 T@FrameType) (q@@45 T@Field_12234_6533) (w@@50 T@FrameType) (r@@45 T@Field_16612_16613) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_12234_16585 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_16585_16585 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_12234_16585 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_16612_16613) (v_1@@51 T@FrameType) (q@@46 T@Field_12234_6533) (w@@51 T@FrameType) (r@@46 T@Field_16141_16142) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_12234_16116 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_16585_16116 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_12234_16116 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_16612_16613) (v_1@@52 T@FrameType) (q@@47 T@Field_12234_6533) (w@@52 T@FrameType) (r@@47 T@Field_15588_15589) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_12234_15561 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_16585_15561 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_12234_15561 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_16612_16613) (v_1@@53 T@FrameType) (q@@48 T@Field_12234_6533) (w@@53 T@FrameType) (r@@48 T@Field_12234_6533) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_12234_12234 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_16585_12234 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_12234_12234 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_16141_16142) (v_1@@54 T@FrameType) (q@@49 T@Field_17129_17130) (w@@54 T@FrameType) (r@@49 T@Field_17129_17130) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_17129_17129 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_16116_17129 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_17129_17129 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_16141_16142) (v_1@@55 T@FrameType) (q@@50 T@Field_17129_17130) (w@@55 T@FrameType) (r@@50 T@Field_16612_16613) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_17129_16585 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_16116_16585 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_17129_16585 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_16141_16142) (v_1@@56 T@FrameType) (q@@51 T@Field_17129_17130) (w@@56 T@FrameType) (r@@51 T@Field_16141_16142) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_17129_16116 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_16116_16116 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_17129_16116 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_16141_16142) (v_1@@57 T@FrameType) (q@@52 T@Field_17129_17130) (w@@57 T@FrameType) (r@@52 T@Field_15588_15589) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_17129_15561 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_16116_15561 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_17129_15561 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_16141_16142) (v_1@@58 T@FrameType) (q@@53 T@Field_17129_17130) (w@@58 T@FrameType) (r@@53 T@Field_12234_6533) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_17129_12234 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_16116_12234 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_17129_12234 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_16141_16142) (v_1@@59 T@FrameType) (q@@54 T@Field_16612_16613) (w@@59 T@FrameType) (r@@54 T@Field_17129_17130) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_16585_17129 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_16116_17129 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_16585_17129 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_16141_16142) (v_1@@60 T@FrameType) (q@@55 T@Field_16612_16613) (w@@60 T@FrameType) (r@@55 T@Field_16612_16613) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_16585_16585 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_16116_16585 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_16585_16585 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_16141_16142) (v_1@@61 T@FrameType) (q@@56 T@Field_16612_16613) (w@@61 T@FrameType) (r@@56 T@Field_16141_16142) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_16585_16116 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_16116_16116 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_16585_16116 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_16141_16142) (v_1@@62 T@FrameType) (q@@57 T@Field_16612_16613) (w@@62 T@FrameType) (r@@57 T@Field_15588_15589) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_16585_15561 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_16116_15561 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_16585_15561 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_16141_16142) (v_1@@63 T@FrameType) (q@@58 T@Field_16612_16613) (w@@63 T@FrameType) (r@@58 T@Field_12234_6533) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_16585_12234 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_16116_12234 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_16585_12234 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_16141_16142) (v_1@@64 T@FrameType) (q@@59 T@Field_16141_16142) (w@@64 T@FrameType) (r@@59 T@Field_17129_17130) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_16116_17129 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_16116_17129 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_16116_17129 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_16141_16142) (v_1@@65 T@FrameType) (q@@60 T@Field_16141_16142) (w@@65 T@FrameType) (r@@60 T@Field_16612_16613) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_16116_16585 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_16116_16585 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_16116_16585 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_16141_16142) (v_1@@66 T@FrameType) (q@@61 T@Field_16141_16142) (w@@66 T@FrameType) (r@@61 T@Field_16141_16142) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_16116_16116 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_16116_16116 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_16116_16116 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_16141_16142) (v_1@@67 T@FrameType) (q@@62 T@Field_16141_16142) (w@@67 T@FrameType) (r@@62 T@Field_15588_15589) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_16116_15561 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_16116_15561 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_16116_15561 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_16141_16142) (v_1@@68 T@FrameType) (q@@63 T@Field_16141_16142) (w@@68 T@FrameType) (r@@63 T@Field_12234_6533) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_16116_12234 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_16116_12234 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_16116_12234 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_16141_16142) (v_1@@69 T@FrameType) (q@@64 T@Field_15588_15589) (w@@69 T@FrameType) (r@@64 T@Field_17129_17130) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_15561_17129 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_16116_17129 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_15561_17129 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_16141_16142) (v_1@@70 T@FrameType) (q@@65 T@Field_15588_15589) (w@@70 T@FrameType) (r@@65 T@Field_16612_16613) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_15561_16585 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_16116_16585 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_15561_16585 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_16141_16142) (v_1@@71 T@FrameType) (q@@66 T@Field_15588_15589) (w@@71 T@FrameType) (r@@66 T@Field_16141_16142) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_15561_16116 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_16116_16116 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_15561_16116 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_16141_16142) (v_1@@72 T@FrameType) (q@@67 T@Field_15588_15589) (w@@72 T@FrameType) (r@@67 T@Field_15588_15589) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_15561_15561 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_16116_15561 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_15561_15561 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_16141_16142) (v_1@@73 T@FrameType) (q@@68 T@Field_15588_15589) (w@@73 T@FrameType) (r@@68 T@Field_12234_6533) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_15561_12234 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_16116_12234 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_15561_12234 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_16141_16142) (v_1@@74 T@FrameType) (q@@69 T@Field_12234_6533) (w@@74 T@FrameType) (r@@69 T@Field_17129_17130) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_12234_17129 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_16116_17129 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_12234_17129 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_16141_16142) (v_1@@75 T@FrameType) (q@@70 T@Field_12234_6533) (w@@75 T@FrameType) (r@@70 T@Field_16612_16613) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_12234_16585 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_16116_16585 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_12234_16585 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_16141_16142) (v_1@@76 T@FrameType) (q@@71 T@Field_12234_6533) (w@@76 T@FrameType) (r@@71 T@Field_16141_16142) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_12234_16116 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_16116_16116 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_12234_16116 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_16141_16142) (v_1@@77 T@FrameType) (q@@72 T@Field_12234_6533) (w@@77 T@FrameType) (r@@72 T@Field_15588_15589) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_12234_15561 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_16116_15561 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_12234_15561 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_16141_16142) (v_1@@78 T@FrameType) (q@@73 T@Field_12234_6533) (w@@78 T@FrameType) (r@@73 T@Field_12234_6533) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_12234_12234 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_16116_12234 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_12234_12234 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_15588_15589) (v_1@@79 T@FrameType) (q@@74 T@Field_17129_17130) (w@@79 T@FrameType) (r@@74 T@Field_17129_17130) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_17129_17129 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_15561_17129 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_17129_17129 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_15588_15589) (v_1@@80 T@FrameType) (q@@75 T@Field_17129_17130) (w@@80 T@FrameType) (r@@75 T@Field_16612_16613) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_17129_16585 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_15561_16585 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_17129_16585 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_15588_15589) (v_1@@81 T@FrameType) (q@@76 T@Field_17129_17130) (w@@81 T@FrameType) (r@@76 T@Field_16141_16142) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_17129_16116 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_15561_16116 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_17129_16116 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_15588_15589) (v_1@@82 T@FrameType) (q@@77 T@Field_17129_17130) (w@@82 T@FrameType) (r@@77 T@Field_15588_15589) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_17129_15561 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_15561_15561 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_17129_15561 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_15588_15589) (v_1@@83 T@FrameType) (q@@78 T@Field_17129_17130) (w@@83 T@FrameType) (r@@78 T@Field_12234_6533) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_17129_12234 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_15561_12234 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_17129_12234 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_15588_15589) (v_1@@84 T@FrameType) (q@@79 T@Field_16612_16613) (w@@84 T@FrameType) (r@@79 T@Field_17129_17130) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_16585_17129 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_15561_17129 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_16585_17129 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_15588_15589) (v_1@@85 T@FrameType) (q@@80 T@Field_16612_16613) (w@@85 T@FrameType) (r@@80 T@Field_16612_16613) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_16585_16585 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_15561_16585 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_16585_16585 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_15588_15589) (v_1@@86 T@FrameType) (q@@81 T@Field_16612_16613) (w@@86 T@FrameType) (r@@81 T@Field_16141_16142) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_16585_16116 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_15561_16116 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_16585_16116 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_15588_15589) (v_1@@87 T@FrameType) (q@@82 T@Field_16612_16613) (w@@87 T@FrameType) (r@@82 T@Field_15588_15589) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_16585_15561 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_15561_15561 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_16585_15561 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_15588_15589) (v_1@@88 T@FrameType) (q@@83 T@Field_16612_16613) (w@@88 T@FrameType) (r@@83 T@Field_12234_6533) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_16585_12234 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_15561_12234 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_16585_12234 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_15588_15589) (v_1@@89 T@FrameType) (q@@84 T@Field_16141_16142) (w@@89 T@FrameType) (r@@84 T@Field_17129_17130) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_16116_17129 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_15561_17129 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_16116_17129 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_15588_15589) (v_1@@90 T@FrameType) (q@@85 T@Field_16141_16142) (w@@90 T@FrameType) (r@@85 T@Field_16612_16613) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_16116_16585 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_15561_16585 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_16116_16585 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_15588_15589) (v_1@@91 T@FrameType) (q@@86 T@Field_16141_16142) (w@@91 T@FrameType) (r@@86 T@Field_16141_16142) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_16116_16116 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_15561_16116 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_16116_16116 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_15588_15589) (v_1@@92 T@FrameType) (q@@87 T@Field_16141_16142) (w@@92 T@FrameType) (r@@87 T@Field_15588_15589) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_16116_15561 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_15561_15561 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_16116_15561 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_15588_15589) (v_1@@93 T@FrameType) (q@@88 T@Field_16141_16142) (w@@93 T@FrameType) (r@@88 T@Field_12234_6533) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_16116_12234 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_15561_12234 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_16116_12234 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_15588_15589) (v_1@@94 T@FrameType) (q@@89 T@Field_15588_15589) (w@@94 T@FrameType) (r@@89 T@Field_17129_17130) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_15561_17129 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_15561_17129 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_15561_17129 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_15588_15589) (v_1@@95 T@FrameType) (q@@90 T@Field_15588_15589) (w@@95 T@FrameType) (r@@90 T@Field_16612_16613) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_15561_16585 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_15561_16585 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_15561_16585 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_15588_15589) (v_1@@96 T@FrameType) (q@@91 T@Field_15588_15589) (w@@96 T@FrameType) (r@@91 T@Field_16141_16142) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_15561_16116 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_15561_16116 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_15561_16116 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_15588_15589) (v_1@@97 T@FrameType) (q@@92 T@Field_15588_15589) (w@@97 T@FrameType) (r@@92 T@Field_15588_15589) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_15561_15561 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_15561_15561 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_15561_15561 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_15588_15589) (v_1@@98 T@FrameType) (q@@93 T@Field_15588_15589) (w@@98 T@FrameType) (r@@93 T@Field_12234_6533) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_15561_12234 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_15561_12234 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_15561_12234 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_15588_15589) (v_1@@99 T@FrameType) (q@@94 T@Field_12234_6533) (w@@99 T@FrameType) (r@@94 T@Field_17129_17130) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_12234_17129 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_15561_17129 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_12234_17129 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_15588_15589) (v_1@@100 T@FrameType) (q@@95 T@Field_12234_6533) (w@@100 T@FrameType) (r@@95 T@Field_16612_16613) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_12234_16585 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_15561_16585 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_12234_16585 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_15588_15589) (v_1@@101 T@FrameType) (q@@96 T@Field_12234_6533) (w@@101 T@FrameType) (r@@96 T@Field_16141_16142) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_12234_16116 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_15561_16116 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_12234_16116 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_15588_15589) (v_1@@102 T@FrameType) (q@@97 T@Field_12234_6533) (w@@102 T@FrameType) (r@@97 T@Field_15588_15589) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_12234_15561 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_15561_15561 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_12234_15561 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_15588_15589) (v_1@@103 T@FrameType) (q@@98 T@Field_12234_6533) (w@@103 T@FrameType) (r@@98 T@Field_12234_6533) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_12234_12234 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_15561_12234 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_12234_12234 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_12234_6533) (v_1@@104 T@FrameType) (q@@99 T@Field_17129_17130) (w@@104 T@FrameType) (r@@99 T@Field_17129_17130) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_17129_17129 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_12234_17129 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_17129_17129 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_12234_6533) (v_1@@105 T@FrameType) (q@@100 T@Field_17129_17130) (w@@105 T@FrameType) (r@@100 T@Field_16612_16613) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_17129_16585 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_12234_16585 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_17129_16585 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_12234_6533) (v_1@@106 T@FrameType) (q@@101 T@Field_17129_17130) (w@@106 T@FrameType) (r@@101 T@Field_16141_16142) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_17129_16116 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_12234_16116 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_17129_16116 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_12234_6533) (v_1@@107 T@FrameType) (q@@102 T@Field_17129_17130) (w@@107 T@FrameType) (r@@102 T@Field_15588_15589) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_17129_15561 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_12234_15561 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_17129_15561 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_12234_6533) (v_1@@108 T@FrameType) (q@@103 T@Field_17129_17130) (w@@108 T@FrameType) (r@@103 T@Field_12234_6533) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_17129_12234 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_12234_12234 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_17129_12234 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_12234_6533) (v_1@@109 T@FrameType) (q@@104 T@Field_16612_16613) (w@@109 T@FrameType) (r@@104 T@Field_17129_17130) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_16585_17129 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_12234_17129 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_16585_17129 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_12234_6533) (v_1@@110 T@FrameType) (q@@105 T@Field_16612_16613) (w@@110 T@FrameType) (r@@105 T@Field_16612_16613) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_16585_16585 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_12234_16585 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_16585_16585 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_12234_6533) (v_1@@111 T@FrameType) (q@@106 T@Field_16612_16613) (w@@111 T@FrameType) (r@@106 T@Field_16141_16142) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_16585_16116 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_12234_16116 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_16585_16116 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_12234_6533) (v_1@@112 T@FrameType) (q@@107 T@Field_16612_16613) (w@@112 T@FrameType) (r@@107 T@Field_15588_15589) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_16585_15561 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_12234_15561 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_16585_15561 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_12234_6533) (v_1@@113 T@FrameType) (q@@108 T@Field_16612_16613) (w@@113 T@FrameType) (r@@108 T@Field_12234_6533) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_16585_12234 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_12234_12234 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_16585_12234 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_12234_6533) (v_1@@114 T@FrameType) (q@@109 T@Field_16141_16142) (w@@114 T@FrameType) (r@@109 T@Field_17129_17130) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_16116_17129 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_12234_17129 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_16116_17129 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_12234_6533) (v_1@@115 T@FrameType) (q@@110 T@Field_16141_16142) (w@@115 T@FrameType) (r@@110 T@Field_16612_16613) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_16116_16585 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_12234_16585 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_16116_16585 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_12234_6533) (v_1@@116 T@FrameType) (q@@111 T@Field_16141_16142) (w@@116 T@FrameType) (r@@111 T@Field_16141_16142) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_16116_16116 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_12234_16116 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_16116_16116 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_12234_6533) (v_1@@117 T@FrameType) (q@@112 T@Field_16141_16142) (w@@117 T@FrameType) (r@@112 T@Field_15588_15589) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_16116_15561 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_12234_15561 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_16116_15561 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_12234_6533) (v_1@@118 T@FrameType) (q@@113 T@Field_16141_16142) (w@@118 T@FrameType) (r@@113 T@Field_12234_6533) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_16116_12234 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_12234_12234 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_16116_12234 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_12234_6533) (v_1@@119 T@FrameType) (q@@114 T@Field_15588_15589) (w@@119 T@FrameType) (r@@114 T@Field_17129_17130) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_15561_17129 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_12234_17129 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_15561_17129 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_12234_6533) (v_1@@120 T@FrameType) (q@@115 T@Field_15588_15589) (w@@120 T@FrameType) (r@@115 T@Field_16612_16613) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_15561_16585 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_12234_16585 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_15561_16585 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_12234_6533) (v_1@@121 T@FrameType) (q@@116 T@Field_15588_15589) (w@@121 T@FrameType) (r@@116 T@Field_16141_16142) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_15561_16116 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_12234_16116 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_15561_16116 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_12234_6533) (v_1@@122 T@FrameType) (q@@117 T@Field_15588_15589) (w@@122 T@FrameType) (r@@117 T@Field_15588_15589) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_15561_15561 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_12234_15561 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_15561_15561 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_12234_6533) (v_1@@123 T@FrameType) (q@@118 T@Field_15588_15589) (w@@123 T@FrameType) (r@@118 T@Field_12234_6533) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_15561_12234 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_12234_12234 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_15561_12234 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_12234_6533) (v_1@@124 T@FrameType) (q@@119 T@Field_12234_6533) (w@@124 T@FrameType) (r@@119 T@Field_17129_17130) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_12234_17129 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_12234_17129 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_12234_17129 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_12234_6533) (v_1@@125 T@FrameType) (q@@120 T@Field_12234_6533) (w@@125 T@FrameType) (r@@120 T@Field_16612_16613) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_12234_16585 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_12234_16585 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_12234_16585 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_12234_6533) (v_1@@126 T@FrameType) (q@@121 T@Field_12234_6533) (w@@126 T@FrameType) (r@@121 T@Field_16141_16142) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_12234_16116 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_12234_16116 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_12234_16116 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_12234_6533) (v_1@@127 T@FrameType) (q@@122 T@Field_12234_6533) (w@@127 T@FrameType) (r@@122 T@Field_15588_15589) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_12234_15561 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_12234_15561 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_12234_15561 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_12234_6533) (v_1@@128 T@FrameType) (q@@123 T@Field_12234_6533) (w@@128 T@FrameType) (r@@123 T@Field_12234_6533) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_12234_12234 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_12234_12234 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_12234_12234 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_12174) (ExhaleHeap@@36 T@PolymorphicMapType_12174) (Mask@@87 T@PolymorphicMapType_12195) (pm_f_5@@9 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_16585_6533 Mask@@87 null pm_f_5@@9) (IsPredicateField_6518_6519 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16@@24 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5 f_16@@24) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@64) o2_5 f_16@@24) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5 f_16@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5 f_16@@24))
)) (forall ((o2_5@@0 T@Ref) (f_16@@25 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@0 f_16@@25) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@64) o2_5@@0 f_16@@25) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@0 f_16@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@0 f_16@@25))
))) (forall ((o2_5@@1 T@Ref) (f_16@@26 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@1 f_16@@26) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@64) o2_5@@1 f_16@@26) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@1 f_16@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@1 f_16@@26))
))) (forall ((o2_5@@2 T@Ref) (f_16@@27 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@2 f_16@@27) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@64) o2_5@@2 f_16@@27) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@2 f_16@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@2 f_16@@27))
))) (forall ((o2_5@@3 T@Ref) (f_16@@28 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@3 f_16@@28) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@3 f_16@@28) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@3 f_16@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@3 f_16@@28))
))) (forall ((o2_5@@4 T@Ref) (f_16@@29 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@4 f_16@@29) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@64) o2_5@@4 f_16@@29) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@4 f_16@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@4 f_16@@29))
))) (forall ((o2_5@@5 T@Ref) (f_16@@30 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@5 f_16@@30) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@64) o2_5@@5 f_16@@30) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@5 f_16@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@5 f_16@@30))
))) (forall ((o2_5@@6 T@Ref) (f_16@@31 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@6 f_16@@31) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@64) o2_5@@6 f_16@@31) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@6 f_16@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@6 f_16@@31))
))) (forall ((o2_5@@7 T@Ref) (f_16@@32 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@7 f_16@@32) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@64) o2_5@@7 f_16@@32) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@7 f_16@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@7 f_16@@32))
))) (forall ((o2_5@@8 T@Ref) (f_16@@33 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@8 f_16@@33) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@8 f_16@@33) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@8 f_16@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@8 f_16@@33))
))) (forall ((o2_5@@9 T@Ref) (f_16@@34 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@9 f_16@@34) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@64) o2_5@@9 f_16@@34) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@9 f_16@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@9 f_16@@34))
))) (forall ((o2_5@@10 T@Ref) (f_16@@35 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@10 f_16@@35) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@64) o2_5@@10 f_16@@35) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@10 f_16@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@10 f_16@@35))
))) (forall ((o2_5@@11 T@Ref) (f_16@@36 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@11 f_16@@36) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@64) o2_5@@11 f_16@@36) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@11 f_16@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@11 f_16@@36))
))) (forall ((o2_5@@12 T@Ref) (f_16@@37 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@12 f_16@@37) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@64) o2_5@@12 f_16@@37) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@12 f_16@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@12 f_16@@37))
))) (forall ((o2_5@@13 T@Ref) (f_16@@38 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@13 f_16@@38) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@13 f_16@@38) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@13 f_16@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@13 f_16@@38))
))) (forall ((o2_5@@14 T@Ref) (f_16@@39 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@14 f_16@@39) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@64) o2_5@@14 f_16@@39) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@14 f_16@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@14 f_16@@39))
))) (forall ((o2_5@@15 T@Ref) (f_16@@40 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@15 f_16@@40) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@64) o2_5@@15 f_16@@40) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@15 f_16@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@15 f_16@@40))
))) (forall ((o2_5@@16 T@Ref) (f_16@@41 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@16 f_16@@41) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@64) o2_5@@16 f_16@@41) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@16 f_16@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@16 f_16@@41))
))) (forall ((o2_5@@17 T@Ref) (f_16@@42 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@17 f_16@@42) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) o2_5@@17 f_16@@42) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@17 f_16@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@17 f_16@@42))
))) (forall ((o2_5@@18 T@Ref) (f_16@@43 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@18 f_16@@43) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@18 f_16@@43) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@18 f_16@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@18 f_16@@43))
))) (forall ((o2_5@@19 T@Ref) (f_16@@44 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@19 f_16@@44) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@64) o2_5@@19 f_16@@44) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@19 f_16@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@19 f_16@@44))
))) (forall ((o2_5@@20 T@Ref) (f_16@@45 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@20 f_16@@45) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@64) o2_5@@20 f_16@@45) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@20 f_16@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@20 f_16@@45))
))) (forall ((o2_5@@21 T@Ref) (f_16@@46 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@21 f_16@@46) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@64) o2_5@@21 f_16@@46) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@21 f_16@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@21 f_16@@46))
))) (forall ((o2_5@@22 T@Ref) (f_16@@47 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@22 f_16@@47) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@64) o2_5@@22 f_16@@47) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@22 f_16@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@22 f_16@@47))
))) (forall ((o2_5@@23 T@Ref) (f_16@@48 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@23 f_16@@48) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@23 f_16@@48) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@23 f_16@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@23 f_16@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@36 Mask@@87) (IsPredicateField_6518_6519 pm_f_5@@9))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_12174) (ExhaleHeap@@37 T@PolymorphicMapType_12174) (Mask@@88 T@PolymorphicMapType_12195) (pm_f_5@@10 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_16116_6533 Mask@@88 null pm_f_5@@10) (IsPredicateField_6507_6508 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@24 T@Ref) (f_16@@49 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@24 f_16@@49) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@65) o2_5@@24 f_16@@49) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@24 f_16@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@24 f_16@@49))
)) (forall ((o2_5@@25 T@Ref) (f_16@@50 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@25 f_16@@50) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@65) o2_5@@25 f_16@@50) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@25 f_16@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@25 f_16@@50))
))) (forall ((o2_5@@26 T@Ref) (f_16@@51 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@26 f_16@@51) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@65) o2_5@@26 f_16@@51) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@26 f_16@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@26 f_16@@51))
))) (forall ((o2_5@@27 T@Ref) (f_16@@52 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@27 f_16@@52) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@65) o2_5@@27 f_16@@52) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@27 f_16@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@27 f_16@@52))
))) (forall ((o2_5@@28 T@Ref) (f_16@@53 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@28 f_16@@53) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@28 f_16@@53) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@28 f_16@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@28 f_16@@53))
))) (forall ((o2_5@@29 T@Ref) (f_16@@54 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@29 f_16@@54) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@65) o2_5@@29 f_16@@54) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@29 f_16@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@29 f_16@@54))
))) (forall ((o2_5@@30 T@Ref) (f_16@@55 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@30 f_16@@55) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@65) o2_5@@30 f_16@@55) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@30 f_16@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@30 f_16@@55))
))) (forall ((o2_5@@31 T@Ref) (f_16@@56 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@31 f_16@@56) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@65) o2_5@@31 f_16@@56) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@31 f_16@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@31 f_16@@56))
))) (forall ((o2_5@@32 T@Ref) (f_16@@57 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@32 f_16@@57) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@65) o2_5@@32 f_16@@57) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@32 f_16@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@32 f_16@@57))
))) (forall ((o2_5@@33 T@Ref) (f_16@@58 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@33 f_16@@58) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@33 f_16@@58) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@33 f_16@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@33 f_16@@58))
))) (forall ((o2_5@@34 T@Ref) (f_16@@59 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@34 f_16@@59) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@65) o2_5@@34 f_16@@59) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@34 f_16@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@34 f_16@@59))
))) (forall ((o2_5@@35 T@Ref) (f_16@@60 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@35 f_16@@60) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@65) o2_5@@35 f_16@@60) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@35 f_16@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@35 f_16@@60))
))) (forall ((o2_5@@36 T@Ref) (f_16@@61 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@36 f_16@@61) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@65) o2_5@@36 f_16@@61) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@36 f_16@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@36 f_16@@61))
))) (forall ((o2_5@@37 T@Ref) (f_16@@62 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@37 f_16@@62) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) o2_5@@37 f_16@@62) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@37 f_16@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@37 f_16@@62))
))) (forall ((o2_5@@38 T@Ref) (f_16@@63 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@38 f_16@@63) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@38 f_16@@63) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@38 f_16@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@38 f_16@@63))
))) (forall ((o2_5@@39 T@Ref) (f_16@@64 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@39 f_16@@64) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@65) o2_5@@39 f_16@@64) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@39 f_16@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@39 f_16@@64))
))) (forall ((o2_5@@40 T@Ref) (f_16@@65 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@40 f_16@@65) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@65) o2_5@@40 f_16@@65) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@40 f_16@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@40 f_16@@65))
))) (forall ((o2_5@@41 T@Ref) (f_16@@66 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@41 f_16@@66) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@65) o2_5@@41 f_16@@66) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@41 f_16@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@41 f_16@@66))
))) (forall ((o2_5@@42 T@Ref) (f_16@@67 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@42 f_16@@67) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@65) o2_5@@42 f_16@@67) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@42 f_16@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@42 f_16@@67))
))) (forall ((o2_5@@43 T@Ref) (f_16@@68 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@43 f_16@@68) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@43 f_16@@68) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@43 f_16@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@43 f_16@@68))
))) (forall ((o2_5@@44 T@Ref) (f_16@@69 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@44 f_16@@69) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@65) o2_5@@44 f_16@@69) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@44 f_16@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@44 f_16@@69))
))) (forall ((o2_5@@45 T@Ref) (f_16@@70 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@45 f_16@@70) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@65) o2_5@@45 f_16@@70) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@45 f_16@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@45 f_16@@70))
))) (forall ((o2_5@@46 T@Ref) (f_16@@71 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@46 f_16@@71) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@65) o2_5@@46 f_16@@71) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@46 f_16@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@46 f_16@@71))
))) (forall ((o2_5@@47 T@Ref) (f_16@@72 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@47 f_16@@72) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@65) o2_5@@47 f_16@@72) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@47 f_16@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@47 f_16@@72))
))) (forall ((o2_5@@48 T@Ref) (f_16@@73 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@48 f_16@@73) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@48 f_16@@73) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@48 f_16@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@48 f_16@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@37 Mask@@88) (IsPredicateField_6507_6508 pm_f_5@@10))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_12174) (ExhaleHeap@@38 T@PolymorphicMapType_12174) (Mask@@89 T@PolymorphicMapType_12195) (pm_f_5@@11 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_15561_6533 Mask@@89 null pm_f_5@@11) (IsPredicateField_6483_6484 pm_f_5@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@49 T@Ref) (f_16@@74 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@49 f_16@@74) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@66) o2_5@@49 f_16@@74) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@49 f_16@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@49 f_16@@74))
)) (forall ((o2_5@@50 T@Ref) (f_16@@75 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@50 f_16@@75) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@66) o2_5@@50 f_16@@75) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@50 f_16@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@50 f_16@@75))
))) (forall ((o2_5@@51 T@Ref) (f_16@@76 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@51 f_16@@76) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@66) o2_5@@51 f_16@@76) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@51 f_16@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@51 f_16@@76))
))) (forall ((o2_5@@52 T@Ref) (f_16@@77 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@52 f_16@@77) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@66) o2_5@@52 f_16@@77) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@52 f_16@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@52 f_16@@77))
))) (forall ((o2_5@@53 T@Ref) (f_16@@78 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@53 f_16@@78) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@53 f_16@@78) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@53 f_16@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@53 f_16@@78))
))) (forall ((o2_5@@54 T@Ref) (f_16@@79 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@54 f_16@@79) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@66) o2_5@@54 f_16@@79) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@54 f_16@@79)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@54 f_16@@79))
))) (forall ((o2_5@@55 T@Ref) (f_16@@80 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@55 f_16@@80) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@66) o2_5@@55 f_16@@80) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@55 f_16@@80)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@55 f_16@@80))
))) (forall ((o2_5@@56 T@Ref) (f_16@@81 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@56 f_16@@81) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@66) o2_5@@56 f_16@@81) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@56 f_16@@81)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@56 f_16@@81))
))) (forall ((o2_5@@57 T@Ref) (f_16@@82 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@57 f_16@@82) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) o2_5@@57 f_16@@82) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@57 f_16@@82)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@57 f_16@@82))
))) (forall ((o2_5@@58 T@Ref) (f_16@@83 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@58 f_16@@83) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@58 f_16@@83) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@58 f_16@@83)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@58 f_16@@83))
))) (forall ((o2_5@@59 T@Ref) (f_16@@84 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@59 f_16@@84) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@66) o2_5@@59 f_16@@84) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@59 f_16@@84)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@59 f_16@@84))
))) (forall ((o2_5@@60 T@Ref) (f_16@@85 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@60 f_16@@85) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@66) o2_5@@60 f_16@@85) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@60 f_16@@85)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@60 f_16@@85))
))) (forall ((o2_5@@61 T@Ref) (f_16@@86 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@61 f_16@@86) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@66) o2_5@@61 f_16@@86) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@61 f_16@@86)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@61 f_16@@86))
))) (forall ((o2_5@@62 T@Ref) (f_16@@87 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@62 f_16@@87) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@66) o2_5@@62 f_16@@87) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@62 f_16@@87)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@62 f_16@@87))
))) (forall ((o2_5@@63 T@Ref) (f_16@@88 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@63 f_16@@88) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@63 f_16@@88) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@63 f_16@@88)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@63 f_16@@88))
))) (forall ((o2_5@@64 T@Ref) (f_16@@89 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@64 f_16@@89) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@66) o2_5@@64 f_16@@89) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@64 f_16@@89)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@64 f_16@@89))
))) (forall ((o2_5@@65 T@Ref) (f_16@@90 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@65 f_16@@90) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@66) o2_5@@65 f_16@@90) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@65 f_16@@90)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@65 f_16@@90))
))) (forall ((o2_5@@66 T@Ref) (f_16@@91 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@66 f_16@@91) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@66) o2_5@@66 f_16@@91) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@66 f_16@@91)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@66 f_16@@91))
))) (forall ((o2_5@@67 T@Ref) (f_16@@92 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@67 f_16@@92) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@66) o2_5@@67 f_16@@92) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@67 f_16@@92)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@67 f_16@@92))
))) (forall ((o2_5@@68 T@Ref) (f_16@@93 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@68 f_16@@93) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@68 f_16@@93) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@68 f_16@@93)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@68 f_16@@93))
))) (forall ((o2_5@@69 T@Ref) (f_16@@94 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@69 f_16@@94) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@66) o2_5@@69 f_16@@94) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@69 f_16@@94)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@69 f_16@@94))
))) (forall ((o2_5@@70 T@Ref) (f_16@@95 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@70 f_16@@95) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@66) o2_5@@70 f_16@@95) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@70 f_16@@95)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@70 f_16@@95))
))) (forall ((o2_5@@71 T@Ref) (f_16@@96 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@71 f_16@@96) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@66) o2_5@@71 f_16@@96) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@71 f_16@@96)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@71 f_16@@96))
))) (forall ((o2_5@@72 T@Ref) (f_16@@97 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@72 f_16@@97) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@66) o2_5@@72 f_16@@97) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@72 f_16@@97)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@72 f_16@@97))
))) (forall ((o2_5@@73 T@Ref) (f_16@@98 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@73 f_16@@98) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@73 f_16@@98) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@73 f_16@@98)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@73 f_16@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@38 Mask@@89) (IsPredicateField_6483_6484 pm_f_5@@11))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_12174) (ExhaleHeap@@39 T@PolymorphicMapType_12174) (Mask@@90 T@PolymorphicMapType_12195) (pm_f_5@@12 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_12234_6533 Mask@@90 null pm_f_5@@12) (IsPredicateField_12234_44340 pm_f_5@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_16@@99 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@74 f_16@@99) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@67) o2_5@@74 f_16@@99) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@74 f_16@@99)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@74 f_16@@99))
)) (forall ((o2_5@@75 T@Ref) (f_16@@100 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@75 f_16@@100) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@67) o2_5@@75 f_16@@100) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@75 f_16@@100)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@75 f_16@@100))
))) (forall ((o2_5@@76 T@Ref) (f_16@@101 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@76 f_16@@101) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@67) o2_5@@76 f_16@@101) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@76 f_16@@101)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@76 f_16@@101))
))) (forall ((o2_5@@77 T@Ref) (f_16@@102 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@77 f_16@@102) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) o2_5@@77 f_16@@102) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@77 f_16@@102)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@77 f_16@@102))
))) (forall ((o2_5@@78 T@Ref) (f_16@@103 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@78 f_16@@103) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@78 f_16@@103) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@78 f_16@@103)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@78 f_16@@103))
))) (forall ((o2_5@@79 T@Ref) (f_16@@104 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@79 f_16@@104) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@67) o2_5@@79 f_16@@104) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@79 f_16@@104)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@79 f_16@@104))
))) (forall ((o2_5@@80 T@Ref) (f_16@@105 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@80 f_16@@105) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@67) o2_5@@80 f_16@@105) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@80 f_16@@105)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@80 f_16@@105))
))) (forall ((o2_5@@81 T@Ref) (f_16@@106 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@81 f_16@@106) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@67) o2_5@@81 f_16@@106) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@81 f_16@@106)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@81 f_16@@106))
))) (forall ((o2_5@@82 T@Ref) (f_16@@107 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@82 f_16@@107) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@67) o2_5@@82 f_16@@107) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@82 f_16@@107)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@82 f_16@@107))
))) (forall ((o2_5@@83 T@Ref) (f_16@@108 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@83 f_16@@108) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@83 f_16@@108) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@83 f_16@@108)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@83 f_16@@108))
))) (forall ((o2_5@@84 T@Ref) (f_16@@109 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@84 f_16@@109) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@67) o2_5@@84 f_16@@109) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@84 f_16@@109)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@84 f_16@@109))
))) (forall ((o2_5@@85 T@Ref) (f_16@@110 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@85 f_16@@110) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@67) o2_5@@85 f_16@@110) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@85 f_16@@110)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@85 f_16@@110))
))) (forall ((o2_5@@86 T@Ref) (f_16@@111 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@86 f_16@@111) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@67) o2_5@@86 f_16@@111) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@86 f_16@@111)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@86 f_16@@111))
))) (forall ((o2_5@@87 T@Ref) (f_16@@112 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@87 f_16@@112) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@67) o2_5@@87 f_16@@112) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@87 f_16@@112)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@87 f_16@@112))
))) (forall ((o2_5@@88 T@Ref) (f_16@@113 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@88 f_16@@113) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@88 f_16@@113) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@88 f_16@@113)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@88 f_16@@113))
))) (forall ((o2_5@@89 T@Ref) (f_16@@114 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@89 f_16@@114) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@67) o2_5@@89 f_16@@114) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@89 f_16@@114)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@89 f_16@@114))
))) (forall ((o2_5@@90 T@Ref) (f_16@@115 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@90 f_16@@115) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@67) o2_5@@90 f_16@@115) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@90 f_16@@115)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@90 f_16@@115))
))) (forall ((o2_5@@91 T@Ref) (f_16@@116 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@91 f_16@@116) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@67) o2_5@@91 f_16@@116) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@91 f_16@@116)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@91 f_16@@116))
))) (forall ((o2_5@@92 T@Ref) (f_16@@117 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@92 f_16@@117) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@67) o2_5@@92 f_16@@117) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@92 f_16@@117)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@92 f_16@@117))
))) (forall ((o2_5@@93 T@Ref) (f_16@@118 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@93 f_16@@118) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@93 f_16@@118) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@93 f_16@@118)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@93 f_16@@118))
))) (forall ((o2_5@@94 T@Ref) (f_16@@119 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@94 f_16@@119) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@67) o2_5@@94 f_16@@119) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@94 f_16@@119)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@94 f_16@@119))
))) (forall ((o2_5@@95 T@Ref) (f_16@@120 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@95 f_16@@120) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@67) o2_5@@95 f_16@@120) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@95 f_16@@120)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@95 f_16@@120))
))) (forall ((o2_5@@96 T@Ref) (f_16@@121 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@96 f_16@@121) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@67) o2_5@@96 f_16@@121) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@96 f_16@@121)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@96 f_16@@121))
))) (forall ((o2_5@@97 T@Ref) (f_16@@122 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@97 f_16@@122) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@67) o2_5@@97 f_16@@122) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@97 f_16@@122)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@97 f_16@@122))
))) (forall ((o2_5@@98 T@Ref) (f_16@@123 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@98 f_16@@123) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@98 f_16@@123) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@98 f_16@@123)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@98 f_16@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@39 Mask@@90) (IsPredicateField_12234_44340 pm_f_5@@12))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_12174) (ExhaleHeap@@40 T@PolymorphicMapType_12174) (Mask@@91 T@PolymorphicMapType_12195) (pm_f_5@@13 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_6532_6533 Mask@@91 null pm_f_5@@13) (IsPredicateField_6532_6533 pm_f_5@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@99 T@Ref) (f_16@@124 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@99 f_16@@124) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@68) o2_5@@99 f_16@@124) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@99 f_16@@124)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@99 f_16@@124))
)) (forall ((o2_5@@100 T@Ref) (f_16@@125 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@100 f_16@@125) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@68) o2_5@@100 f_16@@125) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@100 f_16@@125)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@100 f_16@@125))
))) (forall ((o2_5@@101 T@Ref) (f_16@@126 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@101 f_16@@126) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@68) o2_5@@101 f_16@@126) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@101 f_16@@126)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@101 f_16@@126))
))) (forall ((o2_5@@102 T@Ref) (f_16@@127 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@102 f_16@@127) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@68) o2_5@@102 f_16@@127) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@102 f_16@@127)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@102 f_16@@127))
))) (forall ((o2_5@@103 T@Ref) (f_16@@128 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@103 f_16@@128) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@103 f_16@@128) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@103 f_16@@128)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@103 f_16@@128))
))) (forall ((o2_5@@104 T@Ref) (f_16@@129 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@104 f_16@@129) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@68) o2_5@@104 f_16@@129) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@104 f_16@@129)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@104 f_16@@129))
))) (forall ((o2_5@@105 T@Ref) (f_16@@130 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@105 f_16@@130) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@68) o2_5@@105 f_16@@130) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@105 f_16@@130)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@105 f_16@@130))
))) (forall ((o2_5@@106 T@Ref) (f_16@@131 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@106 f_16@@131) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@68) o2_5@@106 f_16@@131) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@106 f_16@@131)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@106 f_16@@131))
))) (forall ((o2_5@@107 T@Ref) (f_16@@132 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@107 f_16@@132) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@68) o2_5@@107 f_16@@132) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@107 f_16@@132)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@107 f_16@@132))
))) (forall ((o2_5@@108 T@Ref) (f_16@@133 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@108 f_16@@133) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@108 f_16@@133) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@108 f_16@@133)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@108 f_16@@133))
))) (forall ((o2_5@@109 T@Ref) (f_16@@134 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@109 f_16@@134) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@68) o2_5@@109 f_16@@134) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@109 f_16@@134)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@109 f_16@@134))
))) (forall ((o2_5@@110 T@Ref) (f_16@@135 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@110 f_16@@135) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@68) o2_5@@110 f_16@@135) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@110 f_16@@135)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@110 f_16@@135))
))) (forall ((o2_5@@111 T@Ref) (f_16@@136 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@111 f_16@@136) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@68) o2_5@@111 f_16@@136) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@111 f_16@@136)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@111 f_16@@136))
))) (forall ((o2_5@@112 T@Ref) (f_16@@137 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@112 f_16@@137) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@68) o2_5@@112 f_16@@137) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@112 f_16@@137)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@112 f_16@@137))
))) (forall ((o2_5@@113 T@Ref) (f_16@@138 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@113 f_16@@138) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@113 f_16@@138) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@113 f_16@@138)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@113 f_16@@138))
))) (forall ((o2_5@@114 T@Ref) (f_16@@139 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@114 f_16@@139) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@68) o2_5@@114 f_16@@139) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@114 f_16@@139)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@114 f_16@@139))
))) (forall ((o2_5@@115 T@Ref) (f_16@@140 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@115 f_16@@140) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@68) o2_5@@115 f_16@@140) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@115 f_16@@140)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@115 f_16@@140))
))) (forall ((o2_5@@116 T@Ref) (f_16@@141 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@116 f_16@@141) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@68) o2_5@@116 f_16@@141) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@116 f_16@@141)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@116 f_16@@141))
))) (forall ((o2_5@@117 T@Ref) (f_16@@142 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@117 f_16@@142) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@68) o2_5@@117 f_16@@142) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@117 f_16@@142)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@117 f_16@@142))
))) (forall ((o2_5@@118 T@Ref) (f_16@@143 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@118 f_16@@143) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@118 f_16@@143) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@118 f_16@@143)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@118 f_16@@143))
))) (forall ((o2_5@@119 T@Ref) (f_16@@144 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@119 f_16@@144) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@68) o2_5@@119 f_16@@144) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@119 f_16@@144)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@119 f_16@@144))
))) (forall ((o2_5@@120 T@Ref) (f_16@@145 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@120 f_16@@145) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@68) o2_5@@120 f_16@@145) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@120 f_16@@145)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@120 f_16@@145))
))) (forall ((o2_5@@121 T@Ref) (f_16@@146 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@121 f_16@@146) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@68) o2_5@@121 f_16@@146) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@121 f_16@@146)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@121 f_16@@146))
))) (forall ((o2_5@@122 T@Ref) (f_16@@147 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@122 f_16@@147) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) o2_5@@122 f_16@@147) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@122 f_16@@147)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@122 f_16@@147))
))) (forall ((o2_5@@123 T@Ref) (f_16@@148 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@123 f_16@@148) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@123 f_16@@148) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@123 f_16@@148)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@123 f_16@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@40 Mask@@91) (IsPredicateField_6532_6533 pm_f_5@@13))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_12174) (ExhaleHeap@@41 T@PolymorphicMapType_12174) (Mask@@92 T@PolymorphicMapType_12195) (pm_f_5@@14 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_16585_6533 Mask@@92 null pm_f_5@@14) (IsWandField_6518_6519 pm_f_5@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@124 T@Ref) (f_16@@149 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@124 f_16@@149) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@69) o2_5@@124 f_16@@149) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@124 f_16@@149)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@124 f_16@@149))
)) (forall ((o2_5@@125 T@Ref) (f_16@@150 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@125 f_16@@150) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@69) o2_5@@125 f_16@@150) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@125 f_16@@150)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@125 f_16@@150))
))) (forall ((o2_5@@126 T@Ref) (f_16@@151 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@126 f_16@@151) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@69) o2_5@@126 f_16@@151) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@126 f_16@@151)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@126 f_16@@151))
))) (forall ((o2_5@@127 T@Ref) (f_16@@152 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@127 f_16@@152) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@69) o2_5@@127 f_16@@152) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@127 f_16@@152)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@127 f_16@@152))
))) (forall ((o2_5@@128 T@Ref) (f_16@@153 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@128 f_16@@153) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@128 f_16@@153) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@128 f_16@@153)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@128 f_16@@153))
))) (forall ((o2_5@@129 T@Ref) (f_16@@154 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@129 f_16@@154) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@69) o2_5@@129 f_16@@154) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@129 f_16@@154)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@129 f_16@@154))
))) (forall ((o2_5@@130 T@Ref) (f_16@@155 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@130 f_16@@155) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@69) o2_5@@130 f_16@@155) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@130 f_16@@155)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@130 f_16@@155))
))) (forall ((o2_5@@131 T@Ref) (f_16@@156 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@131 f_16@@156) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@69) o2_5@@131 f_16@@156) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@131 f_16@@156)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@131 f_16@@156))
))) (forall ((o2_5@@132 T@Ref) (f_16@@157 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@132 f_16@@157) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@69) o2_5@@132 f_16@@157) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@132 f_16@@157)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@132 f_16@@157))
))) (forall ((o2_5@@133 T@Ref) (f_16@@158 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@133 f_16@@158) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@133 f_16@@158) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@133 f_16@@158)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@133 f_16@@158))
))) (forall ((o2_5@@134 T@Ref) (f_16@@159 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@134 f_16@@159) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@69) o2_5@@134 f_16@@159) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@134 f_16@@159)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@134 f_16@@159))
))) (forall ((o2_5@@135 T@Ref) (f_16@@160 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@135 f_16@@160) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@69) o2_5@@135 f_16@@160) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@135 f_16@@160)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@135 f_16@@160))
))) (forall ((o2_5@@136 T@Ref) (f_16@@161 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@136 f_16@@161) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@69) o2_5@@136 f_16@@161) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@136 f_16@@161)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@136 f_16@@161))
))) (forall ((o2_5@@137 T@Ref) (f_16@@162 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@137 f_16@@162) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@69) o2_5@@137 f_16@@162) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@137 f_16@@162)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@137 f_16@@162))
))) (forall ((o2_5@@138 T@Ref) (f_16@@163 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@138 f_16@@163) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@138 f_16@@163) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@138 f_16@@163)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@138 f_16@@163))
))) (forall ((o2_5@@139 T@Ref) (f_16@@164 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@139 f_16@@164) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@69) o2_5@@139 f_16@@164) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@139 f_16@@164)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@139 f_16@@164))
))) (forall ((o2_5@@140 T@Ref) (f_16@@165 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@140 f_16@@165) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@69) o2_5@@140 f_16@@165) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@140 f_16@@165)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@140 f_16@@165))
))) (forall ((o2_5@@141 T@Ref) (f_16@@166 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@141 f_16@@166) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@69) o2_5@@141 f_16@@166) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@141 f_16@@166)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@141 f_16@@166))
))) (forall ((o2_5@@142 T@Ref) (f_16@@167 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@142 f_16@@167) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) o2_5@@142 f_16@@167) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@142 f_16@@167)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@142 f_16@@167))
))) (forall ((o2_5@@143 T@Ref) (f_16@@168 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@143 f_16@@168) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@143 f_16@@168) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@143 f_16@@168)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@143 f_16@@168))
))) (forall ((o2_5@@144 T@Ref) (f_16@@169 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@144 f_16@@169) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@69) o2_5@@144 f_16@@169) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@144 f_16@@169)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@144 f_16@@169))
))) (forall ((o2_5@@145 T@Ref) (f_16@@170 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@145 f_16@@170) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@69) o2_5@@145 f_16@@170) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@145 f_16@@170)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@145 f_16@@170))
))) (forall ((o2_5@@146 T@Ref) (f_16@@171 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@146 f_16@@171) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@69) o2_5@@146 f_16@@171) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@146 f_16@@171)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@146 f_16@@171))
))) (forall ((o2_5@@147 T@Ref) (f_16@@172 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@147 f_16@@172) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@69) o2_5@@147 f_16@@172) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@147 f_16@@172)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@147 f_16@@172))
))) (forall ((o2_5@@148 T@Ref) (f_16@@173 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@148 f_16@@173) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@148 f_16@@173) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@148 f_16@@173)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@148 f_16@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@41 Mask@@92) (IsWandField_6518_6519 pm_f_5@@14))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_12174) (ExhaleHeap@@42 T@PolymorphicMapType_12174) (Mask@@93 T@PolymorphicMapType_12195) (pm_f_5@@15 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_16116_6533 Mask@@93 null pm_f_5@@15) (IsWandField_6507_6508 pm_f_5@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@149 T@Ref) (f_16@@174 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@149 f_16@@174) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@70) o2_5@@149 f_16@@174) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@149 f_16@@174)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@149 f_16@@174))
)) (forall ((o2_5@@150 T@Ref) (f_16@@175 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@150 f_16@@175) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@70) o2_5@@150 f_16@@175) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@150 f_16@@175)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@150 f_16@@175))
))) (forall ((o2_5@@151 T@Ref) (f_16@@176 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@151 f_16@@176) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@70) o2_5@@151 f_16@@176) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@151 f_16@@176)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@151 f_16@@176))
))) (forall ((o2_5@@152 T@Ref) (f_16@@177 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@152 f_16@@177) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@70) o2_5@@152 f_16@@177) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@152 f_16@@177)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@152 f_16@@177))
))) (forall ((o2_5@@153 T@Ref) (f_16@@178 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@153 f_16@@178) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@153 f_16@@178) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@153 f_16@@178)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@153 f_16@@178))
))) (forall ((o2_5@@154 T@Ref) (f_16@@179 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@154 f_16@@179) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@70) o2_5@@154 f_16@@179) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@154 f_16@@179)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@154 f_16@@179))
))) (forall ((o2_5@@155 T@Ref) (f_16@@180 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@155 f_16@@180) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@70) o2_5@@155 f_16@@180) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@155 f_16@@180)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@155 f_16@@180))
))) (forall ((o2_5@@156 T@Ref) (f_16@@181 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@156 f_16@@181) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@70) o2_5@@156 f_16@@181) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@156 f_16@@181)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@156 f_16@@181))
))) (forall ((o2_5@@157 T@Ref) (f_16@@182 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@157 f_16@@182) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@70) o2_5@@157 f_16@@182) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@157 f_16@@182)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@157 f_16@@182))
))) (forall ((o2_5@@158 T@Ref) (f_16@@183 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@158 f_16@@183) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@158 f_16@@183) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@158 f_16@@183)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@158 f_16@@183))
))) (forall ((o2_5@@159 T@Ref) (f_16@@184 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@159 f_16@@184) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@70) o2_5@@159 f_16@@184) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@159 f_16@@184)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@159 f_16@@184))
))) (forall ((o2_5@@160 T@Ref) (f_16@@185 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@160 f_16@@185) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@70) o2_5@@160 f_16@@185) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@160 f_16@@185)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@160 f_16@@185))
))) (forall ((o2_5@@161 T@Ref) (f_16@@186 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@161 f_16@@186) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@70) o2_5@@161 f_16@@186) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@161 f_16@@186)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@161 f_16@@186))
))) (forall ((o2_5@@162 T@Ref) (f_16@@187 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@162 f_16@@187) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) o2_5@@162 f_16@@187) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@162 f_16@@187)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@162 f_16@@187))
))) (forall ((o2_5@@163 T@Ref) (f_16@@188 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@163 f_16@@188) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@163 f_16@@188) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@163 f_16@@188)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@163 f_16@@188))
))) (forall ((o2_5@@164 T@Ref) (f_16@@189 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@164 f_16@@189) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@70) o2_5@@164 f_16@@189) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@164 f_16@@189)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@164 f_16@@189))
))) (forall ((o2_5@@165 T@Ref) (f_16@@190 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@165 f_16@@190) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@70) o2_5@@165 f_16@@190) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@165 f_16@@190)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@165 f_16@@190))
))) (forall ((o2_5@@166 T@Ref) (f_16@@191 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@166 f_16@@191) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@70) o2_5@@166 f_16@@191) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@166 f_16@@191)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@166 f_16@@191))
))) (forall ((o2_5@@167 T@Ref) (f_16@@192 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@167 f_16@@192) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@70) o2_5@@167 f_16@@192) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@167 f_16@@192)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@167 f_16@@192))
))) (forall ((o2_5@@168 T@Ref) (f_16@@193 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@168 f_16@@193) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@168 f_16@@193) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@168 f_16@@193)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@168 f_16@@193))
))) (forall ((o2_5@@169 T@Ref) (f_16@@194 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@169 f_16@@194) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@70) o2_5@@169 f_16@@194) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@169 f_16@@194)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@169 f_16@@194))
))) (forall ((o2_5@@170 T@Ref) (f_16@@195 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@170 f_16@@195) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@70) o2_5@@170 f_16@@195) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@170 f_16@@195)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@170 f_16@@195))
))) (forall ((o2_5@@171 T@Ref) (f_16@@196 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@171 f_16@@196) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@70) o2_5@@171 f_16@@196) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@171 f_16@@196)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@171 f_16@@196))
))) (forall ((o2_5@@172 T@Ref) (f_16@@197 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@172 f_16@@197) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@70) o2_5@@172 f_16@@197) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@172 f_16@@197)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@172 f_16@@197))
))) (forall ((o2_5@@173 T@Ref) (f_16@@198 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@173 f_16@@198) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@173 f_16@@198) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@173 f_16@@198)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@173 f_16@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@42 Mask@@93) (IsWandField_6507_6508 pm_f_5@@15))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_12174) (ExhaleHeap@@43 T@PolymorphicMapType_12174) (Mask@@94 T@PolymorphicMapType_12195) (pm_f_5@@16 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_15561_6533 Mask@@94 null pm_f_5@@16) (IsWandField_6483_6484 pm_f_5@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@174 T@Ref) (f_16@@199 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@174 f_16@@199) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@71) o2_5@@174 f_16@@199) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@174 f_16@@199)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@174 f_16@@199))
)) (forall ((o2_5@@175 T@Ref) (f_16@@200 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@175 f_16@@200) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@71) o2_5@@175 f_16@@200) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@175 f_16@@200)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@175 f_16@@200))
))) (forall ((o2_5@@176 T@Ref) (f_16@@201 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@176 f_16@@201) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@71) o2_5@@176 f_16@@201) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@176 f_16@@201)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@176 f_16@@201))
))) (forall ((o2_5@@177 T@Ref) (f_16@@202 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@177 f_16@@202) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@71) o2_5@@177 f_16@@202) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@177 f_16@@202)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@177 f_16@@202))
))) (forall ((o2_5@@178 T@Ref) (f_16@@203 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@178 f_16@@203) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@178 f_16@@203) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@178 f_16@@203)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@178 f_16@@203))
))) (forall ((o2_5@@179 T@Ref) (f_16@@204 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@179 f_16@@204) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@71) o2_5@@179 f_16@@204) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@179 f_16@@204)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@179 f_16@@204))
))) (forall ((o2_5@@180 T@Ref) (f_16@@205 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@180 f_16@@205) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@71) o2_5@@180 f_16@@205) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@180 f_16@@205)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@180 f_16@@205))
))) (forall ((o2_5@@181 T@Ref) (f_16@@206 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@181 f_16@@206) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@71) o2_5@@181 f_16@@206) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@181 f_16@@206)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@181 f_16@@206))
))) (forall ((o2_5@@182 T@Ref) (f_16@@207 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@182 f_16@@207) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) o2_5@@182 f_16@@207) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@182 f_16@@207)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@182 f_16@@207))
))) (forall ((o2_5@@183 T@Ref) (f_16@@208 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@183 f_16@@208) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@183 f_16@@208) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@183 f_16@@208)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@183 f_16@@208))
))) (forall ((o2_5@@184 T@Ref) (f_16@@209 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@184 f_16@@209) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@71) o2_5@@184 f_16@@209) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@184 f_16@@209)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@184 f_16@@209))
))) (forall ((o2_5@@185 T@Ref) (f_16@@210 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@185 f_16@@210) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@71) o2_5@@185 f_16@@210) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@185 f_16@@210)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@185 f_16@@210))
))) (forall ((o2_5@@186 T@Ref) (f_16@@211 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@186 f_16@@211) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@71) o2_5@@186 f_16@@211) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@186 f_16@@211)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@186 f_16@@211))
))) (forall ((o2_5@@187 T@Ref) (f_16@@212 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@187 f_16@@212) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@71) o2_5@@187 f_16@@212) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@187 f_16@@212)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@187 f_16@@212))
))) (forall ((o2_5@@188 T@Ref) (f_16@@213 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@188 f_16@@213) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@188 f_16@@213) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@188 f_16@@213)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@188 f_16@@213))
))) (forall ((o2_5@@189 T@Ref) (f_16@@214 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@189 f_16@@214) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@71) o2_5@@189 f_16@@214) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@189 f_16@@214)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@189 f_16@@214))
))) (forall ((o2_5@@190 T@Ref) (f_16@@215 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@190 f_16@@215) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@71) o2_5@@190 f_16@@215) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@190 f_16@@215)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@190 f_16@@215))
))) (forall ((o2_5@@191 T@Ref) (f_16@@216 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@191 f_16@@216) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@71) o2_5@@191 f_16@@216) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@191 f_16@@216)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@191 f_16@@216))
))) (forall ((o2_5@@192 T@Ref) (f_16@@217 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@192 f_16@@217) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@71) o2_5@@192 f_16@@217) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@192 f_16@@217)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@192 f_16@@217))
))) (forall ((o2_5@@193 T@Ref) (f_16@@218 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@193 f_16@@218) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@193 f_16@@218) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@193 f_16@@218)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@193 f_16@@218))
))) (forall ((o2_5@@194 T@Ref) (f_16@@219 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@194 f_16@@219) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@71) o2_5@@194 f_16@@219) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@194 f_16@@219)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@194 f_16@@219))
))) (forall ((o2_5@@195 T@Ref) (f_16@@220 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@195 f_16@@220) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@71) o2_5@@195 f_16@@220) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@195 f_16@@220)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@195 f_16@@220))
))) (forall ((o2_5@@196 T@Ref) (f_16@@221 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@196 f_16@@221) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@71) o2_5@@196 f_16@@221) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@196 f_16@@221)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@196 f_16@@221))
))) (forall ((o2_5@@197 T@Ref) (f_16@@222 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@197 f_16@@222) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@71) o2_5@@197 f_16@@222) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@197 f_16@@222)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@197 f_16@@222))
))) (forall ((o2_5@@198 T@Ref) (f_16@@223 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@198 f_16@@223) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@198 f_16@@223) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@198 f_16@@223)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@198 f_16@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@43 Mask@@94) (IsWandField_6483_6484 pm_f_5@@16))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_12174) (ExhaleHeap@@44 T@PolymorphicMapType_12174) (Mask@@95 T@PolymorphicMapType_12195) (pm_f_5@@17 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_12234_6533 Mask@@95 null pm_f_5@@17) (IsWandField_12234_52737 pm_f_5@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@199 T@Ref) (f_16@@224 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@199 f_16@@224) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@72) o2_5@@199 f_16@@224) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@199 f_16@@224)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@199 f_16@@224))
)) (forall ((o2_5@@200 T@Ref) (f_16@@225 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@200 f_16@@225) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@72) o2_5@@200 f_16@@225) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@200 f_16@@225)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@200 f_16@@225))
))) (forall ((o2_5@@201 T@Ref) (f_16@@226 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@201 f_16@@226) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@72) o2_5@@201 f_16@@226) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@201 f_16@@226)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@201 f_16@@226))
))) (forall ((o2_5@@202 T@Ref) (f_16@@227 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@202 f_16@@227) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) o2_5@@202 f_16@@227) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@202 f_16@@227)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@202 f_16@@227))
))) (forall ((o2_5@@203 T@Ref) (f_16@@228 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@203 f_16@@228) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@203 f_16@@228) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@203 f_16@@228)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@203 f_16@@228))
))) (forall ((o2_5@@204 T@Ref) (f_16@@229 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@204 f_16@@229) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@72) o2_5@@204 f_16@@229) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@204 f_16@@229)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@204 f_16@@229))
))) (forall ((o2_5@@205 T@Ref) (f_16@@230 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@205 f_16@@230) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@72) o2_5@@205 f_16@@230) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@205 f_16@@230)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@205 f_16@@230))
))) (forall ((o2_5@@206 T@Ref) (f_16@@231 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@206 f_16@@231) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@72) o2_5@@206 f_16@@231) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@206 f_16@@231)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@206 f_16@@231))
))) (forall ((o2_5@@207 T@Ref) (f_16@@232 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@207 f_16@@232) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@72) o2_5@@207 f_16@@232) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@207 f_16@@232)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@207 f_16@@232))
))) (forall ((o2_5@@208 T@Ref) (f_16@@233 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@208 f_16@@233) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@208 f_16@@233) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@208 f_16@@233)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@208 f_16@@233))
))) (forall ((o2_5@@209 T@Ref) (f_16@@234 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@209 f_16@@234) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@72) o2_5@@209 f_16@@234) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@209 f_16@@234)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@209 f_16@@234))
))) (forall ((o2_5@@210 T@Ref) (f_16@@235 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@210 f_16@@235) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@72) o2_5@@210 f_16@@235) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@210 f_16@@235)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@210 f_16@@235))
))) (forall ((o2_5@@211 T@Ref) (f_16@@236 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@211 f_16@@236) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@72) o2_5@@211 f_16@@236) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@211 f_16@@236)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@211 f_16@@236))
))) (forall ((o2_5@@212 T@Ref) (f_16@@237 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@212 f_16@@237) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@72) o2_5@@212 f_16@@237) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@212 f_16@@237)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@212 f_16@@237))
))) (forall ((o2_5@@213 T@Ref) (f_16@@238 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@213 f_16@@238) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@213 f_16@@238) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@213 f_16@@238)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@213 f_16@@238))
))) (forall ((o2_5@@214 T@Ref) (f_16@@239 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@214 f_16@@239) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@72) o2_5@@214 f_16@@239) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@214 f_16@@239)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@214 f_16@@239))
))) (forall ((o2_5@@215 T@Ref) (f_16@@240 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@215 f_16@@240) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@72) o2_5@@215 f_16@@240) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@215 f_16@@240)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@215 f_16@@240))
))) (forall ((o2_5@@216 T@Ref) (f_16@@241 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@216 f_16@@241) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@72) o2_5@@216 f_16@@241) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@216 f_16@@241)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@216 f_16@@241))
))) (forall ((o2_5@@217 T@Ref) (f_16@@242 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@217 f_16@@242) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@72) o2_5@@217 f_16@@242) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@217 f_16@@242)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@217 f_16@@242))
))) (forall ((o2_5@@218 T@Ref) (f_16@@243 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@218 f_16@@243) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@218 f_16@@243) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@218 f_16@@243)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@218 f_16@@243))
))) (forall ((o2_5@@219 T@Ref) (f_16@@244 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@219 f_16@@244) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@72) o2_5@@219 f_16@@244) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@219 f_16@@244)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@219 f_16@@244))
))) (forall ((o2_5@@220 T@Ref) (f_16@@245 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@220 f_16@@245) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@72) o2_5@@220 f_16@@245) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@220 f_16@@245)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@220 f_16@@245))
))) (forall ((o2_5@@221 T@Ref) (f_16@@246 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@221 f_16@@246) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@72) o2_5@@221 f_16@@246) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@221 f_16@@246)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@221 f_16@@246))
))) (forall ((o2_5@@222 T@Ref) (f_16@@247 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@222 f_16@@247) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@72) o2_5@@222 f_16@@247) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@222 f_16@@247)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@222 f_16@@247))
))) (forall ((o2_5@@223 T@Ref) (f_16@@248 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@223 f_16@@248) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@223 f_16@@248) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@223 f_16@@248)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@223 f_16@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@44 Mask@@95) (IsWandField_12234_52737 pm_f_5@@17))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_12174) (ExhaleHeap@@45 T@PolymorphicMapType_12174) (Mask@@96 T@PolymorphicMapType_12195) (pm_f_5@@18 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_6532_6533 Mask@@96 null pm_f_5@@18) (IsWandField_6532_52380 pm_f_5@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@224 T@Ref) (f_16@@249 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@224 f_16@@249) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@73) o2_5@@224 f_16@@249) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@224 f_16@@249)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@224 f_16@@249))
)) (forall ((o2_5@@225 T@Ref) (f_16@@250 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@225 f_16@@250) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@73) o2_5@@225 f_16@@250) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@225 f_16@@250)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@225 f_16@@250))
))) (forall ((o2_5@@226 T@Ref) (f_16@@251 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@226 f_16@@251) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@73) o2_5@@226 f_16@@251) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@226 f_16@@251)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@226 f_16@@251))
))) (forall ((o2_5@@227 T@Ref) (f_16@@252 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@227 f_16@@252) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@73) o2_5@@227 f_16@@252) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@227 f_16@@252)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@227 f_16@@252))
))) (forall ((o2_5@@228 T@Ref) (f_16@@253 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@228 f_16@@253) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@228 f_16@@253) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@228 f_16@@253)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@228 f_16@@253))
))) (forall ((o2_5@@229 T@Ref) (f_16@@254 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@229 f_16@@254) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@73) o2_5@@229 f_16@@254) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@229 f_16@@254)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@229 f_16@@254))
))) (forall ((o2_5@@230 T@Ref) (f_16@@255 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@230 f_16@@255) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@73) o2_5@@230 f_16@@255) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@230 f_16@@255)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@230 f_16@@255))
))) (forall ((o2_5@@231 T@Ref) (f_16@@256 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@231 f_16@@256) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@73) o2_5@@231 f_16@@256) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@231 f_16@@256)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@231 f_16@@256))
))) (forall ((o2_5@@232 T@Ref) (f_16@@257 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@232 f_16@@257) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@73) o2_5@@232 f_16@@257) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@232 f_16@@257)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@232 f_16@@257))
))) (forall ((o2_5@@233 T@Ref) (f_16@@258 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@233 f_16@@258) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@233 f_16@@258) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@233 f_16@@258)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@233 f_16@@258))
))) (forall ((o2_5@@234 T@Ref) (f_16@@259 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@234 f_16@@259) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@73) o2_5@@234 f_16@@259) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@234 f_16@@259)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@234 f_16@@259))
))) (forall ((o2_5@@235 T@Ref) (f_16@@260 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@235 f_16@@260) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@73) o2_5@@235 f_16@@260) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@235 f_16@@260)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@235 f_16@@260))
))) (forall ((o2_5@@236 T@Ref) (f_16@@261 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@236 f_16@@261) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@73) o2_5@@236 f_16@@261) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@236 f_16@@261)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@236 f_16@@261))
))) (forall ((o2_5@@237 T@Ref) (f_16@@262 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@237 f_16@@262) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@73) o2_5@@237 f_16@@262) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@237 f_16@@262)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@237 f_16@@262))
))) (forall ((o2_5@@238 T@Ref) (f_16@@263 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@238 f_16@@263) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@238 f_16@@263) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@238 f_16@@263)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@238 f_16@@263))
))) (forall ((o2_5@@239 T@Ref) (f_16@@264 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@239 f_16@@264) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@73) o2_5@@239 f_16@@264) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@239 f_16@@264)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@239 f_16@@264))
))) (forall ((o2_5@@240 T@Ref) (f_16@@265 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@240 f_16@@265) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@73) o2_5@@240 f_16@@265) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@240 f_16@@265)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@240 f_16@@265))
))) (forall ((o2_5@@241 T@Ref) (f_16@@266 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@241 f_16@@266) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@73) o2_5@@241 f_16@@266) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@241 f_16@@266)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@241 f_16@@266))
))) (forall ((o2_5@@242 T@Ref) (f_16@@267 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@242 f_16@@267) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@73) o2_5@@242 f_16@@267) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@242 f_16@@267)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@242 f_16@@267))
))) (forall ((o2_5@@243 T@Ref) (f_16@@268 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@243 f_16@@268) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@243 f_16@@268) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@243 f_16@@268)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@243 f_16@@268))
))) (forall ((o2_5@@244 T@Ref) (f_16@@269 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@244 f_16@@269) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@73) o2_5@@244 f_16@@269) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@244 f_16@@269)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@244 f_16@@269))
))) (forall ((o2_5@@245 T@Ref) (f_16@@270 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@245 f_16@@270) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@73) o2_5@@245 f_16@@270) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@245 f_16@@270)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@245 f_16@@270))
))) (forall ((o2_5@@246 T@Ref) (f_16@@271 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@246 f_16@@271) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@73) o2_5@@246 f_16@@271) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@246 f_16@@271)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@246 f_16@@271))
))) (forall ((o2_5@@247 T@Ref) (f_16@@272 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@247 f_16@@272) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) o2_5@@247 f_16@@272) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@247 f_16@@272)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@247 f_16@@272))
))) (forall ((o2_5@@248 T@Ref) (f_16@@273 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@248 f_16@@273) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@248 f_16@@273) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@248 f_16@@273)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@248 f_16@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@45 Mask@@96) (IsWandField_6532_52380 pm_f_5@@18))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@5 () T@PolymorphicMapType_12195)
(declare-fun x@@5 () T@Ref)
(declare-fun b_5@2 () Bool)
(declare-fun b_6@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_3Mask@3 () T@PolymorphicMapType_12195)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_7@0 () Bool)
(declare-fun b_7@1 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_12174)
(declare-fun Result_1Mask () T@PolymorphicMapType_12195)
(declare-fun b_7@2 () Bool)
(declare-fun Ops_3Mask () T@PolymorphicMapType_12195)
(declare-fun b_7@3 () Bool)
(declare-fun Ops_3Heap@0 () T@PolymorphicMapType_12174)
(declare-fun Used_3Heap@0 () T@PolymorphicMapType_12174)
(declare-fun b_7@4 () Bool)
(declare-fun b_5@3 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_12195)
(declare-fun Mask@2 () T@PolymorphicMapType_12195)
(declare-fun Heap@1 () T@PolymorphicMapType_12174)
(declare-fun Mask@4 () T@PolymorphicMapType_12195)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_12174)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_12195)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_6@3 () Bool)
(declare-fun Used_3Mask@1 () T@PolymorphicMapType_12195)
(declare-fun Heap@@74 () T@PolymorphicMapType_12174)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_3Mask@2 () T@PolymorphicMapType_12195)
(declare-fun b_6@4 () Bool)
(declare-fun b_6@5 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_12195)
(declare-fun Heap@0 () T@PolymorphicMapType_12174)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_6@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_3Mask@0 () T@PolymorphicMapType_12195)
(declare-fun b_6@1 () Bool)
(declare-fun b_6@2 () Bool)
(declare-fun Ops_3Mask@0 () T@PolymorphicMapType_12195)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_5@1 () Bool)
(declare-fun b_5@0 () Bool)
(declare-fun b_6 () Bool)
(declare-fun b_5 () Bool)
(declare-fun b_4@0 () Bool)
(declare-fun b_4 () Bool)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_12174)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon18_correct true))
(let ((anon27_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 5) 2)) anon18_correct)))
(let ((anon27_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= FullPerm (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@5) x@@5 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@5) x@@5 f_7)) (=> (= (ControlFlow 0 3) 2) anon18_correct))))))
(let ((anon16_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (and (and b_5@2 b_5@2) b_6@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Used_3Mask@3) x@@5 f_7) initNeededTransfer@0)))) (=> (=> (and (and b_5@2 b_5@2) b_6@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Used_3Mask@3) x@@5 f_7) initNeededTransfer@0))) (=> (and (= b_7@0  (and b_5@2 b_6@6)) (= b_7@1  (and b_7@0 (state Result_1Heap Result_1Mask)))) (=> (and (and (and (= b_7@2  (and b_7@1 (sumMask Result_1Mask Ops_3Mask Used_3Mask@3))) (= b_7@3  (and (and b_7@2 (IdenticalOnKnownLocations Ops_3Heap@0 Result_1Heap Ops_3Mask)) (IdenticalOnKnownLocations Used_3Heap@0 Result_1Heap Used_3Mask@3)))) (and (= b_7@4  (and b_7@3 (state Result_1Heap Result_1Mask))) (= b_5@3  (and b_5@2 b_7@4)))) (and (and (= Mask@3 (PolymorphicMapType_12195 (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@2) (store (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@2) null (wand true x@@5 FullPerm) (+ (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@2) null (wand true x@@5 FullPerm)) FullPerm)) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@2) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@2))) (state Heap@1 Mask@3)) (and (state Heap@1 Mask@3) (state Heap@1 Mask@3)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@3) null (wand true x@@5 FullPerm)))) (=> (<= FullPerm (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@3) null (wand true x@@5 FullPerm))) (=> (and (= Mask@4 (PolymorphicMapType_12195 (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@3) (store (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@3) null (wand true x@@5 FullPerm) (- (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@3) null (wand true x@@5 FullPerm)) FullPerm)) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@3) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@3))) (state Heap@1 Mask@4)) (=> (and (and (and (state Heap@1 Mask@4) (not (= x@@5 null))) (and (= Mask@5 (PolymorphicMapType_12195 (store (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@4) x@@5 f_7 (+ (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@4) x@@5 f_7) FullPerm)) (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@4) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@4))) (state Heap@1 Mask@5))) (and (and (state Heap@1 Mask@5) (IdenticalOnKnownLocations Heap@1 ExhaleHeap@0 Mask@5)) (and (state ExhaleHeap@0 Mask@5) (state ExhaleHeap@0 Mask@5)))) (and (=> (= (ControlFlow 0 6) 3) anon27_Then_correct) (=> (= (ControlFlow 0 6) 5) anon27_Else_correct))))))))))))
(let ((anon26_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_6@6 b_6@3) (= Used_3Mask@3 Used_3Mask@1)) (and (= Heap@1 Heap@@74) (= (ControlFlow 0 11) 6))) anon16_correct)))))
(let ((anon26_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_3Mask@2 (PolymorphicMapType_12195 (store (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Used_3Mask@1) x@@5 f_7 (+ (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Used_3Mask@1) x@@5 f_7) takeTransfer@1)) (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Used_3Mask@1) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Used_3Mask@1)))) (and (= b_6@4  (and b_6@3 (state Used_3Heap@0 Used_3Mask@2))) (= b_6@5  (and b_6@4 (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@74) x@@5 f_7) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Used_3Heap@0) x@@5 f_7)))))) (=> (and (and (and (= Mask@1 (PolymorphicMapType_12195 (store (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@0) x@@5 f_7 (- (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@0) x@@5 f_7) takeTransfer@1)) (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@0) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@0))) (= Heap@0 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@74) (store (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm) (PolymorphicMapType_12723 (store (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) x@@5 f_7 true) (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))) (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@74) null (|wand#sm| true x@@5 FullPerm))))) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@74) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@74)))) (and (= Mask@2 Mask@1) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_6@6 b_6@5) (= Used_3Mask@3 Used_3Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 10) 6)))) anon16_correct)))))
(let ((anon25_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 13) 10) anon26_Then_correct) (=> (= (ControlFlow 0 13) 11) anon26_Else_correct)))))
(let ((anon25_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 12) 10) anon26_Then_correct) (=> (= (ControlFlow 0 12) 11) anon26_Else_correct)))))
(let ((anon24_Then_correct  (=> (and (and (and (and (and b_5@2 b_5@2) b_6@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@0) x@@5 f_7))) (and (=> (= (ControlFlow 0 14) 12) anon25_Then_correct) (=> (= (ControlFlow 0 14) 13) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not (and (and (and (and b_5@2 b_5@2) b_6@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_6@6 b_6@3) (= Used_3Mask@3 Used_3Mask@1)) (and (= Heap@1 Heap@@74) (= (ControlFlow 0 9) 6))) anon16_correct)))))
(let ((anon23_Else_correct  (=> (and (and (>= 0.0 takeTransfer@0) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 17) 14) anon24_Then_correct) (=> (= (ControlFlow 0 17) 9) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (and (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_3Mask@0 (PolymorphicMapType_12195 (store (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) x@@5 f_7) takeTransfer@0)) (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ZeroMask)))) (and (= b_6@1  (and b_6@0 (state Used_3Heap@0 Used_3Mask@0))) (= b_6@2  (and b_6@1 (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Ops_3Heap@0) x@@5 f_7) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Used_3Heap@0) x@@5 f_7)))))) (and (and (= Ops_3Mask@0 (PolymorphicMapType_12195 (store (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) x@@5 f_7 (- (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) x@@5 f_7) takeTransfer@0)) (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ZeroMask))) (= Used_3Mask@1 Used_3Mask@0)) (and (= b_6@3 b_6@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 16) 14) anon24_Then_correct) (=> (= (ControlFlow 0 16) 9) anon24_Else_correct))))))
(let ((anon22_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 19) 16) anon23_Then_correct) (=> (= (ControlFlow 0 19) 17) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 18) 16) anon23_Then_correct) (=> (= (ControlFlow 0 18) 17) anon23_Else_correct)))))
(let ((anon21_Then_correct  (=> (and (and (and (and (and b_5@2 b_5@2) b_6@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) x@@5 f_7))) (and (=> (= (ControlFlow 0 20) 18) anon22_Then_correct) (=> (= (ControlFlow 0 20) 19) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (and (not (and (and (and (and b_5@2 b_5@2) b_6@0) true) (> FullPerm 0.0))) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 15) 14) anon24_Then_correct) (=> (= (ControlFlow 0 15) 9) anon24_Else_correct)))))
(let ((anon4_correct  (=> (and (and (= b_5@1  (and b_5@0 (state Ops_3Heap@0 ZeroMask))) (= b_5@2  (and b_5@1 (state Ops_3Heap@0 ZeroMask)))) (and (= b_6@0  (and b_6 (state Used_3Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) x@@5 f_7) FullPerm)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 21) 20) anon21_Then_correct) (=> (= (ControlFlow 0 21) 15) anon21_Else_correct)))))))
(let ((anon20_Else_correct  (=> (and (not b_5@0) (= (ControlFlow 0 24) 21)) anon4_correct)))
(let ((anon20_Then_correct  (=> (and b_5@0 (= (ControlFlow 0 23) 21)) anon4_correct)))
(let ((anon19_Else_correct  (=> (and (= b_5@0  (and b_5 (state Ops_3Heap@0 ZeroMask))) (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 25) 23) anon20_Then_correct) (=> (= (ControlFlow 0 25) 24) anon20_Else_correct)))))
(let ((anon19_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@74 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@74) x@@5 $allocated)) (=> (and (and (not (= x@@5 null)) (= Mask@0 (PolymorphicMapType_12195 (store (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) x@@5 f_7) FullPerm)) (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ZeroMask) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ZeroMask)))) (and (state Heap@@74 Mask@0) (state Heap@@74 Mask@0))) (and (=> (= (ControlFlow 0 26) 1) anon19_Then_correct) (=> (= (ControlFlow 0 26) 25) anon19_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 27) 26) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
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
(declare-sort T@Field_12234_53 0)
(declare-sort T@Field_12247_12248 0)
(declare-sort T@Field_17082_1867 0)
(declare-sort T@Field_15573_15578 0)
(declare-sort T@Field_17129_17130 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17142_17147 0)
(declare-sort T@Field_16127_16132 0)
(declare-sort T@Field_6532_53 0)
(declare-sort T@Field_6532_12248 0)
(declare-sort T@Field_6532_1199 0)
(declare-sort T@Field_12234_6533 0)
(declare-sort T@Field_12234_15578 0)
(declare-sort T@Field_15588_15589 0)
(declare-sort T@Field_15561_53 0)
(declare-sort T@Field_15561_12248 0)
(declare-sort T@Field_15561_1199 0)
(declare-sort T@Field_16141_16142 0)
(declare-sort T@Field_16116_53 0)
(declare-sort T@Field_16116_12248 0)
(declare-sort T@Field_16116_1460 0)
(declare-sort T@Field_16612_16613 0)
(declare-sort T@Field_16585_53 0)
(declare-sort T@Field_16585_12248 0)
(declare-sort T@Field_16585_1668 0)
(declare-sort T@Field_16597_16602 0)
(declare-datatypes ((T@PolymorphicMapType_12195 0)) (((PolymorphicMapType_12195 (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| (Array T@Ref T@Field_17082_1867 Real)) (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| (Array T@Ref T@Field_15561_1199 Real)) (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| (Array T@Ref T@Field_16116_1460 Real)) (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_17129_17130 Real)) (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| (Array T@Ref T@Field_16585_1668 Real)) (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_12234_6533 Real)) (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| (Array T@Ref T@Field_12234_53 Real)) (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_12247_12248 Real)) (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| (Array T@Ref T@Field_12234_15578 Real)) (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_15588_15589 Real)) (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| (Array T@Ref T@Field_15561_53 Real)) (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_15561_12248 Real)) (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| (Array T@Ref T@Field_15573_15578 Real)) (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_16141_16142 Real)) (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| (Array T@Ref T@Field_16116_53 Real)) (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_16116_12248 Real)) (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| (Array T@Ref T@Field_16127_16132 Real)) (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| (Array T@Ref T@Field_6532_1199 Real)) (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| (Array T@Ref T@Field_6532_53 Real)) (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_6532_12248 Real)) (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| (Array T@Ref T@Field_17142_17147 Real)) (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| (Array T@Ref T@Field_16612_16613 Real)) (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| (Array T@Ref T@Field_16585_53 Real)) (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| (Array T@Ref T@Field_16585_12248 Real)) (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| (Array T@Ref T@Field_16597_16602 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12723 0)) (((PolymorphicMapType_12723 (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_17082_1867 Bool)) (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (Array T@Ref T@Field_12234_53 Bool)) (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_12247_12248 Bool)) (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (Array T@Ref T@Field_12234_15578 Bool)) (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_12234_6533 Bool)) (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_15561_1199 Bool)) (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (Array T@Ref T@Field_15561_53 Bool)) (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_15561_12248 Bool)) (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (Array T@Ref T@Field_15573_15578 Bool)) (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_15588_15589 Bool)) (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_16116_1460 Bool)) (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (Array T@Ref T@Field_16116_53 Bool)) (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_16116_12248 Bool)) (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (Array T@Ref T@Field_16127_16132 Bool)) (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_16141_16142 Bool)) (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_16585_1668 Bool)) (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (Array T@Ref T@Field_16585_53 Bool)) (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_16585_12248 Bool)) (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (Array T@Ref T@Field_16597_16602 Bool)) (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_16612_16613 Bool)) (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (Array T@Ref T@Field_6532_1199 Bool)) (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (Array T@Ref T@Field_6532_53 Bool)) (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (Array T@Ref T@Field_6532_12248 Bool)) (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (Array T@Ref T@Field_17142_17147 Bool)) (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (Array T@Ref T@Field_17129_17130 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12174 0)) (((PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| (Array T@Ref T@Field_12234_53 Bool)) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| (Array T@Ref T@Field_12247_12248 T@Ref)) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| (Array T@Ref T@Field_17082_1867 Int)) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| (Array T@Ref T@Field_15573_15578 T@PolymorphicMapType_12723)) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_17129_17130 T@FrameType)) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| (Array T@Ref T@Field_17142_17147 T@PolymorphicMapType_12723)) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| (Array T@Ref T@Field_16127_16132 T@PolymorphicMapType_12723)) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| (Array T@Ref T@Field_6532_53 Bool)) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| (Array T@Ref T@Field_6532_12248 T@Ref)) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| (Array T@Ref T@Field_6532_1199 Int)) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_12234_6533 T@FrameType)) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| (Array T@Ref T@Field_12234_15578 T@PolymorphicMapType_12723)) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_15588_15589 T@FrameType)) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| (Array T@Ref T@Field_15561_53 Bool)) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| (Array T@Ref T@Field_15561_12248 T@Ref)) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| (Array T@Ref T@Field_15561_1199 Int)) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_16141_16142 T@FrameType)) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| (Array T@Ref T@Field_16116_53 Bool)) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| (Array T@Ref T@Field_16116_12248 T@Ref)) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| (Array T@Ref T@Field_16116_1460 Int)) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| (Array T@Ref T@Field_16612_16613 T@FrameType)) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| (Array T@Ref T@Field_16585_53 Bool)) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| (Array T@Ref T@Field_16585_12248 T@Ref)) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| (Array T@Ref T@Field_16585_1668 Int)) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| (Array T@Ref T@Field_16597_16602 T@PolymorphicMapType_12723)) ) ) ))
(declare-fun $allocated () T@Field_12234_53)
(declare-fun f_7 () T@Field_17082_1867)
(declare-fun succHeap (T@PolymorphicMapType_12174 T@PolymorphicMapType_12174) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12174 T@PolymorphicMapType_12174) Bool)
(declare-fun state (T@PolymorphicMapType_12174 T@PolymorphicMapType_12195) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12195) Bool)
(declare-fun wand (Bool T@Ref Real) T@Field_15561_1199)
(declare-fun IsWandField_6474_1199 (T@Field_15561_1199) Bool)
(declare-fun |wand#ft| (Bool T@Ref Real) T@Field_15588_15589)
(declare-fun IsWandField_6483_6484 (T@Field_15588_15589) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12723)
(declare-fun getPredWandId_6474_1199 (T@Field_15561_1199) Int)
(declare-fun IsPredicateField_6474_1199 (T@Field_15561_1199) Bool)
(declare-fun IsPredicateField_6483_6484 (T@Field_15588_15589) Bool)
(declare-fun wand_1 (Bool Bool) T@Field_16116_1460)
(declare-fun IsWandField_6502_1460 (T@Field_16116_1460) Bool)
(declare-fun |wand_1#ft| (Bool Bool) T@Field_16141_16142)
(declare-fun IsWandField_6507_6508 (T@Field_16141_16142) Bool)
(declare-fun wand_2 (T@Ref Bool) T@Field_16585_1668)
(declare-fun IsWandField_6511_1668 (T@Field_16585_1668) Bool)
(declare-fun |wand_2#ft| (T@Ref Bool) T@Field_16612_16613)
(declare-fun IsWandField_6518_6519 (T@Field_16612_16613) Bool)
(declare-fun IsPredicateField_6502_1460 (T@Field_16116_1460) Bool)
(declare-fun IsPredicateField_6507_6508 (T@Field_16141_16142) Bool)
(declare-fun IsPredicateField_6511_1668 (T@Field_16585_1668) Bool)
(declare-fun IsPredicateField_6518_6519 (T@Field_16612_16613) Bool)
(declare-fun P (T@Ref) T@Field_17129_17130)
(declare-fun IsPredicateField_6532_6533 (T@Field_17129_17130) Bool)
(declare-fun |P#trigger_6532| (T@PolymorphicMapType_12174 T@Field_17129_17130) Bool)
(declare-fun |P#everUsed_6532| (T@Field_17129_17130) Bool)
(declare-fun WandMaskField_6483 (T@Field_15588_15589) T@Field_15573_15578)
(declare-fun |wand#sm| (Bool T@Ref Real) T@Field_15573_15578)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12174 T@PolymorphicMapType_12174 T@PolymorphicMapType_12195) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16585 (T@Field_16612_16613) T@Field_16597_16602)
(declare-fun HasDirectPerm_16585_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_16612_16613) Bool)
(declare-fun PredicateMaskField_16116 (T@Field_16141_16142) T@Field_16127_16132)
(declare-fun HasDirectPerm_16116_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_16141_16142) Bool)
(declare-fun PredicateMaskField_15561 (T@Field_15588_15589) T@Field_15573_15578)
(declare-fun HasDirectPerm_15561_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_15588_15589) Bool)
(declare-fun IsPredicateField_12234_44340 (T@Field_12234_6533) Bool)
(declare-fun PredicateMaskField_12234 (T@Field_12234_6533) T@Field_12234_15578)
(declare-fun HasDirectPerm_12234_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_12234_6533) Bool)
(declare-fun PredicateMaskField_6532 (T@Field_17129_17130) T@Field_17142_17147)
(declare-fun HasDirectPerm_6532_6533 (T@PolymorphicMapType_12195 T@Ref T@Field_17129_17130) Bool)
(declare-fun WandMaskField_6518 (T@Field_16612_16613) T@Field_16597_16602)
(declare-fun WandMaskField_6507 (T@Field_16141_16142) T@Field_16127_16132)
(declare-fun IsWandField_12234_52737 (T@Field_12234_6533) Bool)
(declare-fun WandMaskField_12234 (T@Field_12234_6533) T@Field_12234_15578)
(declare-fun IsWandField_6532_52380 (T@Field_17129_17130) Bool)
(declare-fun WandMaskField_6532 (T@Field_17129_17130) T@Field_17142_17147)
(declare-fun |P#sm| (T@Ref) T@Field_17142_17147)
(declare-fun dummyHeap () T@PolymorphicMapType_12174)
(declare-fun ZeroMask () T@PolymorphicMapType_12195)
(declare-fun InsidePredicate_17129_17129 (T@Field_17129_17130 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_16585 (T@Field_16612_16613 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_16116 (T@Field_16141_16142 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_15561 (T@Field_15588_15589 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_12234 (T@Field_12234_6533 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun IsPredicateField_6529_1867 (T@Field_17082_1867) Bool)
(declare-fun IsWandField_6529_1867 (T@Field_17082_1867) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6511_70769 (T@Field_16597_16602) Bool)
(declare-fun IsWandField_6511_70785 (T@Field_16597_16602) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6511_12248 (T@Field_16585_12248) Bool)
(declare-fun IsWandField_6511_12248 (T@Field_16585_12248) Bool)
(declare-fun IsPredicateField_6511_53 (T@Field_16585_53) Bool)
(declare-fun IsWandField_6511_53 (T@Field_16585_53) Bool)
(declare-fun IsPredicateField_6532_69952 (T@Field_17142_17147) Bool)
(declare-fun IsWandField_6532_69968 (T@Field_17142_17147) Bool)
(declare-fun IsPredicateField_6532_12248 (T@Field_6532_12248) Bool)
(declare-fun IsWandField_6532_12248 (T@Field_6532_12248) Bool)
(declare-fun IsPredicateField_6532_53 (T@Field_6532_53) Bool)
(declare-fun IsWandField_6532_53 (T@Field_6532_53) Bool)
(declare-fun IsPredicateField_6532_1867 (T@Field_6532_1199) Bool)
(declare-fun IsWandField_6532_1867 (T@Field_6532_1199) Bool)
(declare-fun IsPredicateField_6502_69121 (T@Field_16127_16132) Bool)
(declare-fun IsWandField_6502_69137 (T@Field_16127_16132) Bool)
(declare-fun IsPredicateField_6502_12248 (T@Field_16116_12248) Bool)
(declare-fun IsWandField_6502_12248 (T@Field_16116_12248) Bool)
(declare-fun IsPredicateField_6502_53 (T@Field_16116_53) Bool)
(declare-fun IsWandField_6502_53 (T@Field_16116_53) Bool)
(declare-fun IsPredicateField_6474_68304 (T@Field_15573_15578) Bool)
(declare-fun IsWandField_6474_68320 (T@Field_15573_15578) Bool)
(declare-fun IsPredicateField_6474_12248 (T@Field_15561_12248) Bool)
(declare-fun IsWandField_6474_12248 (T@Field_15561_12248) Bool)
(declare-fun IsPredicateField_6474_53 (T@Field_15561_53) Bool)
(declare-fun IsWandField_6474_53 (T@Field_15561_53) Bool)
(declare-fun IsPredicateField_6529_67487 (T@Field_12234_15578) Bool)
(declare-fun IsWandField_6529_67503 (T@Field_12234_15578) Bool)
(declare-fun IsPredicateField_6529_12248 (T@Field_12247_12248) Bool)
(declare-fun IsWandField_6529_12248 (T@Field_12247_12248) Bool)
(declare-fun IsPredicateField_6529_53 (T@Field_12234_53) Bool)
(declare-fun IsWandField_6529_53 (T@Field_12234_53) Bool)
(declare-fun HasDirectPerm_16585_43727 (T@PolymorphicMapType_12195 T@Ref T@Field_16597_16602) Bool)
(declare-fun HasDirectPerm_16585_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_16585_1668) Bool)
(declare-fun HasDirectPerm_16585_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_16585_12248) Bool)
(declare-fun HasDirectPerm_16585_53 (T@PolymorphicMapType_12195 T@Ref T@Field_16585_53) Bool)
(declare-fun HasDirectPerm_16116_42593 (T@PolymorphicMapType_12195 T@Ref T@Field_16127_16132) Bool)
(declare-fun HasDirectPerm_16116_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_16116_1460) Bool)
(declare-fun HasDirectPerm_16116_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_16116_12248) Bool)
(declare-fun HasDirectPerm_16116_53 (T@PolymorphicMapType_12195 T@Ref T@Field_16116_53) Bool)
(declare-fun HasDirectPerm_15561_41459 (T@PolymorphicMapType_12195 T@Ref T@Field_15573_15578) Bool)
(declare-fun HasDirectPerm_15561_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_15561_1199) Bool)
(declare-fun HasDirectPerm_15561_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_15561_12248) Bool)
(declare-fun HasDirectPerm_15561_53 (T@PolymorphicMapType_12195 T@Ref T@Field_15561_53) Bool)
(declare-fun HasDirectPerm_12234_40282 (T@PolymorphicMapType_12195 T@Ref T@Field_12234_15578) Bool)
(declare-fun HasDirectPerm_12234_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_17082_1867) Bool)
(declare-fun HasDirectPerm_12234_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_12247_12248) Bool)
(declare-fun HasDirectPerm_12234_53 (T@PolymorphicMapType_12195 T@Ref T@Field_12234_53) Bool)
(declare-fun HasDirectPerm_6532_39189 (T@PolymorphicMapType_12195 T@Ref T@Field_17142_17147) Bool)
(declare-fun HasDirectPerm_6532_1199 (T@PolymorphicMapType_12195 T@Ref T@Field_6532_1199) Bool)
(declare-fun HasDirectPerm_6532_12248 (T@PolymorphicMapType_12195 T@Ref T@Field_6532_12248) Bool)
(declare-fun HasDirectPerm_6532_53 (T@PolymorphicMapType_12195 T@Ref T@Field_6532_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12195 T@PolymorphicMapType_12195 T@PolymorphicMapType_12195) Bool)
(declare-fun getPredWandId_6502_1460 (T@Field_16116_1460) Int)
(declare-fun getPredWandId_6511_1668 (T@Field_16585_1668) Int)
(declare-fun getPredWandId_6532_6533 (T@Field_17129_17130) Int)
(declare-fun |wand_1#sm| (Bool Bool) T@Field_16127_16132)
(declare-fun |wand_2#sm| (T@Ref Bool) T@Field_16597_16602)
(declare-fun InsidePredicate_17129_16585 (T@Field_17129_17130 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_17129_16116 (T@Field_17129_17130 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_17129_15561 (T@Field_17129_17130 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(declare-fun InsidePredicate_17129_12234 (T@Field_17129_17130 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_17129 (T@Field_16612_16613 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_16116 (T@Field_16612_16613 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_15561 (T@Field_16612_16613 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(declare-fun InsidePredicate_16585_12234 (T@Field_16612_16613 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_17129 (T@Field_16141_16142 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_16585 (T@Field_16141_16142 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_15561 (T@Field_16141_16142 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(declare-fun InsidePredicate_16116_12234 (T@Field_16141_16142 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_17129 (T@Field_15588_15589 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_16585 (T@Field_15588_15589 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_16116 (T@Field_15588_15589 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_15561_12234 (T@Field_15588_15589 T@FrameType T@Field_12234_6533 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_17129 (T@Field_12234_6533 T@FrameType T@Field_17129_17130 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_16585 (T@Field_12234_6533 T@FrameType T@Field_16612_16613 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_16116 (T@Field_12234_6533 T@FrameType T@Field_16141_16142 T@FrameType) Bool)
(declare-fun InsidePredicate_12234_15561 (T@Field_12234_6533 T@FrameType T@Field_15588_15589 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_12174) (Heap1 T@PolymorphicMapType_12174) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12174) (Mask T@PolymorphicMapType_12195) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12174) (Heap1@@0 T@PolymorphicMapType_12174) (Heap2 T@PolymorphicMapType_12174) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((arg1 Bool) (arg2 T@Ref) (arg3 Real) ) (! (IsWandField_6474_1199 (wand arg1 arg2 arg3))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1 arg2 arg3))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 T@Ref) (arg3@@0 Real) ) (! (IsWandField_6483_6484 (|wand#ft| arg1@@0 arg2@@0 arg3@@0))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@0 arg2@@0 arg3@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17129_17130) ) (!  (not (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17142_17147) ) (!  (not (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6532_12248) ) (!  (not (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6532_53) ) (!  (not (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6532_1199) ) (!  (not (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_16612_16613) ) (!  (not (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16597_16602) ) (!  (not (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16585_12248) ) (!  (not (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16585_53) ) (!  (not (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16585_1668) ) (!  (not (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_16141_16142) ) (!  (not (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_16127_16132) ) (!  (not (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_16116_12248) ) (!  (not (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_16116_53) ) (!  (not (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_16116_1460) ) (!  (not (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_15588_15589) ) (!  (not (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_15573_15578) ) (!  (not (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_15561_12248) ) (!  (not (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_15561_53) ) (!  (not (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15561_1199) ) (!  (not (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_12234_6533) ) (!  (not (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_12234_15578) ) (!  (not (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_12247_12248) ) (!  (not (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_12234_53) ) (!  (not (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_17082_1867) ) (!  (not (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) (arg3@@1 Real) ) (! (= (getPredWandId_6474_1199 (wand arg1@@1 arg2@@1 arg3@@1)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 T@Ref) (arg3@@2 Real) ) (!  (not (IsPredicateField_6474_1199 (wand arg1@@2 arg2@@2 arg3@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) (arg3@@3 Real) ) (!  (not (IsPredicateField_6483_6484 (|wand#ft| arg1@@3 arg2@@3 arg3@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 Bool) ) (! (IsWandField_6502_1460 (wand_1 arg1@@4 arg2@@4))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@4 arg2@@4))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 Bool) ) (! (IsWandField_6507_6508 (|wand_1#ft| arg1@@5 arg2@@5))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@5 arg2@@5))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Bool) ) (! (IsWandField_6511_1668 (wand_2 arg1@@6 arg2@@6))
 :qid |stdinbpl.248:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@6 arg2@@6))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Bool) ) (! (IsWandField_6518_6519 (|wand_2#ft| arg1@@7 arg2@@7))
 :qid |stdinbpl.252:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@7 arg2@@7))
)))
(assert (forall ((arg1@@8 Bool) (arg2@@8 Bool) ) (!  (not (IsPredicateField_6502_1460 (wand_1 arg1@@8 arg2@@8)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@8 arg2@@8))
)))
(assert (forall ((arg1@@9 Bool) (arg2@@9 Bool) ) (!  (not (IsPredicateField_6507_6508 (|wand_1#ft| arg1@@9 arg2@@9)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@9 arg2@@9))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 Bool) ) (!  (not (IsPredicateField_6511_1668 (wand_2 arg1@@10 arg2@@10)))
 :qid |stdinbpl.256:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@10 arg2@@10))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Bool) ) (!  (not (IsPredicateField_6518_6519 (|wand_2#ft| arg1@@11 arg2@@11)))
 :qid |stdinbpl.260:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@11 arg2@@11))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_6532_6533 (P x))
 :qid |stdinbpl.296:15|
 :skolemid |44|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12174) (x@@0 T@Ref) ) (! (|P#everUsed_6532| (P x@@0))
 :qid |stdinbpl.315:15|
 :skolemid |48|
 :pattern ( (|P#trigger_6532| Heap@@0 (P x@@0)))
)))
(assert (forall ((arg1@@12 Bool) (arg2@@12 T@Ref) (arg3@@4 Real) ) (! (= (|wand#sm| arg1@@12 arg2@@12 arg3@@4) (WandMaskField_6483 (|wand#ft| arg1@@12 arg2@@12 arg3@@4)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_6483 (|wand#ft| arg1@@12 arg2@@12 arg3@@4)))
)))
(assert (forall ((arg1@@13 T@Ref) (arg2@@13 Bool) (arg1_2 T@Ref) (arg2_2 Bool) ) (!  (=> (= (wand_2 arg1@@13 arg2@@13) (wand_2 arg1_2 arg2_2)) (and (= arg1@@13 arg1_2) (= arg2@@13 arg2_2)))
 :qid |stdinbpl.272:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@13 arg2@@13) (wand_2 arg1_2 arg2_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12174) (ExhaleHeap T@PolymorphicMapType_12174) (Mask@@0 T@PolymorphicMapType_12195) (pm_f_5 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16585_6533 Mask@@0 null pm_f_5) (IsPredicateField_6518_6519 pm_f_5)) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@1) null (PredicateMaskField_16585 pm_f_5)) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap) null (PredicateMaskField_16585 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_6518_6519 pm_f_5) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap) null (PredicateMaskField_16585 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12174) (ExhaleHeap@@0 T@PolymorphicMapType_12174) (Mask@@1 T@PolymorphicMapType_12195) (pm_f_5@@0 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16116_6533 Mask@@1 null pm_f_5@@0) (IsPredicateField_6507_6508 pm_f_5@@0)) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@2) null (PredicateMaskField_16116 pm_f_5@@0)) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@0) null (PredicateMaskField_16116 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6507_6508 pm_f_5@@0) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@0) null (PredicateMaskField_16116 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12174) (ExhaleHeap@@1 T@PolymorphicMapType_12174) (Mask@@2 T@PolymorphicMapType_12195) (pm_f_5@@1 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_15561_6533 Mask@@2 null pm_f_5@@1) (IsPredicateField_6483_6484 pm_f_5@@1)) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@3) null (PredicateMaskField_15561 pm_f_5@@1)) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@1) null (PredicateMaskField_15561 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6483_6484 pm_f_5@@1) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@1) null (PredicateMaskField_15561 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12174) (ExhaleHeap@@2 T@PolymorphicMapType_12174) (Mask@@3 T@PolymorphicMapType_12195) (pm_f_5@@2 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12234_6533 Mask@@3 null pm_f_5@@2) (IsPredicateField_12234_44340 pm_f_5@@2)) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@4) null (PredicateMaskField_12234 pm_f_5@@2)) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@2) null (PredicateMaskField_12234 pm_f_5@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsPredicateField_12234_44340 pm_f_5@@2) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@2) null (PredicateMaskField_12234 pm_f_5@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12174) (ExhaleHeap@@3 T@PolymorphicMapType_12174) (Mask@@4 T@PolymorphicMapType_12195) (pm_f_5@@3 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6532_6533 Mask@@4 null pm_f_5@@3) (IsPredicateField_6532_6533 pm_f_5@@3)) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@5) null (PredicateMaskField_6532 pm_f_5@@3)) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@3) null (PredicateMaskField_6532 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6532_6533 pm_f_5@@3) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@3) null (PredicateMaskField_6532 pm_f_5@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12174) (ExhaleHeap@@4 T@PolymorphicMapType_12174) (Mask@@5 T@PolymorphicMapType_12195) (pm_f_5@@4 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_16585_6533 Mask@@5 null pm_f_5@@4) (IsWandField_6518_6519 pm_f_5@@4)) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@6) null (WandMaskField_6518 pm_f_5@@4)) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@4) null (WandMaskField_6518 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_6518_6519 pm_f_5@@4) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@4) null (WandMaskField_6518 pm_f_5@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12174) (ExhaleHeap@@5 T@PolymorphicMapType_12174) (Mask@@6 T@PolymorphicMapType_12195) (pm_f_5@@5 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_16116_6533 Mask@@6 null pm_f_5@@5) (IsWandField_6507_6508 pm_f_5@@5)) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@7) null (WandMaskField_6507 pm_f_5@@5)) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@5) null (WandMaskField_6507 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6507_6508 pm_f_5@@5) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@5) null (WandMaskField_6507 pm_f_5@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12174) (ExhaleHeap@@6 T@PolymorphicMapType_12174) (Mask@@7 T@PolymorphicMapType_12195) (pm_f_5@@6 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_15561_6533 Mask@@7 null pm_f_5@@6) (IsWandField_6483_6484 pm_f_5@@6)) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@8) null (WandMaskField_6483 pm_f_5@@6)) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@6) null (WandMaskField_6483 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6483_6484 pm_f_5@@6) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@6) null (WandMaskField_6483 pm_f_5@@6)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12174) (ExhaleHeap@@7 T@PolymorphicMapType_12174) (Mask@@8 T@PolymorphicMapType_12195) (pm_f_5@@7 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_12234_6533 Mask@@8 null pm_f_5@@7) (IsWandField_12234_52737 pm_f_5@@7)) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@9) null (WandMaskField_12234 pm_f_5@@7)) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@7) null (WandMaskField_12234 pm_f_5@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (IsWandField_12234_52737 pm_f_5@@7) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@7) null (WandMaskField_12234 pm_f_5@@7)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12174) (ExhaleHeap@@8 T@PolymorphicMapType_12174) (Mask@@9 T@PolymorphicMapType_12195) (pm_f_5@@8 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_6532_6533 Mask@@9 null pm_f_5@@8) (IsWandField_6532_52380 pm_f_5@@8)) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@10) null (WandMaskField_6532 pm_f_5@@8)) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@8) null (WandMaskField_6532 pm_f_5@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (IsWandField_6532_52380 pm_f_5@@8) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@8) null (WandMaskField_6532 pm_f_5@@8)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.306:15|
 :skolemid |46|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.310:15|
 :skolemid |47|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12174) (ExhaleHeap@@9 T@PolymorphicMapType_12174) (Mask@@10 T@PolymorphicMapType_12195) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@11) o_12 $allocated) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@9) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@9) o_12 $allocated))
)))
(assert (forall ((p T@Field_17129_17130) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17129_17129 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17129_17129 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16612_16613) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16585_16585 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16585_16585 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_16141_16142) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_16116_16116 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16116_16116 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_15588_15589) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_15561_15561 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15561_15561 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_12234_6533) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_12234_12234 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12234_12234 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert  (not (IsPredicateField_6529_1867 f_7)))
(assert  (not (IsWandField_6529_1867 f_7)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12174) (ExhaleHeap@@10 T@PolymorphicMapType_12174) (Mask@@11 T@PolymorphicMapType_12195) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (succHeap Heap@@12 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12195) (o_2@@24 T@Ref) (f_4@@24 T@Field_16597_16602) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@@12) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6511_70769 f_4@@24))) (not (IsWandField_6511_70785 f_4@@24))) (<= (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@@12) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@@12) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12195) (o_2@@25 T@Ref) (f_4@@25 T@Field_16585_12248) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@@13) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6511_12248 f_4@@25))) (not (IsWandField_6511_12248 f_4@@25))) (<= (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@@13) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@@13) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12195) (o_2@@26 T@Ref) (f_4@@26 T@Field_16585_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@@14) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6511_53 f_4@@26))) (not (IsWandField_6511_53 f_4@@26))) (<= (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@@14) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@@14) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12195) (o_2@@27 T@Ref) (f_4@@27 T@Field_16612_16613) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@@15) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6518_6519 f_4@@27))) (not (IsWandField_6518_6519 f_4@@27))) (<= (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@@15) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@@15) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12195) (o_2@@28 T@Ref) (f_4@@28 T@Field_16585_1668) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@@16) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6511_1668 f_4@@28))) (not (IsWandField_6511_1668 f_4@@28))) (<= (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@@16) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@@16) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12195) (o_2@@29 T@Ref) (f_4@@29 T@Field_17142_17147) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@@17) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6532_69952 f_4@@29))) (not (IsWandField_6532_69968 f_4@@29))) (<= (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@@17) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@@17) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12195) (o_2@@30 T@Ref) (f_4@@30 T@Field_6532_12248) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@@18) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6532_12248 f_4@@30))) (not (IsWandField_6532_12248 f_4@@30))) (<= (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@@18) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@@18) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12195) (o_2@@31 T@Ref) (f_4@@31 T@Field_6532_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@@19) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6532_53 f_4@@31))) (not (IsWandField_6532_53 f_4@@31))) (<= (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@@19) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@@19) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12195) (o_2@@32 T@Ref) (f_4@@32 T@Field_17129_17130) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@@20) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6532_6533 f_4@@32))) (not (IsWandField_6532_52380 f_4@@32))) (<= (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@@20) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@@20) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12195) (o_2@@33 T@Ref) (f_4@@33 T@Field_6532_1199) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@@21) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6532_1867 f_4@@33))) (not (IsWandField_6532_1867 f_4@@33))) (<= (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@@21) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@@21) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12195) (o_2@@34 T@Ref) (f_4@@34 T@Field_16127_16132) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@@22) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6502_69121 f_4@@34))) (not (IsWandField_6502_69137 f_4@@34))) (<= (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@@22) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@@22) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12195) (o_2@@35 T@Ref) (f_4@@35 T@Field_16116_12248) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@@23) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6502_12248 f_4@@35))) (not (IsWandField_6502_12248 f_4@@35))) (<= (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@@23) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@@23) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12195) (o_2@@36 T@Ref) (f_4@@36 T@Field_16116_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@@24) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_6502_53 f_4@@36))) (not (IsWandField_6502_53 f_4@@36))) (<= (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@@24) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@@24) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12195) (o_2@@37 T@Ref) (f_4@@37 T@Field_16141_16142) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@@25) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_6507_6508 f_4@@37))) (not (IsWandField_6507_6508 f_4@@37))) (<= (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@@25) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@@25) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12195) (o_2@@38 T@Ref) (f_4@@38 T@Field_16116_1460) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@@26) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_6502_1460 f_4@@38))) (not (IsWandField_6502_1460 f_4@@38))) (<= (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@@26) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@@26) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12195) (o_2@@39 T@Ref) (f_4@@39 T@Field_15573_15578) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@@27) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_6474_68304 f_4@@39))) (not (IsWandField_6474_68320 f_4@@39))) (<= (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@@27) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@@27) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12195) (o_2@@40 T@Ref) (f_4@@40 T@Field_15561_12248) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@@28) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_6474_12248 f_4@@40))) (not (IsWandField_6474_12248 f_4@@40))) (<= (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@@28) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@@28) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12195) (o_2@@41 T@Ref) (f_4@@41 T@Field_15561_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@@29) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_6474_53 f_4@@41))) (not (IsWandField_6474_53 f_4@@41))) (<= (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@@29) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@@29) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_12195) (o_2@@42 T@Ref) (f_4@@42 T@Field_15588_15589) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@@30) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_6483_6484 f_4@@42))) (not (IsWandField_6483_6484 f_4@@42))) (<= (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@@30) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@@30) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_12195) (o_2@@43 T@Ref) (f_4@@43 T@Field_15561_1199) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@@31) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_6474_1199 f_4@@43))) (not (IsWandField_6474_1199 f_4@@43))) (<= (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@@31) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@@31) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_12195) (o_2@@44 T@Ref) (f_4@@44 T@Field_12234_15578) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@@32) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_6529_67487 f_4@@44))) (not (IsWandField_6529_67503 f_4@@44))) (<= (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@@32) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@@32) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_12195) (o_2@@45 T@Ref) (f_4@@45 T@Field_12247_12248) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@@33) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_6529_12248 f_4@@45))) (not (IsWandField_6529_12248 f_4@@45))) (<= (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@@33) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@@33) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_12195) (o_2@@46 T@Ref) (f_4@@46 T@Field_12234_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@@34) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_6529_53 f_4@@46))) (not (IsWandField_6529_53 f_4@@46))) (<= (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@@34) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@@34) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_12195) (o_2@@47 T@Ref) (f_4@@47 T@Field_12234_6533) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@@35) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_12234_44340 f_4@@47))) (not (IsWandField_12234_52737 f_4@@47))) (<= (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@@35) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@@35) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_12195) (o_2@@48 T@Ref) (f_4@@48 T@Field_17082_1867) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@@36) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_6529_1867 f_4@@48))) (not (IsWandField_6529_1867 f_4@@48))) (<= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@@36) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@@36) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_12195) (o_2@@49 T@Ref) (f_4@@49 T@Field_16597_16602) ) (! (= (HasDirectPerm_16585_43727 Mask@@37 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| Mask@@37) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_43727 Mask@@37 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_12195) (o_2@@50 T@Ref) (f_4@@50 T@Field_16585_1668) ) (! (= (HasDirectPerm_16585_1199 Mask@@38 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| Mask@@38) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_1199 Mask@@38 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_12195) (o_2@@51 T@Ref) (f_4@@51 T@Field_16585_12248) ) (! (= (HasDirectPerm_16585_12248 Mask@@39 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| Mask@@39) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_12248 Mask@@39 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_12195) (o_2@@52 T@Ref) (f_4@@52 T@Field_16585_53) ) (! (= (HasDirectPerm_16585_53 Mask@@40 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| Mask@@40) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_53 Mask@@40 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_12195) (o_2@@53 T@Ref) (f_4@@53 T@Field_16612_16613) ) (! (= (HasDirectPerm_16585_6533 Mask@@41 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| Mask@@41) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_6533 Mask@@41 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_12195) (o_2@@54 T@Ref) (f_4@@54 T@Field_16127_16132) ) (! (= (HasDirectPerm_16116_42593 Mask@@42 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| Mask@@42) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_42593 Mask@@42 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_12195) (o_2@@55 T@Ref) (f_4@@55 T@Field_16116_1460) ) (! (= (HasDirectPerm_16116_1199 Mask@@43 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| Mask@@43) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_1199 Mask@@43 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_12195) (o_2@@56 T@Ref) (f_4@@56 T@Field_16116_12248) ) (! (= (HasDirectPerm_16116_12248 Mask@@44 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| Mask@@44) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_12248 Mask@@44 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_12195) (o_2@@57 T@Ref) (f_4@@57 T@Field_16116_53) ) (! (= (HasDirectPerm_16116_53 Mask@@45 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| Mask@@45) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_53 Mask@@45 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_12195) (o_2@@58 T@Ref) (f_4@@58 T@Field_16141_16142) ) (! (= (HasDirectPerm_16116_6533 Mask@@46 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| Mask@@46) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16116_6533 Mask@@46 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_12195) (o_2@@59 T@Ref) (f_4@@59 T@Field_15573_15578) ) (! (= (HasDirectPerm_15561_41459 Mask@@47 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| Mask@@47) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_41459 Mask@@47 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_12195) (o_2@@60 T@Ref) (f_4@@60 T@Field_15561_1199) ) (! (= (HasDirectPerm_15561_1199 Mask@@48 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| Mask@@48) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_1199 Mask@@48 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_12195) (o_2@@61 T@Ref) (f_4@@61 T@Field_15561_12248) ) (! (= (HasDirectPerm_15561_12248 Mask@@49 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| Mask@@49) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_12248 Mask@@49 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_12195) (o_2@@62 T@Ref) (f_4@@62 T@Field_15561_53) ) (! (= (HasDirectPerm_15561_53 Mask@@50 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| Mask@@50) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_53 Mask@@50 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_12195) (o_2@@63 T@Ref) (f_4@@63 T@Field_15588_15589) ) (! (= (HasDirectPerm_15561_6533 Mask@@51 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| Mask@@51) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15561_6533 Mask@@51 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_12195) (o_2@@64 T@Ref) (f_4@@64 T@Field_12234_15578) ) (! (= (HasDirectPerm_12234_40282 Mask@@52 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| Mask@@52) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_40282 Mask@@52 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_12195) (o_2@@65 T@Ref) (f_4@@65 T@Field_17082_1867) ) (! (= (HasDirectPerm_12234_1199 Mask@@53 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| Mask@@53) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_1199 Mask@@53 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_12195) (o_2@@66 T@Ref) (f_4@@66 T@Field_12247_12248) ) (! (= (HasDirectPerm_12234_12248 Mask@@54 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| Mask@@54) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_12248 Mask@@54 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_12195) (o_2@@67 T@Ref) (f_4@@67 T@Field_12234_53) ) (! (= (HasDirectPerm_12234_53 Mask@@55 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| Mask@@55) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_53 Mask@@55 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_12195) (o_2@@68 T@Ref) (f_4@@68 T@Field_12234_6533) ) (! (= (HasDirectPerm_12234_6533 Mask@@56 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| Mask@@56) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12234_6533 Mask@@56 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_12195) (o_2@@69 T@Ref) (f_4@@69 T@Field_17142_17147) ) (! (= (HasDirectPerm_6532_39189 Mask@@57 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| Mask@@57) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_39189 Mask@@57 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_12195) (o_2@@70 T@Ref) (f_4@@70 T@Field_6532_1199) ) (! (= (HasDirectPerm_6532_1199 Mask@@58 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| Mask@@58) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_1199 Mask@@58 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_12195) (o_2@@71 T@Ref) (f_4@@71 T@Field_6532_12248) ) (! (= (HasDirectPerm_6532_12248 Mask@@59 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| Mask@@59) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_12248 Mask@@59 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_12195) (o_2@@72 T@Ref) (f_4@@72 T@Field_6532_53) ) (! (= (HasDirectPerm_6532_53 Mask@@60 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| Mask@@60) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_53 Mask@@60 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_12195) (o_2@@73 T@Ref) (f_4@@73 T@Field_17129_17130) ) (! (= (HasDirectPerm_6532_6533 Mask@@61 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| Mask@@61) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6532_6533 Mask@@61 o_2@@73 f_4@@73))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12174) (ExhaleHeap@@11 T@PolymorphicMapType_12174) (Mask@@62 T@PolymorphicMapType_12195) (o_12@@0 T@Ref) (f_16 T@Field_16597_16602) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_16585_43727 Mask@@62 o_12@@0 f_16) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@13) o_12@@0 f_16) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@11) o_12@@0 f_16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@11) o_12@@0 f_16))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12174) (ExhaleHeap@@12 T@PolymorphicMapType_12174) (Mask@@63 T@PolymorphicMapType_12195) (o_12@@1 T@Ref) (f_16@@0 T@Field_16585_1668) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_16585_1199 Mask@@63 o_12@@1 f_16@@0) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@14) o_12@@1 f_16@@0) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@12) o_12@@1 f_16@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@12) o_12@@1 f_16@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12174) (ExhaleHeap@@13 T@PolymorphicMapType_12174) (Mask@@64 T@PolymorphicMapType_12195) (o_12@@2 T@Ref) (f_16@@1 T@Field_16585_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_16585_12248 Mask@@64 o_12@@2 f_16@@1) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@15) o_12@@2 f_16@@1) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@13) o_12@@2 f_16@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@13) o_12@@2 f_16@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12174) (ExhaleHeap@@14 T@PolymorphicMapType_12174) (Mask@@65 T@PolymorphicMapType_12195) (o_12@@3 T@Ref) (f_16@@2 T@Field_16585_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_16585_53 Mask@@65 o_12@@3 f_16@@2) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@16) o_12@@3 f_16@@2) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@14) o_12@@3 f_16@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@14) o_12@@3 f_16@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12174) (ExhaleHeap@@15 T@PolymorphicMapType_12174) (Mask@@66 T@PolymorphicMapType_12195) (o_12@@4 T@Ref) (f_16@@3 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_16585_6533 Mask@@66 o_12@@4 f_16@@3) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@17) o_12@@4 f_16@@3) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@15) o_12@@4 f_16@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@15) o_12@@4 f_16@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12174) (ExhaleHeap@@16 T@PolymorphicMapType_12174) (Mask@@67 T@PolymorphicMapType_12195) (o_12@@5 T@Ref) (f_16@@4 T@Field_16127_16132) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_16116_42593 Mask@@67 o_12@@5 f_16@@4) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@18) o_12@@5 f_16@@4) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@16) o_12@@5 f_16@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@16) o_12@@5 f_16@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12174) (ExhaleHeap@@17 T@PolymorphicMapType_12174) (Mask@@68 T@PolymorphicMapType_12195) (o_12@@6 T@Ref) (f_16@@5 T@Field_16116_1460) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_16116_1199 Mask@@68 o_12@@6 f_16@@5) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@19) o_12@@6 f_16@@5) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@17) o_12@@6 f_16@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@17) o_12@@6 f_16@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12174) (ExhaleHeap@@18 T@PolymorphicMapType_12174) (Mask@@69 T@PolymorphicMapType_12195) (o_12@@7 T@Ref) (f_16@@6 T@Field_16116_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_16116_12248 Mask@@69 o_12@@7 f_16@@6) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@20) o_12@@7 f_16@@6) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@18) o_12@@7 f_16@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@18) o_12@@7 f_16@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12174) (ExhaleHeap@@19 T@PolymorphicMapType_12174) (Mask@@70 T@PolymorphicMapType_12195) (o_12@@8 T@Ref) (f_16@@7 T@Field_16116_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_16116_53 Mask@@70 o_12@@8 f_16@@7) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@21) o_12@@8 f_16@@7) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@19) o_12@@8 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@19) o_12@@8 f_16@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12174) (ExhaleHeap@@20 T@PolymorphicMapType_12174) (Mask@@71 T@PolymorphicMapType_12195) (o_12@@9 T@Ref) (f_16@@8 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_16116_6533 Mask@@71 o_12@@9 f_16@@8) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@22) o_12@@9 f_16@@8) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@20) o_12@@9 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@20) o_12@@9 f_16@@8))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12174) (ExhaleHeap@@21 T@PolymorphicMapType_12174) (Mask@@72 T@PolymorphicMapType_12195) (o_12@@10 T@Ref) (f_16@@9 T@Field_15573_15578) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_15561_41459 Mask@@72 o_12@@10 f_16@@9) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@23) o_12@@10 f_16@@9) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@21) o_12@@10 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@21) o_12@@10 f_16@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12174) (ExhaleHeap@@22 T@PolymorphicMapType_12174) (Mask@@73 T@PolymorphicMapType_12195) (o_12@@11 T@Ref) (f_16@@10 T@Field_15561_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_15561_1199 Mask@@73 o_12@@11 f_16@@10) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@24) o_12@@11 f_16@@10) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@22) o_12@@11 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@22) o_12@@11 f_16@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12174) (ExhaleHeap@@23 T@PolymorphicMapType_12174) (Mask@@74 T@PolymorphicMapType_12195) (o_12@@12 T@Ref) (f_16@@11 T@Field_15561_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_15561_12248 Mask@@74 o_12@@12 f_16@@11) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@25) o_12@@12 f_16@@11) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@23) o_12@@12 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@23) o_12@@12 f_16@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12174) (ExhaleHeap@@24 T@PolymorphicMapType_12174) (Mask@@75 T@PolymorphicMapType_12195) (o_12@@13 T@Ref) (f_16@@12 T@Field_15561_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_15561_53 Mask@@75 o_12@@13 f_16@@12) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@26) o_12@@13 f_16@@12) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@24) o_12@@13 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@24) o_12@@13 f_16@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12174) (ExhaleHeap@@25 T@PolymorphicMapType_12174) (Mask@@76 T@PolymorphicMapType_12195) (o_12@@14 T@Ref) (f_16@@13 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_15561_6533 Mask@@76 o_12@@14 f_16@@13) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@27) o_12@@14 f_16@@13) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@25) o_12@@14 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@25) o_12@@14 f_16@@13))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12174) (ExhaleHeap@@26 T@PolymorphicMapType_12174) (Mask@@77 T@PolymorphicMapType_12195) (o_12@@15 T@Ref) (f_16@@14 T@Field_12234_15578) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_12234_40282 Mask@@77 o_12@@15 f_16@@14) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@28) o_12@@15 f_16@@14) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@26) o_12@@15 f_16@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@26) o_12@@15 f_16@@14))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12174) (ExhaleHeap@@27 T@PolymorphicMapType_12174) (Mask@@78 T@PolymorphicMapType_12195) (o_12@@16 T@Ref) (f_16@@15 T@Field_17082_1867) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_12234_1199 Mask@@78 o_12@@16 f_16@@15) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@29) o_12@@16 f_16@@15) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@27) o_12@@16 f_16@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@27) o_12@@16 f_16@@15))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12174) (ExhaleHeap@@28 T@PolymorphicMapType_12174) (Mask@@79 T@PolymorphicMapType_12195) (o_12@@17 T@Ref) (f_16@@16 T@Field_12247_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_12234_12248 Mask@@79 o_12@@17 f_16@@16) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@30) o_12@@17 f_16@@16) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@28) o_12@@17 f_16@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@28) o_12@@17 f_16@@16))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12174) (ExhaleHeap@@29 T@PolymorphicMapType_12174) (Mask@@80 T@PolymorphicMapType_12195) (o_12@@18 T@Ref) (f_16@@17 T@Field_12234_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_12234_53 Mask@@80 o_12@@18 f_16@@17) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@31) o_12@@18 f_16@@17) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@29) o_12@@18 f_16@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@29) o_12@@18 f_16@@17))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12174) (ExhaleHeap@@30 T@PolymorphicMapType_12174) (Mask@@81 T@PolymorphicMapType_12195) (o_12@@19 T@Ref) (f_16@@18 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_12234_6533 Mask@@81 o_12@@19 f_16@@18) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@32) o_12@@19 f_16@@18) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@30) o_12@@19 f_16@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@30) o_12@@19 f_16@@18))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12174) (ExhaleHeap@@31 T@PolymorphicMapType_12174) (Mask@@82 T@PolymorphicMapType_12195) (o_12@@20 T@Ref) (f_16@@19 T@Field_17142_17147) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_6532_39189 Mask@@82 o_12@@20 f_16@@19) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@33) o_12@@20 f_16@@19) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@31) o_12@@20 f_16@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@31) o_12@@20 f_16@@19))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12174) (ExhaleHeap@@32 T@PolymorphicMapType_12174) (Mask@@83 T@PolymorphicMapType_12195) (o_12@@21 T@Ref) (f_16@@20 T@Field_6532_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_6532_1199 Mask@@83 o_12@@21 f_16@@20) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@34) o_12@@21 f_16@@20) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@32) o_12@@21 f_16@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@32) o_12@@21 f_16@@20))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12174) (ExhaleHeap@@33 T@PolymorphicMapType_12174) (Mask@@84 T@PolymorphicMapType_12195) (o_12@@22 T@Ref) (f_16@@21 T@Field_6532_12248) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_6532_12248 Mask@@84 o_12@@22 f_16@@21) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@35) o_12@@22 f_16@@21) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@33) o_12@@22 f_16@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@33) o_12@@22 f_16@@21))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12174) (ExhaleHeap@@34 T@PolymorphicMapType_12174) (Mask@@85 T@PolymorphicMapType_12195) (o_12@@23 T@Ref) (f_16@@22 T@Field_6532_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_6532_53 Mask@@85 o_12@@23 f_16@@22) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@36) o_12@@23 f_16@@22) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@34) o_12@@23 f_16@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@34) o_12@@23 f_16@@22))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12174) (ExhaleHeap@@35 T@PolymorphicMapType_12174) (Mask@@86 T@PolymorphicMapType_12195) (o_12@@24 T@Ref) (f_16@@23 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_6532_6533 Mask@@86 o_12@@24 f_16@@23) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@37) o_12@@24 f_16@@23) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@35) o_12@@24 f_16@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@35) o_12@@24 f_16@@23))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_16597_16602) ) (! (= (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_16585_12248) ) (! (= (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_16585_53) ) (! (= (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_16612_16613) ) (! (= (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_16585_1668) ) (! (= (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_17142_17147) ) (! (= (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_6532_12248) ) (! (= (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_6532_53) ) (! (= (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_17129_17130) ) (! (= (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_6532_1199) ) (! (= (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_16127_16132) ) (! (= (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_16116_12248) ) (! (= (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_16116_53) ) (! (= (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_16141_16142) ) (! (= (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_16116_1460) ) (! (= (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_15573_15578) ) (! (= (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_15561_12248) ) (! (= (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_15561_53) ) (! (= (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_15588_15589) ) (! (= (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_15561_1199) ) (! (= (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_12234_15578) ) (! (= (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_12247_12248) ) (! (= (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_12234_53) ) (! (= (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_12234_6533) ) (! (= (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_17082_1867) ) (! (= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12195) (SummandMask1 T@PolymorphicMapType_12195) (SummandMask2 T@PolymorphicMapType_12195) (o_2@@99 T@Ref) (f_4@@99 T@Field_16597_16602) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12195_6511_65030#PolymorphicMapType_12195| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12195) (SummandMask1@@0 T@PolymorphicMapType_12195) (SummandMask2@@0 T@PolymorphicMapType_12195) (o_2@@100 T@Ref) (f_4@@100 T@Field_16585_12248) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12195_6511_12248#PolymorphicMapType_12195| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12195) (SummandMask1@@1 T@PolymorphicMapType_12195) (SummandMask2@@1 T@PolymorphicMapType_12195) (o_2@@101 T@Ref) (f_4@@101 T@Field_16585_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12195_6511_53#PolymorphicMapType_12195| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12195) (SummandMask1@@2 T@PolymorphicMapType_12195) (SummandMask2@@2 T@PolymorphicMapType_12195) (o_2@@102 T@Ref) (f_4@@102 T@Field_16612_16613) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12195_6511_6533#PolymorphicMapType_12195| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12195) (SummandMask1@@3 T@PolymorphicMapType_12195) (SummandMask2@@3 T@PolymorphicMapType_12195) (o_2@@103 T@Ref) (f_4@@103 T@Field_16585_1668) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12195_6511_1668#PolymorphicMapType_12195| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12195) (SummandMask1@@4 T@PolymorphicMapType_12195) (SummandMask2@@4 T@PolymorphicMapType_12195) (o_2@@104 T@Ref) (f_4@@104 T@Field_17142_17147) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12195_6532_64616#PolymorphicMapType_12195| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12195) (SummandMask1@@5 T@PolymorphicMapType_12195) (SummandMask2@@5 T@PolymorphicMapType_12195) (o_2@@105 T@Ref) (f_4@@105 T@Field_6532_12248) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12195_6532_12248#PolymorphicMapType_12195| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12195) (SummandMask1@@6 T@PolymorphicMapType_12195) (SummandMask2@@6 T@PolymorphicMapType_12195) (o_2@@106 T@Ref) (f_4@@106 T@Field_6532_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12195_6532_53#PolymorphicMapType_12195| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12195) (SummandMask1@@7 T@PolymorphicMapType_12195) (SummandMask2@@7 T@PolymorphicMapType_12195) (o_2@@107 T@Ref) (f_4@@107 T@Field_17129_17130) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12195_6532_6533#PolymorphicMapType_12195| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12195) (SummandMask1@@8 T@PolymorphicMapType_12195) (SummandMask2@@8 T@PolymorphicMapType_12195) (o_2@@108 T@Ref) (f_4@@108 T@Field_6532_1199) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12195_6532_1867#PolymorphicMapType_12195| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_12195) (SummandMask1@@9 T@PolymorphicMapType_12195) (SummandMask2@@9 T@PolymorphicMapType_12195) (o_2@@109 T@Ref) (f_4@@109 T@Field_16127_16132) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12195_6502_64205#PolymorphicMapType_12195| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_12195) (SummandMask1@@10 T@PolymorphicMapType_12195) (SummandMask2@@10 T@PolymorphicMapType_12195) (o_2@@110 T@Ref) (f_4@@110 T@Field_16116_12248) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12195_6502_12248#PolymorphicMapType_12195| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_12195) (SummandMask1@@11 T@PolymorphicMapType_12195) (SummandMask2@@11 T@PolymorphicMapType_12195) (o_2@@111 T@Ref) (f_4@@111 T@Field_16116_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12195_6502_53#PolymorphicMapType_12195| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_12195) (SummandMask1@@12 T@PolymorphicMapType_12195) (SummandMask2@@12 T@PolymorphicMapType_12195) (o_2@@112 T@Ref) (f_4@@112 T@Field_16141_16142) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12195_6502_6533#PolymorphicMapType_12195| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_12195) (SummandMask1@@13 T@PolymorphicMapType_12195) (SummandMask2@@13 T@PolymorphicMapType_12195) (o_2@@113 T@Ref) (f_4@@113 T@Field_16116_1460) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12195_6502_1460#PolymorphicMapType_12195| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_12195) (SummandMask1@@14 T@PolymorphicMapType_12195) (SummandMask2@@14 T@PolymorphicMapType_12195) (o_2@@114 T@Ref) (f_4@@114 T@Field_15573_15578) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12195_6474_63791#PolymorphicMapType_12195| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_12195) (SummandMask1@@15 T@PolymorphicMapType_12195) (SummandMask2@@15 T@PolymorphicMapType_12195) (o_2@@115 T@Ref) (f_4@@115 T@Field_15561_12248) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12195_6474_12248#PolymorphicMapType_12195| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_12195) (SummandMask1@@16 T@PolymorphicMapType_12195) (SummandMask2@@16 T@PolymorphicMapType_12195) (o_2@@116 T@Ref) (f_4@@116 T@Field_15561_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12195_6474_53#PolymorphicMapType_12195| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_12195) (SummandMask1@@17 T@PolymorphicMapType_12195) (SummandMask2@@17 T@PolymorphicMapType_12195) (o_2@@117 T@Ref) (f_4@@117 T@Field_15588_15589) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12195_6474_6533#PolymorphicMapType_12195| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_12195) (SummandMask1@@18 T@PolymorphicMapType_12195) (SummandMask2@@18 T@PolymorphicMapType_12195) (o_2@@118 T@Ref) (f_4@@118 T@Field_15561_1199) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12195_6474_1199#PolymorphicMapType_12195| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_12195) (SummandMask1@@19 T@PolymorphicMapType_12195) (SummandMask2@@19 T@PolymorphicMapType_12195) (o_2@@119 T@Ref) (f_4@@119 T@Field_12234_15578) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_12195_6529_63377#PolymorphicMapType_12195| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_12195) (SummandMask1@@20 T@PolymorphicMapType_12195) (SummandMask2@@20 T@PolymorphicMapType_12195) (o_2@@120 T@Ref) (f_4@@120 T@Field_12247_12248) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_12195_6529_12248#PolymorphicMapType_12195| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_12195) (SummandMask1@@21 T@PolymorphicMapType_12195) (SummandMask2@@21 T@PolymorphicMapType_12195) (o_2@@121 T@Ref) (f_4@@121 T@Field_12234_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_12195_6529_53#PolymorphicMapType_12195| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_12195) (SummandMask1@@22 T@PolymorphicMapType_12195) (SummandMask2@@22 T@PolymorphicMapType_12195) (o_2@@122 T@Ref) (f_4@@122 T@Field_12234_6533) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_12195_6529_6533#PolymorphicMapType_12195| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_12195) (SummandMask1@@23 T@PolymorphicMapType_12195) (SummandMask2@@23 T@PolymorphicMapType_12195) (o_2@@123 T@Ref) (f_4@@123 T@Field_17082_1867) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_12195_6529_1867#PolymorphicMapType_12195| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((arg1@@14 Bool) (arg2@@14 Bool) (arg1_2@@0 Bool) (arg2_2@@0 Bool) ) (!  (=> (= (wand_1 arg1@@14 arg2@@14) (wand_1 arg1_2@@0 arg2_2@@0)) (and (= arg1@@14 arg1_2@@0) (= arg2@@14 arg2_2@@0)))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@14 arg2@@14) (wand_1 arg1_2@@0 arg2_2@@0))
)))
(assert (forall ((arg1@@15 Bool) (arg2@@15 T@Ref) (arg3@@5 Real) (arg1_2@@1 Bool) (arg2_2@@1 T@Ref) (arg3_2 Real) ) (!  (=> (= (wand arg1@@15 arg2@@15 arg3@@5) (wand arg1_2@@1 arg2_2@@1 arg3_2)) (and (= arg1@@15 arg1_2@@1) (and (= arg2@@15 arg2_2@@1) (= arg3@@5 arg3_2))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@15 arg2@@15 arg3@@5) (wand arg1_2@@1 arg2_2@@1 arg3_2))
)))
(assert (forall ((arg1@@16 Bool) (arg2@@16 Bool) ) (! (= (getPredWandId_6502_1460 (wand_1 arg1@@16 arg2@@16)) 2)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@16 arg2@@16))
)))
(assert (forall ((arg1@@17 T@Ref) (arg2@@17 Bool) ) (! (= (getPredWandId_6511_1668 (wand_2 arg1@@17 arg2@@17)) 3)
 :qid |stdinbpl.268:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@17 arg2@@17))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_6532_6533 (P x@@3)) 0)
 :qid |stdinbpl.300:15|
 :skolemid |45|
 :pattern ( (P x@@3))
)))
(assert (forall ((arg1@@18 Bool) (arg2@@18 Bool) ) (! (= (|wand_1#sm| arg1@@18 arg2@@18) (WandMaskField_6507 (|wand_1#ft| arg1@@18 arg2@@18)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_6507 (|wand_1#ft| arg1@@18 arg2@@18)))
)))
(assert (forall ((arg1@@19 T@Ref) (arg2@@19 Bool) ) (! (= (|wand_2#sm| arg1@@19 arg2@@19) (WandMaskField_6518 (|wand_2#ft| arg1@@19 arg2@@19)))
 :qid |stdinbpl.264:15|
 :skolemid |40|
 :pattern ( (WandMaskField_6518 (|wand_2#ft| arg1@@19 arg2@@19)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12174) (o_11 T@Ref) (f_17 T@Field_16612_16613) (v T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@38) (store (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@38) o_11 f_17 v) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@38) (store (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@38) o_11 f_17 v) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@38) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12174) (o_11@@0 T@Ref) (f_17@@0 T@Field_16597_16602) (v@@0 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@39 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@39) (store (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@39) o_11@@0 f_17@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@39) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@39) (store (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@39) o_11@@0 f_17@@0 v@@0)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12174) (o_11@@1 T@Ref) (f_17@@1 T@Field_16585_1668) (v@@1 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@40) (store (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@40) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@40) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@40) (store (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@40) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12174) (o_11@@2 T@Ref) (f_17@@2 T@Field_16585_12248) (v@@2 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@41) (store (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@41) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@41) (store (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@41) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@41) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12174) (o_11@@3 T@Ref) (f_17@@3 T@Field_16585_53) (v@@3 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@42) (store (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@42) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@42) (store (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@42) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@42) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12174) (o_11@@4 T@Ref) (f_17@@4 T@Field_16141_16142) (v@@4 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@43) (store (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@43) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@43) (store (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@43) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@43) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12174) (o_11@@5 T@Ref) (f_17@@5 T@Field_16127_16132) (v@@5 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@44 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@44) (store (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@44) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@44) (store (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@44) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@44) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_12174) (o_11@@6 T@Ref) (f_17@@6 T@Field_16116_1460) (v@@6 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@45) (store (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@45) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@45) (store (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@45) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@45) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_12174) (o_11@@7 T@Ref) (f_17@@7 T@Field_16116_12248) (v@@7 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@46) (store (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@46) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@46) (store (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@46) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@46) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_12174) (o_11@@8 T@Ref) (f_17@@8 T@Field_16116_53) (v@@8 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@47) (store (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@47) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@47) (store (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@47) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@47) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_12174) (o_11@@9 T@Ref) (f_17@@9 T@Field_17129_17130) (v@@9 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@48) (store (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@48) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@48) (store (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@48) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@48) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_12174) (o_11@@10 T@Ref) (f_17@@10 T@Field_17142_17147) (v@@10 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@49 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@49) (store (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@49) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@49) (store (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@49) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@49) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_12174) (o_11@@11 T@Ref) (f_17@@11 T@Field_6532_1199) (v@@11 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@50) (store (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@50) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@50) (store (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@50) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@50) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_12174) (o_11@@12 T@Ref) (f_17@@12 T@Field_6532_12248) (v@@12 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@51) (store (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@51) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@51) (store (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@51) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@51) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_12174) (o_11@@13 T@Ref) (f_17@@13 T@Field_6532_53) (v@@13 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@52) (store (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@52) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@52) (store (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@52) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@52) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_12174) (o_11@@14 T@Ref) (f_17@@14 T@Field_15588_15589) (v@@14 T@FrameType) ) (! (succHeap Heap@@53 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@53) (store (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@53) o_11@@14 f_17@@14 v@@14) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@53) (store (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@53) o_11@@14 f_17@@14 v@@14) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@53) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_12174) (o_11@@15 T@Ref) (f_17@@15 T@Field_15573_15578) (v@@15 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@54 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@54) (store (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@54) o_11@@15 f_17@@15 v@@15) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@54) (store (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@54) o_11@@15 f_17@@15 v@@15) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@54) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_12174) (o_11@@16 T@Ref) (f_17@@16 T@Field_15561_1199) (v@@16 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@55) (store (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@55) o_11@@16 f_17@@16 v@@16) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@55) (store (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@55) o_11@@16 f_17@@16 v@@16) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@55) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_12174) (o_11@@17 T@Ref) (f_17@@17 T@Field_15561_12248) (v@@17 T@Ref) ) (! (succHeap Heap@@56 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@56) (store (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@56) o_11@@17 f_17@@17 v@@17) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@56) (store (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@56) o_11@@17 f_17@@17 v@@17) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@56) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_12174) (o_11@@18 T@Ref) (f_17@@18 T@Field_15561_53) (v@@18 Bool) ) (! (succHeap Heap@@57 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@57) (store (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@57) o_11@@18 f_17@@18 v@@18) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@57) (store (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@57) o_11@@18 f_17@@18 v@@18) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@57) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_12174) (o_11@@19 T@Ref) (f_17@@19 T@Field_12234_6533) (v@@19 T@FrameType) ) (! (succHeap Heap@@58 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@58) (store (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@58) o_11@@19 f_17@@19 v@@19) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@58) (store (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@58) o_11@@19 f_17@@19 v@@19) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@58) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_12174) (o_11@@20 T@Ref) (f_17@@20 T@Field_12234_15578) (v@@20 T@PolymorphicMapType_12723) ) (! (succHeap Heap@@59 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@59) (store (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@59) o_11@@20 f_17@@20 v@@20) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@59) (store (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@59) o_11@@20 f_17@@20 v@@20) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@59) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_12174) (o_11@@21 T@Ref) (f_17@@21 T@Field_17082_1867) (v@@21 Int) ) (! (succHeap Heap@@60 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@60) (store (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@60) o_11@@21 f_17@@21 v@@21) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@60) (store (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@60) o_11@@21 f_17@@21 v@@21) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@60) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_12174) (o_11@@22 T@Ref) (f_17@@22 T@Field_12247_12248) (v@@22 T@Ref) ) (! (succHeap Heap@@61 (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@61) (store (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@61) o_11@@22 f_17@@22 v@@22) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@61) (store (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@61) o_11@@22 f_17@@22 v@@22) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@61) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_12174) (o_11@@23 T@Ref) (f_17@@23 T@Field_12234_53) (v@@23 Bool) ) (! (succHeap Heap@@62 (PolymorphicMapType_12174 (store (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@62) o_11@@23 f_17@@23 v@@23) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12174 (store (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@62) o_11@@23 f_17@@23 v@@23) (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@62) (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@62)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_6532 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.292:15|
 :skolemid |43|
 :pattern ( (PredicateMaskField_6532 (P x@@4)))
)))
(assert (forall ((o_11@@24 T@Ref) (f_10 T@Field_12247_12248) (Heap@@63 T@PolymorphicMapType_12174) ) (!  (=> (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@63) o_11@@24 $allocated) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@63) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@63) o_11@@24 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@63) o_11@@24 f_10))
)))
(assert (forall ((p@@5 T@Field_17129_17130) (v_1@@4 T@FrameType) (q T@Field_17129_17130) (w@@4 T@FrameType) (r T@Field_17129_17130) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@5 v_1@@4 q w@@4) (InsidePredicate_17129_17129 q w@@4 r u)) (InsidePredicate_17129_17129 p@@5 v_1@@4 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@5 v_1@@4 q w@@4) (InsidePredicate_17129_17129 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_17129_17130) (v_1@@5 T@FrameType) (q@@0 T@Field_17129_17130) (w@@5 T@FrameType) (r@@0 T@Field_16612_16613) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_17129_16585 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_17129_16585 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_17129_16585 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_17129_17130) (v_1@@6 T@FrameType) (q@@1 T@Field_17129_17130) (w@@6 T@FrameType) (r@@1 T@Field_16141_16142) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_17129_16116 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_17129_16116 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_17129_16116 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_17129_17130) (v_1@@7 T@FrameType) (q@@2 T@Field_17129_17130) (w@@7 T@FrameType) (r@@2 T@Field_15588_15589) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_17129_15561 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_17129_15561 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_17129_15561 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_17129_17130) (v_1@@8 T@FrameType) (q@@3 T@Field_17129_17130) (w@@8 T@FrameType) (r@@3 T@Field_12234_6533) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_17129 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_17129_12234 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_17129_12234 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_17129 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_17129_12234 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_17129_17130) (v_1@@9 T@FrameType) (q@@4 T@Field_16612_16613) (w@@9 T@FrameType) (r@@4 T@Field_17129_17130) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_16585_17129 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_17129_17129 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_16585_17129 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_17129_17130) (v_1@@10 T@FrameType) (q@@5 T@Field_16612_16613) (w@@10 T@FrameType) (r@@5 T@Field_16612_16613) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_16585_16585 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_17129_16585 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_16585_16585 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_17129_17130) (v_1@@11 T@FrameType) (q@@6 T@Field_16612_16613) (w@@11 T@FrameType) (r@@6 T@Field_16141_16142) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_16585_16116 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_17129_16116 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_16585_16116 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_17129_17130) (v_1@@12 T@FrameType) (q@@7 T@Field_16612_16613) (w@@12 T@FrameType) (r@@7 T@Field_15588_15589) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_16585_15561 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_17129_15561 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_16585_15561 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_17129_17130) (v_1@@13 T@FrameType) (q@@8 T@Field_16612_16613) (w@@13 T@FrameType) (r@@8 T@Field_12234_6533) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16585 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_16585_12234 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_17129_12234 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16585 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_16585_12234 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_17129_17130) (v_1@@14 T@FrameType) (q@@9 T@Field_16141_16142) (w@@14 T@FrameType) (r@@9 T@Field_17129_17130) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_16116_17129 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_17129_17129 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_16116_17129 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_17129_17130) (v_1@@15 T@FrameType) (q@@10 T@Field_16141_16142) (w@@15 T@FrameType) (r@@10 T@Field_16612_16613) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_16116_16585 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_17129_16585 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_16116_16585 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_17129_17130) (v_1@@16 T@FrameType) (q@@11 T@Field_16141_16142) (w@@16 T@FrameType) (r@@11 T@Field_16141_16142) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_16116_16116 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_17129_16116 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_16116_16116 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_17129_17130) (v_1@@17 T@FrameType) (q@@12 T@Field_16141_16142) (w@@17 T@FrameType) (r@@12 T@Field_15588_15589) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_16116_15561 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_17129_15561 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_16116_15561 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_17129_17130) (v_1@@18 T@FrameType) (q@@13 T@Field_16141_16142) (w@@18 T@FrameType) (r@@13 T@Field_12234_6533) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_16116 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_16116_12234 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_17129_12234 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_16116 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_16116_12234 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_17129_17130) (v_1@@19 T@FrameType) (q@@14 T@Field_15588_15589) (w@@19 T@FrameType) (r@@14 T@Field_17129_17130) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_15561_17129 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_17129_17129 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_15561_17129 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_17129_17130) (v_1@@20 T@FrameType) (q@@15 T@Field_15588_15589) (w@@20 T@FrameType) (r@@15 T@Field_16612_16613) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_15561_16585 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_17129_16585 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_15561_16585 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_17129_17130) (v_1@@21 T@FrameType) (q@@16 T@Field_15588_15589) (w@@21 T@FrameType) (r@@16 T@Field_16141_16142) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_15561_16116 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_17129_16116 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_15561_16116 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_17129_17130) (v_1@@22 T@FrameType) (q@@17 T@Field_15588_15589) (w@@22 T@FrameType) (r@@17 T@Field_15588_15589) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_15561_15561 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_17129_15561 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_15561_15561 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_17129_17130) (v_1@@23 T@FrameType) (q@@18 T@Field_15588_15589) (w@@23 T@FrameType) (r@@18 T@Field_12234_6533) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_15561 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_15561_12234 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_17129_12234 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_15561 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_15561_12234 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_17129_17130) (v_1@@24 T@FrameType) (q@@19 T@Field_12234_6533) (w@@24 T@FrameType) (r@@19 T@Field_17129_17130) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_12234_17129 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_17129_17129 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_12234_17129 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_17129_17130) (v_1@@25 T@FrameType) (q@@20 T@Field_12234_6533) (w@@25 T@FrameType) (r@@20 T@Field_16612_16613) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_12234_16585 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_17129_16585 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_12234_16585 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_17129_17130) (v_1@@26 T@FrameType) (q@@21 T@Field_12234_6533) (w@@26 T@FrameType) (r@@21 T@Field_16141_16142) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_12234_16116 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_17129_16116 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_12234_16116 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_17129_17130) (v_1@@27 T@FrameType) (q@@22 T@Field_12234_6533) (w@@27 T@FrameType) (r@@22 T@Field_15588_15589) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_12234_15561 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_17129_15561 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_12234_15561 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_17129_17130) (v_1@@28 T@FrameType) (q@@23 T@Field_12234_6533) (w@@28 T@FrameType) (r@@23 T@Field_12234_6533) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_17129_12234 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_12234_12234 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_17129_12234 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17129_12234 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_12234_12234 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_16612_16613) (v_1@@29 T@FrameType) (q@@24 T@Field_17129_17130) (w@@29 T@FrameType) (r@@24 T@Field_17129_17130) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_17129_17129 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_16585_17129 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_17129_17129 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_16612_16613) (v_1@@30 T@FrameType) (q@@25 T@Field_17129_17130) (w@@30 T@FrameType) (r@@25 T@Field_16612_16613) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_17129_16585 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_16585_16585 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_17129_16585 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_16612_16613) (v_1@@31 T@FrameType) (q@@26 T@Field_17129_17130) (w@@31 T@FrameType) (r@@26 T@Field_16141_16142) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_17129_16116 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_16585_16116 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_17129_16116 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_16612_16613) (v_1@@32 T@FrameType) (q@@27 T@Field_17129_17130) (w@@32 T@FrameType) (r@@27 T@Field_15588_15589) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_17129_15561 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_16585_15561 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_17129_15561 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_16612_16613) (v_1@@33 T@FrameType) (q@@28 T@Field_17129_17130) (w@@33 T@FrameType) (r@@28 T@Field_12234_6533) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_17129 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_17129_12234 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_16585_12234 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_17129 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_17129_12234 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_16612_16613) (v_1@@34 T@FrameType) (q@@29 T@Field_16612_16613) (w@@34 T@FrameType) (r@@29 T@Field_17129_17130) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_16585_17129 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_16585_17129 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_16585_17129 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_16612_16613) (v_1@@35 T@FrameType) (q@@30 T@Field_16612_16613) (w@@35 T@FrameType) (r@@30 T@Field_16612_16613) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_16585_16585 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_16585_16585 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_16585_16585 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_16612_16613) (v_1@@36 T@FrameType) (q@@31 T@Field_16612_16613) (w@@36 T@FrameType) (r@@31 T@Field_16141_16142) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_16585_16116 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_16585_16116 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_16585_16116 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_16612_16613) (v_1@@37 T@FrameType) (q@@32 T@Field_16612_16613) (w@@37 T@FrameType) (r@@32 T@Field_15588_15589) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_16585_15561 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_16585_15561 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_16585_15561 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_16612_16613) (v_1@@38 T@FrameType) (q@@33 T@Field_16612_16613) (w@@38 T@FrameType) (r@@33 T@Field_12234_6533) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16585 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_16585_12234 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_16585_12234 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16585 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_16585_12234 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_16612_16613) (v_1@@39 T@FrameType) (q@@34 T@Field_16141_16142) (w@@39 T@FrameType) (r@@34 T@Field_17129_17130) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_16116_17129 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_16585_17129 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_16116_17129 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_16612_16613) (v_1@@40 T@FrameType) (q@@35 T@Field_16141_16142) (w@@40 T@FrameType) (r@@35 T@Field_16612_16613) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_16116_16585 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_16585_16585 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_16116_16585 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_16612_16613) (v_1@@41 T@FrameType) (q@@36 T@Field_16141_16142) (w@@41 T@FrameType) (r@@36 T@Field_16141_16142) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_16116_16116 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_16585_16116 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_16116_16116 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_16612_16613) (v_1@@42 T@FrameType) (q@@37 T@Field_16141_16142) (w@@42 T@FrameType) (r@@37 T@Field_15588_15589) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_16116_15561 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_16585_15561 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_16116_15561 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_16612_16613) (v_1@@43 T@FrameType) (q@@38 T@Field_16141_16142) (w@@43 T@FrameType) (r@@38 T@Field_12234_6533) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_16116 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_16116_12234 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_16585_12234 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_16116 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_16116_12234 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_16612_16613) (v_1@@44 T@FrameType) (q@@39 T@Field_15588_15589) (w@@44 T@FrameType) (r@@39 T@Field_17129_17130) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_15561_17129 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_16585_17129 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_15561_17129 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_16612_16613) (v_1@@45 T@FrameType) (q@@40 T@Field_15588_15589) (w@@45 T@FrameType) (r@@40 T@Field_16612_16613) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_15561_16585 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_16585_16585 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_15561_16585 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_16612_16613) (v_1@@46 T@FrameType) (q@@41 T@Field_15588_15589) (w@@46 T@FrameType) (r@@41 T@Field_16141_16142) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_15561_16116 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_16585_16116 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_15561_16116 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_16612_16613) (v_1@@47 T@FrameType) (q@@42 T@Field_15588_15589) (w@@47 T@FrameType) (r@@42 T@Field_15588_15589) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_15561_15561 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_16585_15561 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_15561_15561 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_16612_16613) (v_1@@48 T@FrameType) (q@@43 T@Field_15588_15589) (w@@48 T@FrameType) (r@@43 T@Field_12234_6533) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_15561 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_15561_12234 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_16585_12234 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_15561 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_15561_12234 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_16612_16613) (v_1@@49 T@FrameType) (q@@44 T@Field_12234_6533) (w@@49 T@FrameType) (r@@44 T@Field_17129_17130) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_12234_17129 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_16585_17129 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_12234_17129 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_16612_16613) (v_1@@50 T@FrameType) (q@@45 T@Field_12234_6533) (w@@50 T@FrameType) (r@@45 T@Field_16612_16613) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_12234_16585 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_16585_16585 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_12234_16585 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_16612_16613) (v_1@@51 T@FrameType) (q@@46 T@Field_12234_6533) (w@@51 T@FrameType) (r@@46 T@Field_16141_16142) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_12234_16116 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_16585_16116 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_12234_16116 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_16612_16613) (v_1@@52 T@FrameType) (q@@47 T@Field_12234_6533) (w@@52 T@FrameType) (r@@47 T@Field_15588_15589) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_12234_15561 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_16585_15561 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_12234_15561 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_16612_16613) (v_1@@53 T@FrameType) (q@@48 T@Field_12234_6533) (w@@53 T@FrameType) (r@@48 T@Field_12234_6533) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_16585_12234 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_12234_12234 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_16585_12234 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16585_12234 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_12234_12234 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_16141_16142) (v_1@@54 T@FrameType) (q@@49 T@Field_17129_17130) (w@@54 T@FrameType) (r@@49 T@Field_17129_17130) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_17129_17129 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_16116_17129 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_17129_17129 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_16141_16142) (v_1@@55 T@FrameType) (q@@50 T@Field_17129_17130) (w@@55 T@FrameType) (r@@50 T@Field_16612_16613) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_17129_16585 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_16116_16585 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_17129_16585 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_16141_16142) (v_1@@56 T@FrameType) (q@@51 T@Field_17129_17130) (w@@56 T@FrameType) (r@@51 T@Field_16141_16142) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_17129_16116 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_16116_16116 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_17129_16116 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_16141_16142) (v_1@@57 T@FrameType) (q@@52 T@Field_17129_17130) (w@@57 T@FrameType) (r@@52 T@Field_15588_15589) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_17129_15561 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_16116_15561 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_17129_15561 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_16141_16142) (v_1@@58 T@FrameType) (q@@53 T@Field_17129_17130) (w@@58 T@FrameType) (r@@53 T@Field_12234_6533) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_17129 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_17129_12234 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_16116_12234 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_17129 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_17129_12234 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_16141_16142) (v_1@@59 T@FrameType) (q@@54 T@Field_16612_16613) (w@@59 T@FrameType) (r@@54 T@Field_17129_17130) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_16585_17129 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_16116_17129 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_16585_17129 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_16141_16142) (v_1@@60 T@FrameType) (q@@55 T@Field_16612_16613) (w@@60 T@FrameType) (r@@55 T@Field_16612_16613) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_16585_16585 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_16116_16585 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_16585_16585 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_16141_16142) (v_1@@61 T@FrameType) (q@@56 T@Field_16612_16613) (w@@61 T@FrameType) (r@@56 T@Field_16141_16142) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_16585_16116 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_16116_16116 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_16585_16116 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_16141_16142) (v_1@@62 T@FrameType) (q@@57 T@Field_16612_16613) (w@@62 T@FrameType) (r@@57 T@Field_15588_15589) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_16585_15561 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_16116_15561 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_16585_15561 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_16141_16142) (v_1@@63 T@FrameType) (q@@58 T@Field_16612_16613) (w@@63 T@FrameType) (r@@58 T@Field_12234_6533) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16585 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_16585_12234 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_16116_12234 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16585 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_16585_12234 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_16141_16142) (v_1@@64 T@FrameType) (q@@59 T@Field_16141_16142) (w@@64 T@FrameType) (r@@59 T@Field_17129_17130) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_16116_17129 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_16116_17129 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_16116_17129 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_16141_16142) (v_1@@65 T@FrameType) (q@@60 T@Field_16141_16142) (w@@65 T@FrameType) (r@@60 T@Field_16612_16613) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_16116_16585 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_16116_16585 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_16116_16585 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_16141_16142) (v_1@@66 T@FrameType) (q@@61 T@Field_16141_16142) (w@@66 T@FrameType) (r@@61 T@Field_16141_16142) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_16116_16116 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_16116_16116 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_16116_16116 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_16141_16142) (v_1@@67 T@FrameType) (q@@62 T@Field_16141_16142) (w@@67 T@FrameType) (r@@62 T@Field_15588_15589) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_16116_15561 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_16116_15561 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_16116_15561 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_16141_16142) (v_1@@68 T@FrameType) (q@@63 T@Field_16141_16142) (w@@68 T@FrameType) (r@@63 T@Field_12234_6533) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_16116 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_16116_12234 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_16116_12234 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_16116 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_16116_12234 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_16141_16142) (v_1@@69 T@FrameType) (q@@64 T@Field_15588_15589) (w@@69 T@FrameType) (r@@64 T@Field_17129_17130) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_15561_17129 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_16116_17129 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_15561_17129 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_16141_16142) (v_1@@70 T@FrameType) (q@@65 T@Field_15588_15589) (w@@70 T@FrameType) (r@@65 T@Field_16612_16613) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_15561_16585 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_16116_16585 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_15561_16585 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_16141_16142) (v_1@@71 T@FrameType) (q@@66 T@Field_15588_15589) (w@@71 T@FrameType) (r@@66 T@Field_16141_16142) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_15561_16116 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_16116_16116 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_15561_16116 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_16141_16142) (v_1@@72 T@FrameType) (q@@67 T@Field_15588_15589) (w@@72 T@FrameType) (r@@67 T@Field_15588_15589) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_15561_15561 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_16116_15561 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_15561_15561 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_16141_16142) (v_1@@73 T@FrameType) (q@@68 T@Field_15588_15589) (w@@73 T@FrameType) (r@@68 T@Field_12234_6533) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_15561 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_15561_12234 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_16116_12234 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_15561 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_15561_12234 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_16141_16142) (v_1@@74 T@FrameType) (q@@69 T@Field_12234_6533) (w@@74 T@FrameType) (r@@69 T@Field_17129_17130) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_12234_17129 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_16116_17129 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_12234_17129 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_16141_16142) (v_1@@75 T@FrameType) (q@@70 T@Field_12234_6533) (w@@75 T@FrameType) (r@@70 T@Field_16612_16613) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_12234_16585 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_16116_16585 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_12234_16585 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_16141_16142) (v_1@@76 T@FrameType) (q@@71 T@Field_12234_6533) (w@@76 T@FrameType) (r@@71 T@Field_16141_16142) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_12234_16116 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_16116_16116 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_12234_16116 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_16141_16142) (v_1@@77 T@FrameType) (q@@72 T@Field_12234_6533) (w@@77 T@FrameType) (r@@72 T@Field_15588_15589) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_12234_15561 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_16116_15561 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_12234_15561 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_16141_16142) (v_1@@78 T@FrameType) (q@@73 T@Field_12234_6533) (w@@78 T@FrameType) (r@@73 T@Field_12234_6533) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_16116_12234 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_12234_12234 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_16116_12234 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16116_12234 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_12234_12234 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_15588_15589) (v_1@@79 T@FrameType) (q@@74 T@Field_17129_17130) (w@@79 T@FrameType) (r@@74 T@Field_17129_17130) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_17129_17129 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_15561_17129 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_17129_17129 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_15588_15589) (v_1@@80 T@FrameType) (q@@75 T@Field_17129_17130) (w@@80 T@FrameType) (r@@75 T@Field_16612_16613) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_17129_16585 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_15561_16585 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_17129_16585 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_15588_15589) (v_1@@81 T@FrameType) (q@@76 T@Field_17129_17130) (w@@81 T@FrameType) (r@@76 T@Field_16141_16142) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_17129_16116 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_15561_16116 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_17129_16116 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_15588_15589) (v_1@@82 T@FrameType) (q@@77 T@Field_17129_17130) (w@@82 T@FrameType) (r@@77 T@Field_15588_15589) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_17129_15561 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_15561_15561 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_17129_15561 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_15588_15589) (v_1@@83 T@FrameType) (q@@78 T@Field_17129_17130) (w@@83 T@FrameType) (r@@78 T@Field_12234_6533) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_17129 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_17129_12234 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_15561_12234 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_17129 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_17129_12234 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_15588_15589) (v_1@@84 T@FrameType) (q@@79 T@Field_16612_16613) (w@@84 T@FrameType) (r@@79 T@Field_17129_17130) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_16585_17129 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_15561_17129 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_16585_17129 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_15588_15589) (v_1@@85 T@FrameType) (q@@80 T@Field_16612_16613) (w@@85 T@FrameType) (r@@80 T@Field_16612_16613) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_16585_16585 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_15561_16585 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_16585_16585 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_15588_15589) (v_1@@86 T@FrameType) (q@@81 T@Field_16612_16613) (w@@86 T@FrameType) (r@@81 T@Field_16141_16142) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_16585_16116 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_15561_16116 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_16585_16116 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_15588_15589) (v_1@@87 T@FrameType) (q@@82 T@Field_16612_16613) (w@@87 T@FrameType) (r@@82 T@Field_15588_15589) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_16585_15561 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_15561_15561 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_16585_15561 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_15588_15589) (v_1@@88 T@FrameType) (q@@83 T@Field_16612_16613) (w@@88 T@FrameType) (r@@83 T@Field_12234_6533) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16585 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_16585_12234 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_15561_12234 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16585 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_16585_12234 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_15588_15589) (v_1@@89 T@FrameType) (q@@84 T@Field_16141_16142) (w@@89 T@FrameType) (r@@84 T@Field_17129_17130) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_16116_17129 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_15561_17129 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_16116_17129 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_15588_15589) (v_1@@90 T@FrameType) (q@@85 T@Field_16141_16142) (w@@90 T@FrameType) (r@@85 T@Field_16612_16613) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_16116_16585 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_15561_16585 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_16116_16585 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_15588_15589) (v_1@@91 T@FrameType) (q@@86 T@Field_16141_16142) (w@@91 T@FrameType) (r@@86 T@Field_16141_16142) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_16116_16116 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_15561_16116 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_16116_16116 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_15588_15589) (v_1@@92 T@FrameType) (q@@87 T@Field_16141_16142) (w@@92 T@FrameType) (r@@87 T@Field_15588_15589) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_16116_15561 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_15561_15561 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_16116_15561 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_15588_15589) (v_1@@93 T@FrameType) (q@@88 T@Field_16141_16142) (w@@93 T@FrameType) (r@@88 T@Field_12234_6533) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_16116 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_16116_12234 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_15561_12234 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_16116 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_16116_12234 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_15588_15589) (v_1@@94 T@FrameType) (q@@89 T@Field_15588_15589) (w@@94 T@FrameType) (r@@89 T@Field_17129_17130) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_15561_17129 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_15561_17129 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_15561_17129 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_15588_15589) (v_1@@95 T@FrameType) (q@@90 T@Field_15588_15589) (w@@95 T@FrameType) (r@@90 T@Field_16612_16613) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_15561_16585 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_15561_16585 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_15561_16585 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_15588_15589) (v_1@@96 T@FrameType) (q@@91 T@Field_15588_15589) (w@@96 T@FrameType) (r@@91 T@Field_16141_16142) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_15561_16116 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_15561_16116 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_15561_16116 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_15588_15589) (v_1@@97 T@FrameType) (q@@92 T@Field_15588_15589) (w@@97 T@FrameType) (r@@92 T@Field_15588_15589) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_15561_15561 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_15561_15561 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_15561_15561 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_15588_15589) (v_1@@98 T@FrameType) (q@@93 T@Field_15588_15589) (w@@98 T@FrameType) (r@@93 T@Field_12234_6533) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_15561 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_15561_12234 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_15561_12234 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_15561 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_15561_12234 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_15588_15589) (v_1@@99 T@FrameType) (q@@94 T@Field_12234_6533) (w@@99 T@FrameType) (r@@94 T@Field_17129_17130) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_12234_17129 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_15561_17129 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_12234_17129 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_15588_15589) (v_1@@100 T@FrameType) (q@@95 T@Field_12234_6533) (w@@100 T@FrameType) (r@@95 T@Field_16612_16613) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_12234_16585 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_15561_16585 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_12234_16585 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_15588_15589) (v_1@@101 T@FrameType) (q@@96 T@Field_12234_6533) (w@@101 T@FrameType) (r@@96 T@Field_16141_16142) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_12234_16116 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_15561_16116 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_12234_16116 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_15588_15589) (v_1@@102 T@FrameType) (q@@97 T@Field_12234_6533) (w@@102 T@FrameType) (r@@97 T@Field_15588_15589) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_12234_15561 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_15561_15561 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_12234_15561 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_15588_15589) (v_1@@103 T@FrameType) (q@@98 T@Field_12234_6533) (w@@103 T@FrameType) (r@@98 T@Field_12234_6533) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_15561_12234 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_12234_12234 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_15561_12234 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15561_12234 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_12234_12234 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_12234_6533) (v_1@@104 T@FrameType) (q@@99 T@Field_17129_17130) (w@@104 T@FrameType) (r@@99 T@Field_17129_17130) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_17129_17129 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_12234_17129 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_17129_17129 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_12234_6533) (v_1@@105 T@FrameType) (q@@100 T@Field_17129_17130) (w@@105 T@FrameType) (r@@100 T@Field_16612_16613) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_17129_16585 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_12234_16585 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_17129_16585 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_12234_6533) (v_1@@106 T@FrameType) (q@@101 T@Field_17129_17130) (w@@106 T@FrameType) (r@@101 T@Field_16141_16142) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_17129_16116 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_12234_16116 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_17129_16116 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_12234_6533) (v_1@@107 T@FrameType) (q@@102 T@Field_17129_17130) (w@@107 T@FrameType) (r@@102 T@Field_15588_15589) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_17129_15561 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_12234_15561 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_17129_15561 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_12234_6533) (v_1@@108 T@FrameType) (q@@103 T@Field_17129_17130) (w@@108 T@FrameType) (r@@103 T@Field_12234_6533) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_17129 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_17129_12234 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_12234_12234 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_17129 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_17129_12234 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_12234_6533) (v_1@@109 T@FrameType) (q@@104 T@Field_16612_16613) (w@@109 T@FrameType) (r@@104 T@Field_17129_17130) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_16585_17129 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_12234_17129 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_16585_17129 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_12234_6533) (v_1@@110 T@FrameType) (q@@105 T@Field_16612_16613) (w@@110 T@FrameType) (r@@105 T@Field_16612_16613) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_16585_16585 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_12234_16585 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_16585_16585 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_12234_6533) (v_1@@111 T@FrameType) (q@@106 T@Field_16612_16613) (w@@111 T@FrameType) (r@@106 T@Field_16141_16142) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_16585_16116 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_12234_16116 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_16585_16116 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_12234_6533) (v_1@@112 T@FrameType) (q@@107 T@Field_16612_16613) (w@@112 T@FrameType) (r@@107 T@Field_15588_15589) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_16585_15561 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_12234_15561 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_16585_15561 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_12234_6533) (v_1@@113 T@FrameType) (q@@108 T@Field_16612_16613) (w@@113 T@FrameType) (r@@108 T@Field_12234_6533) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16585 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_16585_12234 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_12234_12234 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16585 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_16585_12234 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_12234_6533) (v_1@@114 T@FrameType) (q@@109 T@Field_16141_16142) (w@@114 T@FrameType) (r@@109 T@Field_17129_17130) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_16116_17129 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_12234_17129 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_16116_17129 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_12234_6533) (v_1@@115 T@FrameType) (q@@110 T@Field_16141_16142) (w@@115 T@FrameType) (r@@110 T@Field_16612_16613) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_16116_16585 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_12234_16585 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_16116_16585 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_12234_6533) (v_1@@116 T@FrameType) (q@@111 T@Field_16141_16142) (w@@116 T@FrameType) (r@@111 T@Field_16141_16142) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_16116_16116 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_12234_16116 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_16116_16116 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_12234_6533) (v_1@@117 T@FrameType) (q@@112 T@Field_16141_16142) (w@@117 T@FrameType) (r@@112 T@Field_15588_15589) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_16116_15561 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_12234_15561 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_16116_15561 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_12234_6533) (v_1@@118 T@FrameType) (q@@113 T@Field_16141_16142) (w@@118 T@FrameType) (r@@113 T@Field_12234_6533) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_16116 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_16116_12234 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_12234_12234 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_16116 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_16116_12234 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_12234_6533) (v_1@@119 T@FrameType) (q@@114 T@Field_15588_15589) (w@@119 T@FrameType) (r@@114 T@Field_17129_17130) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_15561_17129 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_12234_17129 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_15561_17129 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_12234_6533) (v_1@@120 T@FrameType) (q@@115 T@Field_15588_15589) (w@@120 T@FrameType) (r@@115 T@Field_16612_16613) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_15561_16585 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_12234_16585 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_15561_16585 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_12234_6533) (v_1@@121 T@FrameType) (q@@116 T@Field_15588_15589) (w@@121 T@FrameType) (r@@116 T@Field_16141_16142) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_15561_16116 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_12234_16116 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_15561_16116 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_12234_6533) (v_1@@122 T@FrameType) (q@@117 T@Field_15588_15589) (w@@122 T@FrameType) (r@@117 T@Field_15588_15589) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_15561_15561 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_12234_15561 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_15561_15561 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_12234_6533) (v_1@@123 T@FrameType) (q@@118 T@Field_15588_15589) (w@@123 T@FrameType) (r@@118 T@Field_12234_6533) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_15561 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_15561_12234 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_12234_12234 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_15561 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_15561_12234 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_12234_6533) (v_1@@124 T@FrameType) (q@@119 T@Field_12234_6533) (w@@124 T@FrameType) (r@@119 T@Field_17129_17130) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_12234_17129 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_12234_17129 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_12234_17129 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_12234_6533) (v_1@@125 T@FrameType) (q@@120 T@Field_12234_6533) (w@@125 T@FrameType) (r@@120 T@Field_16612_16613) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_12234_16585 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_12234_16585 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_12234_16585 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_12234_6533) (v_1@@126 T@FrameType) (q@@121 T@Field_12234_6533) (w@@126 T@FrameType) (r@@121 T@Field_16141_16142) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_12234_16116 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_12234_16116 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_12234_16116 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_12234_6533) (v_1@@127 T@FrameType) (q@@122 T@Field_12234_6533) (w@@127 T@FrameType) (r@@122 T@Field_15588_15589) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_12234_15561 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_12234_15561 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_12234_15561 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_12234_6533) (v_1@@128 T@FrameType) (q@@123 T@Field_12234_6533) (w@@128 T@FrameType) (r@@123 T@Field_12234_6533) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_12234_12234 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_12234_12234 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_12234_12234 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12234_12234 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_12234_12234 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_12174) (ExhaleHeap@@36 T@PolymorphicMapType_12174) (Mask@@87 T@PolymorphicMapType_12195) (pm_f_5@@9 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_16585_6533 Mask@@87 null pm_f_5@@9) (IsPredicateField_6518_6519 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16@@24 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5 f_16@@24) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@64) o2_5 f_16@@24) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5 f_16@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5 f_16@@24))
)) (forall ((o2_5@@0 T@Ref) (f_16@@25 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@0 f_16@@25) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@64) o2_5@@0 f_16@@25) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@0 f_16@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@0 f_16@@25))
))) (forall ((o2_5@@1 T@Ref) (f_16@@26 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@1 f_16@@26) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@64) o2_5@@1 f_16@@26) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@1 f_16@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@1 f_16@@26))
))) (forall ((o2_5@@2 T@Ref) (f_16@@27 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@2 f_16@@27) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@64) o2_5@@2 f_16@@27) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@2 f_16@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@2 f_16@@27))
))) (forall ((o2_5@@3 T@Ref) (f_16@@28 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@3 f_16@@28) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@3 f_16@@28) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@3 f_16@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@3 f_16@@28))
))) (forall ((o2_5@@4 T@Ref) (f_16@@29 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@4 f_16@@29) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@64) o2_5@@4 f_16@@29) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@4 f_16@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@4 f_16@@29))
))) (forall ((o2_5@@5 T@Ref) (f_16@@30 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@5 f_16@@30) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@64) o2_5@@5 f_16@@30) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@5 f_16@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@5 f_16@@30))
))) (forall ((o2_5@@6 T@Ref) (f_16@@31 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@6 f_16@@31) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@64) o2_5@@6 f_16@@31) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@6 f_16@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@6 f_16@@31))
))) (forall ((o2_5@@7 T@Ref) (f_16@@32 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@7 f_16@@32) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@64) o2_5@@7 f_16@@32) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@7 f_16@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@7 f_16@@32))
))) (forall ((o2_5@@8 T@Ref) (f_16@@33 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@8 f_16@@33) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@8 f_16@@33) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@8 f_16@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@8 f_16@@33))
))) (forall ((o2_5@@9 T@Ref) (f_16@@34 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@9 f_16@@34) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@64) o2_5@@9 f_16@@34) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@9 f_16@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@9 f_16@@34))
))) (forall ((o2_5@@10 T@Ref) (f_16@@35 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@10 f_16@@35) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@64) o2_5@@10 f_16@@35) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@10 f_16@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@10 f_16@@35))
))) (forall ((o2_5@@11 T@Ref) (f_16@@36 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@11 f_16@@36) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@64) o2_5@@11 f_16@@36) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@11 f_16@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@11 f_16@@36))
))) (forall ((o2_5@@12 T@Ref) (f_16@@37 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@12 f_16@@37) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@64) o2_5@@12 f_16@@37) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@12 f_16@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@12 f_16@@37))
))) (forall ((o2_5@@13 T@Ref) (f_16@@38 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@13 f_16@@38) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@13 f_16@@38) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@13 f_16@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@13 f_16@@38))
))) (forall ((o2_5@@14 T@Ref) (f_16@@39 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@14 f_16@@39) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@64) o2_5@@14 f_16@@39) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@14 f_16@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@14 f_16@@39))
))) (forall ((o2_5@@15 T@Ref) (f_16@@40 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@15 f_16@@40) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@64) o2_5@@15 f_16@@40) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@15 f_16@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@15 f_16@@40))
))) (forall ((o2_5@@16 T@Ref) (f_16@@41 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@16 f_16@@41) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@64) o2_5@@16 f_16@@41) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@16 f_16@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@16 f_16@@41))
))) (forall ((o2_5@@17 T@Ref) (f_16@@42 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@17 f_16@@42) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) o2_5@@17 f_16@@42) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@17 f_16@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@17 f_16@@42))
))) (forall ((o2_5@@18 T@Ref) (f_16@@43 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@18 f_16@@43) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@18 f_16@@43) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@18 f_16@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@18 f_16@@43))
))) (forall ((o2_5@@19 T@Ref) (f_16@@44 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@19 f_16@@44) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@64) o2_5@@19 f_16@@44) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@19 f_16@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@19 f_16@@44))
))) (forall ((o2_5@@20 T@Ref) (f_16@@45 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@20 f_16@@45) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@64) o2_5@@20 f_16@@45) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@20 f_16@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@20 f_16@@45))
))) (forall ((o2_5@@21 T@Ref) (f_16@@46 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@21 f_16@@46) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@64) o2_5@@21 f_16@@46) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@21 f_16@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@21 f_16@@46))
))) (forall ((o2_5@@22 T@Ref) (f_16@@47 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@22 f_16@@47) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@64) o2_5@@22 f_16@@47) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@22 f_16@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@22 f_16@@47))
))) (forall ((o2_5@@23 T@Ref) (f_16@@48 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@64) null (PredicateMaskField_16585 pm_f_5@@9))) o2_5@@23 f_16@@48) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@64) o2_5@@23 f_16@@48) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@23 f_16@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@36) o2_5@@23 f_16@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@36 Mask@@87) (IsPredicateField_6518_6519 pm_f_5@@9))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_12174) (ExhaleHeap@@37 T@PolymorphicMapType_12174) (Mask@@88 T@PolymorphicMapType_12195) (pm_f_5@@10 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_16116_6533 Mask@@88 null pm_f_5@@10) (IsPredicateField_6507_6508 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@24 T@Ref) (f_16@@49 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@24 f_16@@49) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@65) o2_5@@24 f_16@@49) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@24 f_16@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@24 f_16@@49))
)) (forall ((o2_5@@25 T@Ref) (f_16@@50 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@25 f_16@@50) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@65) o2_5@@25 f_16@@50) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@25 f_16@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@25 f_16@@50))
))) (forall ((o2_5@@26 T@Ref) (f_16@@51 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@26 f_16@@51) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@65) o2_5@@26 f_16@@51) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@26 f_16@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@26 f_16@@51))
))) (forall ((o2_5@@27 T@Ref) (f_16@@52 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@27 f_16@@52) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@65) o2_5@@27 f_16@@52) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@27 f_16@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@27 f_16@@52))
))) (forall ((o2_5@@28 T@Ref) (f_16@@53 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@28 f_16@@53) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@28 f_16@@53) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@28 f_16@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@28 f_16@@53))
))) (forall ((o2_5@@29 T@Ref) (f_16@@54 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@29 f_16@@54) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@65) o2_5@@29 f_16@@54) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@29 f_16@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@29 f_16@@54))
))) (forall ((o2_5@@30 T@Ref) (f_16@@55 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@30 f_16@@55) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@65) o2_5@@30 f_16@@55) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@30 f_16@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@30 f_16@@55))
))) (forall ((o2_5@@31 T@Ref) (f_16@@56 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@31 f_16@@56) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@65) o2_5@@31 f_16@@56) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@31 f_16@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@31 f_16@@56))
))) (forall ((o2_5@@32 T@Ref) (f_16@@57 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@32 f_16@@57) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@65) o2_5@@32 f_16@@57) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@32 f_16@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@32 f_16@@57))
))) (forall ((o2_5@@33 T@Ref) (f_16@@58 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@33 f_16@@58) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@33 f_16@@58) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@33 f_16@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@33 f_16@@58))
))) (forall ((o2_5@@34 T@Ref) (f_16@@59 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@34 f_16@@59) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@65) o2_5@@34 f_16@@59) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@34 f_16@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@34 f_16@@59))
))) (forall ((o2_5@@35 T@Ref) (f_16@@60 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@35 f_16@@60) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@65) o2_5@@35 f_16@@60) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@35 f_16@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@35 f_16@@60))
))) (forall ((o2_5@@36 T@Ref) (f_16@@61 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@36 f_16@@61) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@65) o2_5@@36 f_16@@61) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@36 f_16@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@36 f_16@@61))
))) (forall ((o2_5@@37 T@Ref) (f_16@@62 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@37 f_16@@62) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) o2_5@@37 f_16@@62) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@37 f_16@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@37 f_16@@62))
))) (forall ((o2_5@@38 T@Ref) (f_16@@63 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@38 f_16@@63) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@38 f_16@@63) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@38 f_16@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@38 f_16@@63))
))) (forall ((o2_5@@39 T@Ref) (f_16@@64 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@39 f_16@@64) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@65) o2_5@@39 f_16@@64) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@39 f_16@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@39 f_16@@64))
))) (forall ((o2_5@@40 T@Ref) (f_16@@65 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@40 f_16@@65) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@65) o2_5@@40 f_16@@65) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@40 f_16@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@40 f_16@@65))
))) (forall ((o2_5@@41 T@Ref) (f_16@@66 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@41 f_16@@66) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@65) o2_5@@41 f_16@@66) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@41 f_16@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@41 f_16@@66))
))) (forall ((o2_5@@42 T@Ref) (f_16@@67 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@42 f_16@@67) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@65) o2_5@@42 f_16@@67) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@42 f_16@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@42 f_16@@67))
))) (forall ((o2_5@@43 T@Ref) (f_16@@68 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@43 f_16@@68) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@43 f_16@@68) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@43 f_16@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@43 f_16@@68))
))) (forall ((o2_5@@44 T@Ref) (f_16@@69 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@44 f_16@@69) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@65) o2_5@@44 f_16@@69) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@44 f_16@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@44 f_16@@69))
))) (forall ((o2_5@@45 T@Ref) (f_16@@70 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@45 f_16@@70) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@65) o2_5@@45 f_16@@70) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@45 f_16@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@45 f_16@@70))
))) (forall ((o2_5@@46 T@Ref) (f_16@@71 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@46 f_16@@71) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@65) o2_5@@46 f_16@@71) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@46 f_16@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@46 f_16@@71))
))) (forall ((o2_5@@47 T@Ref) (f_16@@72 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@47 f_16@@72) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@65) o2_5@@47 f_16@@72) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@47 f_16@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@47 f_16@@72))
))) (forall ((o2_5@@48 T@Ref) (f_16@@73 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@65) null (PredicateMaskField_16116 pm_f_5@@10))) o2_5@@48 f_16@@73) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@65) o2_5@@48 f_16@@73) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@48 f_16@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@37) o2_5@@48 f_16@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@37 Mask@@88) (IsPredicateField_6507_6508 pm_f_5@@10))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_12174) (ExhaleHeap@@38 T@PolymorphicMapType_12174) (Mask@@89 T@PolymorphicMapType_12195) (pm_f_5@@11 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_15561_6533 Mask@@89 null pm_f_5@@11) (IsPredicateField_6483_6484 pm_f_5@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@49 T@Ref) (f_16@@74 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@49 f_16@@74) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@66) o2_5@@49 f_16@@74) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@49 f_16@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@49 f_16@@74))
)) (forall ((o2_5@@50 T@Ref) (f_16@@75 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@50 f_16@@75) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@66) o2_5@@50 f_16@@75) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@50 f_16@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@50 f_16@@75))
))) (forall ((o2_5@@51 T@Ref) (f_16@@76 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@51 f_16@@76) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@66) o2_5@@51 f_16@@76) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@51 f_16@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@51 f_16@@76))
))) (forall ((o2_5@@52 T@Ref) (f_16@@77 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@52 f_16@@77) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@66) o2_5@@52 f_16@@77) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@52 f_16@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@52 f_16@@77))
))) (forall ((o2_5@@53 T@Ref) (f_16@@78 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@53 f_16@@78) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@53 f_16@@78) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@53 f_16@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@53 f_16@@78))
))) (forall ((o2_5@@54 T@Ref) (f_16@@79 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@54 f_16@@79) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@66) o2_5@@54 f_16@@79) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@54 f_16@@79)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@54 f_16@@79))
))) (forall ((o2_5@@55 T@Ref) (f_16@@80 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@55 f_16@@80) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@66) o2_5@@55 f_16@@80) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@55 f_16@@80)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@55 f_16@@80))
))) (forall ((o2_5@@56 T@Ref) (f_16@@81 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@56 f_16@@81) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@66) o2_5@@56 f_16@@81) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@56 f_16@@81)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@56 f_16@@81))
))) (forall ((o2_5@@57 T@Ref) (f_16@@82 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@57 f_16@@82) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) o2_5@@57 f_16@@82) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@57 f_16@@82)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@57 f_16@@82))
))) (forall ((o2_5@@58 T@Ref) (f_16@@83 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@58 f_16@@83) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@58 f_16@@83) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@58 f_16@@83)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@58 f_16@@83))
))) (forall ((o2_5@@59 T@Ref) (f_16@@84 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@59 f_16@@84) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@66) o2_5@@59 f_16@@84) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@59 f_16@@84)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@59 f_16@@84))
))) (forall ((o2_5@@60 T@Ref) (f_16@@85 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@60 f_16@@85) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@66) o2_5@@60 f_16@@85) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@60 f_16@@85)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@60 f_16@@85))
))) (forall ((o2_5@@61 T@Ref) (f_16@@86 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@61 f_16@@86) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@66) o2_5@@61 f_16@@86) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@61 f_16@@86)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@61 f_16@@86))
))) (forall ((o2_5@@62 T@Ref) (f_16@@87 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@62 f_16@@87) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@66) o2_5@@62 f_16@@87) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@62 f_16@@87)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@62 f_16@@87))
))) (forall ((o2_5@@63 T@Ref) (f_16@@88 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@63 f_16@@88) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@63 f_16@@88) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@63 f_16@@88)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@63 f_16@@88))
))) (forall ((o2_5@@64 T@Ref) (f_16@@89 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@64 f_16@@89) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@66) o2_5@@64 f_16@@89) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@64 f_16@@89)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@64 f_16@@89))
))) (forall ((o2_5@@65 T@Ref) (f_16@@90 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@65 f_16@@90) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@66) o2_5@@65 f_16@@90) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@65 f_16@@90)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@65 f_16@@90))
))) (forall ((o2_5@@66 T@Ref) (f_16@@91 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@66 f_16@@91) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@66) o2_5@@66 f_16@@91) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@66 f_16@@91)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@66 f_16@@91))
))) (forall ((o2_5@@67 T@Ref) (f_16@@92 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@67 f_16@@92) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@66) o2_5@@67 f_16@@92) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@67 f_16@@92)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@67 f_16@@92))
))) (forall ((o2_5@@68 T@Ref) (f_16@@93 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@68 f_16@@93) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@68 f_16@@93) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@68 f_16@@93)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@68 f_16@@93))
))) (forall ((o2_5@@69 T@Ref) (f_16@@94 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@69 f_16@@94) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@66) o2_5@@69 f_16@@94) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@69 f_16@@94)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@69 f_16@@94))
))) (forall ((o2_5@@70 T@Ref) (f_16@@95 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@70 f_16@@95) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@66) o2_5@@70 f_16@@95) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@70 f_16@@95)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@70 f_16@@95))
))) (forall ((o2_5@@71 T@Ref) (f_16@@96 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@71 f_16@@96) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@66) o2_5@@71 f_16@@96) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@71 f_16@@96)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@71 f_16@@96))
))) (forall ((o2_5@@72 T@Ref) (f_16@@97 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@72 f_16@@97) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@66) o2_5@@72 f_16@@97) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@72 f_16@@97)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@72 f_16@@97))
))) (forall ((o2_5@@73 T@Ref) (f_16@@98 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@66) null (PredicateMaskField_15561 pm_f_5@@11))) o2_5@@73 f_16@@98) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@66) o2_5@@73 f_16@@98) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@73 f_16@@98)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@38) o2_5@@73 f_16@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@38 Mask@@89) (IsPredicateField_6483_6484 pm_f_5@@11))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_12174) (ExhaleHeap@@39 T@PolymorphicMapType_12174) (Mask@@90 T@PolymorphicMapType_12195) (pm_f_5@@12 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_12234_6533 Mask@@90 null pm_f_5@@12) (IsPredicateField_12234_44340 pm_f_5@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_16@@99 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@74 f_16@@99) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@67) o2_5@@74 f_16@@99) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@74 f_16@@99)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@74 f_16@@99))
)) (forall ((o2_5@@75 T@Ref) (f_16@@100 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@75 f_16@@100) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@67) o2_5@@75 f_16@@100) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@75 f_16@@100)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@75 f_16@@100))
))) (forall ((o2_5@@76 T@Ref) (f_16@@101 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@76 f_16@@101) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@67) o2_5@@76 f_16@@101) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@76 f_16@@101)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@76 f_16@@101))
))) (forall ((o2_5@@77 T@Ref) (f_16@@102 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@77 f_16@@102) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) o2_5@@77 f_16@@102) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@77 f_16@@102)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@77 f_16@@102))
))) (forall ((o2_5@@78 T@Ref) (f_16@@103 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@78 f_16@@103) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@78 f_16@@103) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@78 f_16@@103)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@78 f_16@@103))
))) (forall ((o2_5@@79 T@Ref) (f_16@@104 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@79 f_16@@104) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@67) o2_5@@79 f_16@@104) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@79 f_16@@104)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@79 f_16@@104))
))) (forall ((o2_5@@80 T@Ref) (f_16@@105 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@80 f_16@@105) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@67) o2_5@@80 f_16@@105) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@80 f_16@@105)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@80 f_16@@105))
))) (forall ((o2_5@@81 T@Ref) (f_16@@106 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@81 f_16@@106) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@67) o2_5@@81 f_16@@106) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@81 f_16@@106)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@81 f_16@@106))
))) (forall ((o2_5@@82 T@Ref) (f_16@@107 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@82 f_16@@107) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@67) o2_5@@82 f_16@@107) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@82 f_16@@107)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@82 f_16@@107))
))) (forall ((o2_5@@83 T@Ref) (f_16@@108 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@83 f_16@@108) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@83 f_16@@108) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@83 f_16@@108)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@83 f_16@@108))
))) (forall ((o2_5@@84 T@Ref) (f_16@@109 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@84 f_16@@109) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@67) o2_5@@84 f_16@@109) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@84 f_16@@109)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@84 f_16@@109))
))) (forall ((o2_5@@85 T@Ref) (f_16@@110 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@85 f_16@@110) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@67) o2_5@@85 f_16@@110) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@85 f_16@@110)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@85 f_16@@110))
))) (forall ((o2_5@@86 T@Ref) (f_16@@111 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@86 f_16@@111) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@67) o2_5@@86 f_16@@111) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@86 f_16@@111)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@86 f_16@@111))
))) (forall ((o2_5@@87 T@Ref) (f_16@@112 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@87 f_16@@112) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@67) o2_5@@87 f_16@@112) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@87 f_16@@112)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@87 f_16@@112))
))) (forall ((o2_5@@88 T@Ref) (f_16@@113 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@88 f_16@@113) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@88 f_16@@113) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@88 f_16@@113)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@88 f_16@@113))
))) (forall ((o2_5@@89 T@Ref) (f_16@@114 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@89 f_16@@114) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@67) o2_5@@89 f_16@@114) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@89 f_16@@114)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@89 f_16@@114))
))) (forall ((o2_5@@90 T@Ref) (f_16@@115 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@90 f_16@@115) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@67) o2_5@@90 f_16@@115) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@90 f_16@@115)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@90 f_16@@115))
))) (forall ((o2_5@@91 T@Ref) (f_16@@116 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@91 f_16@@116) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@67) o2_5@@91 f_16@@116) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@91 f_16@@116)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@91 f_16@@116))
))) (forall ((o2_5@@92 T@Ref) (f_16@@117 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@92 f_16@@117) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@67) o2_5@@92 f_16@@117) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@92 f_16@@117)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@92 f_16@@117))
))) (forall ((o2_5@@93 T@Ref) (f_16@@118 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@93 f_16@@118) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@93 f_16@@118) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@93 f_16@@118)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@93 f_16@@118))
))) (forall ((o2_5@@94 T@Ref) (f_16@@119 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@94 f_16@@119) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@67) o2_5@@94 f_16@@119) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@94 f_16@@119)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@94 f_16@@119))
))) (forall ((o2_5@@95 T@Ref) (f_16@@120 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@95 f_16@@120) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@67) o2_5@@95 f_16@@120) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@95 f_16@@120)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@95 f_16@@120))
))) (forall ((o2_5@@96 T@Ref) (f_16@@121 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@96 f_16@@121) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@67) o2_5@@96 f_16@@121) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@96 f_16@@121)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@96 f_16@@121))
))) (forall ((o2_5@@97 T@Ref) (f_16@@122 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@97 f_16@@122) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@67) o2_5@@97 f_16@@122) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@97 f_16@@122)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@97 f_16@@122))
))) (forall ((o2_5@@98 T@Ref) (f_16@@123 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@67) null (PredicateMaskField_12234 pm_f_5@@12))) o2_5@@98 f_16@@123) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@67) o2_5@@98 f_16@@123) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@98 f_16@@123)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@39) o2_5@@98 f_16@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@39 Mask@@90) (IsPredicateField_12234_44340 pm_f_5@@12))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_12174) (ExhaleHeap@@40 T@PolymorphicMapType_12174) (Mask@@91 T@PolymorphicMapType_12195) (pm_f_5@@13 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_6532_6533 Mask@@91 null pm_f_5@@13) (IsPredicateField_6532_6533 pm_f_5@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@99 T@Ref) (f_16@@124 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@99 f_16@@124) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@68) o2_5@@99 f_16@@124) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@99 f_16@@124)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@99 f_16@@124))
)) (forall ((o2_5@@100 T@Ref) (f_16@@125 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@100 f_16@@125) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@68) o2_5@@100 f_16@@125) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@100 f_16@@125)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@100 f_16@@125))
))) (forall ((o2_5@@101 T@Ref) (f_16@@126 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@101 f_16@@126) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@68) o2_5@@101 f_16@@126) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@101 f_16@@126)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@101 f_16@@126))
))) (forall ((o2_5@@102 T@Ref) (f_16@@127 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@102 f_16@@127) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@68) o2_5@@102 f_16@@127) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@102 f_16@@127)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@102 f_16@@127))
))) (forall ((o2_5@@103 T@Ref) (f_16@@128 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@103 f_16@@128) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@103 f_16@@128) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@103 f_16@@128)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@103 f_16@@128))
))) (forall ((o2_5@@104 T@Ref) (f_16@@129 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@104 f_16@@129) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@68) o2_5@@104 f_16@@129) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@104 f_16@@129)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@104 f_16@@129))
))) (forall ((o2_5@@105 T@Ref) (f_16@@130 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@105 f_16@@130) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@68) o2_5@@105 f_16@@130) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@105 f_16@@130)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@105 f_16@@130))
))) (forall ((o2_5@@106 T@Ref) (f_16@@131 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@106 f_16@@131) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@68) o2_5@@106 f_16@@131) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@106 f_16@@131)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@106 f_16@@131))
))) (forall ((o2_5@@107 T@Ref) (f_16@@132 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@107 f_16@@132) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@68) o2_5@@107 f_16@@132) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@107 f_16@@132)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@107 f_16@@132))
))) (forall ((o2_5@@108 T@Ref) (f_16@@133 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@108 f_16@@133) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@108 f_16@@133) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@108 f_16@@133)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@108 f_16@@133))
))) (forall ((o2_5@@109 T@Ref) (f_16@@134 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@109 f_16@@134) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@68) o2_5@@109 f_16@@134) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@109 f_16@@134)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@109 f_16@@134))
))) (forall ((o2_5@@110 T@Ref) (f_16@@135 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@110 f_16@@135) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@68) o2_5@@110 f_16@@135) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@110 f_16@@135)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@110 f_16@@135))
))) (forall ((o2_5@@111 T@Ref) (f_16@@136 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@111 f_16@@136) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@68) o2_5@@111 f_16@@136) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@111 f_16@@136)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@111 f_16@@136))
))) (forall ((o2_5@@112 T@Ref) (f_16@@137 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@112 f_16@@137) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@68) o2_5@@112 f_16@@137) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@112 f_16@@137)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@112 f_16@@137))
))) (forall ((o2_5@@113 T@Ref) (f_16@@138 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@113 f_16@@138) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@113 f_16@@138) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@113 f_16@@138)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@113 f_16@@138))
))) (forall ((o2_5@@114 T@Ref) (f_16@@139 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@114 f_16@@139) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@68) o2_5@@114 f_16@@139) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@114 f_16@@139)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@114 f_16@@139))
))) (forall ((o2_5@@115 T@Ref) (f_16@@140 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@115 f_16@@140) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@68) o2_5@@115 f_16@@140) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@115 f_16@@140)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@115 f_16@@140))
))) (forall ((o2_5@@116 T@Ref) (f_16@@141 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@116 f_16@@141) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@68) o2_5@@116 f_16@@141) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@116 f_16@@141)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@116 f_16@@141))
))) (forall ((o2_5@@117 T@Ref) (f_16@@142 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@117 f_16@@142) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@68) o2_5@@117 f_16@@142) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@117 f_16@@142)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@117 f_16@@142))
))) (forall ((o2_5@@118 T@Ref) (f_16@@143 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@118 f_16@@143) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@118 f_16@@143) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@118 f_16@@143)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@118 f_16@@143))
))) (forall ((o2_5@@119 T@Ref) (f_16@@144 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@119 f_16@@144) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@68) o2_5@@119 f_16@@144) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@119 f_16@@144)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@119 f_16@@144))
))) (forall ((o2_5@@120 T@Ref) (f_16@@145 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@120 f_16@@145) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@68) o2_5@@120 f_16@@145) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@120 f_16@@145)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@120 f_16@@145))
))) (forall ((o2_5@@121 T@Ref) (f_16@@146 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@121 f_16@@146) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@68) o2_5@@121 f_16@@146) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@121 f_16@@146)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@121 f_16@@146))
))) (forall ((o2_5@@122 T@Ref) (f_16@@147 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@122 f_16@@147) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) o2_5@@122 f_16@@147) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@122 f_16@@147)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@122 f_16@@147))
))) (forall ((o2_5@@123 T@Ref) (f_16@@148 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@68) null (PredicateMaskField_6532 pm_f_5@@13))) o2_5@@123 f_16@@148) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@68) o2_5@@123 f_16@@148) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@123 f_16@@148)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@40) o2_5@@123 f_16@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@40 Mask@@91) (IsPredicateField_6532_6533 pm_f_5@@13))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_12174) (ExhaleHeap@@41 T@PolymorphicMapType_12174) (Mask@@92 T@PolymorphicMapType_12195) (pm_f_5@@14 T@Field_16612_16613) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_16585_6533 Mask@@92 null pm_f_5@@14) (IsWandField_6518_6519 pm_f_5@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@124 T@Ref) (f_16@@149 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@124 f_16@@149) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@69) o2_5@@124 f_16@@149) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@124 f_16@@149)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@124 f_16@@149))
)) (forall ((o2_5@@125 T@Ref) (f_16@@150 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@125 f_16@@150) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@69) o2_5@@125 f_16@@150) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@125 f_16@@150)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@125 f_16@@150))
))) (forall ((o2_5@@126 T@Ref) (f_16@@151 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@126 f_16@@151) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@69) o2_5@@126 f_16@@151) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@126 f_16@@151)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@126 f_16@@151))
))) (forall ((o2_5@@127 T@Ref) (f_16@@152 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@127 f_16@@152) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@69) o2_5@@127 f_16@@152) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@127 f_16@@152)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@127 f_16@@152))
))) (forall ((o2_5@@128 T@Ref) (f_16@@153 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@128 f_16@@153) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@128 f_16@@153) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@128 f_16@@153)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@128 f_16@@153))
))) (forall ((o2_5@@129 T@Ref) (f_16@@154 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@129 f_16@@154) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@69) o2_5@@129 f_16@@154) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@129 f_16@@154)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@129 f_16@@154))
))) (forall ((o2_5@@130 T@Ref) (f_16@@155 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@130 f_16@@155) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@69) o2_5@@130 f_16@@155) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@130 f_16@@155)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@130 f_16@@155))
))) (forall ((o2_5@@131 T@Ref) (f_16@@156 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@131 f_16@@156) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@69) o2_5@@131 f_16@@156) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@131 f_16@@156)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@131 f_16@@156))
))) (forall ((o2_5@@132 T@Ref) (f_16@@157 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@132 f_16@@157) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@69) o2_5@@132 f_16@@157) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@132 f_16@@157)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@132 f_16@@157))
))) (forall ((o2_5@@133 T@Ref) (f_16@@158 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@133 f_16@@158) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@133 f_16@@158) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@133 f_16@@158)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@133 f_16@@158))
))) (forall ((o2_5@@134 T@Ref) (f_16@@159 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@134 f_16@@159) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@69) o2_5@@134 f_16@@159) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@134 f_16@@159)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@134 f_16@@159))
))) (forall ((o2_5@@135 T@Ref) (f_16@@160 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@135 f_16@@160) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@69) o2_5@@135 f_16@@160) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@135 f_16@@160)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@135 f_16@@160))
))) (forall ((o2_5@@136 T@Ref) (f_16@@161 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@136 f_16@@161) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@69) o2_5@@136 f_16@@161) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@136 f_16@@161)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@136 f_16@@161))
))) (forall ((o2_5@@137 T@Ref) (f_16@@162 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@137 f_16@@162) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@69) o2_5@@137 f_16@@162) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@137 f_16@@162)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@137 f_16@@162))
))) (forall ((o2_5@@138 T@Ref) (f_16@@163 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@138 f_16@@163) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@138 f_16@@163) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@138 f_16@@163)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@138 f_16@@163))
))) (forall ((o2_5@@139 T@Ref) (f_16@@164 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@139 f_16@@164) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@69) o2_5@@139 f_16@@164) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@139 f_16@@164)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@139 f_16@@164))
))) (forall ((o2_5@@140 T@Ref) (f_16@@165 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@140 f_16@@165) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@69) o2_5@@140 f_16@@165) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@140 f_16@@165)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@140 f_16@@165))
))) (forall ((o2_5@@141 T@Ref) (f_16@@166 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@141 f_16@@166) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@69) o2_5@@141 f_16@@166) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@141 f_16@@166)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@141 f_16@@166))
))) (forall ((o2_5@@142 T@Ref) (f_16@@167 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@142 f_16@@167) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) o2_5@@142 f_16@@167) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@142 f_16@@167)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@142 f_16@@167))
))) (forall ((o2_5@@143 T@Ref) (f_16@@168 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@143 f_16@@168) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@143 f_16@@168) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@143 f_16@@168)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@143 f_16@@168))
))) (forall ((o2_5@@144 T@Ref) (f_16@@169 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@144 f_16@@169) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@69) o2_5@@144 f_16@@169) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@144 f_16@@169)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@144 f_16@@169))
))) (forall ((o2_5@@145 T@Ref) (f_16@@170 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@145 f_16@@170) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@69) o2_5@@145 f_16@@170) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@145 f_16@@170)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@145 f_16@@170))
))) (forall ((o2_5@@146 T@Ref) (f_16@@171 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@146 f_16@@171) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@69) o2_5@@146 f_16@@171) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@146 f_16@@171)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@146 f_16@@171))
))) (forall ((o2_5@@147 T@Ref) (f_16@@172 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@147 f_16@@172) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@69) o2_5@@147 f_16@@172) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@147 f_16@@172)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@147 f_16@@172))
))) (forall ((o2_5@@148 T@Ref) (f_16@@173 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@69) null (WandMaskField_6518 pm_f_5@@14))) o2_5@@148 f_16@@173) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@69) o2_5@@148 f_16@@173) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@148 f_16@@173)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@41) o2_5@@148 f_16@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@41 Mask@@92) (IsWandField_6518_6519 pm_f_5@@14))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_12174) (ExhaleHeap@@42 T@PolymorphicMapType_12174) (Mask@@93 T@PolymorphicMapType_12195) (pm_f_5@@15 T@Field_16141_16142) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_16116_6533 Mask@@93 null pm_f_5@@15) (IsWandField_6507_6508 pm_f_5@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@149 T@Ref) (f_16@@174 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@149 f_16@@174) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@70) o2_5@@149 f_16@@174) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@149 f_16@@174)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@149 f_16@@174))
)) (forall ((o2_5@@150 T@Ref) (f_16@@175 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@150 f_16@@175) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@70) o2_5@@150 f_16@@175) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@150 f_16@@175)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@150 f_16@@175))
))) (forall ((o2_5@@151 T@Ref) (f_16@@176 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@151 f_16@@176) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@70) o2_5@@151 f_16@@176) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@151 f_16@@176)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@151 f_16@@176))
))) (forall ((o2_5@@152 T@Ref) (f_16@@177 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@152 f_16@@177) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@70) o2_5@@152 f_16@@177) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@152 f_16@@177)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@152 f_16@@177))
))) (forall ((o2_5@@153 T@Ref) (f_16@@178 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@153 f_16@@178) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@153 f_16@@178) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@153 f_16@@178)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@153 f_16@@178))
))) (forall ((o2_5@@154 T@Ref) (f_16@@179 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@154 f_16@@179) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@70) o2_5@@154 f_16@@179) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@154 f_16@@179)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@154 f_16@@179))
))) (forall ((o2_5@@155 T@Ref) (f_16@@180 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@155 f_16@@180) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@70) o2_5@@155 f_16@@180) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@155 f_16@@180)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@155 f_16@@180))
))) (forall ((o2_5@@156 T@Ref) (f_16@@181 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@156 f_16@@181) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@70) o2_5@@156 f_16@@181) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@156 f_16@@181)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@156 f_16@@181))
))) (forall ((o2_5@@157 T@Ref) (f_16@@182 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@157 f_16@@182) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@70) o2_5@@157 f_16@@182) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@157 f_16@@182)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@157 f_16@@182))
))) (forall ((o2_5@@158 T@Ref) (f_16@@183 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@158 f_16@@183) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@158 f_16@@183) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@158 f_16@@183)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@158 f_16@@183))
))) (forall ((o2_5@@159 T@Ref) (f_16@@184 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@159 f_16@@184) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@70) o2_5@@159 f_16@@184) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@159 f_16@@184)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@159 f_16@@184))
))) (forall ((o2_5@@160 T@Ref) (f_16@@185 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@160 f_16@@185) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@70) o2_5@@160 f_16@@185) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@160 f_16@@185)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@160 f_16@@185))
))) (forall ((o2_5@@161 T@Ref) (f_16@@186 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@161 f_16@@186) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@70) o2_5@@161 f_16@@186) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@161 f_16@@186)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@161 f_16@@186))
))) (forall ((o2_5@@162 T@Ref) (f_16@@187 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@162 f_16@@187) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) o2_5@@162 f_16@@187) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@162 f_16@@187)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@162 f_16@@187))
))) (forall ((o2_5@@163 T@Ref) (f_16@@188 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@163 f_16@@188) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@163 f_16@@188) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@163 f_16@@188)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@163 f_16@@188))
))) (forall ((o2_5@@164 T@Ref) (f_16@@189 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@164 f_16@@189) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@70) o2_5@@164 f_16@@189) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@164 f_16@@189)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@164 f_16@@189))
))) (forall ((o2_5@@165 T@Ref) (f_16@@190 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@165 f_16@@190) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@70) o2_5@@165 f_16@@190) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@165 f_16@@190)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@165 f_16@@190))
))) (forall ((o2_5@@166 T@Ref) (f_16@@191 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@166 f_16@@191) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@70) o2_5@@166 f_16@@191) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@166 f_16@@191)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@166 f_16@@191))
))) (forall ((o2_5@@167 T@Ref) (f_16@@192 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@167 f_16@@192) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@70) o2_5@@167 f_16@@192) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@167 f_16@@192)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@167 f_16@@192))
))) (forall ((o2_5@@168 T@Ref) (f_16@@193 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@168 f_16@@193) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@168 f_16@@193) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@168 f_16@@193)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@168 f_16@@193))
))) (forall ((o2_5@@169 T@Ref) (f_16@@194 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@169 f_16@@194) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@70) o2_5@@169 f_16@@194) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@169 f_16@@194)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@169 f_16@@194))
))) (forall ((o2_5@@170 T@Ref) (f_16@@195 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@170 f_16@@195) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@70) o2_5@@170 f_16@@195) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@170 f_16@@195)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@170 f_16@@195))
))) (forall ((o2_5@@171 T@Ref) (f_16@@196 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@171 f_16@@196) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@70) o2_5@@171 f_16@@196) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@171 f_16@@196)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@171 f_16@@196))
))) (forall ((o2_5@@172 T@Ref) (f_16@@197 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@172 f_16@@197) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@70) o2_5@@172 f_16@@197) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@172 f_16@@197)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@172 f_16@@197))
))) (forall ((o2_5@@173 T@Ref) (f_16@@198 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@70) null (WandMaskField_6507 pm_f_5@@15))) o2_5@@173 f_16@@198) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@70) o2_5@@173 f_16@@198) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@173 f_16@@198)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@42) o2_5@@173 f_16@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@42 Mask@@93) (IsWandField_6507_6508 pm_f_5@@15))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_12174) (ExhaleHeap@@43 T@PolymorphicMapType_12174) (Mask@@94 T@PolymorphicMapType_12195) (pm_f_5@@16 T@Field_15588_15589) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_15561_6533 Mask@@94 null pm_f_5@@16) (IsWandField_6483_6484 pm_f_5@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@174 T@Ref) (f_16@@199 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@174 f_16@@199) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@71) o2_5@@174 f_16@@199) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@174 f_16@@199)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@174 f_16@@199))
)) (forall ((o2_5@@175 T@Ref) (f_16@@200 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@175 f_16@@200) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@71) o2_5@@175 f_16@@200) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@175 f_16@@200)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@175 f_16@@200))
))) (forall ((o2_5@@176 T@Ref) (f_16@@201 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@176 f_16@@201) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@71) o2_5@@176 f_16@@201) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@176 f_16@@201)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@176 f_16@@201))
))) (forall ((o2_5@@177 T@Ref) (f_16@@202 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@177 f_16@@202) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@71) o2_5@@177 f_16@@202) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@177 f_16@@202)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@177 f_16@@202))
))) (forall ((o2_5@@178 T@Ref) (f_16@@203 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@178 f_16@@203) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@178 f_16@@203) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@178 f_16@@203)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@178 f_16@@203))
))) (forall ((o2_5@@179 T@Ref) (f_16@@204 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@179 f_16@@204) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@71) o2_5@@179 f_16@@204) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@179 f_16@@204)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@179 f_16@@204))
))) (forall ((o2_5@@180 T@Ref) (f_16@@205 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@180 f_16@@205) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@71) o2_5@@180 f_16@@205) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@180 f_16@@205)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@180 f_16@@205))
))) (forall ((o2_5@@181 T@Ref) (f_16@@206 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@181 f_16@@206) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@71) o2_5@@181 f_16@@206) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@181 f_16@@206)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@181 f_16@@206))
))) (forall ((o2_5@@182 T@Ref) (f_16@@207 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@182 f_16@@207) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) o2_5@@182 f_16@@207) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@182 f_16@@207)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@182 f_16@@207))
))) (forall ((o2_5@@183 T@Ref) (f_16@@208 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@183 f_16@@208) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@183 f_16@@208) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@183 f_16@@208)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@183 f_16@@208))
))) (forall ((o2_5@@184 T@Ref) (f_16@@209 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@184 f_16@@209) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@71) o2_5@@184 f_16@@209) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@184 f_16@@209)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@184 f_16@@209))
))) (forall ((o2_5@@185 T@Ref) (f_16@@210 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@185 f_16@@210) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@71) o2_5@@185 f_16@@210) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@185 f_16@@210)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@185 f_16@@210))
))) (forall ((o2_5@@186 T@Ref) (f_16@@211 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@186 f_16@@211) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@71) o2_5@@186 f_16@@211) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@186 f_16@@211)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@186 f_16@@211))
))) (forall ((o2_5@@187 T@Ref) (f_16@@212 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@187 f_16@@212) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@71) o2_5@@187 f_16@@212) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@187 f_16@@212)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@187 f_16@@212))
))) (forall ((o2_5@@188 T@Ref) (f_16@@213 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@188 f_16@@213) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@188 f_16@@213) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@188 f_16@@213)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@188 f_16@@213))
))) (forall ((o2_5@@189 T@Ref) (f_16@@214 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@189 f_16@@214) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@71) o2_5@@189 f_16@@214) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@189 f_16@@214)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@189 f_16@@214))
))) (forall ((o2_5@@190 T@Ref) (f_16@@215 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@190 f_16@@215) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@71) o2_5@@190 f_16@@215) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@190 f_16@@215)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@190 f_16@@215))
))) (forall ((o2_5@@191 T@Ref) (f_16@@216 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@191 f_16@@216) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@71) o2_5@@191 f_16@@216) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@191 f_16@@216)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@191 f_16@@216))
))) (forall ((o2_5@@192 T@Ref) (f_16@@217 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@192 f_16@@217) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@71) o2_5@@192 f_16@@217) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@192 f_16@@217)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@192 f_16@@217))
))) (forall ((o2_5@@193 T@Ref) (f_16@@218 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@193 f_16@@218) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@193 f_16@@218) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@193 f_16@@218)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@193 f_16@@218))
))) (forall ((o2_5@@194 T@Ref) (f_16@@219 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@194 f_16@@219) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@71) o2_5@@194 f_16@@219) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@194 f_16@@219)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@194 f_16@@219))
))) (forall ((o2_5@@195 T@Ref) (f_16@@220 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@195 f_16@@220) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@71) o2_5@@195 f_16@@220) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@195 f_16@@220)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@195 f_16@@220))
))) (forall ((o2_5@@196 T@Ref) (f_16@@221 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@196 f_16@@221) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@71) o2_5@@196 f_16@@221) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@196 f_16@@221)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@196 f_16@@221))
))) (forall ((o2_5@@197 T@Ref) (f_16@@222 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@197 f_16@@222) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@71) o2_5@@197 f_16@@222) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@197 f_16@@222)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@197 f_16@@222))
))) (forall ((o2_5@@198 T@Ref) (f_16@@223 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@71) null (WandMaskField_6483 pm_f_5@@16))) o2_5@@198 f_16@@223) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@71) o2_5@@198 f_16@@223) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@198 f_16@@223)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@43) o2_5@@198 f_16@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@43 Mask@@94) (IsWandField_6483_6484 pm_f_5@@16))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_12174) (ExhaleHeap@@44 T@PolymorphicMapType_12174) (Mask@@95 T@PolymorphicMapType_12195) (pm_f_5@@17 T@Field_12234_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_12234_6533 Mask@@95 null pm_f_5@@17) (IsWandField_12234_52737 pm_f_5@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@199 T@Ref) (f_16@@224 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@199 f_16@@224) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@72) o2_5@@199 f_16@@224) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@199 f_16@@224)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@199 f_16@@224))
)) (forall ((o2_5@@200 T@Ref) (f_16@@225 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@200 f_16@@225) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@72) o2_5@@200 f_16@@225) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@200 f_16@@225)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@200 f_16@@225))
))) (forall ((o2_5@@201 T@Ref) (f_16@@226 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@201 f_16@@226) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@72) o2_5@@201 f_16@@226) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@201 f_16@@226)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@201 f_16@@226))
))) (forall ((o2_5@@202 T@Ref) (f_16@@227 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@202 f_16@@227) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) o2_5@@202 f_16@@227) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@202 f_16@@227)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@202 f_16@@227))
))) (forall ((o2_5@@203 T@Ref) (f_16@@228 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@203 f_16@@228) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@203 f_16@@228) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@203 f_16@@228)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@203 f_16@@228))
))) (forall ((o2_5@@204 T@Ref) (f_16@@229 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@204 f_16@@229) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@72) o2_5@@204 f_16@@229) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@204 f_16@@229)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@204 f_16@@229))
))) (forall ((o2_5@@205 T@Ref) (f_16@@230 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@205 f_16@@230) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@72) o2_5@@205 f_16@@230) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@205 f_16@@230)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@205 f_16@@230))
))) (forall ((o2_5@@206 T@Ref) (f_16@@231 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@206 f_16@@231) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@72) o2_5@@206 f_16@@231) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@206 f_16@@231)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@206 f_16@@231))
))) (forall ((o2_5@@207 T@Ref) (f_16@@232 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@207 f_16@@232) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@72) o2_5@@207 f_16@@232) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@207 f_16@@232)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@207 f_16@@232))
))) (forall ((o2_5@@208 T@Ref) (f_16@@233 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@208 f_16@@233) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@208 f_16@@233) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@208 f_16@@233)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@208 f_16@@233))
))) (forall ((o2_5@@209 T@Ref) (f_16@@234 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@209 f_16@@234) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@72) o2_5@@209 f_16@@234) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@209 f_16@@234)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@209 f_16@@234))
))) (forall ((o2_5@@210 T@Ref) (f_16@@235 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@210 f_16@@235) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@72) o2_5@@210 f_16@@235) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@210 f_16@@235)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@210 f_16@@235))
))) (forall ((o2_5@@211 T@Ref) (f_16@@236 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@211 f_16@@236) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@72) o2_5@@211 f_16@@236) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@211 f_16@@236)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@211 f_16@@236))
))) (forall ((o2_5@@212 T@Ref) (f_16@@237 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@212 f_16@@237) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@72) o2_5@@212 f_16@@237) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@212 f_16@@237)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@212 f_16@@237))
))) (forall ((o2_5@@213 T@Ref) (f_16@@238 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@213 f_16@@238) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@213 f_16@@238) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@213 f_16@@238)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@213 f_16@@238))
))) (forall ((o2_5@@214 T@Ref) (f_16@@239 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@214 f_16@@239) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@72) o2_5@@214 f_16@@239) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@214 f_16@@239)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@214 f_16@@239))
))) (forall ((o2_5@@215 T@Ref) (f_16@@240 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@215 f_16@@240) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@72) o2_5@@215 f_16@@240) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@215 f_16@@240)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@215 f_16@@240))
))) (forall ((o2_5@@216 T@Ref) (f_16@@241 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@216 f_16@@241) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@72) o2_5@@216 f_16@@241) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@216 f_16@@241)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@216 f_16@@241))
))) (forall ((o2_5@@217 T@Ref) (f_16@@242 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@217 f_16@@242) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@72) o2_5@@217 f_16@@242) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@217 f_16@@242)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@217 f_16@@242))
))) (forall ((o2_5@@218 T@Ref) (f_16@@243 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@218 f_16@@243) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@218 f_16@@243) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@218 f_16@@243)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@218 f_16@@243))
))) (forall ((o2_5@@219 T@Ref) (f_16@@244 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@219 f_16@@244) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@72) o2_5@@219 f_16@@244) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@219 f_16@@244)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@219 f_16@@244))
))) (forall ((o2_5@@220 T@Ref) (f_16@@245 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@220 f_16@@245) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@72) o2_5@@220 f_16@@245) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@220 f_16@@245)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@220 f_16@@245))
))) (forall ((o2_5@@221 T@Ref) (f_16@@246 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@221 f_16@@246) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@72) o2_5@@221 f_16@@246) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@221 f_16@@246)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@221 f_16@@246))
))) (forall ((o2_5@@222 T@Ref) (f_16@@247 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@222 f_16@@247) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@72) o2_5@@222 f_16@@247) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@222 f_16@@247)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@222 f_16@@247))
))) (forall ((o2_5@@223 T@Ref) (f_16@@248 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@72) null (WandMaskField_12234 pm_f_5@@17))) o2_5@@223 f_16@@248) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@72) o2_5@@223 f_16@@248) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@223 f_16@@248)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@44) o2_5@@223 f_16@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@44 Mask@@95) (IsWandField_12234_52737 pm_f_5@@17))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_12174) (ExhaleHeap@@45 T@PolymorphicMapType_12174) (Mask@@96 T@PolymorphicMapType_12195) (pm_f_5@@18 T@Field_17129_17130) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_6532_6533 Mask@@96 null pm_f_5@@18) (IsWandField_6532_52380 pm_f_5@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@224 T@Ref) (f_16@@249 T@Field_17082_1867) ) (!  (=> (select (|PolymorphicMapType_12723_6529_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@224 f_16@@249) (= (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| Heap@@73) o2_5@@224 f_16@@249) (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@224 f_16@@249)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6529_1867#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@224 f_16@@249))
)) (forall ((o2_5@@225 T@Ref) (f_16@@250 T@Field_12234_53) ) (!  (=> (select (|PolymorphicMapType_12723_6529_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@225 f_16@@250) (= (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| Heap@@73) o2_5@@225 f_16@@250) (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@225 f_16@@250)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6344_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@225 f_16@@250))
))) (forall ((o2_5@@226 T@Ref) (f_16@@251 T@Field_12247_12248) ) (!  (=> (select (|PolymorphicMapType_12723_6529_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@226 f_16@@251) (= (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| Heap@@73) o2_5@@226 f_16@@251) (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@226 f_16@@251)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6347_6348#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@226 f_16@@251))
))) (forall ((o2_5@@227 T@Ref) (f_16@@252 T@Field_12234_15578) ) (!  (=> (select (|PolymorphicMapType_12723_6529_46333#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@227 f_16@@252) (= (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| Heap@@73) o2_5@@227 f_16@@252) (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@227 f_16@@252)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_40324#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@227 f_16@@252))
))) (forall ((o2_5@@228 T@Ref) (f_16@@253 T@Field_12234_6533) ) (!  (=> (select (|PolymorphicMapType_12723_6529_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@228 f_16@@253) (= (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@228 f_16@@253) (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@228 f_16@@253)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_12234_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@228 f_16@@253))
))) (forall ((o2_5@@229 T@Ref) (f_16@@254 T@Field_15561_1199) ) (!  (=> (select (|PolymorphicMapType_12723_15561_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@229 f_16@@254) (= (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| Heap@@73) o2_5@@229 f_16@@254) (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@229 f_16@@254)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@229 f_16@@254))
))) (forall ((o2_5@@230 T@Ref) (f_16@@255 T@Field_15561_53) ) (!  (=> (select (|PolymorphicMapType_12723_15561_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@230 f_16@@255) (= (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| Heap@@73) o2_5@@230 f_16@@255) (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@230 f_16@@255)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@230 f_16@@255))
))) (forall ((o2_5@@231 T@Ref) (f_16@@256 T@Field_15561_12248) ) (!  (=> (select (|PolymorphicMapType_12723_15561_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@231 f_16@@256) (= (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| Heap@@73) o2_5@@231 f_16@@256) (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@231 f_16@@256)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@231 f_16@@256))
))) (forall ((o2_5@@232 T@Ref) (f_16@@257 T@Field_15573_15578) ) (!  (=> (select (|PolymorphicMapType_12723_15561_47381#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@232 f_16@@257) (= (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| Heap@@73) o2_5@@232 f_16@@257) (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@232 f_16@@257)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6478_20163#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@232 f_16@@257))
))) (forall ((o2_5@@233 T@Ref) (f_16@@258 T@Field_15588_15589) ) (!  (=> (select (|PolymorphicMapType_12723_15561_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@233 f_16@@258) (= (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@233 f_16@@258) (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@233 f_16@@258)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_15561_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@233 f_16@@258))
))) (forall ((o2_5@@234 T@Ref) (f_16@@259 T@Field_16116_1460) ) (!  (=> (select (|PolymorphicMapType_12723_16116_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@234 f_16@@259) (= (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| Heap@@73) o2_5@@234 f_16@@259) (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@234 f_16@@259)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@234 f_16@@259))
))) (forall ((o2_5@@235 T@Ref) (f_16@@260 T@Field_16116_53) ) (!  (=> (select (|PolymorphicMapType_12723_16116_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@235 f_16@@260) (= (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| Heap@@73) o2_5@@235 f_16@@260) (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@235 f_16@@260)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@235 f_16@@260))
))) (forall ((o2_5@@236 T@Ref) (f_16@@261 T@Field_16116_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16116_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@236 f_16@@261) (= (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| Heap@@73) o2_5@@236 f_16@@261) (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@236 f_16@@261)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@236 f_16@@261))
))) (forall ((o2_5@@237 T@Ref) (f_16@@262 T@Field_16127_16132) ) (!  (=> (select (|PolymorphicMapType_12723_16116_48429#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@237 f_16@@262) (= (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| Heap@@73) o2_5@@237 f_16@@262) (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@237 f_16@@262)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6504_36848#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@237 f_16@@262))
))) (forall ((o2_5@@238 T@Ref) (f_16@@263 T@Field_16141_16142) ) (!  (=> (select (|PolymorphicMapType_12723_16116_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@238 f_16@@263) (= (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@238 f_16@@263) (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@238 f_16@@263)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16116_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@238 f_16@@263))
))) (forall ((o2_5@@239 T@Ref) (f_16@@264 T@Field_16585_1668) ) (!  (=> (select (|PolymorphicMapType_12723_16585_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@239 f_16@@264) (= (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| Heap@@73) o2_5@@239 f_16@@264) (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@239 f_16@@264)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@239 f_16@@264))
))) (forall ((o2_5@@240 T@Ref) (f_16@@265 T@Field_16585_53) ) (!  (=> (select (|PolymorphicMapType_12723_16585_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@240 f_16@@265) (= (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| Heap@@73) o2_5@@240 f_16@@265) (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@240 f_16@@265)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@240 f_16@@265))
))) (forall ((o2_5@@241 T@Ref) (f_16@@266 T@Field_16585_12248) ) (!  (=> (select (|PolymorphicMapType_12723_16585_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@241 f_16@@266) (= (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| Heap@@73) o2_5@@241 f_16@@266) (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@241 f_16@@266)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@241 f_16@@266))
))) (forall ((o2_5@@242 T@Ref) (f_16@@267 T@Field_16597_16602) ) (!  (=> (select (|PolymorphicMapType_12723_16585_49477#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@242 f_16@@267) (= (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| Heap@@73) o2_5@@242 f_16@@267) (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@242 f_16@@267)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_43769#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@242 f_16@@267))
))) (forall ((o2_5@@243 T@Ref) (f_16@@268 T@Field_16612_16613) ) (!  (=> (select (|PolymorphicMapType_12723_16585_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@243 f_16@@268) (= (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@243 f_16@@268) (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@243 f_16@@268)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_16585_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@243 f_16@@268))
))) (forall ((o2_5@@244 T@Ref) (f_16@@269 T@Field_6532_1199) ) (!  (=> (select (|PolymorphicMapType_12723_17129_1867#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@244 f_16@@269) (= (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| Heap@@73) o2_5@@244 f_16@@269) (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@244 f_16@@269)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_1199#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@244 f_16@@269))
))) (forall ((o2_5@@245 T@Ref) (f_16@@270 T@Field_6532_53) ) (!  (=> (select (|PolymorphicMapType_12723_17129_53#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@245 f_16@@270) (= (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| Heap@@73) o2_5@@245 f_16@@270) (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@245 f_16@@270)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_53#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@245 f_16@@270))
))) (forall ((o2_5@@246 T@Ref) (f_16@@271 T@Field_6532_12248) ) (!  (=> (select (|PolymorphicMapType_12723_17129_12248#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@246 f_16@@271) (= (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| Heap@@73) o2_5@@246 f_16@@271) (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@246 f_16@@271)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_12248#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@246 f_16@@271))
))) (forall ((o2_5@@247 T@Ref) (f_16@@272 T@Field_17142_17147) ) (!  (=> (select (|PolymorphicMapType_12723_17129_50525#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@247 f_16@@272) (= (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) o2_5@@247 f_16@@272) (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@247 f_16@@272)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@247 f_16@@272))
))) (forall ((o2_5@@248 T@Ref) (f_16@@273 T@Field_17129_17130) ) (!  (=> (select (|PolymorphicMapType_12723_17129_15589#PolymorphicMapType_12723| (select (|PolymorphicMapType_12174_6536_33259#PolymorphicMapType_12174| Heap@@73) null (WandMaskField_6532 pm_f_5@@18))) o2_5@@248 f_16@@273) (= (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| Heap@@73) o2_5@@248 f_16@@273) (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@248 f_16@@273)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12174_6532_6533#PolymorphicMapType_12174| ExhaleHeap@@45) o2_5@@248 f_16@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@45 Mask@@96) (IsWandField_6532_52380 pm_f_5@@18))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

