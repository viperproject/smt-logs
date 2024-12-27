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
(declare-sort T@Field_24457_53 0)
(declare-sort T@Field_24470_24471 0)
(declare-sort T@Field_31502_3275 0)
(declare-sort T@Field_31895_31896 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_33374_33379 0)
(declare-sort T@Field_27803_27808 0)
(declare-sort T@Field_28627_28632 0)
(declare-sort T@Field_29623_29628 0)
(declare-sort T@Field_30729_30734 0)
(declare-sort T@Field_13942_13974 0)
(declare-sort T@Field_13942_27808 0)
(declare-sort T@Field_13973_3275 0)
(declare-sort T@Field_13973_53 0)
(declare-sort T@Field_13973_24471 0)
(declare-sort T@Field_27788_1214 0)
(declare-sort T@Field_27821_27822 0)
(declare-sort T@Field_27788_53 0)
(declare-sort T@Field_27788_24471 0)
(declare-sort T@Field_28610_1658 0)
(declare-sort T@Field_28647_28648 0)
(declare-sort T@Field_28610_53 0)
(declare-sort T@Field_28610_24471 0)
(declare-sort T@Field_29606_2216 0)
(declare-sort T@Field_29643_29644 0)
(declare-sort T@Field_29606_53 0)
(declare-sort T@Field_29606_24471 0)
(declare-sort T@Field_30715_2864 0)
(declare-sort T@Field_30746_30747 0)
(declare-sort T@Field_30715_53 0)
(declare-sort T@Field_30715_24471 0)
(declare-datatypes ((T@PolymorphicMapType_24418 0)) (((PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| (Array T@Ref T@Field_31895_31896 Real)) (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| (Array T@Ref T@Field_31502_3275 Real)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| (Array T@Ref T@Field_27788_1214 Real)) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| (Array T@Ref T@Field_28610_1658 Real)) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| (Array T@Ref T@Field_29606_2216 Real)) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| (Array T@Ref T@Field_30715_2864 Real)) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| (Array T@Ref T@Field_13973_3275 Real)) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| (Array T@Ref T@Field_13973_53 Real)) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| (Array T@Ref T@Field_13973_24471 Real)) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| (Array T@Ref T@Field_33374_33379 Real)) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| (Array T@Ref T@Field_13942_13974 Real)) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| (Array T@Ref T@Field_24457_53 Real)) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| (Array T@Ref T@Field_24470_24471 Real)) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| (Array T@Ref T@Field_13942_27808 Real)) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| (Array T@Ref T@Field_27821_27822 Real)) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| (Array T@Ref T@Field_27788_53 Real)) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| (Array T@Ref T@Field_27788_24471 Real)) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| (Array T@Ref T@Field_27803_27808 Real)) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| (Array T@Ref T@Field_28647_28648 Real)) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| (Array T@Ref T@Field_28610_53 Real)) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| (Array T@Ref T@Field_28610_24471 Real)) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| (Array T@Ref T@Field_28627_28632 Real)) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| (Array T@Ref T@Field_29643_29644 Real)) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| (Array T@Ref T@Field_29606_53 Real)) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| (Array T@Ref T@Field_29606_24471 Real)) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| (Array T@Ref T@Field_29623_29628 Real)) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| (Array T@Ref T@Field_30746_30747 Real)) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| (Array T@Ref T@Field_30715_53 Real)) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| (Array T@Ref T@Field_30715_24471 Real)) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| (Array T@Ref T@Field_30729_30734 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_24946 0)) (((PolymorphicMapType_24946 (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (Array T@Ref T@Field_31502_3275 Bool)) (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (Array T@Ref T@Field_24457_53 Bool)) (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (Array T@Ref T@Field_24470_24471 Bool)) (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (Array T@Ref T@Field_13942_27808 Bool)) (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (Array T@Ref T@Field_13942_13974 Bool)) (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (Array T@Ref T@Field_27788_1214 Bool)) (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (Array T@Ref T@Field_27788_53 Bool)) (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (Array T@Ref T@Field_27788_24471 Bool)) (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (Array T@Ref T@Field_27803_27808 Bool)) (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (Array T@Ref T@Field_27821_27822 Bool)) (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (Array T@Ref T@Field_28610_1658 Bool)) (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (Array T@Ref T@Field_28610_53 Bool)) (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (Array T@Ref T@Field_28610_24471 Bool)) (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (Array T@Ref T@Field_28627_28632 Bool)) (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (Array T@Ref T@Field_28647_28648 Bool)) (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (Array T@Ref T@Field_29606_2216 Bool)) (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (Array T@Ref T@Field_29606_53 Bool)) (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (Array T@Ref T@Field_29606_24471 Bool)) (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (Array T@Ref T@Field_29623_29628 Bool)) (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (Array T@Ref T@Field_29643_29644 Bool)) (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (Array T@Ref T@Field_30715_2864 Bool)) (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (Array T@Ref T@Field_30715_53 Bool)) (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (Array T@Ref T@Field_30715_24471 Bool)) (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (Array T@Ref T@Field_30729_30734 Bool)) (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (Array T@Ref T@Field_30746_30747 Bool)) (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (Array T@Ref T@Field_13973_3275 Bool)) (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (Array T@Ref T@Field_13973_53 Bool)) (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (Array T@Ref T@Field_13973_24471 Bool)) (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (Array T@Ref T@Field_33374_33379 Bool)) (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (Array T@Ref T@Field_31895_31896 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_24397 0)) (((PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| (Array T@Ref T@Field_24457_53 Bool)) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| (Array T@Ref T@Field_24470_24471 T@Ref)) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| (Array T@Ref T@Field_31502_3275 Int)) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| (Array T@Ref T@Field_31895_31896 T@FrameType)) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| (Array T@Ref T@Field_33374_33379 T@PolymorphicMapType_24946)) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| (Array T@Ref T@Field_27803_27808 T@PolymorphicMapType_24946)) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| (Array T@Ref T@Field_28627_28632 T@PolymorphicMapType_24946)) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| (Array T@Ref T@Field_29623_29628 T@PolymorphicMapType_24946)) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| (Array T@Ref T@Field_30729_30734 T@PolymorphicMapType_24946)) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| (Array T@Ref T@Field_13942_13974 T@FrameType)) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| (Array T@Ref T@Field_13942_27808 T@PolymorphicMapType_24946)) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| (Array T@Ref T@Field_13973_3275 Int)) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| (Array T@Ref T@Field_13973_53 Bool)) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| (Array T@Ref T@Field_13973_24471 T@Ref)) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| (Array T@Ref T@Field_27788_1214 Int)) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| (Array T@Ref T@Field_27821_27822 T@FrameType)) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| (Array T@Ref T@Field_27788_53 Bool)) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| (Array T@Ref T@Field_27788_24471 T@Ref)) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| (Array T@Ref T@Field_28610_1658 Int)) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| (Array T@Ref T@Field_28647_28648 T@FrameType)) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| (Array T@Ref T@Field_28610_53 Bool)) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| (Array T@Ref T@Field_28610_24471 T@Ref)) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| (Array T@Ref T@Field_29606_2216 Int)) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| (Array T@Ref T@Field_29643_29644 T@FrameType)) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| (Array T@Ref T@Field_29606_53 Bool)) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| (Array T@Ref T@Field_29606_24471 T@Ref)) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| (Array T@Ref T@Field_30715_2864 Int)) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| (Array T@Ref T@Field_30746_30747 T@FrameType)) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| (Array T@Ref T@Field_30715_53 Bool)) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| (Array T@Ref T@Field_30715_24471 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_24457_53)
(declare-fun f_7 () T@Field_31502_3275)
(declare-fun g () T@Field_31502_3275)
(declare-fun WandMaskField_13721 (T@Field_28647_28648) T@Field_28627_28632)
(declare-fun |wand_1#ft| (T@Ref T@Ref Int T@Ref T@Ref T@Ref T@Ref Int) T@Field_28647_28648)
(declare-fun |wand_1#sm| (T@Ref T@Ref Int T@Ref T@Ref T@Ref T@Ref Int) T@Field_28627_28632)
(declare-fun succHeap (T@PolymorphicMapType_24397 T@PolymorphicMapType_24397) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_24397 T@PolymorphicMapType_24397) Bool)
(declare-fun wand_2 (T@Ref T@Ref Int T@Ref Real T@Ref Real T@Ref T@Ref Int) T@Field_29606_2216)
(declare-fun IsWandField_13780_2216 (T@Field_29606_2216) Bool)
(declare-fun |wand_2#ft| (T@Ref T@Ref Int T@Ref Real T@Ref Real T@Ref T@Ref Int) T@Field_29643_29644)
(declare-fun IsWandField_13801_13802 (T@Field_29643_29644) Bool)
(declare-fun WandMaskField_13801 (T@Field_29643_29644) T@Field_29623_29628)
(declare-fun |wand_2#sm| (T@Ref T@Ref Int T@Ref Real T@Ref Real T@Ref T@Ref Int) T@Field_29623_29628)
(declare-fun IsPredicateField_13780_2216 (T@Field_29606_2216) Bool)
(declare-fun IsPredicateField_13801_13802 (T@Field_29643_29644) Bool)
(declare-fun state (T@PolymorphicMapType_24397 T@PolymorphicMapType_24418) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_24418) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_24946)
(declare-fun Pair (T@Ref) T@Field_31895_31896)
(declare-fun IsPredicateField_13973_13974 (T@Field_31895_31896) Bool)
(declare-fun |sum'| (T@PolymorphicMapType_24397 T@Ref) Int)
(declare-fun dummyFunction_3498 (Int) Bool)
(declare-fun |sum#triggerStateless| (T@Ref) Int)
(declare-fun |Pair#trigger_13973| (T@PolymorphicMapType_24397 T@Field_31895_31896) Bool)
(declare-fun |Pair#everUsed_13973| (T@Field_31895_31896) Bool)
(declare-fun WandMaskField_13663 (T@Field_27821_27822) T@Field_27803_27808)
(declare-fun |wand#ft| (T@Ref T@Ref Int T@Ref T@Ref Int) T@Field_27821_27822)
(declare-fun |wand#sm| (T@Ref T@Ref Int T@Ref T@Ref Int) T@Field_27803_27808)
(declare-fun WandMaskField_13891 (T@Field_30746_30747) T@Field_30729_30734)
(declare-fun |wand_3#ft| (T@Ref Real T@Ref Real T@Ref Real) T@Field_30746_30747)
(declare-fun |wand_3#sm| (T@Ref Real T@Ref Real T@Ref Real) T@Field_30729_30734)
(declare-fun sum (T@PolymorphicMapType_24397 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_24397 T@PolymorphicMapType_24397 T@PolymorphicMapType_24418) Bool)
(declare-fun IsPredicateField_13891_13892 (T@Field_30746_30747) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_30715 (T@Field_30746_30747) T@Field_30729_30734)
(declare-fun HasDirectPerm_30715_13974 (T@PolymorphicMapType_24418 T@Ref T@Field_30746_30747) Bool)
(declare-fun PredicateMaskField_29606 (T@Field_29643_29644) T@Field_29623_29628)
(declare-fun HasDirectPerm_29606_13974 (T@PolymorphicMapType_24418 T@Ref T@Field_29643_29644) Bool)
(declare-fun IsPredicateField_13721_13722 (T@Field_28647_28648) Bool)
(declare-fun PredicateMaskField_28610 (T@Field_28647_28648) T@Field_28627_28632)
(declare-fun HasDirectPerm_28610_13974 (T@PolymorphicMapType_24418 T@Ref T@Field_28647_28648) Bool)
(declare-fun IsPredicateField_13663_13664 (T@Field_27821_27822) Bool)
(declare-fun PredicateMaskField_27788 (T@Field_27821_27822) T@Field_27803_27808)
(declare-fun HasDirectPerm_27788_13974 (T@PolymorphicMapType_24418 T@Ref T@Field_27821_27822) Bool)
(declare-fun PredicateMaskField_13973 (T@Field_31895_31896) T@Field_33374_33379)
(declare-fun HasDirectPerm_13973_13974 (T@PolymorphicMapType_24418 T@Ref T@Field_31895_31896) Bool)
(declare-fun IsPredicateField_13942_85642 (T@Field_13942_13974) Bool)
(declare-fun PredicateMaskField_13942 (T@Field_13942_13974) T@Field_13942_27808)
(declare-fun HasDirectPerm_13942_13974 (T@PolymorphicMapType_24418 T@Ref T@Field_13942_13974) Bool)
(declare-fun IsWandField_13891_13892 (T@Field_30746_30747) Bool)
(declare-fun IsWandField_13721_13722 (T@Field_28647_28648) Bool)
(declare-fun IsWandField_13663_13664 (T@Field_27821_27822) Bool)
(declare-fun IsWandField_13973_96043 (T@Field_31895_31896) Bool)
(declare-fun WandMaskField_13973 (T@Field_31895_31896) T@Field_33374_33379)
(declare-fun IsWandField_13942_95686 (T@Field_13942_13974) Bool)
(declare-fun WandMaskField_13942 (T@Field_13942_13974) T@Field_13942_27808)
(declare-fun |Pair#sm| (T@Ref) T@Field_33374_33379)
(declare-fun wand_1 (T@Ref T@Ref Int T@Ref T@Ref T@Ref T@Ref Int) T@Field_28610_1658)
(declare-fun IsWandField_13704_1658 (T@Field_28610_1658) Bool)
(declare-fun IsPredicateField_13704_1658 (T@Field_28610_1658) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_24397)
(declare-fun ZeroMask () T@PolymorphicMapType_24418)
(declare-fun InsidePredicate_31895_31895 (T@Field_31895_31896 T@FrameType T@Field_31895_31896 T@FrameType) Bool)
(declare-fun InsidePredicate_30715_30715 (T@Field_30746_30747 T@FrameType T@Field_30746_30747 T@FrameType) Bool)
(declare-fun InsidePredicate_29606_29606 (T@Field_29643_29644 T@FrameType T@Field_29643_29644 T@FrameType) Bool)
(declare-fun InsidePredicate_28610_28610 (T@Field_28647_28648 T@FrameType T@Field_28647_28648 T@FrameType) Bool)
(declare-fun InsidePredicate_27788_27788 (T@Field_27821_27822 T@FrameType T@Field_27821_27822 T@FrameType) Bool)
(declare-fun InsidePredicate_24457_24457 (T@Field_13942_13974 T@FrameType T@Field_13942_13974 T@FrameType) Bool)
(declare-fun IsPredicateField_13942_3275 (T@Field_31502_3275) Bool)
(declare-fun IsWandField_13942_3275 (T@Field_31502_3275) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_13874_117775 (T@Field_30729_30734) Bool)
(declare-fun IsWandField_13874_117791 (T@Field_30729_30734) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_13874_24471 (T@Field_30715_24471) Bool)
(declare-fun IsWandField_13874_24471 (T@Field_30715_24471) Bool)
(declare-fun IsPredicateField_13874_53 (T@Field_30715_53) Bool)
(declare-fun IsWandField_13874_53 (T@Field_30715_53) Bool)
(declare-fun IsPredicateField_13874_2864 (T@Field_30715_2864) Bool)
(declare-fun IsWandField_13874_2864 (T@Field_30715_2864) Bool)
(declare-fun IsPredicateField_13780_116958 (T@Field_29623_29628) Bool)
(declare-fun IsWandField_13780_116974 (T@Field_29623_29628) Bool)
(declare-fun IsPredicateField_13780_24471 (T@Field_29606_24471) Bool)
(declare-fun IsWandField_13780_24471 (T@Field_29606_24471) Bool)
(declare-fun IsPredicateField_13780_53 (T@Field_29606_53) Bool)
(declare-fun IsWandField_13780_53 (T@Field_29606_53) Bool)
(declare-fun IsPredicateField_13704_116141 (T@Field_28627_28632) Bool)
(declare-fun IsWandField_13704_116157 (T@Field_28627_28632) Bool)
(declare-fun IsPredicateField_13704_24471 (T@Field_28610_24471) Bool)
(declare-fun IsWandField_13704_24471 (T@Field_28610_24471) Bool)
(declare-fun IsPredicateField_13704_53 (T@Field_28610_53) Bool)
(declare-fun IsWandField_13704_53 (T@Field_28610_53) Bool)
(declare-fun IsPredicateField_13650_115324 (T@Field_27803_27808) Bool)
(declare-fun IsWandField_13650_115340 (T@Field_27803_27808) Bool)
(declare-fun IsPredicateField_13650_24471 (T@Field_27788_24471) Bool)
(declare-fun IsWandField_13650_24471 (T@Field_27788_24471) Bool)
(declare-fun IsPredicateField_13650_53 (T@Field_27788_53) Bool)
(declare-fun IsWandField_13650_53 (T@Field_27788_53) Bool)
(declare-fun IsPredicateField_13650_1214 (T@Field_27788_1214) Bool)
(declare-fun IsWandField_13650_1214 (T@Field_27788_1214) Bool)
(declare-fun IsPredicateField_13942_114507 (T@Field_13942_27808) Bool)
(declare-fun IsWandField_13942_114523 (T@Field_13942_27808) Bool)
(declare-fun IsPredicateField_13942_24471 (T@Field_24470_24471) Bool)
(declare-fun IsWandField_13942_24471 (T@Field_24470_24471) Bool)
(declare-fun IsPredicateField_13942_53 (T@Field_24457_53) Bool)
(declare-fun IsWandField_13942_53 (T@Field_24457_53) Bool)
(declare-fun IsPredicateField_13973_113690 (T@Field_33374_33379) Bool)
(declare-fun IsWandField_13973_113706 (T@Field_33374_33379) Bool)
(declare-fun IsPredicateField_13973_24471 (T@Field_13973_24471) Bool)
(declare-fun IsWandField_13973_24471 (T@Field_13973_24471) Bool)
(declare-fun IsPredicateField_13973_53 (T@Field_13973_53) Bool)
(declare-fun IsWandField_13973_53 (T@Field_13973_53) Bool)
(declare-fun IsPredicateField_13973_3275 (T@Field_13973_3275) Bool)
(declare-fun IsWandField_13973_3275 (T@Field_13973_3275) Bool)
(declare-fun HasDirectPerm_30715_85397 (T@PolymorphicMapType_24418 T@Ref T@Field_30729_30734) Bool)
(declare-fun HasDirectPerm_30715_24471 (T@PolymorphicMapType_24418 T@Ref T@Field_30715_24471) Bool)
(declare-fun HasDirectPerm_30715_53 (T@PolymorphicMapType_24418 T@Ref T@Field_30715_53) Bool)
(declare-fun HasDirectPerm_30715_3275 (T@PolymorphicMapType_24418 T@Ref T@Field_30715_2864) Bool)
(declare-fun HasDirectPerm_29606_84263 (T@PolymorphicMapType_24418 T@Ref T@Field_29623_29628) Bool)
(declare-fun HasDirectPerm_29606_24471 (T@PolymorphicMapType_24418 T@Ref T@Field_29606_24471) Bool)
(declare-fun HasDirectPerm_29606_53 (T@PolymorphicMapType_24418 T@Ref T@Field_29606_53) Bool)
(declare-fun HasDirectPerm_29606_3275 (T@PolymorphicMapType_24418 T@Ref T@Field_29606_2216) Bool)
(declare-fun HasDirectPerm_28610_83129 (T@PolymorphicMapType_24418 T@Ref T@Field_28627_28632) Bool)
(declare-fun HasDirectPerm_28610_24471 (T@PolymorphicMapType_24418 T@Ref T@Field_28610_24471) Bool)
(declare-fun HasDirectPerm_28610_53 (T@PolymorphicMapType_24418 T@Ref T@Field_28610_53) Bool)
(declare-fun HasDirectPerm_28610_3275 (T@PolymorphicMapType_24418 T@Ref T@Field_28610_1658) Bool)
(declare-fun HasDirectPerm_27788_81995 (T@PolymorphicMapType_24418 T@Ref T@Field_27803_27808) Bool)
(declare-fun HasDirectPerm_27788_24471 (T@PolymorphicMapType_24418 T@Ref T@Field_27788_24471) Bool)
(declare-fun HasDirectPerm_27788_53 (T@PolymorphicMapType_24418 T@Ref T@Field_27788_53) Bool)
(declare-fun HasDirectPerm_27788_3275 (T@PolymorphicMapType_24418 T@Ref T@Field_27788_1214) Bool)
(declare-fun HasDirectPerm_13973_80861 (T@PolymorphicMapType_24418 T@Ref T@Field_33374_33379) Bool)
(declare-fun HasDirectPerm_13973_24471 (T@PolymorphicMapType_24418 T@Ref T@Field_13973_24471) Bool)
(declare-fun HasDirectPerm_13973_53 (T@PolymorphicMapType_24418 T@Ref T@Field_13973_53) Bool)
(declare-fun HasDirectPerm_13973_3275 (T@PolymorphicMapType_24418 T@Ref T@Field_13973_3275) Bool)
(declare-fun HasDirectPerm_13942_79720 (T@PolymorphicMapType_24418 T@Ref T@Field_13942_27808) Bool)
(declare-fun HasDirectPerm_13942_24471 (T@PolymorphicMapType_24418 T@Ref T@Field_24470_24471) Bool)
(declare-fun HasDirectPerm_13942_53 (T@PolymorphicMapType_24418 T@Ref T@Field_24457_53) Bool)
(declare-fun HasDirectPerm_13942_3275 (T@PolymorphicMapType_24418 T@Ref T@Field_31502_3275) Bool)
(declare-fun wand (T@Ref T@Ref Int T@Ref T@Ref Int) T@Field_27788_1214)
(declare-fun wand_3 (T@Ref Real T@Ref Real T@Ref Real) T@Field_30715_2864)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun getPredWandId_13650_1214 (T@Field_27788_1214) Int)
(declare-fun getPredWandId_13874_2864 (T@Field_30715_2864) Int)
(declare-fun sumMask (T@PolymorphicMapType_24418 T@PolymorphicMapType_24418 T@PolymorphicMapType_24418) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun getPredWandId_13704_1658 (T@Field_28610_1658) Int)
(declare-fun |sum#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_13973_13974 (T@Field_31895_31896) Int)
(declare-fun InsidePredicate_31895_30715 (T@Field_31895_31896 T@FrameType T@Field_30746_30747 T@FrameType) Bool)
(declare-fun InsidePredicate_31895_29606 (T@Field_31895_31896 T@FrameType T@Field_29643_29644 T@FrameType) Bool)
(declare-fun InsidePredicate_31895_28610 (T@Field_31895_31896 T@FrameType T@Field_28647_28648 T@FrameType) Bool)
(declare-fun InsidePredicate_31895_27788 (T@Field_31895_31896 T@FrameType T@Field_27821_27822 T@FrameType) Bool)
(declare-fun InsidePredicate_31895_24457 (T@Field_31895_31896 T@FrameType T@Field_13942_13974 T@FrameType) Bool)
(declare-fun InsidePredicate_30715_31895 (T@Field_30746_30747 T@FrameType T@Field_31895_31896 T@FrameType) Bool)
(declare-fun InsidePredicate_30715_29606 (T@Field_30746_30747 T@FrameType T@Field_29643_29644 T@FrameType) Bool)
(declare-fun InsidePredicate_30715_28610 (T@Field_30746_30747 T@FrameType T@Field_28647_28648 T@FrameType) Bool)
(declare-fun InsidePredicate_30715_27788 (T@Field_30746_30747 T@FrameType T@Field_27821_27822 T@FrameType) Bool)
(declare-fun InsidePredicate_30715_24457 (T@Field_30746_30747 T@FrameType T@Field_13942_13974 T@FrameType) Bool)
(declare-fun InsidePredicate_29606_31895 (T@Field_29643_29644 T@FrameType T@Field_31895_31896 T@FrameType) Bool)
(declare-fun InsidePredicate_29606_30715 (T@Field_29643_29644 T@FrameType T@Field_30746_30747 T@FrameType) Bool)
(declare-fun InsidePredicate_29606_28610 (T@Field_29643_29644 T@FrameType T@Field_28647_28648 T@FrameType) Bool)
(declare-fun InsidePredicate_29606_27788 (T@Field_29643_29644 T@FrameType T@Field_27821_27822 T@FrameType) Bool)
(declare-fun InsidePredicate_29606_24457 (T@Field_29643_29644 T@FrameType T@Field_13942_13974 T@FrameType) Bool)
(declare-fun InsidePredicate_28610_31895 (T@Field_28647_28648 T@FrameType T@Field_31895_31896 T@FrameType) Bool)
(declare-fun InsidePredicate_28610_30715 (T@Field_28647_28648 T@FrameType T@Field_30746_30747 T@FrameType) Bool)
(declare-fun InsidePredicate_28610_29606 (T@Field_28647_28648 T@FrameType T@Field_29643_29644 T@FrameType) Bool)
(declare-fun InsidePredicate_28610_27788 (T@Field_28647_28648 T@FrameType T@Field_27821_27822 T@FrameType) Bool)
(declare-fun InsidePredicate_28610_24457 (T@Field_28647_28648 T@FrameType T@Field_13942_13974 T@FrameType) Bool)
(declare-fun InsidePredicate_27788_31895 (T@Field_27821_27822 T@FrameType T@Field_31895_31896 T@FrameType) Bool)
(declare-fun InsidePredicate_27788_30715 (T@Field_27821_27822 T@FrameType T@Field_30746_30747 T@FrameType) Bool)
(declare-fun InsidePredicate_27788_29606 (T@Field_27821_27822 T@FrameType T@Field_29643_29644 T@FrameType) Bool)
(declare-fun InsidePredicate_27788_28610 (T@Field_27821_27822 T@FrameType T@Field_28647_28648 T@FrameType) Bool)
(declare-fun InsidePredicate_27788_24457 (T@Field_27821_27822 T@FrameType T@Field_13942_13974 T@FrameType) Bool)
(declare-fun InsidePredicate_24457_31895 (T@Field_13942_13974 T@FrameType T@Field_31895_31896 T@FrameType) Bool)
(declare-fun InsidePredicate_24457_30715 (T@Field_13942_13974 T@FrameType T@Field_30746_30747 T@FrameType) Bool)
(declare-fun InsidePredicate_24457_29606 (T@Field_13942_13974 T@FrameType T@Field_29643_29644 T@FrameType) Bool)
(declare-fun InsidePredicate_24457_28610 (T@Field_13942_13974 T@FrameType T@Field_28647_28648 T@FrameType) Bool)
(declare-fun InsidePredicate_24457_27788 (T@Field_13942_13974 T@FrameType T@Field_27821_27822 T@FrameType) Bool)
(declare-fun getPredWandId_13780_2216 (T@Field_29606_2216) Int)
(assert (distinct f_7 g)
)
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 Int) (arg4 T@Ref) (arg5 T@Ref) (arg6 T@Ref) (arg7 T@Ref) (arg8 Int) ) (! (= (|wand_1#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8) (WandMaskField_13721 (|wand_1#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
 :qid |stdinbpl.235:15|
 :skolemid |33|
 :pattern ( (WandMaskField_13721 (|wand_1#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_24397) (Heap1 T@PolymorphicMapType_24397) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 Int) (arg4@@0 T@Ref) (arg5@@0 Real) (arg6@@0 T@Ref) (arg7@@0 Real) (arg8@@0 T@Ref) (arg9 T@Ref) (arg10 Int) ) (! (IsWandField_13780_2216 (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0 arg9 arg10))
 :qid |stdinbpl.251:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0 arg9 arg10))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 Int) (arg4@@1 T@Ref) (arg5@@1 Real) (arg6@@1 T@Ref) (arg7@@1 Real) (arg8@@1 T@Ref) (arg9@@0 T@Ref) (arg10@@0 Int) ) (! (IsWandField_13801_13802 (|wand_2#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1 arg9@@0 arg10@@0))
 :qid |stdinbpl.255:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1 arg9@@0 arg10@@0))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 Int) (arg4@@2 T@Ref) (arg5@@2 Real) (arg6@@2 T@Ref) (arg7@@2 Real) (arg8@@2 T@Ref) (arg9@@1 T@Ref) (arg10@@1 Int) ) (! (= (|wand_2#sm| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2 arg9@@1 arg10@@1) (WandMaskField_13801 (|wand_2#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2 arg9@@1 arg10@@1)))
 :qid |stdinbpl.267:15|
 :skolemid |40|
 :pattern ( (WandMaskField_13801 (|wand_2#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2 arg9@@1 arg10@@1)))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 Int) (arg4@@3 T@Ref) (arg5@@3 Real) (arg6@@3 T@Ref) (arg7@@3 Real) (arg8@@3 T@Ref) (arg9@@2 T@Ref) (arg10@@2 Int) ) (!  (not (IsPredicateField_13780_2216 (wand_2 arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3 arg9@@2 arg10@@2)))
 :qid |stdinbpl.259:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3 arg9@@2 arg10@@2))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 Int) (arg4@@4 T@Ref) (arg5@@4 Real) (arg6@@4 T@Ref) (arg7@@4 Real) (arg8@@4 T@Ref) (arg9@@3 T@Ref) (arg10@@3 Int) ) (!  (not (IsPredicateField_13801_13802 (|wand_2#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4 arg9@@3 arg10@@3)))
 :qid |stdinbpl.263:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4 arg9@@3 arg10@@3))
)))
(assert (forall ((Heap T@PolymorphicMapType_24397) (Mask T@PolymorphicMapType_24418) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_24397) (Heap1@@0 T@PolymorphicMapType_24397) (Heap2 T@PolymorphicMapType_24397) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_31895_31896) ) (!  (not (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_33374_33379) ) (!  (not (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13973_24471) ) (!  (not (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13973_53) ) (!  (not (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13973_3275) ) (!  (not (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_30746_30747) ) (!  (not (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_30729_30734) ) (!  (not (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_30715_24471) ) (!  (not (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_30715_53) ) (!  (not (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_30715_2864) ) (!  (not (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_29643_29644) ) (!  (not (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_29623_29628) ) (!  (not (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_29606_24471) ) (!  (not (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_29606_53) ) (!  (not (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_29606_2216) ) (!  (not (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_28647_28648) ) (!  (not (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_28627_28632) ) (!  (not (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_28610_24471) ) (!  (not (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_28610_53) ) (!  (not (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_28610_1658) ) (!  (not (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_27821_27822) ) (!  (not (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_27803_27808) ) (!  (not (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_27788_24471) ) (!  (not (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_27788_53) ) (!  (not (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_27788_1214) ) (!  (not (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_13942_13974) ) (!  (not (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_13942_27808) ) (!  (not (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_24470_24471) ) (!  (not (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_24457_53) ) (!  (not (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_31502_3275) ) (!  (not (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_13973_13974 (Pair this))
 :qid |stdinbpl.427:15|
 :skolemid |55|
 :pattern ( (Pair this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_24397) (p_1 T@Ref) ) (! (dummyFunction_3498 (|sum#triggerStateless| p_1))
 :qid |stdinbpl.334:15|
 :skolemid |51|
 :pattern ( (|sum'| Heap@@0 p_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_24397) (this@@0 T@Ref) ) (! (|Pair#everUsed_13973| (Pair this@@0))
 :qid |stdinbpl.446:15|
 :skolemid |59|
 :pattern ( (|Pair#trigger_13973| Heap@@1 (Pair this@@0)))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 Int) (arg4@@5 T@Ref) (arg5@@5 T@Ref) (arg6@@5 Int) ) (! (= (|wand#sm| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5) (WandMaskField_13663 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5)))
 :qid |stdinbpl.203:15|
 :skolemid |26|
 :pattern ( (WandMaskField_13663 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5)))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 T@Ref) (arg4@@6 Real) (arg5@@6 T@Ref) (arg6@@6 Real) ) (! (= (|wand_3#sm| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@6 arg6@@6) (WandMaskField_13891 (|wand_3#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@6 arg6@@6)))
 :qid |stdinbpl.299:15|
 :skolemid |47|
 :pattern ( (WandMaskField_13891 (|wand_3#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@6 arg6@@6)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_24397) (p_1@@0 T@Ref) ) (!  (and (= (sum Heap@@2 p_1@@0) (|sum'| Heap@@2 p_1@@0)) (dummyFunction_3498 (|sum#triggerStateless| p_1@@0)))
 :qid |stdinbpl.330:15|
 :skolemid |50|
 :pattern ( (sum Heap@@2 p_1@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_24397) (ExhaleHeap T@PolymorphicMapType_24397) (Mask@@0 T@PolymorphicMapType_24418) (pm_f_28 T@Field_30746_30747) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_30715_13974 Mask@@0 null pm_f_28) (IsPredicateField_13891_13892 pm_f_28)) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@3) null (PredicateMaskField_30715 pm_f_28)) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap) null (PredicateMaskField_30715 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_13891_13892 pm_f_28) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap) null (PredicateMaskField_30715 pm_f_28)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_24397) (ExhaleHeap@@0 T@PolymorphicMapType_24397) (Mask@@1 T@PolymorphicMapType_24418) (pm_f_28@@0 T@Field_29643_29644) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_29606_13974 Mask@@1 null pm_f_28@@0) (IsPredicateField_13801_13802 pm_f_28@@0)) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@4) null (PredicateMaskField_29606 pm_f_28@@0)) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@0) null (PredicateMaskField_29606 pm_f_28@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_13801_13802 pm_f_28@@0) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@0) null (PredicateMaskField_29606 pm_f_28@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_24397) (ExhaleHeap@@1 T@PolymorphicMapType_24397) (Mask@@2 T@PolymorphicMapType_24418) (pm_f_28@@1 T@Field_28647_28648) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_28610_13974 Mask@@2 null pm_f_28@@1) (IsPredicateField_13721_13722 pm_f_28@@1)) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@5) null (PredicateMaskField_28610 pm_f_28@@1)) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@1) null (PredicateMaskField_28610 pm_f_28@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_13721_13722 pm_f_28@@1) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@1) null (PredicateMaskField_28610 pm_f_28@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_24397) (ExhaleHeap@@2 T@PolymorphicMapType_24397) (Mask@@3 T@PolymorphicMapType_24418) (pm_f_28@@2 T@Field_27821_27822) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_27788_13974 Mask@@3 null pm_f_28@@2) (IsPredicateField_13663_13664 pm_f_28@@2)) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@6) null (PredicateMaskField_27788 pm_f_28@@2)) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@2) null (PredicateMaskField_27788 pm_f_28@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsPredicateField_13663_13664 pm_f_28@@2) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@2) null (PredicateMaskField_27788 pm_f_28@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_24397) (ExhaleHeap@@3 T@PolymorphicMapType_24397) (Mask@@4 T@PolymorphicMapType_24418) (pm_f_28@@3 T@Field_31895_31896) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_13973_13974 Mask@@4 null pm_f_28@@3) (IsPredicateField_13973_13974 pm_f_28@@3)) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@7) null (PredicateMaskField_13973 pm_f_28@@3)) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@3) null (PredicateMaskField_13973 pm_f_28@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_13973_13974 pm_f_28@@3) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@3) null (PredicateMaskField_13973 pm_f_28@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_24397) (ExhaleHeap@@4 T@PolymorphicMapType_24397) (Mask@@5 T@PolymorphicMapType_24418) (pm_f_28@@4 T@Field_13942_13974) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_13942_13974 Mask@@5 null pm_f_28@@4) (IsPredicateField_13942_85642 pm_f_28@@4)) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@8) null (PredicateMaskField_13942 pm_f_28@@4)) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@4) null (PredicateMaskField_13942 pm_f_28@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_13942_85642 pm_f_28@@4) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@4) null (PredicateMaskField_13942 pm_f_28@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_24397) (ExhaleHeap@@5 T@PolymorphicMapType_24397) (Mask@@6 T@PolymorphicMapType_24418) (pm_f_28@@5 T@Field_30746_30747) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_30715_13974 Mask@@6 null pm_f_28@@5) (IsWandField_13891_13892 pm_f_28@@5)) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@9) null (WandMaskField_13891 pm_f_28@@5)) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@5) null (WandMaskField_13891 pm_f_28@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_13891_13892 pm_f_28@@5) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@5) null (WandMaskField_13891 pm_f_28@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_24397) (ExhaleHeap@@6 T@PolymorphicMapType_24397) (Mask@@7 T@PolymorphicMapType_24418) (pm_f_28@@6 T@Field_29643_29644) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_29606_13974 Mask@@7 null pm_f_28@@6) (IsWandField_13801_13802 pm_f_28@@6)) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@10) null (WandMaskField_13801 pm_f_28@@6)) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@6) null (WandMaskField_13801 pm_f_28@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_13801_13802 pm_f_28@@6) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@6) null (WandMaskField_13801 pm_f_28@@6)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_24397) (ExhaleHeap@@7 T@PolymorphicMapType_24397) (Mask@@8 T@PolymorphicMapType_24418) (pm_f_28@@7 T@Field_28647_28648) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_28610_13974 Mask@@8 null pm_f_28@@7) (IsWandField_13721_13722 pm_f_28@@7)) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@11) null (WandMaskField_13721 pm_f_28@@7)) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@7) null (WandMaskField_13721 pm_f_28@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (IsWandField_13721_13722 pm_f_28@@7) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@7) null (WandMaskField_13721 pm_f_28@@7)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_24397) (ExhaleHeap@@8 T@PolymorphicMapType_24397) (Mask@@9 T@PolymorphicMapType_24418) (pm_f_28@@8 T@Field_27821_27822) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_27788_13974 Mask@@9 null pm_f_28@@8) (IsWandField_13663_13664 pm_f_28@@8)) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@12) null (WandMaskField_13663 pm_f_28@@8)) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@8) null (WandMaskField_13663 pm_f_28@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (IsWandField_13663_13664 pm_f_28@@8) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@8) null (WandMaskField_13663 pm_f_28@@8)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_24397) (ExhaleHeap@@9 T@PolymorphicMapType_24397) (Mask@@10 T@PolymorphicMapType_24418) (pm_f_28@@9 T@Field_31895_31896) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_13973_13974 Mask@@10 null pm_f_28@@9) (IsWandField_13973_96043 pm_f_28@@9)) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@13) null (WandMaskField_13973 pm_f_28@@9)) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@9) null (WandMaskField_13973 pm_f_28@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@10) (IsWandField_13973_96043 pm_f_28@@9) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@9) null (WandMaskField_13973 pm_f_28@@9)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_24397) (ExhaleHeap@@10 T@PolymorphicMapType_24397) (Mask@@11 T@PolymorphicMapType_24418) (pm_f_28@@10 T@Field_13942_13974) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_13942_13974 Mask@@11 null pm_f_28@@10) (IsWandField_13942_95686 pm_f_28@@10)) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@14) null (WandMaskField_13942 pm_f_28@@10)) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@10) null (WandMaskField_13942 pm_f_28@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@11) (IsWandField_13942_95686 pm_f_28@@10) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@10) null (WandMaskField_13942 pm_f_28@@10)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (Pair this@@1) (Pair this2)) (= this@@1 this2))
 :qid |stdinbpl.437:15|
 :skolemid |57|
 :pattern ( (Pair this@@1) (Pair this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Pair#sm| this@@2) (|Pair#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.441:15|
 :skolemid |58|
 :pattern ( (|Pair#sm| this@@2) (|Pair#sm| this2@@0))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 T@Ref) (arg3@@7 Int) (arg4@@7 T@Ref) (arg5@@7 T@Ref) (arg6@@7 T@Ref) (arg7@@5 T@Ref) (arg8@@5 Int) ) (! (IsWandField_13704_1658 (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@7 arg6@@7 arg7@@5 arg8@@5))
 :qid |stdinbpl.219:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@7 arg6@@7 arg7@@5 arg8@@5))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 T@Ref) (arg3@@8 Int) (arg4@@8 T@Ref) (arg5@@8 T@Ref) (arg6@@8 T@Ref) (arg7@@6 T@Ref) (arg8@@6 Int) ) (! (IsWandField_13721_13722 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@8 arg6@@8 arg7@@6 arg8@@6))
 :qid |stdinbpl.223:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@8 arg6@@8 arg7@@6 arg8@@6))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 T@Ref) (arg3@@9 Int) (arg4@@9 T@Ref) (arg5@@9 T@Ref) (arg6@@9 T@Ref) (arg7@@7 T@Ref) (arg8@@7 Int) ) (!  (not (IsPredicateField_13704_1658 (wand_1 arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@9 arg6@@9 arg7@@7 arg8@@7)))
 :qid |stdinbpl.227:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@9 arg6@@9 arg7@@7 arg8@@7))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 T@Ref) (arg3@@10 Int) (arg4@@10 T@Ref) (arg5@@10 T@Ref) (arg6@@10 T@Ref) (arg7@@8 T@Ref) (arg8@@8 Int) ) (!  (not (IsPredicateField_13721_13722 (|wand_1#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@10 arg6@@10 arg7@@8 arg8@@8)))
 :qid |stdinbpl.231:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@10 arg6@@10 arg7@@8 arg8@@8))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_24397) (ExhaleHeap@@11 T@PolymorphicMapType_24397) (Mask@@12 T@PolymorphicMapType_24418) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@15) o_41 $allocated) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@11) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@11) o_41 $allocated))
)))
(assert (forall ((p T@Field_31895_31896) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_31895_31895 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_31895_31895 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_30746_30747) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_30715_30715 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30715_30715 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_29643_29644) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_29606_29606 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29606_29606 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_28647_28648) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_28610_28610 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_28610_28610 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_27821_27822) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_27788_27788 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27788_27788 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_13942_13974) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_24457_24457 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24457_24457 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert  (not (IsPredicateField_13942_3275 f_7)))
(assert  (not (IsWandField_13942_3275 f_7)))
(assert  (not (IsPredicateField_13942_3275 g)))
(assert  (not (IsWandField_13942_3275 g)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_24397) (ExhaleHeap@@12 T@PolymorphicMapType_24397) (Mask@@13 T@PolymorphicMapType_24418) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@16 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_24418) (o_2@@29 T@Ref) (f_4@@29 T@Field_30729_30734) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Mask@@14) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_13874_117775 f_4@@29))) (not (IsWandField_13874_117791 f_4@@29))) (<= (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Mask@@14) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Mask@@14) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_24418) (o_2@@30 T@Ref) (f_4@@30 T@Field_30715_24471) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Mask@@15) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_13874_24471 f_4@@30))) (not (IsWandField_13874_24471 f_4@@30))) (<= (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Mask@@15) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Mask@@15) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_24418) (o_2@@31 T@Ref) (f_4@@31 T@Field_30715_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Mask@@16) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_13874_53 f_4@@31))) (not (IsWandField_13874_53 f_4@@31))) (<= (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Mask@@16) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Mask@@16) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_24418) (o_2@@32 T@Ref) (f_4@@32 T@Field_30715_2864) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Mask@@17) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_13874_2864 f_4@@32))) (not (IsWandField_13874_2864 f_4@@32))) (<= (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Mask@@17) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Mask@@17) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_24418) (o_2@@33 T@Ref) (f_4@@33 T@Field_30746_30747) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Mask@@18) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_13891_13892 f_4@@33))) (not (IsWandField_13891_13892 f_4@@33))) (<= (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Mask@@18) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Mask@@18) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_24418) (o_2@@34 T@Ref) (f_4@@34 T@Field_29623_29628) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Mask@@19) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_13780_116958 f_4@@34))) (not (IsWandField_13780_116974 f_4@@34))) (<= (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Mask@@19) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Mask@@19) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_24418) (o_2@@35 T@Ref) (f_4@@35 T@Field_29606_24471) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Mask@@20) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_13780_24471 f_4@@35))) (not (IsWandField_13780_24471 f_4@@35))) (<= (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Mask@@20) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Mask@@20) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_24418) (o_2@@36 T@Ref) (f_4@@36 T@Field_29606_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Mask@@21) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_13780_53 f_4@@36))) (not (IsWandField_13780_53 f_4@@36))) (<= (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Mask@@21) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Mask@@21) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_24418) (o_2@@37 T@Ref) (f_4@@37 T@Field_29606_2216) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Mask@@22) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_13780_2216 f_4@@37))) (not (IsWandField_13780_2216 f_4@@37))) (<= (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Mask@@22) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Mask@@22) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_24418) (o_2@@38 T@Ref) (f_4@@38 T@Field_29643_29644) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Mask@@23) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_13801_13802 f_4@@38))) (not (IsWandField_13801_13802 f_4@@38))) (<= (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Mask@@23) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Mask@@23) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_24418) (o_2@@39 T@Ref) (f_4@@39 T@Field_28627_28632) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Mask@@24) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_13704_116141 f_4@@39))) (not (IsWandField_13704_116157 f_4@@39))) (<= (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Mask@@24) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Mask@@24) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_24418) (o_2@@40 T@Ref) (f_4@@40 T@Field_28610_24471) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Mask@@25) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_13704_24471 f_4@@40))) (not (IsWandField_13704_24471 f_4@@40))) (<= (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Mask@@25) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Mask@@25) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_24418) (o_2@@41 T@Ref) (f_4@@41 T@Field_28610_53) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Mask@@26) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_13704_53 f_4@@41))) (not (IsWandField_13704_53 f_4@@41))) (<= (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Mask@@26) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Mask@@26) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_24418) (o_2@@42 T@Ref) (f_4@@42 T@Field_28610_1658) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Mask@@27) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_13704_1658 f_4@@42))) (not (IsWandField_13704_1658 f_4@@42))) (<= (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Mask@@27) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Mask@@27) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_24418) (o_2@@43 T@Ref) (f_4@@43 T@Field_28647_28648) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Mask@@28) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_13721_13722 f_4@@43))) (not (IsWandField_13721_13722 f_4@@43))) (<= (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Mask@@28) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Mask@@28) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_24418) (o_2@@44 T@Ref) (f_4@@44 T@Field_27803_27808) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Mask@@29) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_13650_115324 f_4@@44))) (not (IsWandField_13650_115340 f_4@@44))) (<= (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Mask@@29) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Mask@@29) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_24418) (o_2@@45 T@Ref) (f_4@@45 T@Field_27788_24471) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Mask@@30) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_13650_24471 f_4@@45))) (not (IsWandField_13650_24471 f_4@@45))) (<= (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Mask@@30) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Mask@@30) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_24418) (o_2@@46 T@Ref) (f_4@@46 T@Field_27788_53) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Mask@@31) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_13650_53 f_4@@46))) (not (IsWandField_13650_53 f_4@@46))) (<= (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Mask@@31) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Mask@@31) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_24418) (o_2@@47 T@Ref) (f_4@@47 T@Field_27788_1214) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Mask@@32) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_13650_1214 f_4@@47))) (not (IsWandField_13650_1214 f_4@@47))) (<= (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Mask@@32) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Mask@@32) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_24418) (o_2@@48 T@Ref) (f_4@@48 T@Field_27821_27822) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Mask@@33) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_13663_13664 f_4@@48))) (not (IsWandField_13663_13664 f_4@@48))) (<= (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Mask@@33) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Mask@@33) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_24418) (o_2@@49 T@Ref) (f_4@@49 T@Field_13942_27808) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Mask@@34) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_13942_114507 f_4@@49))) (not (IsWandField_13942_114523 f_4@@49))) (<= (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Mask@@34) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Mask@@34) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_24418) (o_2@@50 T@Ref) (f_4@@50 T@Field_24470_24471) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Mask@@35) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_13942_24471 f_4@@50))) (not (IsWandField_13942_24471 f_4@@50))) (<= (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Mask@@35) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Mask@@35) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_24418) (o_2@@51 T@Ref) (f_4@@51 T@Field_24457_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Mask@@36) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_13942_53 f_4@@51))) (not (IsWandField_13942_53 f_4@@51))) (<= (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Mask@@36) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Mask@@36) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_24418) (o_2@@52 T@Ref) (f_4@@52 T@Field_31502_3275) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@@37) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_13942_3275 f_4@@52))) (not (IsWandField_13942_3275 f_4@@52))) (<= (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@@37) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@@37) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_24418) (o_2@@53 T@Ref) (f_4@@53 T@Field_13942_13974) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Mask@@38) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_13942_85642 f_4@@53))) (not (IsWandField_13942_95686 f_4@@53))) (<= (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Mask@@38) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Mask@@38) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_24418) (o_2@@54 T@Ref) (f_4@@54 T@Field_33374_33379) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Mask@@39) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_13973_113690 f_4@@54))) (not (IsWandField_13973_113706 f_4@@54))) (<= (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Mask@@39) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Mask@@39) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_24418) (o_2@@55 T@Ref) (f_4@@55 T@Field_13973_24471) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Mask@@40) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_13973_24471 f_4@@55))) (not (IsWandField_13973_24471 f_4@@55))) (<= (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Mask@@40) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Mask@@40) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_24418) (o_2@@56 T@Ref) (f_4@@56 T@Field_13973_53) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Mask@@41) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_13973_53 f_4@@56))) (not (IsWandField_13973_53 f_4@@56))) (<= (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Mask@@41) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Mask@@41) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_24418) (o_2@@57 T@Ref) (f_4@@57 T@Field_13973_3275) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Mask@@42) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_13973_3275 f_4@@57))) (not (IsWandField_13973_3275 f_4@@57))) (<= (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Mask@@42) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Mask@@42) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_24418) (o_2@@58 T@Ref) (f_4@@58 T@Field_31895_31896) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Mask@@43) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_13973_13974 f_4@@58))) (not (IsWandField_13973_96043 f_4@@58))) (<= (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Mask@@43) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Mask@@43) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_24418) (o_2@@59 T@Ref) (f_4@@59 T@Field_30729_30734) ) (! (= (HasDirectPerm_30715_85397 Mask@@44 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Mask@@44) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30715_85397 Mask@@44 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_24418) (o_2@@60 T@Ref) (f_4@@60 T@Field_30715_24471) ) (! (= (HasDirectPerm_30715_24471 Mask@@45 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Mask@@45) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30715_24471 Mask@@45 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_24418) (o_2@@61 T@Ref) (f_4@@61 T@Field_30715_53) ) (! (= (HasDirectPerm_30715_53 Mask@@46 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Mask@@46) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30715_53 Mask@@46 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_24418) (o_2@@62 T@Ref) (f_4@@62 T@Field_30746_30747) ) (! (= (HasDirectPerm_30715_13974 Mask@@47 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Mask@@47) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30715_13974 Mask@@47 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_24418) (o_2@@63 T@Ref) (f_4@@63 T@Field_30715_2864) ) (! (= (HasDirectPerm_30715_3275 Mask@@48 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Mask@@48) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30715_3275 Mask@@48 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_24418) (o_2@@64 T@Ref) (f_4@@64 T@Field_29623_29628) ) (! (= (HasDirectPerm_29606_84263 Mask@@49 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Mask@@49) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29606_84263 Mask@@49 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_24418) (o_2@@65 T@Ref) (f_4@@65 T@Field_29606_24471) ) (! (= (HasDirectPerm_29606_24471 Mask@@50 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Mask@@50) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29606_24471 Mask@@50 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_24418) (o_2@@66 T@Ref) (f_4@@66 T@Field_29606_53) ) (! (= (HasDirectPerm_29606_53 Mask@@51 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Mask@@51) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29606_53 Mask@@51 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_24418) (o_2@@67 T@Ref) (f_4@@67 T@Field_29643_29644) ) (! (= (HasDirectPerm_29606_13974 Mask@@52 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Mask@@52) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29606_13974 Mask@@52 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_24418) (o_2@@68 T@Ref) (f_4@@68 T@Field_29606_2216) ) (! (= (HasDirectPerm_29606_3275 Mask@@53 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Mask@@53) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29606_3275 Mask@@53 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_24418) (o_2@@69 T@Ref) (f_4@@69 T@Field_28627_28632) ) (! (= (HasDirectPerm_28610_83129 Mask@@54 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Mask@@54) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28610_83129 Mask@@54 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_24418) (o_2@@70 T@Ref) (f_4@@70 T@Field_28610_24471) ) (! (= (HasDirectPerm_28610_24471 Mask@@55 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Mask@@55) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28610_24471 Mask@@55 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_24418) (o_2@@71 T@Ref) (f_4@@71 T@Field_28610_53) ) (! (= (HasDirectPerm_28610_53 Mask@@56 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Mask@@56) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28610_53 Mask@@56 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_24418) (o_2@@72 T@Ref) (f_4@@72 T@Field_28647_28648) ) (! (= (HasDirectPerm_28610_13974 Mask@@57 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Mask@@57) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28610_13974 Mask@@57 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_24418) (o_2@@73 T@Ref) (f_4@@73 T@Field_28610_1658) ) (! (= (HasDirectPerm_28610_3275 Mask@@58 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Mask@@58) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28610_3275 Mask@@58 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_24418) (o_2@@74 T@Ref) (f_4@@74 T@Field_27803_27808) ) (! (= (HasDirectPerm_27788_81995 Mask@@59 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Mask@@59) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27788_81995 Mask@@59 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_24418) (o_2@@75 T@Ref) (f_4@@75 T@Field_27788_24471) ) (! (= (HasDirectPerm_27788_24471 Mask@@60 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Mask@@60) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27788_24471 Mask@@60 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_24418) (o_2@@76 T@Ref) (f_4@@76 T@Field_27788_53) ) (! (= (HasDirectPerm_27788_53 Mask@@61 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Mask@@61) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27788_53 Mask@@61 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_24418) (o_2@@77 T@Ref) (f_4@@77 T@Field_27821_27822) ) (! (= (HasDirectPerm_27788_13974 Mask@@62 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Mask@@62) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27788_13974 Mask@@62 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_24418) (o_2@@78 T@Ref) (f_4@@78 T@Field_27788_1214) ) (! (= (HasDirectPerm_27788_3275 Mask@@63 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Mask@@63) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27788_3275 Mask@@63 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_24418) (o_2@@79 T@Ref) (f_4@@79 T@Field_33374_33379) ) (! (= (HasDirectPerm_13973_80861 Mask@@64 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Mask@@64) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13973_80861 Mask@@64 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_24418) (o_2@@80 T@Ref) (f_4@@80 T@Field_13973_24471) ) (! (= (HasDirectPerm_13973_24471 Mask@@65 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Mask@@65) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13973_24471 Mask@@65 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_24418) (o_2@@81 T@Ref) (f_4@@81 T@Field_13973_53) ) (! (= (HasDirectPerm_13973_53 Mask@@66 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Mask@@66) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13973_53 Mask@@66 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_24418) (o_2@@82 T@Ref) (f_4@@82 T@Field_31895_31896) ) (! (= (HasDirectPerm_13973_13974 Mask@@67 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Mask@@67) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13973_13974 Mask@@67 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_24418) (o_2@@83 T@Ref) (f_4@@83 T@Field_13973_3275) ) (! (= (HasDirectPerm_13973_3275 Mask@@68 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Mask@@68) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13973_3275 Mask@@68 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_24418) (o_2@@84 T@Ref) (f_4@@84 T@Field_13942_27808) ) (! (= (HasDirectPerm_13942_79720 Mask@@69 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Mask@@69) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13942_79720 Mask@@69 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_24418) (o_2@@85 T@Ref) (f_4@@85 T@Field_24470_24471) ) (! (= (HasDirectPerm_13942_24471 Mask@@70 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Mask@@70) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13942_24471 Mask@@70 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_24418) (o_2@@86 T@Ref) (f_4@@86 T@Field_24457_53) ) (! (= (HasDirectPerm_13942_53 Mask@@71 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Mask@@71) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13942_53 Mask@@71 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_24418) (o_2@@87 T@Ref) (f_4@@87 T@Field_13942_13974) ) (! (= (HasDirectPerm_13942_13974 Mask@@72 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Mask@@72) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13942_13974 Mask@@72 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_24418) (o_2@@88 T@Ref) (f_4@@88 T@Field_31502_3275) ) (! (= (HasDirectPerm_13942_3275 Mask@@73 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@@73) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13942_3275 Mask@@73 o_2@@88 f_4@@88))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 T@Ref) (arg3@@11 Int) (arg4@@11 T@Ref) (arg5@@11 T@Ref) (arg6@@11 Int) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 Int) (arg4_2 T@Ref) (arg5_2 T@Ref) (arg6_2 Int) ) (!  (=> (= (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@11 arg6@@11) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2)) (and (= arg1@@11 arg1_2) (and (= arg2@@11 arg2_2) (and (= arg3@@11 arg3_2) (and (= arg4@@11 arg4_2) (and (= arg5@@11 arg5_2) (= arg6@@11 arg6_2)))))))
 :qid |stdinbpl.211:15|
 :skolemid |28|
 :pattern ( (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@11 arg6@@11) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2))
)))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@12 T@Ref) (arg4@@12 Real) (arg5@@12 T@Ref) (arg6@@12 Real) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) (arg4_2@@0 Real) (arg5_2@@0 T@Ref) (arg6_2@@0 Real) ) (!  (=> (= (wand_3 arg1@@12 arg2@@12 arg3@@12 arg4@@12 arg5@@12 arg6@@12) (wand_3 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0)) (and (= arg1@@12 arg1_2@@0) (and (= arg2@@12 arg2_2@@0) (and (= arg3@@12 arg3_2@@0) (and (= arg4@@12 arg4_2@@0) (and (= arg5@@12 arg5_2@@0) (= arg6@@12 arg6_2@@0)))))))
 :qid |stdinbpl.307:15|
 :skolemid |49|
 :pattern ( (wand_3 arg1@@12 arg2@@12 arg3@@12 arg4@@12 arg5@@12 arg6@@12) (wand_3 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0))
)))
(assert (forall ((p@@5 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@5 f_6) (ite (> p@@5 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@5 f_6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_24397) (ExhaleHeap@@13 T@PolymorphicMapType_24397) (Mask@@74 T@PolymorphicMapType_24418) (o_41@@0 T@Ref) (f_27 T@Field_30729_30734) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@74) (=> (HasDirectPerm_30715_85397 Mask@@74 o_41@@0 f_27) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@17) o_41@@0 f_27) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@13) o_41@@0 f_27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@74) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@13) o_41@@0 f_27))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_24397) (ExhaleHeap@@14 T@PolymorphicMapType_24397) (Mask@@75 T@PolymorphicMapType_24418) (o_41@@1 T@Ref) (f_27@@0 T@Field_30715_24471) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@75) (=> (HasDirectPerm_30715_24471 Mask@@75 o_41@@1 f_27@@0) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@18) o_41@@1 f_27@@0) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@14) o_41@@1 f_27@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@75) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@14) o_41@@1 f_27@@0))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_24397) (ExhaleHeap@@15 T@PolymorphicMapType_24397) (Mask@@76 T@PolymorphicMapType_24418) (o_41@@2 T@Ref) (f_27@@1 T@Field_30715_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@76) (=> (HasDirectPerm_30715_53 Mask@@76 o_41@@2 f_27@@1) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@19) o_41@@2 f_27@@1) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@15) o_41@@2 f_27@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@76) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@15) o_41@@2 f_27@@1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_24397) (ExhaleHeap@@16 T@PolymorphicMapType_24397) (Mask@@77 T@PolymorphicMapType_24418) (o_41@@3 T@Ref) (f_27@@2 T@Field_30746_30747) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@77) (=> (HasDirectPerm_30715_13974 Mask@@77 o_41@@3 f_27@@2) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@20) o_41@@3 f_27@@2) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@16) o_41@@3 f_27@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@77) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@16) o_41@@3 f_27@@2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_24397) (ExhaleHeap@@17 T@PolymorphicMapType_24397) (Mask@@78 T@PolymorphicMapType_24418) (o_41@@4 T@Ref) (f_27@@3 T@Field_30715_2864) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@78) (=> (HasDirectPerm_30715_3275 Mask@@78 o_41@@4 f_27@@3) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@21) o_41@@4 f_27@@3) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@17) o_41@@4 f_27@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@78) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@17) o_41@@4 f_27@@3))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_24397) (ExhaleHeap@@18 T@PolymorphicMapType_24397) (Mask@@79 T@PolymorphicMapType_24418) (o_41@@5 T@Ref) (f_27@@4 T@Field_29623_29628) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@79) (=> (HasDirectPerm_29606_84263 Mask@@79 o_41@@5 f_27@@4) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@22) o_41@@5 f_27@@4) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@18) o_41@@5 f_27@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@79) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@18) o_41@@5 f_27@@4))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_24397) (ExhaleHeap@@19 T@PolymorphicMapType_24397) (Mask@@80 T@PolymorphicMapType_24418) (o_41@@6 T@Ref) (f_27@@5 T@Field_29606_24471) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@80) (=> (HasDirectPerm_29606_24471 Mask@@80 o_41@@6 f_27@@5) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@23) o_41@@6 f_27@@5) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@19) o_41@@6 f_27@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@80) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@19) o_41@@6 f_27@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_24397) (ExhaleHeap@@20 T@PolymorphicMapType_24397) (Mask@@81 T@PolymorphicMapType_24418) (o_41@@7 T@Ref) (f_27@@6 T@Field_29606_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@81) (=> (HasDirectPerm_29606_53 Mask@@81 o_41@@7 f_27@@6) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@24) o_41@@7 f_27@@6) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@20) o_41@@7 f_27@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@81) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@20) o_41@@7 f_27@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_24397) (ExhaleHeap@@21 T@PolymorphicMapType_24397) (Mask@@82 T@PolymorphicMapType_24418) (o_41@@8 T@Ref) (f_27@@7 T@Field_29643_29644) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@82) (=> (HasDirectPerm_29606_13974 Mask@@82 o_41@@8 f_27@@7) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@25) o_41@@8 f_27@@7) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@21) o_41@@8 f_27@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@82) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@21) o_41@@8 f_27@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_24397) (ExhaleHeap@@22 T@PolymorphicMapType_24397) (Mask@@83 T@PolymorphicMapType_24418) (o_41@@9 T@Ref) (f_27@@8 T@Field_29606_2216) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@83) (=> (HasDirectPerm_29606_3275 Mask@@83 o_41@@9 f_27@@8) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@26) o_41@@9 f_27@@8) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@22) o_41@@9 f_27@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@83) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@22) o_41@@9 f_27@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_24397) (ExhaleHeap@@23 T@PolymorphicMapType_24397) (Mask@@84 T@PolymorphicMapType_24418) (o_41@@10 T@Ref) (f_27@@9 T@Field_28627_28632) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@84) (=> (HasDirectPerm_28610_83129 Mask@@84 o_41@@10 f_27@@9) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@27) o_41@@10 f_27@@9) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@23) o_41@@10 f_27@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@84) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@23) o_41@@10 f_27@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_24397) (ExhaleHeap@@24 T@PolymorphicMapType_24397) (Mask@@85 T@PolymorphicMapType_24418) (o_41@@11 T@Ref) (f_27@@10 T@Field_28610_24471) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@85) (=> (HasDirectPerm_28610_24471 Mask@@85 o_41@@11 f_27@@10) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@28) o_41@@11 f_27@@10) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@24) o_41@@11 f_27@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@85) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@24) o_41@@11 f_27@@10))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_24397) (ExhaleHeap@@25 T@PolymorphicMapType_24397) (Mask@@86 T@PolymorphicMapType_24418) (o_41@@12 T@Ref) (f_27@@11 T@Field_28610_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@86) (=> (HasDirectPerm_28610_53 Mask@@86 o_41@@12 f_27@@11) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@29) o_41@@12 f_27@@11) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@25) o_41@@12 f_27@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@86) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@25) o_41@@12 f_27@@11))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_24397) (ExhaleHeap@@26 T@PolymorphicMapType_24397) (Mask@@87 T@PolymorphicMapType_24418) (o_41@@13 T@Ref) (f_27@@12 T@Field_28647_28648) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@87) (=> (HasDirectPerm_28610_13974 Mask@@87 o_41@@13 f_27@@12) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@30) o_41@@13 f_27@@12) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@26) o_41@@13 f_27@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@87) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@26) o_41@@13 f_27@@12))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_24397) (ExhaleHeap@@27 T@PolymorphicMapType_24397) (Mask@@88 T@PolymorphicMapType_24418) (o_41@@14 T@Ref) (f_27@@13 T@Field_28610_1658) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@88) (=> (HasDirectPerm_28610_3275 Mask@@88 o_41@@14 f_27@@13) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@31) o_41@@14 f_27@@13) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@27) o_41@@14 f_27@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@88) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@27) o_41@@14 f_27@@13))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_24397) (ExhaleHeap@@28 T@PolymorphicMapType_24397) (Mask@@89 T@PolymorphicMapType_24418) (o_41@@15 T@Ref) (f_27@@14 T@Field_27803_27808) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@28 Mask@@89) (=> (HasDirectPerm_27788_81995 Mask@@89 o_41@@15 f_27@@14) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@32) o_41@@15 f_27@@14) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@28) o_41@@15 f_27@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@28 Mask@@89) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@28) o_41@@15 f_27@@14))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_24397) (ExhaleHeap@@29 T@PolymorphicMapType_24397) (Mask@@90 T@PolymorphicMapType_24418) (o_41@@16 T@Ref) (f_27@@15 T@Field_27788_24471) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@29 Mask@@90) (=> (HasDirectPerm_27788_24471 Mask@@90 o_41@@16 f_27@@15) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@33) o_41@@16 f_27@@15) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@29) o_41@@16 f_27@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@29 Mask@@90) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@29) o_41@@16 f_27@@15))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_24397) (ExhaleHeap@@30 T@PolymorphicMapType_24397) (Mask@@91 T@PolymorphicMapType_24418) (o_41@@17 T@Ref) (f_27@@16 T@Field_27788_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@30 Mask@@91) (=> (HasDirectPerm_27788_53 Mask@@91 o_41@@17 f_27@@16) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@34) o_41@@17 f_27@@16) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@30) o_41@@17 f_27@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@30 Mask@@91) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@30) o_41@@17 f_27@@16))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_24397) (ExhaleHeap@@31 T@PolymorphicMapType_24397) (Mask@@92 T@PolymorphicMapType_24418) (o_41@@18 T@Ref) (f_27@@17 T@Field_27821_27822) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@31 Mask@@92) (=> (HasDirectPerm_27788_13974 Mask@@92 o_41@@18 f_27@@17) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@35) o_41@@18 f_27@@17) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@31) o_41@@18 f_27@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@31 Mask@@92) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@31) o_41@@18 f_27@@17))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_24397) (ExhaleHeap@@32 T@PolymorphicMapType_24397) (Mask@@93 T@PolymorphicMapType_24418) (o_41@@19 T@Ref) (f_27@@18 T@Field_27788_1214) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@32 Mask@@93) (=> (HasDirectPerm_27788_3275 Mask@@93 o_41@@19 f_27@@18) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@36) o_41@@19 f_27@@18) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@32) o_41@@19 f_27@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@32 Mask@@93) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@32) o_41@@19 f_27@@18))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_24397) (ExhaleHeap@@33 T@PolymorphicMapType_24397) (Mask@@94 T@PolymorphicMapType_24418) (o_41@@20 T@Ref) (f_27@@19 T@Field_33374_33379) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@33 Mask@@94) (=> (HasDirectPerm_13973_80861 Mask@@94 o_41@@20 f_27@@19) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@37) o_41@@20 f_27@@19) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@33) o_41@@20 f_27@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@33 Mask@@94) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@33) o_41@@20 f_27@@19))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_24397) (ExhaleHeap@@34 T@PolymorphicMapType_24397) (Mask@@95 T@PolymorphicMapType_24418) (o_41@@21 T@Ref) (f_27@@20 T@Field_13973_24471) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@34 Mask@@95) (=> (HasDirectPerm_13973_24471 Mask@@95 o_41@@21 f_27@@20) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@38) o_41@@21 f_27@@20) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@34) o_41@@21 f_27@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@34 Mask@@95) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@34) o_41@@21 f_27@@20))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_24397) (ExhaleHeap@@35 T@PolymorphicMapType_24397) (Mask@@96 T@PolymorphicMapType_24418) (o_41@@22 T@Ref) (f_27@@21 T@Field_13973_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@35 Mask@@96) (=> (HasDirectPerm_13973_53 Mask@@96 o_41@@22 f_27@@21) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@39) o_41@@22 f_27@@21) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@35) o_41@@22 f_27@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@35 Mask@@96) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@35) o_41@@22 f_27@@21))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_24397) (ExhaleHeap@@36 T@PolymorphicMapType_24397) (Mask@@97 T@PolymorphicMapType_24418) (o_41@@23 T@Ref) (f_27@@22 T@Field_31895_31896) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@36 Mask@@97) (=> (HasDirectPerm_13973_13974 Mask@@97 o_41@@23 f_27@@22) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@40) o_41@@23 f_27@@22) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@36) o_41@@23 f_27@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@36 Mask@@97) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@36) o_41@@23 f_27@@22))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_24397) (ExhaleHeap@@37 T@PolymorphicMapType_24397) (Mask@@98 T@PolymorphicMapType_24418) (o_41@@24 T@Ref) (f_27@@23 T@Field_13973_3275) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@37 Mask@@98) (=> (HasDirectPerm_13973_3275 Mask@@98 o_41@@24 f_27@@23) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@41) o_41@@24 f_27@@23) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@37) o_41@@24 f_27@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@37 Mask@@98) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@37) o_41@@24 f_27@@23))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_24397) (ExhaleHeap@@38 T@PolymorphicMapType_24397) (Mask@@99 T@PolymorphicMapType_24418) (o_41@@25 T@Ref) (f_27@@24 T@Field_13942_27808) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@38 Mask@@99) (=> (HasDirectPerm_13942_79720 Mask@@99 o_41@@25 f_27@@24) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@42) o_41@@25 f_27@@24) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@38) o_41@@25 f_27@@24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@38 Mask@@99) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@38) o_41@@25 f_27@@24))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_24397) (ExhaleHeap@@39 T@PolymorphicMapType_24397) (Mask@@100 T@PolymorphicMapType_24418) (o_41@@26 T@Ref) (f_27@@25 T@Field_24470_24471) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@39 Mask@@100) (=> (HasDirectPerm_13942_24471 Mask@@100 o_41@@26 f_27@@25) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@43) o_41@@26 f_27@@25) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@39) o_41@@26 f_27@@25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@39 Mask@@100) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@39) o_41@@26 f_27@@25))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_24397) (ExhaleHeap@@40 T@PolymorphicMapType_24397) (Mask@@101 T@PolymorphicMapType_24418) (o_41@@27 T@Ref) (f_27@@26 T@Field_24457_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@40 Mask@@101) (=> (HasDirectPerm_13942_53 Mask@@101 o_41@@27 f_27@@26) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@44) o_41@@27 f_27@@26) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@40) o_41@@27 f_27@@26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@40 Mask@@101) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@40) o_41@@27 f_27@@26))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_24397) (ExhaleHeap@@41 T@PolymorphicMapType_24397) (Mask@@102 T@PolymorphicMapType_24418) (o_41@@28 T@Ref) (f_27@@27 T@Field_13942_13974) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@41 Mask@@102) (=> (HasDirectPerm_13942_13974 Mask@@102 o_41@@28 f_27@@27) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@45) o_41@@28 f_27@@27) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@41) o_41@@28 f_27@@27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@41 Mask@@102) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@41) o_41@@28 f_27@@27))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_24397) (ExhaleHeap@@42 T@PolymorphicMapType_24397) (Mask@@103 T@PolymorphicMapType_24418) (o_41@@29 T@Ref) (f_27@@28 T@Field_31502_3275) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@42 Mask@@103) (=> (HasDirectPerm_13942_3275 Mask@@103 o_41@@29 f_27@@28) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@46) o_41@@29 f_27@@28) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@42) o_41@@29 f_27@@28))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@42 Mask@@103) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@42) o_41@@29 f_27@@28))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_30729_30734) ) (! (= (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_30715_24471) ) (! (= (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_30715_53) ) (! (= (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_30715_2864) ) (! (= (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_30746_30747) ) (! (= (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_29623_29628) ) (! (= (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_29606_24471) ) (! (= (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_29606_53) ) (! (= (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_29606_2216) ) (! (= (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_29643_29644) ) (! (= (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((o_2@@99 T@Ref) (f_4@@99 T@Field_28627_28632) ) (! (= (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ZeroMask) o_2@@99 f_4@@99) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ZeroMask) o_2@@99 f_4@@99))
)))
(assert (forall ((o_2@@100 T@Ref) (f_4@@100 T@Field_28610_24471) ) (! (= (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ZeroMask) o_2@@100 f_4@@100) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ZeroMask) o_2@@100 f_4@@100))
)))
(assert (forall ((o_2@@101 T@Ref) (f_4@@101 T@Field_28610_53) ) (! (= (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ZeroMask) o_2@@101 f_4@@101) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ZeroMask) o_2@@101 f_4@@101))
)))
(assert (forall ((o_2@@102 T@Ref) (f_4@@102 T@Field_28610_1658) ) (! (= (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ZeroMask) o_2@@102 f_4@@102) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ZeroMask) o_2@@102 f_4@@102))
)))
(assert (forall ((o_2@@103 T@Ref) (f_4@@103 T@Field_28647_28648) ) (! (= (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ZeroMask) o_2@@103 f_4@@103) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ZeroMask) o_2@@103 f_4@@103))
)))
(assert (forall ((o_2@@104 T@Ref) (f_4@@104 T@Field_27803_27808) ) (! (= (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ZeroMask) o_2@@104 f_4@@104) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ZeroMask) o_2@@104 f_4@@104))
)))
(assert (forall ((o_2@@105 T@Ref) (f_4@@105 T@Field_27788_24471) ) (! (= (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ZeroMask) o_2@@105 f_4@@105) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ZeroMask) o_2@@105 f_4@@105))
)))
(assert (forall ((o_2@@106 T@Ref) (f_4@@106 T@Field_27788_53) ) (! (= (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ZeroMask) o_2@@106 f_4@@106) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ZeroMask) o_2@@106 f_4@@106))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_27788_1214) ) (! (= (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_27821_27822) ) (! (= (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_13942_27808) ) (! (= (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_24470_24471) ) (! (= (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_24457_53) ) (! (= (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_31502_3275) ) (! (= (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_13942_13974) ) (! (= (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_33374_33379) ) (! (= (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_13973_24471) ) (! (= (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_13973_53) ) (! (= (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_13973_3275) ) (! (= (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_31895_31896) ) (! (= (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((arg1@@13 T@Ref) (arg2@@13 T@Ref) (arg3@@13 Int) (arg4@@13 T@Ref) (arg5@@13 T@Ref) (arg6@@13 Int) ) (! (= (getPredWandId_13650_1214 (wand arg1@@13 arg2@@13 arg3@@13 arg4@@13 arg5@@13 arg6@@13)) 1)
 :qid |stdinbpl.207:15|
 :skolemid |27|
 :pattern ( (wand arg1@@13 arg2@@13 arg3@@13 arg4@@13 arg5@@13 arg6@@13))
)))
(assert (forall ((arg1@@14 T@Ref) (arg2@@14 Real) (arg3@@14 T@Ref) (arg4@@14 Real) (arg5@@14 T@Ref) (arg6@@14 Real) ) (! (= (getPredWandId_13874_2864 (wand_3 arg1@@14 arg2@@14 arg3@@14 arg4@@14 arg5@@14 arg6@@14)) 4)
 :qid |stdinbpl.303:15|
 :skolemid |48|
 :pattern ( (wand_3 arg1@@14 arg2@@14 arg3@@14 arg4@@14 arg5@@14 arg6@@14))
)))
(assert (forall ((arg1@@15 T@Ref) (arg2@@15 T@Ref) (arg3@@15 Int) (arg4@@15 T@Ref) (arg5@@15 Real) (arg6@@15 T@Ref) (arg7@@9 Real) (arg8@@9 T@Ref) (arg9@@4 T@Ref) (arg10@@4 Int) (arg1_2@@1 T@Ref) (arg2_2@@1 T@Ref) (arg3_2@@1 Int) (arg4_2@@1 T@Ref) (arg5_2@@1 Real) (arg6_2@@1 T@Ref) (arg7_2 Real) (arg8_2 T@Ref) (arg9_2 T@Ref) (arg10_2 Int) ) (!  (=> (= (wand_2 arg1@@15 arg2@@15 arg3@@15 arg4@@15 arg5@@15 arg6@@15 arg7@@9 arg8@@9 arg9@@4 arg10@@4) (wand_2 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@1 arg5_2@@1 arg6_2@@1 arg7_2 arg8_2 arg9_2 arg10_2)) (and (= arg1@@15 arg1_2@@1) (and (= arg2@@15 arg2_2@@1) (and (= arg3@@15 arg3_2@@1) (and (= arg4@@15 arg4_2@@1) (and (= arg5@@15 arg5_2@@1) (and (= arg6@@15 arg6_2@@1) (and (= arg7@@9 arg7_2) (and (= arg8@@9 arg8_2) (and (= arg9@@4 arg9_2) (= arg10@@4 arg10_2)))))))))))
 :qid |stdinbpl.275:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@15 arg2@@15 arg3@@15 arg4@@15 arg5@@15 arg6@@15 arg7@@9 arg8@@9 arg9@@4 arg10@@4) (wand_2 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@1 arg5_2@@1 arg6_2@@1 arg7_2 arg8_2 arg9_2 arg10_2))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_24397) (ExhaleHeap@@43 T@PolymorphicMapType_24397) (Mask@@104 T@PolymorphicMapType_24418) (pm_f_28@@11 T@Field_30746_30747) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@43 Mask@@104) (=> (and (HasDirectPerm_30715_13974 Mask@@104 null pm_f_28@@11) (IsPredicateField_13891_13892 pm_f_28@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27@@29 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28 f_27@@29) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@47) o2_28 f_27@@29) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28 f_27@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28 f_27@@29))
)) (forall ((o2_28@@0 T@Ref) (f_27@@30 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@0 f_27@@30) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@47) o2_28@@0 f_27@@30) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@0 f_27@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@0 f_27@@30))
))) (forall ((o2_28@@1 T@Ref) (f_27@@31 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@1 f_27@@31) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@47) o2_28@@1 f_27@@31) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@1 f_27@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@1 f_27@@31))
))) (forall ((o2_28@@2 T@Ref) (f_27@@32 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@2 f_27@@32) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@47) o2_28@@2 f_27@@32) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@2 f_27@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@2 f_27@@32))
))) (forall ((o2_28@@3 T@Ref) (f_27@@33 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@3 f_27@@33) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@47) o2_28@@3 f_27@@33) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@3 f_27@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@3 f_27@@33))
))) (forall ((o2_28@@4 T@Ref) (f_27@@34 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@4 f_27@@34) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@47) o2_28@@4 f_27@@34) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@4 f_27@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@4 f_27@@34))
))) (forall ((o2_28@@5 T@Ref) (f_27@@35 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@5 f_27@@35) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@47) o2_28@@5 f_27@@35) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@5 f_27@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@5 f_27@@35))
))) (forall ((o2_28@@6 T@Ref) (f_27@@36 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@6 f_27@@36) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@47) o2_28@@6 f_27@@36) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@6 f_27@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@6 f_27@@36))
))) (forall ((o2_28@@7 T@Ref) (f_27@@37 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@7 f_27@@37) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@47) o2_28@@7 f_27@@37) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@7 f_27@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@7 f_27@@37))
))) (forall ((o2_28@@8 T@Ref) (f_27@@38 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@8 f_27@@38) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@47) o2_28@@8 f_27@@38) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@8 f_27@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@8 f_27@@38))
))) (forall ((o2_28@@9 T@Ref) (f_27@@39 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@9 f_27@@39) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@47) o2_28@@9 f_27@@39) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@9 f_27@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@9 f_27@@39))
))) (forall ((o2_28@@10 T@Ref) (f_27@@40 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@10 f_27@@40) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@47) o2_28@@10 f_27@@40) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@10 f_27@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@10 f_27@@40))
))) (forall ((o2_28@@11 T@Ref) (f_27@@41 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@11 f_27@@41) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@47) o2_28@@11 f_27@@41) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@11 f_27@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@11 f_27@@41))
))) (forall ((o2_28@@12 T@Ref) (f_27@@42 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@12 f_27@@42) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@47) o2_28@@12 f_27@@42) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@12 f_27@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@12 f_27@@42))
))) (forall ((o2_28@@13 T@Ref) (f_27@@43 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@13 f_27@@43) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@47) o2_28@@13 f_27@@43) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@13 f_27@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@13 f_27@@43))
))) (forall ((o2_28@@14 T@Ref) (f_27@@44 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@14 f_27@@44) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@47) o2_28@@14 f_27@@44) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@14 f_27@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@14 f_27@@44))
))) (forall ((o2_28@@15 T@Ref) (f_27@@45 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@15 f_27@@45) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@47) o2_28@@15 f_27@@45) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@15 f_27@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@15 f_27@@45))
))) (forall ((o2_28@@16 T@Ref) (f_27@@46 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@16 f_27@@46) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@47) o2_28@@16 f_27@@46) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@16 f_27@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@16 f_27@@46))
))) (forall ((o2_28@@17 T@Ref) (f_27@@47 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@17 f_27@@47) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@47) o2_28@@17 f_27@@47) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@17 f_27@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@17 f_27@@47))
))) (forall ((o2_28@@18 T@Ref) (f_27@@48 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@18 f_27@@48) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@47) o2_28@@18 f_27@@48) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@18 f_27@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@18 f_27@@48))
))) (forall ((o2_28@@19 T@Ref) (f_27@@49 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@19 f_27@@49) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@47) o2_28@@19 f_27@@49) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@19 f_27@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@19 f_27@@49))
))) (forall ((o2_28@@20 T@Ref) (f_27@@50 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@20 f_27@@50) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@47) o2_28@@20 f_27@@50) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@20 f_27@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@20 f_27@@50))
))) (forall ((o2_28@@21 T@Ref) (f_27@@51 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@21 f_27@@51) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@47) o2_28@@21 f_27@@51) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@21 f_27@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@21 f_27@@51))
))) (forall ((o2_28@@22 T@Ref) (f_27@@52 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@22 f_27@@52) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) o2_28@@22 f_27@@52) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@22 f_27@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@22 f_27@@52))
))) (forall ((o2_28@@23 T@Ref) (f_27@@53 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@23 f_27@@53) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@47) o2_28@@23 f_27@@53) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@23 f_27@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@23 f_27@@53))
))) (forall ((o2_28@@24 T@Ref) (f_27@@54 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@24 f_27@@54) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@47) o2_28@@24 f_27@@54) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@24 f_27@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@24 f_27@@54))
))) (forall ((o2_28@@25 T@Ref) (f_27@@55 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@25 f_27@@55) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@47) o2_28@@25 f_27@@55) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@25 f_27@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@25 f_27@@55))
))) (forall ((o2_28@@26 T@Ref) (f_27@@56 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@26 f_27@@56) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@47) o2_28@@26 f_27@@56) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@26 f_27@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@26 f_27@@56))
))) (forall ((o2_28@@27 T@Ref) (f_27@@57 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@27 f_27@@57) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@47) o2_28@@27 f_27@@57) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@27 f_27@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@27 f_27@@57))
))) (forall ((o2_28@@28 T@Ref) (f_27@@58 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@47) null (PredicateMaskField_30715 pm_f_28@@11))) o2_28@@28 f_27@@58) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@47) o2_28@@28 f_27@@58) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@28 f_27@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@43) o2_28@@28 f_27@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@43 Mask@@104) (IsPredicateField_13891_13892 pm_f_28@@11))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_24397) (ExhaleHeap@@44 T@PolymorphicMapType_24397) (Mask@@105 T@PolymorphicMapType_24418) (pm_f_28@@12 T@Field_29643_29644) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@44 Mask@@105) (=> (and (HasDirectPerm_29606_13974 Mask@@105 null pm_f_28@@12) (IsPredicateField_13801_13802 pm_f_28@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@29 T@Ref) (f_27@@59 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@29 f_27@@59) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@48) o2_28@@29 f_27@@59) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@29 f_27@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@29 f_27@@59))
)) (forall ((o2_28@@30 T@Ref) (f_27@@60 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@30 f_27@@60) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@48) o2_28@@30 f_27@@60) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@30 f_27@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@30 f_27@@60))
))) (forall ((o2_28@@31 T@Ref) (f_27@@61 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@31 f_27@@61) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@48) o2_28@@31 f_27@@61) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@31 f_27@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@31 f_27@@61))
))) (forall ((o2_28@@32 T@Ref) (f_27@@62 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@32 f_27@@62) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@48) o2_28@@32 f_27@@62) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@32 f_27@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@32 f_27@@62))
))) (forall ((o2_28@@33 T@Ref) (f_27@@63 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@33 f_27@@63) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@48) o2_28@@33 f_27@@63) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@33 f_27@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@33 f_27@@63))
))) (forall ((o2_28@@34 T@Ref) (f_27@@64 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@34 f_27@@64) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@48) o2_28@@34 f_27@@64) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@34 f_27@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@34 f_27@@64))
))) (forall ((o2_28@@35 T@Ref) (f_27@@65 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@35 f_27@@65) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@48) o2_28@@35 f_27@@65) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@35 f_27@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@35 f_27@@65))
))) (forall ((o2_28@@36 T@Ref) (f_27@@66 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@36 f_27@@66) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@48) o2_28@@36 f_27@@66) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@36 f_27@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@36 f_27@@66))
))) (forall ((o2_28@@37 T@Ref) (f_27@@67 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@37 f_27@@67) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@48) o2_28@@37 f_27@@67) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@37 f_27@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@37 f_27@@67))
))) (forall ((o2_28@@38 T@Ref) (f_27@@68 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@38 f_27@@68) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@48) o2_28@@38 f_27@@68) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@38 f_27@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@38 f_27@@68))
))) (forall ((o2_28@@39 T@Ref) (f_27@@69 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@39 f_27@@69) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@48) o2_28@@39 f_27@@69) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@39 f_27@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@39 f_27@@69))
))) (forall ((o2_28@@40 T@Ref) (f_27@@70 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@40 f_27@@70) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@48) o2_28@@40 f_27@@70) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@40 f_27@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@40 f_27@@70))
))) (forall ((o2_28@@41 T@Ref) (f_27@@71 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@41 f_27@@71) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@48) o2_28@@41 f_27@@71) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@41 f_27@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@41 f_27@@71))
))) (forall ((o2_28@@42 T@Ref) (f_27@@72 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@42 f_27@@72) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@48) o2_28@@42 f_27@@72) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@42 f_27@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@42 f_27@@72))
))) (forall ((o2_28@@43 T@Ref) (f_27@@73 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@43 f_27@@73) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@48) o2_28@@43 f_27@@73) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@43 f_27@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@43 f_27@@73))
))) (forall ((o2_28@@44 T@Ref) (f_27@@74 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@44 f_27@@74) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@48) o2_28@@44 f_27@@74) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@44 f_27@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@44 f_27@@74))
))) (forall ((o2_28@@45 T@Ref) (f_27@@75 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@45 f_27@@75) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@48) o2_28@@45 f_27@@75) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@45 f_27@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@45 f_27@@75))
))) (forall ((o2_28@@46 T@Ref) (f_27@@76 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@46 f_27@@76) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@48) o2_28@@46 f_27@@76) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@46 f_27@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@46 f_27@@76))
))) (forall ((o2_28@@47 T@Ref) (f_27@@77 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@47 f_27@@77) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) o2_28@@47 f_27@@77) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@47 f_27@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@47 f_27@@77))
))) (forall ((o2_28@@48 T@Ref) (f_27@@78 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@48 f_27@@78) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@48) o2_28@@48 f_27@@78) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@48 f_27@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@48 f_27@@78))
))) (forall ((o2_28@@49 T@Ref) (f_27@@79 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@49 f_27@@79) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@48) o2_28@@49 f_27@@79) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@49 f_27@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@49 f_27@@79))
))) (forall ((o2_28@@50 T@Ref) (f_27@@80 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@50 f_27@@80) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@48) o2_28@@50 f_27@@80) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@50 f_27@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@50 f_27@@80))
))) (forall ((o2_28@@51 T@Ref) (f_27@@81 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@51 f_27@@81) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@48) o2_28@@51 f_27@@81) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@51 f_27@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@51 f_27@@81))
))) (forall ((o2_28@@52 T@Ref) (f_27@@82 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@52 f_27@@82) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@48) o2_28@@52 f_27@@82) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@52 f_27@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@52 f_27@@82))
))) (forall ((o2_28@@53 T@Ref) (f_27@@83 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@53 f_27@@83) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@48) o2_28@@53 f_27@@83) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@53 f_27@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@53 f_27@@83))
))) (forall ((o2_28@@54 T@Ref) (f_27@@84 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@54 f_27@@84) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@48) o2_28@@54 f_27@@84) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@54 f_27@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@54 f_27@@84))
))) (forall ((o2_28@@55 T@Ref) (f_27@@85 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@55 f_27@@85) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@48) o2_28@@55 f_27@@85) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@55 f_27@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@55 f_27@@85))
))) (forall ((o2_28@@56 T@Ref) (f_27@@86 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@56 f_27@@86) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@48) o2_28@@56 f_27@@86) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@56 f_27@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@56 f_27@@86))
))) (forall ((o2_28@@57 T@Ref) (f_27@@87 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@57 f_27@@87) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@48) o2_28@@57 f_27@@87) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@57 f_27@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@57 f_27@@87))
))) (forall ((o2_28@@58 T@Ref) (f_27@@88 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@48) null (PredicateMaskField_29606 pm_f_28@@12))) o2_28@@58 f_27@@88) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@48) o2_28@@58 f_27@@88) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@58 f_27@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@44) o2_28@@58 f_27@@88))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@44 Mask@@105) (IsPredicateField_13801_13802 pm_f_28@@12))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_24397) (ExhaleHeap@@45 T@PolymorphicMapType_24397) (Mask@@106 T@PolymorphicMapType_24418) (pm_f_28@@13 T@Field_28647_28648) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@45 Mask@@106) (=> (and (HasDirectPerm_28610_13974 Mask@@106 null pm_f_28@@13) (IsPredicateField_13721_13722 pm_f_28@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@59 T@Ref) (f_27@@89 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@59 f_27@@89) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@49) o2_28@@59 f_27@@89) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@59 f_27@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@59 f_27@@89))
)) (forall ((o2_28@@60 T@Ref) (f_27@@90 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@60 f_27@@90) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@49) o2_28@@60 f_27@@90) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@60 f_27@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@60 f_27@@90))
))) (forall ((o2_28@@61 T@Ref) (f_27@@91 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@61 f_27@@91) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@49) o2_28@@61 f_27@@91) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@61 f_27@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@61 f_27@@91))
))) (forall ((o2_28@@62 T@Ref) (f_27@@92 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@62 f_27@@92) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@49) o2_28@@62 f_27@@92) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@62 f_27@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@62 f_27@@92))
))) (forall ((o2_28@@63 T@Ref) (f_27@@93 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@63 f_27@@93) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@49) o2_28@@63 f_27@@93) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@63 f_27@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@63 f_27@@93))
))) (forall ((o2_28@@64 T@Ref) (f_27@@94 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@64 f_27@@94) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@49) o2_28@@64 f_27@@94) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@64 f_27@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@64 f_27@@94))
))) (forall ((o2_28@@65 T@Ref) (f_27@@95 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@65 f_27@@95) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@49) o2_28@@65 f_27@@95) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@65 f_27@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@65 f_27@@95))
))) (forall ((o2_28@@66 T@Ref) (f_27@@96 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@66 f_27@@96) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@49) o2_28@@66 f_27@@96) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@66 f_27@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@66 f_27@@96))
))) (forall ((o2_28@@67 T@Ref) (f_27@@97 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@67 f_27@@97) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@49) o2_28@@67 f_27@@97) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@67 f_27@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@67 f_27@@97))
))) (forall ((o2_28@@68 T@Ref) (f_27@@98 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@68 f_27@@98) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@49) o2_28@@68 f_27@@98) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@68 f_27@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@68 f_27@@98))
))) (forall ((o2_28@@69 T@Ref) (f_27@@99 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@69 f_27@@99) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@49) o2_28@@69 f_27@@99) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@69 f_27@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@69 f_27@@99))
))) (forall ((o2_28@@70 T@Ref) (f_27@@100 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@70 f_27@@100) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@49) o2_28@@70 f_27@@100) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@70 f_27@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@70 f_27@@100))
))) (forall ((o2_28@@71 T@Ref) (f_27@@101 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@71 f_27@@101) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@49) o2_28@@71 f_27@@101) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@71 f_27@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@71 f_27@@101))
))) (forall ((o2_28@@72 T@Ref) (f_27@@102 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@72 f_27@@102) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) o2_28@@72 f_27@@102) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@72 f_27@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@72 f_27@@102))
))) (forall ((o2_28@@73 T@Ref) (f_27@@103 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@73 f_27@@103) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@49) o2_28@@73 f_27@@103) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@73 f_27@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@73 f_27@@103))
))) (forall ((o2_28@@74 T@Ref) (f_27@@104 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@74 f_27@@104) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@49) o2_28@@74 f_27@@104) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@74 f_27@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@74 f_27@@104))
))) (forall ((o2_28@@75 T@Ref) (f_27@@105 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@75 f_27@@105) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@49) o2_28@@75 f_27@@105) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@75 f_27@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@75 f_27@@105))
))) (forall ((o2_28@@76 T@Ref) (f_27@@106 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@76 f_27@@106) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@49) o2_28@@76 f_27@@106) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@76 f_27@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@76 f_27@@106))
))) (forall ((o2_28@@77 T@Ref) (f_27@@107 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@77 f_27@@107) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@49) o2_28@@77 f_27@@107) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@77 f_27@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@77 f_27@@107))
))) (forall ((o2_28@@78 T@Ref) (f_27@@108 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@78 f_27@@108) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@49) o2_28@@78 f_27@@108) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@78 f_27@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@78 f_27@@108))
))) (forall ((o2_28@@79 T@Ref) (f_27@@109 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@79 f_27@@109) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@49) o2_28@@79 f_27@@109) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@79 f_27@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@79 f_27@@109))
))) (forall ((o2_28@@80 T@Ref) (f_27@@110 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@80 f_27@@110) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@49) o2_28@@80 f_27@@110) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@80 f_27@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@80 f_27@@110))
))) (forall ((o2_28@@81 T@Ref) (f_27@@111 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@81 f_27@@111) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@49) o2_28@@81 f_27@@111) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@81 f_27@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@81 f_27@@111))
))) (forall ((o2_28@@82 T@Ref) (f_27@@112 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@82 f_27@@112) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@49) o2_28@@82 f_27@@112) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@82 f_27@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@82 f_27@@112))
))) (forall ((o2_28@@83 T@Ref) (f_27@@113 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@83 f_27@@113) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@49) o2_28@@83 f_27@@113) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@83 f_27@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@83 f_27@@113))
))) (forall ((o2_28@@84 T@Ref) (f_27@@114 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@84 f_27@@114) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@49) o2_28@@84 f_27@@114) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@84 f_27@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@84 f_27@@114))
))) (forall ((o2_28@@85 T@Ref) (f_27@@115 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@85 f_27@@115) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@49) o2_28@@85 f_27@@115) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@85 f_27@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@85 f_27@@115))
))) (forall ((o2_28@@86 T@Ref) (f_27@@116 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@86 f_27@@116) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@49) o2_28@@86 f_27@@116) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@86 f_27@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@86 f_27@@116))
))) (forall ((o2_28@@87 T@Ref) (f_27@@117 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@87 f_27@@117) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@49) o2_28@@87 f_27@@117) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@87 f_27@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@87 f_27@@117))
))) (forall ((o2_28@@88 T@Ref) (f_27@@118 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@49) null (PredicateMaskField_28610 pm_f_28@@13))) o2_28@@88 f_27@@118) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@49) o2_28@@88 f_27@@118) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@88 f_27@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@45) o2_28@@88 f_27@@118))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@45 Mask@@106) (IsPredicateField_13721_13722 pm_f_28@@13))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_24397) (ExhaleHeap@@46 T@PolymorphicMapType_24397) (Mask@@107 T@PolymorphicMapType_24418) (pm_f_28@@14 T@Field_27821_27822) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@46 Mask@@107) (=> (and (HasDirectPerm_27788_13974 Mask@@107 null pm_f_28@@14) (IsPredicateField_13663_13664 pm_f_28@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@89 T@Ref) (f_27@@119 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@89 f_27@@119) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@50) o2_28@@89 f_27@@119) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@89 f_27@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@89 f_27@@119))
)) (forall ((o2_28@@90 T@Ref) (f_27@@120 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@90 f_27@@120) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@50) o2_28@@90 f_27@@120) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@90 f_27@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@90 f_27@@120))
))) (forall ((o2_28@@91 T@Ref) (f_27@@121 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@91 f_27@@121) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@50) o2_28@@91 f_27@@121) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@91 f_27@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@91 f_27@@121))
))) (forall ((o2_28@@92 T@Ref) (f_27@@122 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@92 f_27@@122) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@50) o2_28@@92 f_27@@122) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@92 f_27@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@92 f_27@@122))
))) (forall ((o2_28@@93 T@Ref) (f_27@@123 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@93 f_27@@123) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@50) o2_28@@93 f_27@@123) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@93 f_27@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@93 f_27@@123))
))) (forall ((o2_28@@94 T@Ref) (f_27@@124 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@94 f_27@@124) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@50) o2_28@@94 f_27@@124) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@94 f_27@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@94 f_27@@124))
))) (forall ((o2_28@@95 T@Ref) (f_27@@125 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@95 f_27@@125) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@50) o2_28@@95 f_27@@125) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@95 f_27@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@95 f_27@@125))
))) (forall ((o2_28@@96 T@Ref) (f_27@@126 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@96 f_27@@126) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@50) o2_28@@96 f_27@@126) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@96 f_27@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@96 f_27@@126))
))) (forall ((o2_28@@97 T@Ref) (f_27@@127 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@97 f_27@@127) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) o2_28@@97 f_27@@127) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@97 f_27@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@97 f_27@@127))
))) (forall ((o2_28@@98 T@Ref) (f_27@@128 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@98 f_27@@128) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@50) o2_28@@98 f_27@@128) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@98 f_27@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@98 f_27@@128))
))) (forall ((o2_28@@99 T@Ref) (f_27@@129 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@99 f_27@@129) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@50) o2_28@@99 f_27@@129) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@99 f_27@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@99 f_27@@129))
))) (forall ((o2_28@@100 T@Ref) (f_27@@130 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@100 f_27@@130) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@50) o2_28@@100 f_27@@130) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@100 f_27@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@100 f_27@@130))
))) (forall ((o2_28@@101 T@Ref) (f_27@@131 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@101 f_27@@131) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@50) o2_28@@101 f_27@@131) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@101 f_27@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@101 f_27@@131))
))) (forall ((o2_28@@102 T@Ref) (f_27@@132 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@102 f_27@@132) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@50) o2_28@@102 f_27@@132) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@102 f_27@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@102 f_27@@132))
))) (forall ((o2_28@@103 T@Ref) (f_27@@133 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@103 f_27@@133) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@50) o2_28@@103 f_27@@133) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@103 f_27@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@103 f_27@@133))
))) (forall ((o2_28@@104 T@Ref) (f_27@@134 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@104 f_27@@134) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@50) o2_28@@104 f_27@@134) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@104 f_27@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@104 f_27@@134))
))) (forall ((o2_28@@105 T@Ref) (f_27@@135 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@105 f_27@@135) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@50) o2_28@@105 f_27@@135) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@105 f_27@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@105 f_27@@135))
))) (forall ((o2_28@@106 T@Ref) (f_27@@136 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@106 f_27@@136) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@50) o2_28@@106 f_27@@136) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@106 f_27@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@106 f_27@@136))
))) (forall ((o2_28@@107 T@Ref) (f_27@@137 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@107 f_27@@137) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@50) o2_28@@107 f_27@@137) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@107 f_27@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@107 f_27@@137))
))) (forall ((o2_28@@108 T@Ref) (f_27@@138 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@108 f_27@@138) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@50) o2_28@@108 f_27@@138) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@108 f_27@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@108 f_27@@138))
))) (forall ((o2_28@@109 T@Ref) (f_27@@139 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@109 f_27@@139) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@50) o2_28@@109 f_27@@139) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@109 f_27@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@109 f_27@@139))
))) (forall ((o2_28@@110 T@Ref) (f_27@@140 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@110 f_27@@140) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@50) o2_28@@110 f_27@@140) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@110 f_27@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@110 f_27@@140))
))) (forall ((o2_28@@111 T@Ref) (f_27@@141 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@111 f_27@@141) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@50) o2_28@@111 f_27@@141) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@111 f_27@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@111 f_27@@141))
))) (forall ((o2_28@@112 T@Ref) (f_27@@142 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@112 f_27@@142) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@50) o2_28@@112 f_27@@142) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@112 f_27@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@112 f_27@@142))
))) (forall ((o2_28@@113 T@Ref) (f_27@@143 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@113 f_27@@143) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@50) o2_28@@113 f_27@@143) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@113 f_27@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@113 f_27@@143))
))) (forall ((o2_28@@114 T@Ref) (f_27@@144 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@114 f_27@@144) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@50) o2_28@@114 f_27@@144) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@114 f_27@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@114 f_27@@144))
))) (forall ((o2_28@@115 T@Ref) (f_27@@145 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@115 f_27@@145) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@50) o2_28@@115 f_27@@145) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@115 f_27@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@115 f_27@@145))
))) (forall ((o2_28@@116 T@Ref) (f_27@@146 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@116 f_27@@146) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@50) o2_28@@116 f_27@@146) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@116 f_27@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@116 f_27@@146))
))) (forall ((o2_28@@117 T@Ref) (f_27@@147 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@117 f_27@@147) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@50) o2_28@@117 f_27@@147) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@117 f_27@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@117 f_27@@147))
))) (forall ((o2_28@@118 T@Ref) (f_27@@148 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@50) null (PredicateMaskField_27788 pm_f_28@@14))) o2_28@@118 f_27@@148) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@50) o2_28@@118 f_27@@148) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@118 f_27@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@46) o2_28@@118 f_27@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@46 Mask@@107) (IsPredicateField_13663_13664 pm_f_28@@14))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_24397) (ExhaleHeap@@47 T@PolymorphicMapType_24397) (Mask@@108 T@PolymorphicMapType_24418) (pm_f_28@@15 T@Field_31895_31896) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@47 Mask@@108) (=> (and (HasDirectPerm_13973_13974 Mask@@108 null pm_f_28@@15) (IsPredicateField_13973_13974 pm_f_28@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@119 T@Ref) (f_27@@149 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@119 f_27@@149) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@51) o2_28@@119 f_27@@149) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@119 f_27@@149)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@119 f_27@@149))
)) (forall ((o2_28@@120 T@Ref) (f_27@@150 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@120 f_27@@150) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@51) o2_28@@120 f_27@@150) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@120 f_27@@150)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@120 f_27@@150))
))) (forall ((o2_28@@121 T@Ref) (f_27@@151 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@121 f_27@@151) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@51) o2_28@@121 f_27@@151) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@121 f_27@@151)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@121 f_27@@151))
))) (forall ((o2_28@@122 T@Ref) (f_27@@152 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@122 f_27@@152) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@51) o2_28@@122 f_27@@152) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@122 f_27@@152)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@122 f_27@@152))
))) (forall ((o2_28@@123 T@Ref) (f_27@@153 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@123 f_27@@153) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@51) o2_28@@123 f_27@@153) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@123 f_27@@153)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@123 f_27@@153))
))) (forall ((o2_28@@124 T@Ref) (f_27@@154 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@124 f_27@@154) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@51) o2_28@@124 f_27@@154) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@124 f_27@@154)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@124 f_27@@154))
))) (forall ((o2_28@@125 T@Ref) (f_27@@155 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@125 f_27@@155) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@51) o2_28@@125 f_27@@155) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@125 f_27@@155)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@125 f_27@@155))
))) (forall ((o2_28@@126 T@Ref) (f_27@@156 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@126 f_27@@156) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@51) o2_28@@126 f_27@@156) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@126 f_27@@156)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@126 f_27@@156))
))) (forall ((o2_28@@127 T@Ref) (f_27@@157 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@127 f_27@@157) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@51) o2_28@@127 f_27@@157) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@127 f_27@@157)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@127 f_27@@157))
))) (forall ((o2_28@@128 T@Ref) (f_27@@158 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@128 f_27@@158) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@51) o2_28@@128 f_27@@158) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@128 f_27@@158)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@128 f_27@@158))
))) (forall ((o2_28@@129 T@Ref) (f_27@@159 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@129 f_27@@159) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@51) o2_28@@129 f_27@@159) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@129 f_27@@159)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@129 f_27@@159))
))) (forall ((o2_28@@130 T@Ref) (f_27@@160 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@130 f_27@@160) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@51) o2_28@@130 f_27@@160) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@130 f_27@@160)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@130 f_27@@160))
))) (forall ((o2_28@@131 T@Ref) (f_27@@161 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@131 f_27@@161) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@51) o2_28@@131 f_27@@161) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@131 f_27@@161)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@131 f_27@@161))
))) (forall ((o2_28@@132 T@Ref) (f_27@@162 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@132 f_27@@162) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@51) o2_28@@132 f_27@@162) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@132 f_27@@162)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@132 f_27@@162))
))) (forall ((o2_28@@133 T@Ref) (f_27@@163 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@133 f_27@@163) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@51) o2_28@@133 f_27@@163) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@133 f_27@@163)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@133 f_27@@163))
))) (forall ((o2_28@@134 T@Ref) (f_27@@164 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@134 f_27@@164) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@51) o2_28@@134 f_27@@164) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@134 f_27@@164)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@134 f_27@@164))
))) (forall ((o2_28@@135 T@Ref) (f_27@@165 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@135 f_27@@165) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@51) o2_28@@135 f_27@@165) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@135 f_27@@165)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@135 f_27@@165))
))) (forall ((o2_28@@136 T@Ref) (f_27@@166 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@136 f_27@@166) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@51) o2_28@@136 f_27@@166) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@136 f_27@@166)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@136 f_27@@166))
))) (forall ((o2_28@@137 T@Ref) (f_27@@167 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@137 f_27@@167) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@51) o2_28@@137 f_27@@167) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@137 f_27@@167)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@137 f_27@@167))
))) (forall ((o2_28@@138 T@Ref) (f_27@@168 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@138 f_27@@168) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@51) o2_28@@138 f_27@@168) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@138 f_27@@168)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@138 f_27@@168))
))) (forall ((o2_28@@139 T@Ref) (f_27@@169 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@139 f_27@@169) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@51) o2_28@@139 f_27@@169) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@139 f_27@@169)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@139 f_27@@169))
))) (forall ((o2_28@@140 T@Ref) (f_27@@170 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@140 f_27@@170) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@51) o2_28@@140 f_27@@170) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@140 f_27@@170)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@140 f_27@@170))
))) (forall ((o2_28@@141 T@Ref) (f_27@@171 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@141 f_27@@171) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@51) o2_28@@141 f_27@@171) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@141 f_27@@171)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@141 f_27@@171))
))) (forall ((o2_28@@142 T@Ref) (f_27@@172 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@142 f_27@@172) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@51) o2_28@@142 f_27@@172) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@142 f_27@@172)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@142 f_27@@172))
))) (forall ((o2_28@@143 T@Ref) (f_27@@173 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@143 f_27@@173) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@51) o2_28@@143 f_27@@173) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@143 f_27@@173)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@143 f_27@@173))
))) (forall ((o2_28@@144 T@Ref) (f_27@@174 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@144 f_27@@174) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@51) o2_28@@144 f_27@@174) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@144 f_27@@174)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@144 f_27@@174))
))) (forall ((o2_28@@145 T@Ref) (f_27@@175 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@145 f_27@@175) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@51) o2_28@@145 f_27@@175) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@145 f_27@@175)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@145 f_27@@175))
))) (forall ((o2_28@@146 T@Ref) (f_27@@176 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@146 f_27@@176) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@51) o2_28@@146 f_27@@176) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@146 f_27@@176)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@146 f_27@@176))
))) (forall ((o2_28@@147 T@Ref) (f_27@@177 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@147 f_27@@177) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) o2_28@@147 f_27@@177) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@147 f_27@@177)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@147 f_27@@177))
))) (forall ((o2_28@@148 T@Ref) (f_27@@178 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@51) null (PredicateMaskField_13973 pm_f_28@@15))) o2_28@@148 f_27@@178) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@51) o2_28@@148 f_27@@178) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@148 f_27@@178)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@47) o2_28@@148 f_27@@178))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@47 Mask@@108) (IsPredicateField_13973_13974 pm_f_28@@15))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_24397) (ExhaleHeap@@48 T@PolymorphicMapType_24397) (Mask@@109 T@PolymorphicMapType_24418) (pm_f_28@@16 T@Field_13942_13974) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@48 Mask@@109) (=> (and (HasDirectPerm_13942_13974 Mask@@109 null pm_f_28@@16) (IsPredicateField_13942_85642 pm_f_28@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@149 T@Ref) (f_27@@179 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@149 f_27@@179) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@52) o2_28@@149 f_27@@179) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@149 f_27@@179)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@149 f_27@@179))
)) (forall ((o2_28@@150 T@Ref) (f_27@@180 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@150 f_27@@180) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@52) o2_28@@150 f_27@@180) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@150 f_27@@180)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@150 f_27@@180))
))) (forall ((o2_28@@151 T@Ref) (f_27@@181 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@151 f_27@@181) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@52) o2_28@@151 f_27@@181) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@151 f_27@@181)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@151 f_27@@181))
))) (forall ((o2_28@@152 T@Ref) (f_27@@182 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@152 f_27@@182) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) o2_28@@152 f_27@@182) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@152 f_27@@182)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@152 f_27@@182))
))) (forall ((o2_28@@153 T@Ref) (f_27@@183 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@153 f_27@@183) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@52) o2_28@@153 f_27@@183) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@153 f_27@@183)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@153 f_27@@183))
))) (forall ((o2_28@@154 T@Ref) (f_27@@184 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@154 f_27@@184) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@52) o2_28@@154 f_27@@184) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@154 f_27@@184)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@154 f_27@@184))
))) (forall ((o2_28@@155 T@Ref) (f_27@@185 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@155 f_27@@185) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@52) o2_28@@155 f_27@@185) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@155 f_27@@185)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@155 f_27@@185))
))) (forall ((o2_28@@156 T@Ref) (f_27@@186 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@156 f_27@@186) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@52) o2_28@@156 f_27@@186) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@156 f_27@@186)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@156 f_27@@186))
))) (forall ((o2_28@@157 T@Ref) (f_27@@187 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@157 f_27@@187) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@52) o2_28@@157 f_27@@187) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@157 f_27@@187)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@157 f_27@@187))
))) (forall ((o2_28@@158 T@Ref) (f_27@@188 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@158 f_27@@188) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@52) o2_28@@158 f_27@@188) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@158 f_27@@188)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@158 f_27@@188))
))) (forall ((o2_28@@159 T@Ref) (f_27@@189 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@159 f_27@@189) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@52) o2_28@@159 f_27@@189) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@159 f_27@@189)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@159 f_27@@189))
))) (forall ((o2_28@@160 T@Ref) (f_27@@190 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@160 f_27@@190) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@52) o2_28@@160 f_27@@190) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@160 f_27@@190)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@160 f_27@@190))
))) (forall ((o2_28@@161 T@Ref) (f_27@@191 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@161 f_27@@191) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@52) o2_28@@161 f_27@@191) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@161 f_27@@191)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@161 f_27@@191))
))) (forall ((o2_28@@162 T@Ref) (f_27@@192 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@162 f_27@@192) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@52) o2_28@@162 f_27@@192) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@162 f_27@@192)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@162 f_27@@192))
))) (forall ((o2_28@@163 T@Ref) (f_27@@193 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@163 f_27@@193) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@52) o2_28@@163 f_27@@193) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@163 f_27@@193)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@163 f_27@@193))
))) (forall ((o2_28@@164 T@Ref) (f_27@@194 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@164 f_27@@194) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@52) o2_28@@164 f_27@@194) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@164 f_27@@194)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@164 f_27@@194))
))) (forall ((o2_28@@165 T@Ref) (f_27@@195 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@165 f_27@@195) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@52) o2_28@@165 f_27@@195) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@165 f_27@@195)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@165 f_27@@195))
))) (forall ((o2_28@@166 T@Ref) (f_27@@196 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@166 f_27@@196) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@52) o2_28@@166 f_27@@196) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@166 f_27@@196)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@166 f_27@@196))
))) (forall ((o2_28@@167 T@Ref) (f_27@@197 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@167 f_27@@197) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@52) o2_28@@167 f_27@@197) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@167 f_27@@197)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@167 f_27@@197))
))) (forall ((o2_28@@168 T@Ref) (f_27@@198 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@168 f_27@@198) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@52) o2_28@@168 f_27@@198) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@168 f_27@@198)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@168 f_27@@198))
))) (forall ((o2_28@@169 T@Ref) (f_27@@199 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@169 f_27@@199) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@52) o2_28@@169 f_27@@199) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@169 f_27@@199)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@169 f_27@@199))
))) (forall ((o2_28@@170 T@Ref) (f_27@@200 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@170 f_27@@200) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@52) o2_28@@170 f_27@@200) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@170 f_27@@200)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@170 f_27@@200))
))) (forall ((o2_28@@171 T@Ref) (f_27@@201 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@171 f_27@@201) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@52) o2_28@@171 f_27@@201) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@171 f_27@@201)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@171 f_27@@201))
))) (forall ((o2_28@@172 T@Ref) (f_27@@202 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@172 f_27@@202) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@52) o2_28@@172 f_27@@202) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@172 f_27@@202)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@172 f_27@@202))
))) (forall ((o2_28@@173 T@Ref) (f_27@@203 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@173 f_27@@203) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@52) o2_28@@173 f_27@@203) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@173 f_27@@203)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@173 f_27@@203))
))) (forall ((o2_28@@174 T@Ref) (f_27@@204 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@174 f_27@@204) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@52) o2_28@@174 f_27@@204) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@174 f_27@@204)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@174 f_27@@204))
))) (forall ((o2_28@@175 T@Ref) (f_27@@205 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@175 f_27@@205) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@52) o2_28@@175 f_27@@205) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@175 f_27@@205)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@175 f_27@@205))
))) (forall ((o2_28@@176 T@Ref) (f_27@@206 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@176 f_27@@206) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@52) o2_28@@176 f_27@@206) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@176 f_27@@206)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@176 f_27@@206))
))) (forall ((o2_28@@177 T@Ref) (f_27@@207 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@177 f_27@@207) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@52) o2_28@@177 f_27@@207) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@177 f_27@@207)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@177 f_27@@207))
))) (forall ((o2_28@@178 T@Ref) (f_27@@208 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@52) null (PredicateMaskField_13942 pm_f_28@@16))) o2_28@@178 f_27@@208) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@52) o2_28@@178 f_27@@208) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@178 f_27@@208)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@48) o2_28@@178 f_27@@208))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@48 Mask@@109) (IsPredicateField_13942_85642 pm_f_28@@16))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_24397) (ExhaleHeap@@49 T@PolymorphicMapType_24397) (Mask@@110 T@PolymorphicMapType_24418) (pm_f_28@@17 T@Field_30746_30747) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@49 Mask@@110) (=> (and (HasDirectPerm_30715_13974 Mask@@110 null pm_f_28@@17) (IsWandField_13891_13892 pm_f_28@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@179 T@Ref) (f_27@@209 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@179 f_27@@209) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@53) o2_28@@179 f_27@@209) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@179 f_27@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@179 f_27@@209))
)) (forall ((o2_28@@180 T@Ref) (f_27@@210 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@180 f_27@@210) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@53) o2_28@@180 f_27@@210) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@180 f_27@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@180 f_27@@210))
))) (forall ((o2_28@@181 T@Ref) (f_27@@211 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@181 f_27@@211) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@53) o2_28@@181 f_27@@211) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@181 f_27@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@181 f_27@@211))
))) (forall ((o2_28@@182 T@Ref) (f_27@@212 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@182 f_27@@212) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@53) o2_28@@182 f_27@@212) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@182 f_27@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@182 f_27@@212))
))) (forall ((o2_28@@183 T@Ref) (f_27@@213 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@183 f_27@@213) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@53) o2_28@@183 f_27@@213) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@183 f_27@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@183 f_27@@213))
))) (forall ((o2_28@@184 T@Ref) (f_27@@214 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@184 f_27@@214) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@53) o2_28@@184 f_27@@214) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@184 f_27@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@184 f_27@@214))
))) (forall ((o2_28@@185 T@Ref) (f_27@@215 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@185 f_27@@215) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@53) o2_28@@185 f_27@@215) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@185 f_27@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@185 f_27@@215))
))) (forall ((o2_28@@186 T@Ref) (f_27@@216 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@186 f_27@@216) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@53) o2_28@@186 f_27@@216) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@186 f_27@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@186 f_27@@216))
))) (forall ((o2_28@@187 T@Ref) (f_27@@217 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@187 f_27@@217) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@53) o2_28@@187 f_27@@217) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@187 f_27@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@187 f_27@@217))
))) (forall ((o2_28@@188 T@Ref) (f_27@@218 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@188 f_27@@218) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@53) o2_28@@188 f_27@@218) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@188 f_27@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@188 f_27@@218))
))) (forall ((o2_28@@189 T@Ref) (f_27@@219 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@189 f_27@@219) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@53) o2_28@@189 f_27@@219) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@189 f_27@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@189 f_27@@219))
))) (forall ((o2_28@@190 T@Ref) (f_27@@220 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@190 f_27@@220) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@53) o2_28@@190 f_27@@220) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@190 f_27@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@190 f_27@@220))
))) (forall ((o2_28@@191 T@Ref) (f_27@@221 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@191 f_27@@221) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@53) o2_28@@191 f_27@@221) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@191 f_27@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@191 f_27@@221))
))) (forall ((o2_28@@192 T@Ref) (f_27@@222 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@192 f_27@@222) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@53) o2_28@@192 f_27@@222) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@192 f_27@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@192 f_27@@222))
))) (forall ((o2_28@@193 T@Ref) (f_27@@223 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@193 f_27@@223) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@53) o2_28@@193 f_27@@223) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@193 f_27@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@193 f_27@@223))
))) (forall ((o2_28@@194 T@Ref) (f_27@@224 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@194 f_27@@224) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@53) o2_28@@194 f_27@@224) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@194 f_27@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@194 f_27@@224))
))) (forall ((o2_28@@195 T@Ref) (f_27@@225 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@195 f_27@@225) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@53) o2_28@@195 f_27@@225) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@195 f_27@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@195 f_27@@225))
))) (forall ((o2_28@@196 T@Ref) (f_27@@226 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@196 f_27@@226) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@53) o2_28@@196 f_27@@226) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@196 f_27@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@196 f_27@@226))
))) (forall ((o2_28@@197 T@Ref) (f_27@@227 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@197 f_27@@227) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@53) o2_28@@197 f_27@@227) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@197 f_27@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@197 f_27@@227))
))) (forall ((o2_28@@198 T@Ref) (f_27@@228 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@198 f_27@@228) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@53) o2_28@@198 f_27@@228) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@198 f_27@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@198 f_27@@228))
))) (forall ((o2_28@@199 T@Ref) (f_27@@229 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@199 f_27@@229) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@53) o2_28@@199 f_27@@229) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@199 f_27@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@199 f_27@@229))
))) (forall ((o2_28@@200 T@Ref) (f_27@@230 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@200 f_27@@230) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@53) o2_28@@200 f_27@@230) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@200 f_27@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@200 f_27@@230))
))) (forall ((o2_28@@201 T@Ref) (f_27@@231 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@201 f_27@@231) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@53) o2_28@@201 f_27@@231) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@201 f_27@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@201 f_27@@231))
))) (forall ((o2_28@@202 T@Ref) (f_27@@232 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@202 f_27@@232) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) o2_28@@202 f_27@@232) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@202 f_27@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@202 f_27@@232))
))) (forall ((o2_28@@203 T@Ref) (f_27@@233 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@203 f_27@@233) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@53) o2_28@@203 f_27@@233) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@203 f_27@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@203 f_27@@233))
))) (forall ((o2_28@@204 T@Ref) (f_27@@234 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@204 f_27@@234) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@53) o2_28@@204 f_27@@234) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@204 f_27@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@204 f_27@@234))
))) (forall ((o2_28@@205 T@Ref) (f_27@@235 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@205 f_27@@235) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@53) o2_28@@205 f_27@@235) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@205 f_27@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@205 f_27@@235))
))) (forall ((o2_28@@206 T@Ref) (f_27@@236 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@206 f_27@@236) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@53) o2_28@@206 f_27@@236) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@206 f_27@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@206 f_27@@236))
))) (forall ((o2_28@@207 T@Ref) (f_27@@237 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@207 f_27@@237) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@53) o2_28@@207 f_27@@237) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@207 f_27@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@207 f_27@@237))
))) (forall ((o2_28@@208 T@Ref) (f_27@@238 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@53) null (WandMaskField_13891 pm_f_28@@17))) o2_28@@208 f_27@@238) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@53) o2_28@@208 f_27@@238) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@208 f_27@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@49) o2_28@@208 f_27@@238))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@49 Mask@@110) (IsWandField_13891_13892 pm_f_28@@17))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_24397) (ExhaleHeap@@50 T@PolymorphicMapType_24397) (Mask@@111 T@PolymorphicMapType_24418) (pm_f_28@@18 T@Field_29643_29644) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@50 Mask@@111) (=> (and (HasDirectPerm_29606_13974 Mask@@111 null pm_f_28@@18) (IsWandField_13801_13802 pm_f_28@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@209 T@Ref) (f_27@@239 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@209 f_27@@239) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@54) o2_28@@209 f_27@@239) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@209 f_27@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@209 f_27@@239))
)) (forall ((o2_28@@210 T@Ref) (f_27@@240 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@210 f_27@@240) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@54) o2_28@@210 f_27@@240) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@210 f_27@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@210 f_27@@240))
))) (forall ((o2_28@@211 T@Ref) (f_27@@241 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@211 f_27@@241) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@54) o2_28@@211 f_27@@241) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@211 f_27@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@211 f_27@@241))
))) (forall ((o2_28@@212 T@Ref) (f_27@@242 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@212 f_27@@242) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@54) o2_28@@212 f_27@@242) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@212 f_27@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@212 f_27@@242))
))) (forall ((o2_28@@213 T@Ref) (f_27@@243 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@213 f_27@@243) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@54) o2_28@@213 f_27@@243) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@213 f_27@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@213 f_27@@243))
))) (forall ((o2_28@@214 T@Ref) (f_27@@244 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@214 f_27@@244) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@54) o2_28@@214 f_27@@244) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@214 f_27@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@214 f_27@@244))
))) (forall ((o2_28@@215 T@Ref) (f_27@@245 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@215 f_27@@245) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@54) o2_28@@215 f_27@@245) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@215 f_27@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@215 f_27@@245))
))) (forall ((o2_28@@216 T@Ref) (f_27@@246 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@216 f_27@@246) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@54) o2_28@@216 f_27@@246) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@216 f_27@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@216 f_27@@246))
))) (forall ((o2_28@@217 T@Ref) (f_27@@247 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@217 f_27@@247) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@54) o2_28@@217 f_27@@247) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@217 f_27@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@217 f_27@@247))
))) (forall ((o2_28@@218 T@Ref) (f_27@@248 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@218 f_27@@248) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@54) o2_28@@218 f_27@@248) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@218 f_27@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@218 f_27@@248))
))) (forall ((o2_28@@219 T@Ref) (f_27@@249 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@219 f_27@@249) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@54) o2_28@@219 f_27@@249) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@219 f_27@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@219 f_27@@249))
))) (forall ((o2_28@@220 T@Ref) (f_27@@250 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@220 f_27@@250) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@54) o2_28@@220 f_27@@250) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@220 f_27@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@220 f_27@@250))
))) (forall ((o2_28@@221 T@Ref) (f_27@@251 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@221 f_27@@251) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@54) o2_28@@221 f_27@@251) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@221 f_27@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@221 f_27@@251))
))) (forall ((o2_28@@222 T@Ref) (f_27@@252 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@222 f_27@@252) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@54) o2_28@@222 f_27@@252) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@222 f_27@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@222 f_27@@252))
))) (forall ((o2_28@@223 T@Ref) (f_27@@253 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@223 f_27@@253) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@54) o2_28@@223 f_27@@253) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@223 f_27@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@223 f_27@@253))
))) (forall ((o2_28@@224 T@Ref) (f_27@@254 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@224 f_27@@254) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@54) o2_28@@224 f_27@@254) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@224 f_27@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@224 f_27@@254))
))) (forall ((o2_28@@225 T@Ref) (f_27@@255 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@225 f_27@@255) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@54) o2_28@@225 f_27@@255) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@225 f_27@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@225 f_27@@255))
))) (forall ((o2_28@@226 T@Ref) (f_27@@256 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@226 f_27@@256) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@54) o2_28@@226 f_27@@256) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@226 f_27@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@226 f_27@@256))
))) (forall ((o2_28@@227 T@Ref) (f_27@@257 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@227 f_27@@257) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) o2_28@@227 f_27@@257) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@227 f_27@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@227 f_27@@257))
))) (forall ((o2_28@@228 T@Ref) (f_27@@258 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@228 f_27@@258) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@54) o2_28@@228 f_27@@258) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@228 f_27@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@228 f_27@@258))
))) (forall ((o2_28@@229 T@Ref) (f_27@@259 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@229 f_27@@259) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@54) o2_28@@229 f_27@@259) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@229 f_27@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@229 f_27@@259))
))) (forall ((o2_28@@230 T@Ref) (f_27@@260 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@230 f_27@@260) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@54) o2_28@@230 f_27@@260) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@230 f_27@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@230 f_27@@260))
))) (forall ((o2_28@@231 T@Ref) (f_27@@261 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@231 f_27@@261) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@54) o2_28@@231 f_27@@261) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@231 f_27@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@231 f_27@@261))
))) (forall ((o2_28@@232 T@Ref) (f_27@@262 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@232 f_27@@262) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@54) o2_28@@232 f_27@@262) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@232 f_27@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@232 f_27@@262))
))) (forall ((o2_28@@233 T@Ref) (f_27@@263 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@233 f_27@@263) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@54) o2_28@@233 f_27@@263) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@233 f_27@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@233 f_27@@263))
))) (forall ((o2_28@@234 T@Ref) (f_27@@264 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@234 f_27@@264) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@54) o2_28@@234 f_27@@264) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@234 f_27@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@234 f_27@@264))
))) (forall ((o2_28@@235 T@Ref) (f_27@@265 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@235 f_27@@265) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@54) o2_28@@235 f_27@@265) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@235 f_27@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@235 f_27@@265))
))) (forall ((o2_28@@236 T@Ref) (f_27@@266 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@236 f_27@@266) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@54) o2_28@@236 f_27@@266) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@236 f_27@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@236 f_27@@266))
))) (forall ((o2_28@@237 T@Ref) (f_27@@267 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@237 f_27@@267) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@54) o2_28@@237 f_27@@267) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@237 f_27@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@237 f_27@@267))
))) (forall ((o2_28@@238 T@Ref) (f_27@@268 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@54) null (WandMaskField_13801 pm_f_28@@18))) o2_28@@238 f_27@@268) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@54) o2_28@@238 f_27@@268) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@238 f_27@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@50) o2_28@@238 f_27@@268))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@50 Mask@@111) (IsWandField_13801_13802 pm_f_28@@18))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_24397) (ExhaleHeap@@51 T@PolymorphicMapType_24397) (Mask@@112 T@PolymorphicMapType_24418) (pm_f_28@@19 T@Field_28647_28648) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@51 Mask@@112) (=> (and (HasDirectPerm_28610_13974 Mask@@112 null pm_f_28@@19) (IsWandField_13721_13722 pm_f_28@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@239 T@Ref) (f_27@@269 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@239 f_27@@269) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@55) o2_28@@239 f_27@@269) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@239 f_27@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@239 f_27@@269))
)) (forall ((o2_28@@240 T@Ref) (f_27@@270 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@240 f_27@@270) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@55) o2_28@@240 f_27@@270) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@240 f_27@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@240 f_27@@270))
))) (forall ((o2_28@@241 T@Ref) (f_27@@271 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@241 f_27@@271) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@55) o2_28@@241 f_27@@271) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@241 f_27@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@241 f_27@@271))
))) (forall ((o2_28@@242 T@Ref) (f_27@@272 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@242 f_27@@272) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@55) o2_28@@242 f_27@@272) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@242 f_27@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@242 f_27@@272))
))) (forall ((o2_28@@243 T@Ref) (f_27@@273 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@243 f_27@@273) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@55) o2_28@@243 f_27@@273) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@243 f_27@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@243 f_27@@273))
))) (forall ((o2_28@@244 T@Ref) (f_27@@274 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@244 f_27@@274) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@55) o2_28@@244 f_27@@274) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@244 f_27@@274)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@244 f_27@@274))
))) (forall ((o2_28@@245 T@Ref) (f_27@@275 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@245 f_27@@275) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@55) o2_28@@245 f_27@@275) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@245 f_27@@275)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@245 f_27@@275))
))) (forall ((o2_28@@246 T@Ref) (f_27@@276 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@246 f_27@@276) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@55) o2_28@@246 f_27@@276) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@246 f_27@@276)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@246 f_27@@276))
))) (forall ((o2_28@@247 T@Ref) (f_27@@277 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@247 f_27@@277) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@55) o2_28@@247 f_27@@277) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@247 f_27@@277)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@247 f_27@@277))
))) (forall ((o2_28@@248 T@Ref) (f_27@@278 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@248 f_27@@278) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@55) o2_28@@248 f_27@@278) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@248 f_27@@278)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@248 f_27@@278))
))) (forall ((o2_28@@249 T@Ref) (f_27@@279 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@249 f_27@@279) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@55) o2_28@@249 f_27@@279) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@249 f_27@@279)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@249 f_27@@279))
))) (forall ((o2_28@@250 T@Ref) (f_27@@280 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@250 f_27@@280) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@55) o2_28@@250 f_27@@280) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@250 f_27@@280)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@250 f_27@@280))
))) (forall ((o2_28@@251 T@Ref) (f_27@@281 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@251 f_27@@281) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@55) o2_28@@251 f_27@@281) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@251 f_27@@281)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@251 f_27@@281))
))) (forall ((o2_28@@252 T@Ref) (f_27@@282 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@252 f_27@@282) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) o2_28@@252 f_27@@282) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@252 f_27@@282)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@252 f_27@@282))
))) (forall ((o2_28@@253 T@Ref) (f_27@@283 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@253 f_27@@283) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@55) o2_28@@253 f_27@@283) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@253 f_27@@283)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@253 f_27@@283))
))) (forall ((o2_28@@254 T@Ref) (f_27@@284 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@254 f_27@@284) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@55) o2_28@@254 f_27@@284) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@254 f_27@@284)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@254 f_27@@284))
))) (forall ((o2_28@@255 T@Ref) (f_27@@285 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@255 f_27@@285) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@55) o2_28@@255 f_27@@285) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@255 f_27@@285)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@255 f_27@@285))
))) (forall ((o2_28@@256 T@Ref) (f_27@@286 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@256 f_27@@286) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@55) o2_28@@256 f_27@@286) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@256 f_27@@286)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@256 f_27@@286))
))) (forall ((o2_28@@257 T@Ref) (f_27@@287 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@257 f_27@@287) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@55) o2_28@@257 f_27@@287) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@257 f_27@@287)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@257 f_27@@287))
))) (forall ((o2_28@@258 T@Ref) (f_27@@288 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@258 f_27@@288) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@55) o2_28@@258 f_27@@288) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@258 f_27@@288)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@258 f_27@@288))
))) (forall ((o2_28@@259 T@Ref) (f_27@@289 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@259 f_27@@289) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@55) o2_28@@259 f_27@@289) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@259 f_27@@289)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@259 f_27@@289))
))) (forall ((o2_28@@260 T@Ref) (f_27@@290 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@260 f_27@@290) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@55) o2_28@@260 f_27@@290) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@260 f_27@@290)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@260 f_27@@290))
))) (forall ((o2_28@@261 T@Ref) (f_27@@291 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@261 f_27@@291) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@55) o2_28@@261 f_27@@291) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@261 f_27@@291)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@261 f_27@@291))
))) (forall ((o2_28@@262 T@Ref) (f_27@@292 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@262 f_27@@292) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@55) o2_28@@262 f_27@@292) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@262 f_27@@292)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@262 f_27@@292))
))) (forall ((o2_28@@263 T@Ref) (f_27@@293 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@263 f_27@@293) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@55) o2_28@@263 f_27@@293) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@263 f_27@@293)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@263 f_27@@293))
))) (forall ((o2_28@@264 T@Ref) (f_27@@294 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@264 f_27@@294) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@55) o2_28@@264 f_27@@294) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@264 f_27@@294)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@264 f_27@@294))
))) (forall ((o2_28@@265 T@Ref) (f_27@@295 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@265 f_27@@295) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@55) o2_28@@265 f_27@@295) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@265 f_27@@295)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@265 f_27@@295))
))) (forall ((o2_28@@266 T@Ref) (f_27@@296 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@266 f_27@@296) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@55) o2_28@@266 f_27@@296) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@266 f_27@@296)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@266 f_27@@296))
))) (forall ((o2_28@@267 T@Ref) (f_27@@297 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@267 f_27@@297) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@55) o2_28@@267 f_27@@297) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@267 f_27@@297)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@267 f_27@@297))
))) (forall ((o2_28@@268 T@Ref) (f_27@@298 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@55) null (WandMaskField_13721 pm_f_28@@19))) o2_28@@268 f_27@@298) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@55) o2_28@@268 f_27@@298) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@268 f_27@@298)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@51) o2_28@@268 f_27@@298))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@51 Mask@@112) (IsWandField_13721_13722 pm_f_28@@19))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_24397) (ExhaleHeap@@52 T@PolymorphicMapType_24397) (Mask@@113 T@PolymorphicMapType_24418) (pm_f_28@@20 T@Field_27821_27822) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@52 Mask@@113) (=> (and (HasDirectPerm_27788_13974 Mask@@113 null pm_f_28@@20) (IsWandField_13663_13664 pm_f_28@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@269 T@Ref) (f_27@@299 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@269 f_27@@299) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@56) o2_28@@269 f_27@@299) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@269 f_27@@299)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@269 f_27@@299))
)) (forall ((o2_28@@270 T@Ref) (f_27@@300 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@270 f_27@@300) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@56) o2_28@@270 f_27@@300) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@270 f_27@@300)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@270 f_27@@300))
))) (forall ((o2_28@@271 T@Ref) (f_27@@301 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@271 f_27@@301) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@56) o2_28@@271 f_27@@301) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@271 f_27@@301)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@271 f_27@@301))
))) (forall ((o2_28@@272 T@Ref) (f_27@@302 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@272 f_27@@302) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@56) o2_28@@272 f_27@@302) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@272 f_27@@302)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@272 f_27@@302))
))) (forall ((o2_28@@273 T@Ref) (f_27@@303 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@273 f_27@@303) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@56) o2_28@@273 f_27@@303) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@273 f_27@@303)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@273 f_27@@303))
))) (forall ((o2_28@@274 T@Ref) (f_27@@304 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@274 f_27@@304) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@56) o2_28@@274 f_27@@304) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@274 f_27@@304)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@274 f_27@@304))
))) (forall ((o2_28@@275 T@Ref) (f_27@@305 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@275 f_27@@305) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@56) o2_28@@275 f_27@@305) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@275 f_27@@305)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@275 f_27@@305))
))) (forall ((o2_28@@276 T@Ref) (f_27@@306 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@276 f_27@@306) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@56) o2_28@@276 f_27@@306) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@276 f_27@@306)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@276 f_27@@306))
))) (forall ((o2_28@@277 T@Ref) (f_27@@307 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@277 f_27@@307) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) o2_28@@277 f_27@@307) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@277 f_27@@307)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@277 f_27@@307))
))) (forall ((o2_28@@278 T@Ref) (f_27@@308 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@278 f_27@@308) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@56) o2_28@@278 f_27@@308) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@278 f_27@@308)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@278 f_27@@308))
))) (forall ((o2_28@@279 T@Ref) (f_27@@309 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@279 f_27@@309) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@56) o2_28@@279 f_27@@309) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@279 f_27@@309)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@279 f_27@@309))
))) (forall ((o2_28@@280 T@Ref) (f_27@@310 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@280 f_27@@310) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@56) o2_28@@280 f_27@@310) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@280 f_27@@310)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@280 f_27@@310))
))) (forall ((o2_28@@281 T@Ref) (f_27@@311 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@281 f_27@@311) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@56) o2_28@@281 f_27@@311) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@281 f_27@@311)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@281 f_27@@311))
))) (forall ((o2_28@@282 T@Ref) (f_27@@312 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@282 f_27@@312) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@56) o2_28@@282 f_27@@312) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@282 f_27@@312)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@282 f_27@@312))
))) (forall ((o2_28@@283 T@Ref) (f_27@@313 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@283 f_27@@313) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@56) o2_28@@283 f_27@@313) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@283 f_27@@313)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@283 f_27@@313))
))) (forall ((o2_28@@284 T@Ref) (f_27@@314 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@284 f_27@@314) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@56) o2_28@@284 f_27@@314) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@284 f_27@@314)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@284 f_27@@314))
))) (forall ((o2_28@@285 T@Ref) (f_27@@315 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@285 f_27@@315) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@56) o2_28@@285 f_27@@315) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@285 f_27@@315)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@285 f_27@@315))
))) (forall ((o2_28@@286 T@Ref) (f_27@@316 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@286 f_27@@316) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@56) o2_28@@286 f_27@@316) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@286 f_27@@316)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@286 f_27@@316))
))) (forall ((o2_28@@287 T@Ref) (f_27@@317 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@287 f_27@@317) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@56) o2_28@@287 f_27@@317) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@287 f_27@@317)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@287 f_27@@317))
))) (forall ((o2_28@@288 T@Ref) (f_27@@318 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@288 f_27@@318) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@56) o2_28@@288 f_27@@318) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@288 f_27@@318)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@288 f_27@@318))
))) (forall ((o2_28@@289 T@Ref) (f_27@@319 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@289 f_27@@319) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@56) o2_28@@289 f_27@@319) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@289 f_27@@319)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@289 f_27@@319))
))) (forall ((o2_28@@290 T@Ref) (f_27@@320 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@290 f_27@@320) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@56) o2_28@@290 f_27@@320) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@290 f_27@@320)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@290 f_27@@320))
))) (forall ((o2_28@@291 T@Ref) (f_27@@321 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@291 f_27@@321) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@56) o2_28@@291 f_27@@321) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@291 f_27@@321)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@291 f_27@@321))
))) (forall ((o2_28@@292 T@Ref) (f_27@@322 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@292 f_27@@322) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@56) o2_28@@292 f_27@@322) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@292 f_27@@322)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@292 f_27@@322))
))) (forall ((o2_28@@293 T@Ref) (f_27@@323 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@293 f_27@@323) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@56) o2_28@@293 f_27@@323) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@293 f_27@@323)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@293 f_27@@323))
))) (forall ((o2_28@@294 T@Ref) (f_27@@324 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@294 f_27@@324) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@56) o2_28@@294 f_27@@324) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@294 f_27@@324)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@294 f_27@@324))
))) (forall ((o2_28@@295 T@Ref) (f_27@@325 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@295 f_27@@325) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@56) o2_28@@295 f_27@@325) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@295 f_27@@325)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@295 f_27@@325))
))) (forall ((o2_28@@296 T@Ref) (f_27@@326 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@296 f_27@@326) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@56) o2_28@@296 f_27@@326) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@296 f_27@@326)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@296 f_27@@326))
))) (forall ((o2_28@@297 T@Ref) (f_27@@327 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@297 f_27@@327) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@56) o2_28@@297 f_27@@327) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@297 f_27@@327)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@297 f_27@@327))
))) (forall ((o2_28@@298 T@Ref) (f_27@@328 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@56) null (WandMaskField_13663 pm_f_28@@20))) o2_28@@298 f_27@@328) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@56) o2_28@@298 f_27@@328) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@298 f_27@@328)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@52) o2_28@@298 f_27@@328))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@52 Mask@@113) (IsWandField_13663_13664 pm_f_28@@20))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_24397) (ExhaleHeap@@53 T@PolymorphicMapType_24397) (Mask@@114 T@PolymorphicMapType_24418) (pm_f_28@@21 T@Field_31895_31896) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@53 Mask@@114) (=> (and (HasDirectPerm_13973_13974 Mask@@114 null pm_f_28@@21) (IsWandField_13973_96043 pm_f_28@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@299 T@Ref) (f_27@@329 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@299 f_27@@329) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@57) o2_28@@299 f_27@@329) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@299 f_27@@329)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@299 f_27@@329))
)) (forall ((o2_28@@300 T@Ref) (f_27@@330 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@300 f_27@@330) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@57) o2_28@@300 f_27@@330) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@300 f_27@@330)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@300 f_27@@330))
))) (forall ((o2_28@@301 T@Ref) (f_27@@331 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@301 f_27@@331) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@57) o2_28@@301 f_27@@331) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@301 f_27@@331)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@301 f_27@@331))
))) (forall ((o2_28@@302 T@Ref) (f_27@@332 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@302 f_27@@332) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@57) o2_28@@302 f_27@@332) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@302 f_27@@332)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@302 f_27@@332))
))) (forall ((o2_28@@303 T@Ref) (f_27@@333 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@303 f_27@@333) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@57) o2_28@@303 f_27@@333) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@303 f_27@@333)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@303 f_27@@333))
))) (forall ((o2_28@@304 T@Ref) (f_27@@334 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@304 f_27@@334) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@57) o2_28@@304 f_27@@334) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@304 f_27@@334)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@304 f_27@@334))
))) (forall ((o2_28@@305 T@Ref) (f_27@@335 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@305 f_27@@335) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@57) o2_28@@305 f_27@@335) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@305 f_27@@335)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@305 f_27@@335))
))) (forall ((o2_28@@306 T@Ref) (f_27@@336 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@306 f_27@@336) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@57) o2_28@@306 f_27@@336) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@306 f_27@@336)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@306 f_27@@336))
))) (forall ((o2_28@@307 T@Ref) (f_27@@337 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@307 f_27@@337) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@57) o2_28@@307 f_27@@337) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@307 f_27@@337)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@307 f_27@@337))
))) (forall ((o2_28@@308 T@Ref) (f_27@@338 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@308 f_27@@338) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@57) o2_28@@308 f_27@@338) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@308 f_27@@338)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@308 f_27@@338))
))) (forall ((o2_28@@309 T@Ref) (f_27@@339 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@309 f_27@@339) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@57) o2_28@@309 f_27@@339) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@309 f_27@@339)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@309 f_27@@339))
))) (forall ((o2_28@@310 T@Ref) (f_27@@340 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@310 f_27@@340) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@57) o2_28@@310 f_27@@340) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@310 f_27@@340)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@310 f_27@@340))
))) (forall ((o2_28@@311 T@Ref) (f_27@@341 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@311 f_27@@341) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@57) o2_28@@311 f_27@@341) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@311 f_27@@341)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@311 f_27@@341))
))) (forall ((o2_28@@312 T@Ref) (f_27@@342 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@312 f_27@@342) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@57) o2_28@@312 f_27@@342) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@312 f_27@@342)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@312 f_27@@342))
))) (forall ((o2_28@@313 T@Ref) (f_27@@343 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@313 f_27@@343) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@57) o2_28@@313 f_27@@343) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@313 f_27@@343)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@313 f_27@@343))
))) (forall ((o2_28@@314 T@Ref) (f_27@@344 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@314 f_27@@344) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@57) o2_28@@314 f_27@@344) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@314 f_27@@344)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@314 f_27@@344))
))) (forall ((o2_28@@315 T@Ref) (f_27@@345 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@315 f_27@@345) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@57) o2_28@@315 f_27@@345) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@315 f_27@@345)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@315 f_27@@345))
))) (forall ((o2_28@@316 T@Ref) (f_27@@346 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@316 f_27@@346) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@57) o2_28@@316 f_27@@346) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@316 f_27@@346)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@316 f_27@@346))
))) (forall ((o2_28@@317 T@Ref) (f_27@@347 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@317 f_27@@347) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@57) o2_28@@317 f_27@@347) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@317 f_27@@347)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@317 f_27@@347))
))) (forall ((o2_28@@318 T@Ref) (f_27@@348 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@318 f_27@@348) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@57) o2_28@@318 f_27@@348) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@318 f_27@@348)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@318 f_27@@348))
))) (forall ((o2_28@@319 T@Ref) (f_27@@349 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@319 f_27@@349) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@57) o2_28@@319 f_27@@349) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@319 f_27@@349)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@319 f_27@@349))
))) (forall ((o2_28@@320 T@Ref) (f_27@@350 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@320 f_27@@350) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@57) o2_28@@320 f_27@@350) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@320 f_27@@350)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@320 f_27@@350))
))) (forall ((o2_28@@321 T@Ref) (f_27@@351 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@321 f_27@@351) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@57) o2_28@@321 f_27@@351) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@321 f_27@@351)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@321 f_27@@351))
))) (forall ((o2_28@@322 T@Ref) (f_27@@352 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@322 f_27@@352) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@57) o2_28@@322 f_27@@352) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@322 f_27@@352)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@322 f_27@@352))
))) (forall ((o2_28@@323 T@Ref) (f_27@@353 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@323 f_27@@353) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@57) o2_28@@323 f_27@@353) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@323 f_27@@353)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@323 f_27@@353))
))) (forall ((o2_28@@324 T@Ref) (f_27@@354 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@324 f_27@@354) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@57) o2_28@@324 f_27@@354) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@324 f_27@@354)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@324 f_27@@354))
))) (forall ((o2_28@@325 T@Ref) (f_27@@355 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@325 f_27@@355) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@57) o2_28@@325 f_27@@355) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@325 f_27@@355)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@325 f_27@@355))
))) (forall ((o2_28@@326 T@Ref) (f_27@@356 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@326 f_27@@356) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@57) o2_28@@326 f_27@@356) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@326 f_27@@356)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@326 f_27@@356))
))) (forall ((o2_28@@327 T@Ref) (f_27@@357 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@327 f_27@@357) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) o2_28@@327 f_27@@357) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@327 f_27@@357)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@327 f_27@@357))
))) (forall ((o2_28@@328 T@Ref) (f_27@@358 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@57) null (WandMaskField_13973 pm_f_28@@21))) o2_28@@328 f_27@@358) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@57) o2_28@@328 f_27@@358) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@328 f_27@@358)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@53) o2_28@@328 f_27@@358))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@53 Mask@@114) (IsWandField_13973_96043 pm_f_28@@21))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_24397) (ExhaleHeap@@54 T@PolymorphicMapType_24397) (Mask@@115 T@PolymorphicMapType_24418) (pm_f_28@@22 T@Field_13942_13974) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@54 Mask@@115) (=> (and (HasDirectPerm_13942_13974 Mask@@115 null pm_f_28@@22) (IsWandField_13942_95686 pm_f_28@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@329 T@Ref) (f_27@@359 T@Field_31502_3275) ) (!  (=> (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@329 f_27@@359) (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@58) o2_28@@329 f_27@@359) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@329 f_27@@359)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@329 f_27@@359))
)) (forall ((o2_28@@330 T@Ref) (f_27@@360 T@Field_24457_53) ) (!  (=> (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@330 f_27@@360) (= (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@58) o2_28@@330 f_27@@360) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@330 f_27@@360)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@330 f_27@@360))
))) (forall ((o2_28@@331 T@Ref) (f_27@@361 T@Field_24470_24471) ) (!  (=> (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@331 f_27@@361) (= (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@58) o2_28@@331 f_27@@361) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@331 f_27@@361)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@331 f_27@@361))
))) (forall ((o2_28@@332 T@Ref) (f_27@@362 T@Field_13942_27808) ) (!  (=> (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@332 f_27@@362) (= (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) o2_28@@332 f_27@@362) (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@332 f_27@@362)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@332 f_27@@362))
))) (forall ((o2_28@@333 T@Ref) (f_27@@363 T@Field_13942_13974) ) (!  (=> (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@333 f_27@@363) (= (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@58) o2_28@@333 f_27@@363) (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@333 f_27@@363)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@333 f_27@@363))
))) (forall ((o2_28@@334 T@Ref) (f_27@@364 T@Field_27788_1214) ) (!  (=> (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@334 f_27@@364) (= (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@58) o2_28@@334 f_27@@364) (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@334 f_27@@364)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@334 f_27@@364))
))) (forall ((o2_28@@335 T@Ref) (f_27@@365 T@Field_27788_53) ) (!  (=> (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@335 f_27@@365) (= (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@58) o2_28@@335 f_27@@365) (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@335 f_27@@365)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@335 f_27@@365))
))) (forall ((o2_28@@336 T@Ref) (f_27@@366 T@Field_27788_24471) ) (!  (=> (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@336 f_27@@366) (= (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@58) o2_28@@336 f_27@@366) (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@336 f_27@@366)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@336 f_27@@366))
))) (forall ((o2_28@@337 T@Ref) (f_27@@367 T@Field_27803_27808) ) (!  (=> (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@337 f_27@@367) (= (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@58) o2_28@@337 f_27@@367) (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@337 f_27@@367)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@337 f_27@@367))
))) (forall ((o2_28@@338 T@Ref) (f_27@@368 T@Field_27821_27822) ) (!  (=> (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@338 f_27@@368) (= (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@58) o2_28@@338 f_27@@368) (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@338 f_27@@368)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@338 f_27@@368))
))) (forall ((o2_28@@339 T@Ref) (f_27@@369 T@Field_28610_1658) ) (!  (=> (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@339 f_27@@369) (= (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@58) o2_28@@339 f_27@@369) (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@339 f_27@@369)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@339 f_27@@369))
))) (forall ((o2_28@@340 T@Ref) (f_27@@370 T@Field_28610_53) ) (!  (=> (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@340 f_27@@370) (= (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@58) o2_28@@340 f_27@@370) (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@340 f_27@@370)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@340 f_27@@370))
))) (forall ((o2_28@@341 T@Ref) (f_27@@371 T@Field_28610_24471) ) (!  (=> (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@341 f_27@@371) (= (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@58) o2_28@@341 f_27@@371) (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@341 f_27@@371)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@341 f_27@@371))
))) (forall ((o2_28@@342 T@Ref) (f_27@@372 T@Field_28627_28632) ) (!  (=> (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@342 f_27@@372) (= (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@58) o2_28@@342 f_27@@372) (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@342 f_27@@372)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@342 f_27@@372))
))) (forall ((o2_28@@343 T@Ref) (f_27@@373 T@Field_28647_28648) ) (!  (=> (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@343 f_27@@373) (= (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@58) o2_28@@343 f_27@@373) (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@343 f_27@@373)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@343 f_27@@373))
))) (forall ((o2_28@@344 T@Ref) (f_27@@374 T@Field_29606_2216) ) (!  (=> (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@344 f_27@@374) (= (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@58) o2_28@@344 f_27@@374) (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@344 f_27@@374)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@344 f_27@@374))
))) (forall ((o2_28@@345 T@Ref) (f_27@@375 T@Field_29606_53) ) (!  (=> (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@345 f_27@@375) (= (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@58) o2_28@@345 f_27@@375) (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@345 f_27@@375)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@345 f_27@@375))
))) (forall ((o2_28@@346 T@Ref) (f_27@@376 T@Field_29606_24471) ) (!  (=> (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@346 f_27@@376) (= (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@58) o2_28@@346 f_27@@376) (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@346 f_27@@376)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@346 f_27@@376))
))) (forall ((o2_28@@347 T@Ref) (f_27@@377 T@Field_29623_29628) ) (!  (=> (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@347 f_27@@377) (= (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@58) o2_28@@347 f_27@@377) (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@347 f_27@@377)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@347 f_27@@377))
))) (forall ((o2_28@@348 T@Ref) (f_27@@378 T@Field_29643_29644) ) (!  (=> (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@348 f_27@@378) (= (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@58) o2_28@@348 f_27@@378) (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@348 f_27@@378)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@348 f_27@@378))
))) (forall ((o2_28@@349 T@Ref) (f_27@@379 T@Field_30715_2864) ) (!  (=> (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@349 f_27@@379) (= (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@58) o2_28@@349 f_27@@379) (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@349 f_27@@379)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@349 f_27@@379))
))) (forall ((o2_28@@350 T@Ref) (f_27@@380 T@Field_30715_53) ) (!  (=> (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@350 f_27@@380) (= (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@58) o2_28@@350 f_27@@380) (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@350 f_27@@380)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@350 f_27@@380))
))) (forall ((o2_28@@351 T@Ref) (f_27@@381 T@Field_30715_24471) ) (!  (=> (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@351 f_27@@381) (= (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@58) o2_28@@351 f_27@@381) (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@351 f_27@@381)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@351 f_27@@381))
))) (forall ((o2_28@@352 T@Ref) (f_27@@382 T@Field_30729_30734) ) (!  (=> (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@352 f_27@@382) (= (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@58) o2_28@@352 f_27@@382) (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@352 f_27@@382)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@352 f_27@@382))
))) (forall ((o2_28@@353 T@Ref) (f_27@@383 T@Field_30746_30747) ) (!  (=> (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@353 f_27@@383) (= (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@58) o2_28@@353 f_27@@383) (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@353 f_27@@383)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@353 f_27@@383))
))) (forall ((o2_28@@354 T@Ref) (f_27@@384 T@Field_13973_3275) ) (!  (=> (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@354 f_27@@384) (= (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@58) o2_28@@354 f_27@@384) (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@354 f_27@@384)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@354 f_27@@384))
))) (forall ((o2_28@@355 T@Ref) (f_27@@385 T@Field_13973_53) ) (!  (=> (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@355 f_27@@385) (= (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@58) o2_28@@355 f_27@@385) (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@355 f_27@@385)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@355 f_27@@385))
))) (forall ((o2_28@@356 T@Ref) (f_27@@386 T@Field_13973_24471) ) (!  (=> (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@356 f_27@@386) (= (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@58) o2_28@@356 f_27@@386) (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@356 f_27@@386)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@356 f_27@@386))
))) (forall ((o2_28@@357 T@Ref) (f_27@@387 T@Field_33374_33379) ) (!  (=> (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@357 f_27@@387) (= (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@58) o2_28@@357 f_27@@387) (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@357 f_27@@387)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@357 f_27@@387))
))) (forall ((o2_28@@358 T@Ref) (f_27@@388 T@Field_31895_31896) ) (!  (=> (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@58) null (WandMaskField_13942 pm_f_28@@22))) o2_28@@358 f_27@@388) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@58) o2_28@@358 f_27@@388) (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@358 f_27@@388)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| ExhaleHeap@@54) o2_28@@358 f_27@@388))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@54 Mask@@115) (IsWandField_13942_95686 pm_f_28@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_24418) (SummandMask1 T@PolymorphicMapType_24418) (SummandMask2 T@PolymorphicMapType_24418) (o_2@@119 T@Ref) (f_4@@119 T@Field_30729_30734) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ResultMask) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| SummandMask1) o_2@@119 f_4@@119) (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| SummandMask2) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ResultMask) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| SummandMask1) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| SummandMask2) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_24418) (SummandMask1@@0 T@PolymorphicMapType_24418) (SummandMask2@@0 T@PolymorphicMapType_24418) (o_2@@120 T@Ref) (f_4@@120 T@Field_30715_24471) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ResultMask@@0) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| SummandMask1@@0) o_2@@120 f_4@@120) (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| SummandMask2@@0) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ResultMask@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| SummandMask1@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| SummandMask2@@0) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_24418) (SummandMask1@@1 T@PolymorphicMapType_24418) (SummandMask2@@1 T@PolymorphicMapType_24418) (o_2@@121 T@Ref) (f_4@@121 T@Field_30715_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ResultMask@@1) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| SummandMask1@@1) o_2@@121 f_4@@121) (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| SummandMask2@@1) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ResultMask@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| SummandMask1@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| SummandMask2@@1) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_24418) (SummandMask1@@2 T@PolymorphicMapType_24418) (SummandMask2@@2 T@PolymorphicMapType_24418) (o_2@@122 T@Ref) (f_4@@122 T@Field_30715_2864) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ResultMask@@2) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| SummandMask1@@2) o_2@@122 f_4@@122) (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| SummandMask2@@2) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ResultMask@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| SummandMask1@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| SummandMask2@@2) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_24418) (SummandMask1@@3 T@PolymorphicMapType_24418) (SummandMask2@@3 T@PolymorphicMapType_24418) (o_2@@123 T@Ref) (f_4@@123 T@Field_30746_30747) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ResultMask@@3) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| SummandMask1@@3) o_2@@123 f_4@@123) (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| SummandMask2@@3) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ResultMask@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| SummandMask1@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| SummandMask2@@3) o_2@@123 f_4@@123))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_24418) (SummandMask1@@4 T@PolymorphicMapType_24418) (SummandMask2@@4 T@PolymorphicMapType_24418) (o_2@@124 T@Ref) (f_4@@124 T@Field_29623_29628) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ResultMask@@4) o_2@@124 f_4@@124) (+ (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| SummandMask1@@4) o_2@@124 f_4@@124) (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| SummandMask2@@4) o_2@@124 f_4@@124))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ResultMask@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| SummandMask1@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| SummandMask2@@4) o_2@@124 f_4@@124))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_24418) (SummandMask1@@5 T@PolymorphicMapType_24418) (SummandMask2@@5 T@PolymorphicMapType_24418) (o_2@@125 T@Ref) (f_4@@125 T@Field_29606_24471) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ResultMask@@5) o_2@@125 f_4@@125) (+ (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| SummandMask1@@5) o_2@@125 f_4@@125) (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| SummandMask2@@5) o_2@@125 f_4@@125))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ResultMask@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| SummandMask1@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| SummandMask2@@5) o_2@@125 f_4@@125))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_24418) (SummandMask1@@6 T@PolymorphicMapType_24418) (SummandMask2@@6 T@PolymorphicMapType_24418) (o_2@@126 T@Ref) (f_4@@126 T@Field_29606_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ResultMask@@6) o_2@@126 f_4@@126) (+ (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| SummandMask1@@6) o_2@@126 f_4@@126) (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| SummandMask2@@6) o_2@@126 f_4@@126))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ResultMask@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| SummandMask1@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| SummandMask2@@6) o_2@@126 f_4@@126))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_24418) (SummandMask1@@7 T@PolymorphicMapType_24418) (SummandMask2@@7 T@PolymorphicMapType_24418) (o_2@@127 T@Ref) (f_4@@127 T@Field_29606_2216) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ResultMask@@7) o_2@@127 f_4@@127) (+ (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| SummandMask1@@7) o_2@@127 f_4@@127) (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| SummandMask2@@7) o_2@@127 f_4@@127))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ResultMask@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| SummandMask1@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| SummandMask2@@7) o_2@@127 f_4@@127))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_24418) (SummandMask1@@8 T@PolymorphicMapType_24418) (SummandMask2@@8 T@PolymorphicMapType_24418) (o_2@@128 T@Ref) (f_4@@128 T@Field_29643_29644) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ResultMask@@8) o_2@@128 f_4@@128) (+ (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| SummandMask1@@8) o_2@@128 f_4@@128) (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| SummandMask2@@8) o_2@@128 f_4@@128))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ResultMask@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| SummandMask1@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| SummandMask2@@8) o_2@@128 f_4@@128))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_24418) (SummandMask1@@9 T@PolymorphicMapType_24418) (SummandMask2@@9 T@PolymorphicMapType_24418) (o_2@@129 T@Ref) (f_4@@129 T@Field_28627_28632) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ResultMask@@9) o_2@@129 f_4@@129) (+ (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| SummandMask1@@9) o_2@@129 f_4@@129) (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| SummandMask2@@9) o_2@@129 f_4@@129))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ResultMask@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| SummandMask1@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| SummandMask2@@9) o_2@@129 f_4@@129))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_24418) (SummandMask1@@10 T@PolymorphicMapType_24418) (SummandMask2@@10 T@PolymorphicMapType_24418) (o_2@@130 T@Ref) (f_4@@130 T@Field_28610_24471) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ResultMask@@10) o_2@@130 f_4@@130) (+ (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| SummandMask1@@10) o_2@@130 f_4@@130) (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| SummandMask2@@10) o_2@@130 f_4@@130))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ResultMask@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| SummandMask1@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| SummandMask2@@10) o_2@@130 f_4@@130))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_24418) (SummandMask1@@11 T@PolymorphicMapType_24418) (SummandMask2@@11 T@PolymorphicMapType_24418) (o_2@@131 T@Ref) (f_4@@131 T@Field_28610_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ResultMask@@11) o_2@@131 f_4@@131) (+ (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| SummandMask1@@11) o_2@@131 f_4@@131) (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| SummandMask2@@11) o_2@@131 f_4@@131))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ResultMask@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| SummandMask1@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| SummandMask2@@11) o_2@@131 f_4@@131))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_24418) (SummandMask1@@12 T@PolymorphicMapType_24418) (SummandMask2@@12 T@PolymorphicMapType_24418) (o_2@@132 T@Ref) (f_4@@132 T@Field_28610_1658) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ResultMask@@12) o_2@@132 f_4@@132) (+ (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| SummandMask1@@12) o_2@@132 f_4@@132) (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| SummandMask2@@12) o_2@@132 f_4@@132))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ResultMask@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| SummandMask1@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| SummandMask2@@12) o_2@@132 f_4@@132))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_24418) (SummandMask1@@13 T@PolymorphicMapType_24418) (SummandMask2@@13 T@PolymorphicMapType_24418) (o_2@@133 T@Ref) (f_4@@133 T@Field_28647_28648) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ResultMask@@13) o_2@@133 f_4@@133) (+ (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| SummandMask1@@13) o_2@@133 f_4@@133) (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| SummandMask2@@13) o_2@@133 f_4@@133))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ResultMask@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| SummandMask1@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| SummandMask2@@13) o_2@@133 f_4@@133))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_24418) (SummandMask1@@14 T@PolymorphicMapType_24418) (SummandMask2@@14 T@PolymorphicMapType_24418) (o_2@@134 T@Ref) (f_4@@134 T@Field_27803_27808) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ResultMask@@14) o_2@@134 f_4@@134) (+ (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| SummandMask1@@14) o_2@@134 f_4@@134) (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| SummandMask2@@14) o_2@@134 f_4@@134))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ResultMask@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| SummandMask1@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| SummandMask2@@14) o_2@@134 f_4@@134))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_24418) (SummandMask1@@15 T@PolymorphicMapType_24418) (SummandMask2@@15 T@PolymorphicMapType_24418) (o_2@@135 T@Ref) (f_4@@135 T@Field_27788_24471) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ResultMask@@15) o_2@@135 f_4@@135) (+ (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| SummandMask1@@15) o_2@@135 f_4@@135) (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| SummandMask2@@15) o_2@@135 f_4@@135))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ResultMask@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| SummandMask1@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| SummandMask2@@15) o_2@@135 f_4@@135))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_24418) (SummandMask1@@16 T@PolymorphicMapType_24418) (SummandMask2@@16 T@PolymorphicMapType_24418) (o_2@@136 T@Ref) (f_4@@136 T@Field_27788_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ResultMask@@16) o_2@@136 f_4@@136) (+ (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| SummandMask1@@16) o_2@@136 f_4@@136) (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| SummandMask2@@16) o_2@@136 f_4@@136))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ResultMask@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| SummandMask1@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| SummandMask2@@16) o_2@@136 f_4@@136))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_24418) (SummandMask1@@17 T@PolymorphicMapType_24418) (SummandMask2@@17 T@PolymorphicMapType_24418) (o_2@@137 T@Ref) (f_4@@137 T@Field_27788_1214) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ResultMask@@17) o_2@@137 f_4@@137) (+ (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| SummandMask1@@17) o_2@@137 f_4@@137) (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| SummandMask2@@17) o_2@@137 f_4@@137))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ResultMask@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| SummandMask1@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| SummandMask2@@17) o_2@@137 f_4@@137))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_24418) (SummandMask1@@18 T@PolymorphicMapType_24418) (SummandMask2@@18 T@PolymorphicMapType_24418) (o_2@@138 T@Ref) (f_4@@138 T@Field_27821_27822) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ResultMask@@18) o_2@@138 f_4@@138) (+ (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| SummandMask1@@18) o_2@@138 f_4@@138) (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| SummandMask2@@18) o_2@@138 f_4@@138))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ResultMask@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| SummandMask1@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| SummandMask2@@18) o_2@@138 f_4@@138))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_24418) (SummandMask1@@19 T@PolymorphicMapType_24418) (SummandMask2@@19 T@PolymorphicMapType_24418) (o_2@@139 T@Ref) (f_4@@139 T@Field_13942_27808) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ResultMask@@19) o_2@@139 f_4@@139) (+ (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| SummandMask1@@19) o_2@@139 f_4@@139) (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| SummandMask2@@19) o_2@@139 f_4@@139))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ResultMask@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| SummandMask1@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| SummandMask2@@19) o_2@@139 f_4@@139))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_24418) (SummandMask1@@20 T@PolymorphicMapType_24418) (SummandMask2@@20 T@PolymorphicMapType_24418) (o_2@@140 T@Ref) (f_4@@140 T@Field_24470_24471) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ResultMask@@20) o_2@@140 f_4@@140) (+ (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| SummandMask1@@20) o_2@@140 f_4@@140) (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| SummandMask2@@20) o_2@@140 f_4@@140))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ResultMask@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| SummandMask1@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| SummandMask2@@20) o_2@@140 f_4@@140))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_24418) (SummandMask1@@21 T@PolymorphicMapType_24418) (SummandMask2@@21 T@PolymorphicMapType_24418) (o_2@@141 T@Ref) (f_4@@141 T@Field_24457_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ResultMask@@21) o_2@@141 f_4@@141) (+ (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| SummandMask1@@21) o_2@@141 f_4@@141) (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| SummandMask2@@21) o_2@@141 f_4@@141))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ResultMask@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| SummandMask1@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| SummandMask2@@21) o_2@@141 f_4@@141))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_24418) (SummandMask1@@22 T@PolymorphicMapType_24418) (SummandMask2@@22 T@PolymorphicMapType_24418) (o_2@@142 T@Ref) (f_4@@142 T@Field_31502_3275) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ResultMask@@22) o_2@@142 f_4@@142) (+ (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| SummandMask1@@22) o_2@@142 f_4@@142) (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| SummandMask2@@22) o_2@@142 f_4@@142))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ResultMask@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| SummandMask1@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| SummandMask2@@22) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_24418) (SummandMask1@@23 T@PolymorphicMapType_24418) (SummandMask2@@23 T@PolymorphicMapType_24418) (o_2@@143 T@Ref) (f_4@@143 T@Field_13942_13974) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ResultMask@@23) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| SummandMask1@@23) o_2@@143 f_4@@143) (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| SummandMask2@@23) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ResultMask@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| SummandMask1@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| SummandMask2@@23) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_24418) (SummandMask1@@24 T@PolymorphicMapType_24418) (SummandMask2@@24 T@PolymorphicMapType_24418) (o_2@@144 T@Ref) (f_4@@144 T@Field_33374_33379) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ResultMask@@24) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| SummandMask1@@24) o_2@@144 f_4@@144) (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| SummandMask2@@24) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ResultMask@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| SummandMask1@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| SummandMask2@@24) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_24418) (SummandMask1@@25 T@PolymorphicMapType_24418) (SummandMask2@@25 T@PolymorphicMapType_24418) (o_2@@145 T@Ref) (f_4@@145 T@Field_13973_24471) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ResultMask@@25) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| SummandMask1@@25) o_2@@145 f_4@@145) (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| SummandMask2@@25) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ResultMask@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| SummandMask1@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| SummandMask2@@25) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_24418) (SummandMask1@@26 T@PolymorphicMapType_24418) (SummandMask2@@26 T@PolymorphicMapType_24418) (o_2@@146 T@Ref) (f_4@@146 T@Field_13973_53) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ResultMask@@26) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| SummandMask1@@26) o_2@@146 f_4@@146) (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| SummandMask2@@26) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ResultMask@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| SummandMask1@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| SummandMask2@@26) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_24418) (SummandMask1@@27 T@PolymorphicMapType_24418) (SummandMask2@@27 T@PolymorphicMapType_24418) (o_2@@147 T@Ref) (f_4@@147 T@Field_13973_3275) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ResultMask@@27) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| SummandMask1@@27) o_2@@147 f_4@@147) (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| SummandMask2@@27) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ResultMask@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| SummandMask1@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| SummandMask2@@27) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_24418) (SummandMask1@@28 T@PolymorphicMapType_24418) (SummandMask2@@28 T@PolymorphicMapType_24418) (o_2@@148 T@Ref) (f_4@@148 T@Field_31895_31896) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ResultMask@@28) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| SummandMask1@@28) o_2@@148 f_4@@148) (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| SummandMask2@@28) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ResultMask@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| SummandMask1@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| SummandMask2@@28) o_2@@148 f_4@@148))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_24397) (Mask@@116 T@PolymorphicMapType_24418) (p_1@@1 T@Ref) ) (!  (=> (and (state Heap@@59 Mask@@116) (< AssumeFunctionsAbove 0)) (= (sum Heap@@59 p_1@@1) (+ (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@59) p_1@@1 f_7) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@59) p_1@@1 g))))
 :qid |stdinbpl.340:15|
 :skolemid |52|
 :pattern ( (state Heap@@59 Mask@@116) (sum Heap@@59 p_1@@1))
 :pattern ( (state Heap@@59 Mask@@116) (|sum#triggerStateless| p_1@@1) (|Pair#trigger_13973| Heap@@59 (Pair p_1@@1)))
)))
(assert (forall ((arg1@@16 T@Ref) (arg2@@16 T@Ref) (arg3@@16 Int) (arg4@@16 T@Ref) (arg5@@16 T@Ref) (arg6@@16 T@Ref) (arg7@@10 T@Ref) (arg8@@10 Int) (arg1_2@@2 T@Ref) (arg2_2@@2 T@Ref) (arg3_2@@2 Int) (arg4_2@@2 T@Ref) (arg5_2@@2 T@Ref) (arg6_2@@2 T@Ref) (arg7_2@@0 T@Ref) (arg8_2@@0 Int) ) (!  (=> (= (wand_1 arg1@@16 arg2@@16 arg3@@16 arg4@@16 arg5@@16 arg6@@16 arg7@@10 arg8@@10) (wand_1 arg1_2@@2 arg2_2@@2 arg3_2@@2 arg4_2@@2 arg5_2@@2 arg6_2@@2 arg7_2@@0 arg8_2@@0)) (and (= arg1@@16 arg1_2@@2) (and (= arg2@@16 arg2_2@@2) (and (= arg3@@16 arg3_2@@2) (and (= arg4@@16 arg4_2@@2) (and (= arg5@@16 arg5_2@@2) (and (= arg6@@16 arg6_2@@2) (and (= arg7@@10 arg7_2@@0) (= arg8@@10 arg8_2@@0)))))))))
 :qid |stdinbpl.243:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@16 arg2@@16 arg3@@16 arg4@@16 arg5@@16 arg6@@16 arg7@@10 arg8@@10) (wand_1 arg1_2@@2 arg2_2@@2 arg3_2@@2 arg4_2@@2 arg5_2@@2 arg6_2@@2 arg7_2@@0 arg8_2@@0))
)))
(assert (forall ((arg1@@17 T@Ref) (arg2@@17 T@Ref) (arg3@@17 Int) (arg4@@17 T@Ref) (arg5@@17 T@Ref) (arg6@@17 Int) ) (! (IsWandField_13650_1214 (wand arg1@@17 arg2@@17 arg3@@17 arg4@@17 arg5@@17 arg6@@17))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (wand arg1@@17 arg2@@17 arg3@@17 arg4@@17 arg5@@17 arg6@@17))
)))
(assert (forall ((arg1@@18 T@Ref) (arg2@@18 T@Ref) (arg3@@18 Int) (arg4@@18 T@Ref) (arg5@@18 T@Ref) (arg6@@18 Int) ) (! (IsWandField_13663_13664 (|wand#ft| arg1@@18 arg2@@18 arg3@@18 arg4@@18 arg5@@18 arg6@@18))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@18 arg2@@18 arg3@@18 arg4@@18 arg5@@18 arg6@@18))
)))
(assert (forall ((arg1@@19 T@Ref) (arg2@@19 Real) (arg3@@19 T@Ref) (arg4@@19 Real) (arg5@@19 T@Ref) (arg6@@19 Real) ) (! (IsWandField_13874_2864 (wand_3 arg1@@19 arg2@@19 arg3@@19 arg4@@19 arg5@@19 arg6@@19))
 :qid |stdinbpl.283:15|
 :skolemid |43|
 :pattern ( (wand_3 arg1@@19 arg2@@19 arg3@@19 arg4@@19 arg5@@19 arg6@@19))
)))
(assert (forall ((arg1@@20 T@Ref) (arg2@@20 Real) (arg3@@20 T@Ref) (arg4@@20 Real) (arg5@@20 T@Ref) (arg6@@20 Real) ) (! (IsWandField_13891_13892 (|wand_3#ft| arg1@@20 arg2@@20 arg3@@20 arg4@@20 arg5@@20 arg6@@20))
 :qid |stdinbpl.287:15|
 :skolemid |44|
 :pattern ( (|wand_3#ft| arg1@@20 arg2@@20 arg3@@20 arg4@@20 arg5@@20 arg6@@20))
)))
(assert (forall ((arg1@@21 T@Ref) (arg2@@21 T@Ref) (arg3@@21 Int) (arg4@@21 T@Ref) (arg5@@21 T@Ref) (arg6@@21 Int) ) (!  (not (IsPredicateField_13650_1214 (wand arg1@@21 arg2@@21 arg3@@21 arg4@@21 arg5@@21 arg6@@21)))
 :qid |stdinbpl.195:15|
 :skolemid |24|
 :pattern ( (wand arg1@@21 arg2@@21 arg3@@21 arg4@@21 arg5@@21 arg6@@21))
)))
(assert (forall ((arg1@@22 T@Ref) (arg2@@22 T@Ref) (arg3@@22 Int) (arg4@@22 T@Ref) (arg5@@22 T@Ref) (arg6@@22 Int) ) (!  (not (IsPredicateField_13663_13664 (|wand#ft| arg1@@22 arg2@@22 arg3@@22 arg4@@22 arg5@@22 arg6@@22)))
 :qid |stdinbpl.199:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@22 arg2@@22 arg3@@22 arg4@@22 arg5@@22 arg6@@22))
)))
(assert (forall ((arg1@@23 T@Ref) (arg2@@23 Real) (arg3@@23 T@Ref) (arg4@@23 Real) (arg5@@23 T@Ref) (arg6@@23 Real) ) (!  (not (IsPredicateField_13874_2864 (wand_3 arg1@@23 arg2@@23 arg3@@23 arg4@@23 arg5@@23 arg6@@23)))
 :qid |stdinbpl.291:15|
 :skolemid |45|
 :pattern ( (wand_3 arg1@@23 arg2@@23 arg3@@23 arg4@@23 arg5@@23 arg6@@23))
)))
(assert (forall ((arg1@@24 T@Ref) (arg2@@24 Real) (arg3@@24 T@Ref) (arg4@@24 Real) (arg5@@24 T@Ref) (arg6@@24 Real) ) (!  (not (IsPredicateField_13891_13892 (|wand_3#ft| arg1@@24 arg2@@24 arg3@@24 arg4@@24 arg5@@24 arg6@@24)))
 :qid |stdinbpl.295:15|
 :skolemid |46|
 :pattern ( (|wand_3#ft| arg1@@24 arg2@@24 arg3@@24 arg4@@24 arg5@@24 arg6@@24))
)))
(assert (forall ((arg1@@25 T@Ref) (arg2@@25 T@Ref) (arg3@@25 Int) (arg4@@25 T@Ref) (arg5@@25 T@Ref) (arg6@@25 T@Ref) (arg7@@11 T@Ref) (arg8@@11 Int) ) (! (= (getPredWandId_13704_1658 (wand_1 arg1@@25 arg2@@25 arg3@@25 arg4@@25 arg5@@25 arg6@@25 arg7@@11 arg8@@11)) 2)
 :qid |stdinbpl.239:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@25 arg2@@25 arg3@@25 arg4@@25 arg5@@25 arg6@@25 arg7@@11 arg8@@11))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_24397) (Mask@@117 T@PolymorphicMapType_24418) (p_1@@2 T@Ref) ) (!  (=> (state Heap@@60 Mask@@117) (= (|sum'| Heap@@60 p_1@@2) (|sum#frame| (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@60) null (Pair p_1@@2)) p_1@@2)))
 :qid |stdinbpl.347:15|
 :skolemid |53|
 :pattern ( (state Heap@@60 Mask@@117) (|sum'| Heap@@60 p_1@@2))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_13973_13974 (Pair this@@3)) 0)
 :qid |stdinbpl.431:15|
 :skolemid |56|
 :pattern ( (Pair this@@3))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_24397) (o_22 T@Ref) (f_12 T@Field_30729_30734) (v T@PolymorphicMapType_24946) ) (! (succHeap Heap@@61 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@61) (store (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@61) o_22 f_12 v) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@61) (store (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@61) o_22 f_12 v) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@61) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_24397) (o_22@@0 T@Ref) (f_12@@0 T@Field_30746_30747) (v@@0 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@62) (store (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@62) o_22@@0 f_12@@0 v@@0) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@62) (store (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@62) o_22@@0 f_12@@0 v@@0) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@62) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_24397) (o_22@@1 T@Ref) (f_12@@1 T@Field_30715_2864) (v@@1 Int) ) (! (succHeap Heap@@63 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@63) (store (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@63) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@63) (store (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@63) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@63) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_24397) (o_22@@2 T@Ref) (f_12@@2 T@Field_30715_24471) (v@@2 T@Ref) ) (! (succHeap Heap@@64 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@64) (store (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@64) o_22@@2 f_12@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@64) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@64) (store (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@64) o_22@@2 f_12@@2 v@@2)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_24397) (o_22@@3 T@Ref) (f_12@@3 T@Field_30715_53) (v@@3 Bool) ) (! (succHeap Heap@@65 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@65) (store (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@65) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@65) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@65) (store (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@65) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_24397) (o_22@@4 T@Ref) (f_12@@4 T@Field_29623_29628) (v@@4 T@PolymorphicMapType_24946) ) (! (succHeap Heap@@66 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@66) (store (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@66) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@66) (store (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@66) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@66) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_24397) (o_22@@5 T@Ref) (f_12@@5 T@Field_29643_29644) (v@@5 T@FrameType) ) (! (succHeap Heap@@67 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@67) (store (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@67) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@67) (store (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@67) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@67) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_24397) (o_22@@6 T@Ref) (f_12@@6 T@Field_29606_2216) (v@@6 Int) ) (! (succHeap Heap@@68 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@68) (store (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@68) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@68) (store (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@68) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@68) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_24397) (o_22@@7 T@Ref) (f_12@@7 T@Field_29606_24471) (v@@7 T@Ref) ) (! (succHeap Heap@@69 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@69) (store (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@69) o_22@@7 f_12@@7 v@@7) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@69) (store (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@69) o_22@@7 f_12@@7 v@@7) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@69) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_24397) (o_22@@8 T@Ref) (f_12@@8 T@Field_29606_53) (v@@8 Bool) ) (! (succHeap Heap@@70 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@70) (store (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@70) o_22@@8 f_12@@8 v@@8) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@70) (store (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@70) o_22@@8 f_12@@8 v@@8) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@70) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_24397) (o_22@@9 T@Ref) (f_12@@9 T@Field_28627_28632) (v@@9 T@PolymorphicMapType_24946) ) (! (succHeap Heap@@71 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@71) (store (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@71) o_22@@9 f_12@@9 v@@9) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@71) (store (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@71) o_22@@9 f_12@@9 v@@9) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@71) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_24397) (o_22@@10 T@Ref) (f_12@@10 T@Field_28647_28648) (v@@10 T@FrameType) ) (! (succHeap Heap@@72 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@72) (store (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@72) o_22@@10 f_12@@10 v@@10) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@72) (store (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@72) o_22@@10 f_12@@10 v@@10) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@72) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_24397) (o_22@@11 T@Ref) (f_12@@11 T@Field_28610_1658) (v@@11 Int) ) (! (succHeap Heap@@73 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@73) (store (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@73) o_22@@11 f_12@@11 v@@11) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@73) (store (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@73) o_22@@11 f_12@@11 v@@11) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@73) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_24397) (o_22@@12 T@Ref) (f_12@@12 T@Field_28610_24471) (v@@12 T@Ref) ) (! (succHeap Heap@@74 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@74) (store (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@74) o_22@@12 f_12@@12 v@@12) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@74) (store (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@74) o_22@@12 f_12@@12 v@@12) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@74) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_24397) (o_22@@13 T@Ref) (f_12@@13 T@Field_28610_53) (v@@13 Bool) ) (! (succHeap Heap@@75 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@75) (store (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@75) o_22@@13 f_12@@13 v@@13) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@75) (store (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@75) o_22@@13 f_12@@13 v@@13) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@75) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_24397) (o_22@@14 T@Ref) (f_12@@14 T@Field_27803_27808) (v@@14 T@PolymorphicMapType_24946) ) (! (succHeap Heap@@76 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@76) (store (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@76) o_22@@14 f_12@@14 v@@14) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@76) (store (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@76) o_22@@14 f_12@@14 v@@14) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@76) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_24397) (o_22@@15 T@Ref) (f_12@@15 T@Field_27821_27822) (v@@15 T@FrameType) ) (! (succHeap Heap@@77 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@77) (store (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@77) o_22@@15 f_12@@15 v@@15) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@77) (store (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@77) o_22@@15 f_12@@15 v@@15) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@77) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_24397) (o_22@@16 T@Ref) (f_12@@16 T@Field_27788_1214) (v@@16 Int) ) (! (succHeap Heap@@78 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@78) (store (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@78) o_22@@16 f_12@@16 v@@16) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@78) (store (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@78) o_22@@16 f_12@@16 v@@16) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@78) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_24397) (o_22@@17 T@Ref) (f_12@@17 T@Field_27788_24471) (v@@17 T@Ref) ) (! (succHeap Heap@@79 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@79) (store (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@79) o_22@@17 f_12@@17 v@@17) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@79) (store (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@79) o_22@@17 f_12@@17 v@@17) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@79) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_24397) (o_22@@18 T@Ref) (f_12@@18 T@Field_27788_53) (v@@18 Bool) ) (! (succHeap Heap@@80 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@80) (store (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@80) o_22@@18 f_12@@18 v@@18) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@80) (store (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@80) o_22@@18 f_12@@18 v@@18) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@80) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_24397) (o_22@@19 T@Ref) (f_12@@19 T@Field_33374_33379) (v@@19 T@PolymorphicMapType_24946) ) (! (succHeap Heap@@81 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@81) (store (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@81) o_22@@19 f_12@@19 v@@19) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@81) (store (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@81) o_22@@19 f_12@@19 v@@19) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@81) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_24397) (o_22@@20 T@Ref) (f_12@@20 T@Field_31895_31896) (v@@20 T@FrameType) ) (! (succHeap Heap@@82 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@82) (store (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@82) o_22@@20 f_12@@20 v@@20) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@82) (store (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@82) o_22@@20 f_12@@20 v@@20) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@82) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_24397) (o_22@@21 T@Ref) (f_12@@21 T@Field_13973_3275) (v@@21 Int) ) (! (succHeap Heap@@83 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@83) (store (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@83) o_22@@21 f_12@@21 v@@21) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@83) (store (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@83) o_22@@21 f_12@@21 v@@21) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@83) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_24397) (o_22@@22 T@Ref) (f_12@@22 T@Field_13973_24471) (v@@22 T@Ref) ) (! (succHeap Heap@@84 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@84) (store (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@84) o_22@@22 f_12@@22 v@@22) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@84) (store (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@84) o_22@@22 f_12@@22 v@@22) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@84) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_24397) (o_22@@23 T@Ref) (f_12@@23 T@Field_13973_53) (v@@23 Bool) ) (! (succHeap Heap@@85 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@85) (store (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@85) o_22@@23 f_12@@23 v@@23) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@85) (store (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@85) o_22@@23 f_12@@23 v@@23) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@85) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_24397) (o_22@@24 T@Ref) (f_12@@24 T@Field_13942_27808) (v@@24 T@PolymorphicMapType_24946) ) (! (succHeap Heap@@86 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@86) (store (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@86) o_22@@24 f_12@@24 v@@24) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@86) (store (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@86) o_22@@24 f_12@@24 v@@24) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@86) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_24397) (o_22@@25 T@Ref) (f_12@@25 T@Field_13942_13974) (v@@25 T@FrameType) ) (! (succHeap Heap@@87 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@87) (store (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@87) o_22@@25 f_12@@25 v@@25) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@87) (store (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@87) o_22@@25 f_12@@25 v@@25) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@87) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_24397) (o_22@@26 T@Ref) (f_12@@26 T@Field_31502_3275) (v@@26 Int) ) (! (succHeap Heap@@88 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@88) (store (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@88) o_22@@26 f_12@@26 v@@26) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@88) (store (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@88) o_22@@26 f_12@@26 v@@26) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@88) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_24397) (o_22@@27 T@Ref) (f_12@@27 T@Field_24470_24471) (v@@27 T@Ref) ) (! (succHeap Heap@@89 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@89) (store (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@89) o_22@@27 f_12@@27 v@@27) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@89) (store (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@89) o_22@@27 f_12@@27 v@@27) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@89) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_24397) (o_22@@28 T@Ref) (f_12@@28 T@Field_24457_53) (v@@28 Bool) ) (! (succHeap Heap@@90 (PolymorphicMapType_24397 (store (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@90) o_22@@28 f_12@@28 v@@28) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24397 (store (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@90) o_22@@28 f_12@@28 v@@28) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@90) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@90)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_13973 (Pair this@@4)) (|Pair#sm| this@@4))
 :qid |stdinbpl.423:15|
 :skolemid |54|
 :pattern ( (PredicateMaskField_13973 (Pair this@@4)))
)))
(assert (forall ((o_22@@29 T@Ref) (f_30 T@Field_24470_24471) (Heap@@91 T@PolymorphicMapType_24397) ) (!  (=> (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@91) o_22@@29 $allocated) (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@91) (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@91) o_22@@29 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@91) o_22@@29 f_30))
)))
(assert (forall ((p@@6 T@Field_31895_31896) (v_1@@5 T@FrameType) (q T@Field_31895_31896) (w@@5 T@FrameType) (r T@Field_31895_31896) (u T@FrameType) ) (!  (=> (and (InsidePredicate_31895_31895 p@@6 v_1@@5 q w@@5) (InsidePredicate_31895_31895 q w@@5 r u)) (InsidePredicate_31895_31895 p@@6 v_1@@5 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_31895 p@@6 v_1@@5 q w@@5) (InsidePredicate_31895_31895 q w@@5 r u))
)))
(assert (forall ((p@@7 T@Field_31895_31896) (v_1@@6 T@FrameType) (q@@0 T@Field_31895_31896) (w@@6 T@FrameType) (r@@0 T@Field_30746_30747) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_31895 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_31895_30715 q@@0 w@@6 r@@0 u@@0)) (InsidePredicate_31895_30715 p@@7 v_1@@6 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_31895 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_31895_30715 q@@0 w@@6 r@@0 u@@0))
)))
(assert (forall ((p@@8 T@Field_31895_31896) (v_1@@7 T@FrameType) (q@@1 T@Field_31895_31896) (w@@7 T@FrameType) (r@@1 T@Field_29643_29644) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_31895 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_31895_29606 q@@1 w@@7 r@@1 u@@1)) (InsidePredicate_31895_29606 p@@8 v_1@@7 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_31895 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_31895_29606 q@@1 w@@7 r@@1 u@@1))
)))
(assert (forall ((p@@9 T@Field_31895_31896) (v_1@@8 T@FrameType) (q@@2 T@Field_31895_31896) (w@@8 T@FrameType) (r@@2 T@Field_28647_28648) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_31895 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_31895_28610 q@@2 w@@8 r@@2 u@@2)) (InsidePredicate_31895_28610 p@@9 v_1@@8 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_31895 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_31895_28610 q@@2 w@@8 r@@2 u@@2))
)))
(assert (forall ((p@@10 T@Field_31895_31896) (v_1@@9 T@FrameType) (q@@3 T@Field_31895_31896) (w@@9 T@FrameType) (r@@3 T@Field_27821_27822) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_31895 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_31895_27788 q@@3 w@@9 r@@3 u@@3)) (InsidePredicate_31895_27788 p@@10 v_1@@9 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_31895 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_31895_27788 q@@3 w@@9 r@@3 u@@3))
)))
(assert (forall ((p@@11 T@Field_31895_31896) (v_1@@10 T@FrameType) (q@@4 T@Field_31895_31896) (w@@10 T@FrameType) (r@@4 T@Field_13942_13974) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_31895 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_31895_24457 q@@4 w@@10 r@@4 u@@4)) (InsidePredicate_31895_24457 p@@11 v_1@@10 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_31895 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_31895_24457 q@@4 w@@10 r@@4 u@@4))
)))
(assert (forall ((p@@12 T@Field_31895_31896) (v_1@@11 T@FrameType) (q@@5 T@Field_30746_30747) (w@@11 T@FrameType) (r@@5 T@Field_31895_31896) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_30715 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_30715_31895 q@@5 w@@11 r@@5 u@@5)) (InsidePredicate_31895_31895 p@@12 v_1@@11 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_30715 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_30715_31895 q@@5 w@@11 r@@5 u@@5))
)))
(assert (forall ((p@@13 T@Field_31895_31896) (v_1@@12 T@FrameType) (q@@6 T@Field_30746_30747) (w@@12 T@FrameType) (r@@6 T@Field_30746_30747) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_30715 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_30715_30715 q@@6 w@@12 r@@6 u@@6)) (InsidePredicate_31895_30715 p@@13 v_1@@12 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_30715 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_30715_30715 q@@6 w@@12 r@@6 u@@6))
)))
(assert (forall ((p@@14 T@Field_31895_31896) (v_1@@13 T@FrameType) (q@@7 T@Field_30746_30747) (w@@13 T@FrameType) (r@@7 T@Field_29643_29644) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_30715 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_30715_29606 q@@7 w@@13 r@@7 u@@7)) (InsidePredicate_31895_29606 p@@14 v_1@@13 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_30715 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_30715_29606 q@@7 w@@13 r@@7 u@@7))
)))
(assert (forall ((p@@15 T@Field_31895_31896) (v_1@@14 T@FrameType) (q@@8 T@Field_30746_30747) (w@@14 T@FrameType) (r@@8 T@Field_28647_28648) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_30715 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_30715_28610 q@@8 w@@14 r@@8 u@@8)) (InsidePredicate_31895_28610 p@@15 v_1@@14 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_30715 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_30715_28610 q@@8 w@@14 r@@8 u@@8))
)))
(assert (forall ((p@@16 T@Field_31895_31896) (v_1@@15 T@FrameType) (q@@9 T@Field_30746_30747) (w@@15 T@FrameType) (r@@9 T@Field_27821_27822) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_30715 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_30715_27788 q@@9 w@@15 r@@9 u@@9)) (InsidePredicate_31895_27788 p@@16 v_1@@15 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_30715 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_30715_27788 q@@9 w@@15 r@@9 u@@9))
)))
(assert (forall ((p@@17 T@Field_31895_31896) (v_1@@16 T@FrameType) (q@@10 T@Field_30746_30747) (w@@16 T@FrameType) (r@@10 T@Field_13942_13974) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_30715 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_30715_24457 q@@10 w@@16 r@@10 u@@10)) (InsidePredicate_31895_24457 p@@17 v_1@@16 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_30715 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_30715_24457 q@@10 w@@16 r@@10 u@@10))
)))
(assert (forall ((p@@18 T@Field_31895_31896) (v_1@@17 T@FrameType) (q@@11 T@Field_29643_29644) (w@@17 T@FrameType) (r@@11 T@Field_31895_31896) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_29606 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_29606_31895 q@@11 w@@17 r@@11 u@@11)) (InsidePredicate_31895_31895 p@@18 v_1@@17 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_29606 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_29606_31895 q@@11 w@@17 r@@11 u@@11))
)))
(assert (forall ((p@@19 T@Field_31895_31896) (v_1@@18 T@FrameType) (q@@12 T@Field_29643_29644) (w@@18 T@FrameType) (r@@12 T@Field_30746_30747) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_29606 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_29606_30715 q@@12 w@@18 r@@12 u@@12)) (InsidePredicate_31895_30715 p@@19 v_1@@18 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_29606 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_29606_30715 q@@12 w@@18 r@@12 u@@12))
)))
(assert (forall ((p@@20 T@Field_31895_31896) (v_1@@19 T@FrameType) (q@@13 T@Field_29643_29644) (w@@19 T@FrameType) (r@@13 T@Field_29643_29644) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_29606 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_29606_29606 q@@13 w@@19 r@@13 u@@13)) (InsidePredicate_31895_29606 p@@20 v_1@@19 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_29606 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_29606_29606 q@@13 w@@19 r@@13 u@@13))
)))
(assert (forall ((p@@21 T@Field_31895_31896) (v_1@@20 T@FrameType) (q@@14 T@Field_29643_29644) (w@@20 T@FrameType) (r@@14 T@Field_28647_28648) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_29606 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_29606_28610 q@@14 w@@20 r@@14 u@@14)) (InsidePredicate_31895_28610 p@@21 v_1@@20 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_29606 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_29606_28610 q@@14 w@@20 r@@14 u@@14))
)))
(assert (forall ((p@@22 T@Field_31895_31896) (v_1@@21 T@FrameType) (q@@15 T@Field_29643_29644) (w@@21 T@FrameType) (r@@15 T@Field_27821_27822) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_29606 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_29606_27788 q@@15 w@@21 r@@15 u@@15)) (InsidePredicate_31895_27788 p@@22 v_1@@21 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_29606 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_29606_27788 q@@15 w@@21 r@@15 u@@15))
)))
(assert (forall ((p@@23 T@Field_31895_31896) (v_1@@22 T@FrameType) (q@@16 T@Field_29643_29644) (w@@22 T@FrameType) (r@@16 T@Field_13942_13974) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_29606 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_29606_24457 q@@16 w@@22 r@@16 u@@16)) (InsidePredicate_31895_24457 p@@23 v_1@@22 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_29606 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_29606_24457 q@@16 w@@22 r@@16 u@@16))
)))
(assert (forall ((p@@24 T@Field_31895_31896) (v_1@@23 T@FrameType) (q@@17 T@Field_28647_28648) (w@@23 T@FrameType) (r@@17 T@Field_31895_31896) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_28610 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_28610_31895 q@@17 w@@23 r@@17 u@@17)) (InsidePredicate_31895_31895 p@@24 v_1@@23 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_28610 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_28610_31895 q@@17 w@@23 r@@17 u@@17))
)))
(assert (forall ((p@@25 T@Field_31895_31896) (v_1@@24 T@FrameType) (q@@18 T@Field_28647_28648) (w@@24 T@FrameType) (r@@18 T@Field_30746_30747) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_28610 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_28610_30715 q@@18 w@@24 r@@18 u@@18)) (InsidePredicate_31895_30715 p@@25 v_1@@24 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_28610 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_28610_30715 q@@18 w@@24 r@@18 u@@18))
)))
(assert (forall ((p@@26 T@Field_31895_31896) (v_1@@25 T@FrameType) (q@@19 T@Field_28647_28648) (w@@25 T@FrameType) (r@@19 T@Field_29643_29644) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_28610 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_28610_29606 q@@19 w@@25 r@@19 u@@19)) (InsidePredicate_31895_29606 p@@26 v_1@@25 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_28610 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_28610_29606 q@@19 w@@25 r@@19 u@@19))
)))
(assert (forall ((p@@27 T@Field_31895_31896) (v_1@@26 T@FrameType) (q@@20 T@Field_28647_28648) (w@@26 T@FrameType) (r@@20 T@Field_28647_28648) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_28610 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_28610_28610 q@@20 w@@26 r@@20 u@@20)) (InsidePredicate_31895_28610 p@@27 v_1@@26 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_28610 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_28610_28610 q@@20 w@@26 r@@20 u@@20))
)))
(assert (forall ((p@@28 T@Field_31895_31896) (v_1@@27 T@FrameType) (q@@21 T@Field_28647_28648) (w@@27 T@FrameType) (r@@21 T@Field_27821_27822) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_28610 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_28610_27788 q@@21 w@@27 r@@21 u@@21)) (InsidePredicate_31895_27788 p@@28 v_1@@27 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_28610 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_28610_27788 q@@21 w@@27 r@@21 u@@21))
)))
(assert (forall ((p@@29 T@Field_31895_31896) (v_1@@28 T@FrameType) (q@@22 T@Field_28647_28648) (w@@28 T@FrameType) (r@@22 T@Field_13942_13974) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_28610 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_28610_24457 q@@22 w@@28 r@@22 u@@22)) (InsidePredicate_31895_24457 p@@29 v_1@@28 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_28610 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_28610_24457 q@@22 w@@28 r@@22 u@@22))
)))
(assert (forall ((p@@30 T@Field_31895_31896) (v_1@@29 T@FrameType) (q@@23 T@Field_27821_27822) (w@@29 T@FrameType) (r@@23 T@Field_31895_31896) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_27788 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_27788_31895 q@@23 w@@29 r@@23 u@@23)) (InsidePredicate_31895_31895 p@@30 v_1@@29 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_27788 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_27788_31895 q@@23 w@@29 r@@23 u@@23))
)))
(assert (forall ((p@@31 T@Field_31895_31896) (v_1@@30 T@FrameType) (q@@24 T@Field_27821_27822) (w@@30 T@FrameType) (r@@24 T@Field_30746_30747) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_27788 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_27788_30715 q@@24 w@@30 r@@24 u@@24)) (InsidePredicate_31895_30715 p@@31 v_1@@30 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_27788 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_27788_30715 q@@24 w@@30 r@@24 u@@24))
)))
(assert (forall ((p@@32 T@Field_31895_31896) (v_1@@31 T@FrameType) (q@@25 T@Field_27821_27822) (w@@31 T@FrameType) (r@@25 T@Field_29643_29644) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_27788 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_27788_29606 q@@25 w@@31 r@@25 u@@25)) (InsidePredicate_31895_29606 p@@32 v_1@@31 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_27788 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_27788_29606 q@@25 w@@31 r@@25 u@@25))
)))
(assert (forall ((p@@33 T@Field_31895_31896) (v_1@@32 T@FrameType) (q@@26 T@Field_27821_27822) (w@@32 T@FrameType) (r@@26 T@Field_28647_28648) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_27788 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_27788_28610 q@@26 w@@32 r@@26 u@@26)) (InsidePredicate_31895_28610 p@@33 v_1@@32 r@@26 u@@26))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_27788 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_27788_28610 q@@26 w@@32 r@@26 u@@26))
)))
(assert (forall ((p@@34 T@Field_31895_31896) (v_1@@33 T@FrameType) (q@@27 T@Field_27821_27822) (w@@33 T@FrameType) (r@@27 T@Field_27821_27822) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_27788 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_27788_27788 q@@27 w@@33 r@@27 u@@27)) (InsidePredicate_31895_27788 p@@34 v_1@@33 r@@27 u@@27))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_27788 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_27788_27788 q@@27 w@@33 r@@27 u@@27))
)))
(assert (forall ((p@@35 T@Field_31895_31896) (v_1@@34 T@FrameType) (q@@28 T@Field_27821_27822) (w@@34 T@FrameType) (r@@28 T@Field_13942_13974) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_27788 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_27788_24457 q@@28 w@@34 r@@28 u@@28)) (InsidePredicate_31895_24457 p@@35 v_1@@34 r@@28 u@@28))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_27788 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_27788_24457 q@@28 w@@34 r@@28 u@@28))
)))
(assert (forall ((p@@36 T@Field_31895_31896) (v_1@@35 T@FrameType) (q@@29 T@Field_13942_13974) (w@@35 T@FrameType) (r@@29 T@Field_31895_31896) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_24457 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_24457_31895 q@@29 w@@35 r@@29 u@@29)) (InsidePredicate_31895_31895 p@@36 v_1@@35 r@@29 u@@29))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_24457 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_24457_31895 q@@29 w@@35 r@@29 u@@29))
)))
(assert (forall ((p@@37 T@Field_31895_31896) (v_1@@36 T@FrameType) (q@@30 T@Field_13942_13974) (w@@36 T@FrameType) (r@@30 T@Field_30746_30747) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_24457 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_24457_30715 q@@30 w@@36 r@@30 u@@30)) (InsidePredicate_31895_30715 p@@37 v_1@@36 r@@30 u@@30))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_24457 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_24457_30715 q@@30 w@@36 r@@30 u@@30))
)))
(assert (forall ((p@@38 T@Field_31895_31896) (v_1@@37 T@FrameType) (q@@31 T@Field_13942_13974) (w@@37 T@FrameType) (r@@31 T@Field_29643_29644) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_24457 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_24457_29606 q@@31 w@@37 r@@31 u@@31)) (InsidePredicate_31895_29606 p@@38 v_1@@37 r@@31 u@@31))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_24457 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_24457_29606 q@@31 w@@37 r@@31 u@@31))
)))
(assert (forall ((p@@39 T@Field_31895_31896) (v_1@@38 T@FrameType) (q@@32 T@Field_13942_13974) (w@@38 T@FrameType) (r@@32 T@Field_28647_28648) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_24457 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_24457_28610 q@@32 w@@38 r@@32 u@@32)) (InsidePredicate_31895_28610 p@@39 v_1@@38 r@@32 u@@32))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_24457 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_24457_28610 q@@32 w@@38 r@@32 u@@32))
)))
(assert (forall ((p@@40 T@Field_31895_31896) (v_1@@39 T@FrameType) (q@@33 T@Field_13942_13974) (w@@39 T@FrameType) (r@@33 T@Field_27821_27822) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_24457 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_24457_27788 q@@33 w@@39 r@@33 u@@33)) (InsidePredicate_31895_27788 p@@40 v_1@@39 r@@33 u@@33))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_24457 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_24457_27788 q@@33 w@@39 r@@33 u@@33))
)))
(assert (forall ((p@@41 T@Field_31895_31896) (v_1@@40 T@FrameType) (q@@34 T@Field_13942_13974) (w@@40 T@FrameType) (r@@34 T@Field_13942_13974) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_31895_24457 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_24457_24457 q@@34 w@@40 r@@34 u@@34)) (InsidePredicate_31895_24457 p@@41 v_1@@40 r@@34 u@@34))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31895_24457 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_24457_24457 q@@34 w@@40 r@@34 u@@34))
)))
(assert (forall ((p@@42 T@Field_30746_30747) (v_1@@41 T@FrameType) (q@@35 T@Field_31895_31896) (w@@41 T@FrameType) (r@@35 T@Field_31895_31896) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_31895 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_31895_31895 q@@35 w@@41 r@@35 u@@35)) (InsidePredicate_30715_31895 p@@42 v_1@@41 r@@35 u@@35))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_31895 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_31895_31895 q@@35 w@@41 r@@35 u@@35))
)))
(assert (forall ((p@@43 T@Field_30746_30747) (v_1@@42 T@FrameType) (q@@36 T@Field_31895_31896) (w@@42 T@FrameType) (r@@36 T@Field_30746_30747) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_31895 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_31895_30715 q@@36 w@@42 r@@36 u@@36)) (InsidePredicate_30715_30715 p@@43 v_1@@42 r@@36 u@@36))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_31895 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_31895_30715 q@@36 w@@42 r@@36 u@@36))
)))
(assert (forall ((p@@44 T@Field_30746_30747) (v_1@@43 T@FrameType) (q@@37 T@Field_31895_31896) (w@@43 T@FrameType) (r@@37 T@Field_29643_29644) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_31895 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_31895_29606 q@@37 w@@43 r@@37 u@@37)) (InsidePredicate_30715_29606 p@@44 v_1@@43 r@@37 u@@37))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_31895 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_31895_29606 q@@37 w@@43 r@@37 u@@37))
)))
(assert (forall ((p@@45 T@Field_30746_30747) (v_1@@44 T@FrameType) (q@@38 T@Field_31895_31896) (w@@44 T@FrameType) (r@@38 T@Field_28647_28648) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_31895 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_31895_28610 q@@38 w@@44 r@@38 u@@38)) (InsidePredicate_30715_28610 p@@45 v_1@@44 r@@38 u@@38))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_31895 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_31895_28610 q@@38 w@@44 r@@38 u@@38))
)))
(assert (forall ((p@@46 T@Field_30746_30747) (v_1@@45 T@FrameType) (q@@39 T@Field_31895_31896) (w@@45 T@FrameType) (r@@39 T@Field_27821_27822) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_31895 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_31895_27788 q@@39 w@@45 r@@39 u@@39)) (InsidePredicate_30715_27788 p@@46 v_1@@45 r@@39 u@@39))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_31895 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_31895_27788 q@@39 w@@45 r@@39 u@@39))
)))
(assert (forall ((p@@47 T@Field_30746_30747) (v_1@@46 T@FrameType) (q@@40 T@Field_31895_31896) (w@@46 T@FrameType) (r@@40 T@Field_13942_13974) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_31895 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_31895_24457 q@@40 w@@46 r@@40 u@@40)) (InsidePredicate_30715_24457 p@@47 v_1@@46 r@@40 u@@40))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_31895 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_31895_24457 q@@40 w@@46 r@@40 u@@40))
)))
(assert (forall ((p@@48 T@Field_30746_30747) (v_1@@47 T@FrameType) (q@@41 T@Field_30746_30747) (w@@47 T@FrameType) (r@@41 T@Field_31895_31896) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_30715 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_30715_31895 q@@41 w@@47 r@@41 u@@41)) (InsidePredicate_30715_31895 p@@48 v_1@@47 r@@41 u@@41))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_30715 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_30715_31895 q@@41 w@@47 r@@41 u@@41))
)))
(assert (forall ((p@@49 T@Field_30746_30747) (v_1@@48 T@FrameType) (q@@42 T@Field_30746_30747) (w@@48 T@FrameType) (r@@42 T@Field_30746_30747) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_30715 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_30715_30715 q@@42 w@@48 r@@42 u@@42)) (InsidePredicate_30715_30715 p@@49 v_1@@48 r@@42 u@@42))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_30715 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_30715_30715 q@@42 w@@48 r@@42 u@@42))
)))
(assert (forall ((p@@50 T@Field_30746_30747) (v_1@@49 T@FrameType) (q@@43 T@Field_30746_30747) (w@@49 T@FrameType) (r@@43 T@Field_29643_29644) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_30715 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_30715_29606 q@@43 w@@49 r@@43 u@@43)) (InsidePredicate_30715_29606 p@@50 v_1@@49 r@@43 u@@43))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_30715 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_30715_29606 q@@43 w@@49 r@@43 u@@43))
)))
(assert (forall ((p@@51 T@Field_30746_30747) (v_1@@50 T@FrameType) (q@@44 T@Field_30746_30747) (w@@50 T@FrameType) (r@@44 T@Field_28647_28648) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_30715 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_30715_28610 q@@44 w@@50 r@@44 u@@44)) (InsidePredicate_30715_28610 p@@51 v_1@@50 r@@44 u@@44))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_30715 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_30715_28610 q@@44 w@@50 r@@44 u@@44))
)))
(assert (forall ((p@@52 T@Field_30746_30747) (v_1@@51 T@FrameType) (q@@45 T@Field_30746_30747) (w@@51 T@FrameType) (r@@45 T@Field_27821_27822) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_30715 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_30715_27788 q@@45 w@@51 r@@45 u@@45)) (InsidePredicate_30715_27788 p@@52 v_1@@51 r@@45 u@@45))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_30715 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_30715_27788 q@@45 w@@51 r@@45 u@@45))
)))
(assert (forall ((p@@53 T@Field_30746_30747) (v_1@@52 T@FrameType) (q@@46 T@Field_30746_30747) (w@@52 T@FrameType) (r@@46 T@Field_13942_13974) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_30715 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_30715_24457 q@@46 w@@52 r@@46 u@@46)) (InsidePredicate_30715_24457 p@@53 v_1@@52 r@@46 u@@46))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_30715 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_30715_24457 q@@46 w@@52 r@@46 u@@46))
)))
(assert (forall ((p@@54 T@Field_30746_30747) (v_1@@53 T@FrameType) (q@@47 T@Field_29643_29644) (w@@53 T@FrameType) (r@@47 T@Field_31895_31896) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_29606 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_29606_31895 q@@47 w@@53 r@@47 u@@47)) (InsidePredicate_30715_31895 p@@54 v_1@@53 r@@47 u@@47))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_29606 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_29606_31895 q@@47 w@@53 r@@47 u@@47))
)))
(assert (forall ((p@@55 T@Field_30746_30747) (v_1@@54 T@FrameType) (q@@48 T@Field_29643_29644) (w@@54 T@FrameType) (r@@48 T@Field_30746_30747) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_29606 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_29606_30715 q@@48 w@@54 r@@48 u@@48)) (InsidePredicate_30715_30715 p@@55 v_1@@54 r@@48 u@@48))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_29606 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_29606_30715 q@@48 w@@54 r@@48 u@@48))
)))
(assert (forall ((p@@56 T@Field_30746_30747) (v_1@@55 T@FrameType) (q@@49 T@Field_29643_29644) (w@@55 T@FrameType) (r@@49 T@Field_29643_29644) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_29606 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_29606_29606 q@@49 w@@55 r@@49 u@@49)) (InsidePredicate_30715_29606 p@@56 v_1@@55 r@@49 u@@49))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_29606 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_29606_29606 q@@49 w@@55 r@@49 u@@49))
)))
(assert (forall ((p@@57 T@Field_30746_30747) (v_1@@56 T@FrameType) (q@@50 T@Field_29643_29644) (w@@56 T@FrameType) (r@@50 T@Field_28647_28648) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_29606 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_29606_28610 q@@50 w@@56 r@@50 u@@50)) (InsidePredicate_30715_28610 p@@57 v_1@@56 r@@50 u@@50))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_29606 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_29606_28610 q@@50 w@@56 r@@50 u@@50))
)))
(assert (forall ((p@@58 T@Field_30746_30747) (v_1@@57 T@FrameType) (q@@51 T@Field_29643_29644) (w@@57 T@FrameType) (r@@51 T@Field_27821_27822) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_29606 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_29606_27788 q@@51 w@@57 r@@51 u@@51)) (InsidePredicate_30715_27788 p@@58 v_1@@57 r@@51 u@@51))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_29606 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_29606_27788 q@@51 w@@57 r@@51 u@@51))
)))
(assert (forall ((p@@59 T@Field_30746_30747) (v_1@@58 T@FrameType) (q@@52 T@Field_29643_29644) (w@@58 T@FrameType) (r@@52 T@Field_13942_13974) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_29606 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_29606_24457 q@@52 w@@58 r@@52 u@@52)) (InsidePredicate_30715_24457 p@@59 v_1@@58 r@@52 u@@52))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_29606 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_29606_24457 q@@52 w@@58 r@@52 u@@52))
)))
(assert (forall ((p@@60 T@Field_30746_30747) (v_1@@59 T@FrameType) (q@@53 T@Field_28647_28648) (w@@59 T@FrameType) (r@@53 T@Field_31895_31896) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_28610 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_28610_31895 q@@53 w@@59 r@@53 u@@53)) (InsidePredicate_30715_31895 p@@60 v_1@@59 r@@53 u@@53))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_28610 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_28610_31895 q@@53 w@@59 r@@53 u@@53))
)))
(assert (forall ((p@@61 T@Field_30746_30747) (v_1@@60 T@FrameType) (q@@54 T@Field_28647_28648) (w@@60 T@FrameType) (r@@54 T@Field_30746_30747) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_28610 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_28610_30715 q@@54 w@@60 r@@54 u@@54)) (InsidePredicate_30715_30715 p@@61 v_1@@60 r@@54 u@@54))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_28610 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_28610_30715 q@@54 w@@60 r@@54 u@@54))
)))
(assert (forall ((p@@62 T@Field_30746_30747) (v_1@@61 T@FrameType) (q@@55 T@Field_28647_28648) (w@@61 T@FrameType) (r@@55 T@Field_29643_29644) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_28610 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_28610_29606 q@@55 w@@61 r@@55 u@@55)) (InsidePredicate_30715_29606 p@@62 v_1@@61 r@@55 u@@55))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_28610 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_28610_29606 q@@55 w@@61 r@@55 u@@55))
)))
(assert (forall ((p@@63 T@Field_30746_30747) (v_1@@62 T@FrameType) (q@@56 T@Field_28647_28648) (w@@62 T@FrameType) (r@@56 T@Field_28647_28648) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_28610 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_28610_28610 q@@56 w@@62 r@@56 u@@56)) (InsidePredicate_30715_28610 p@@63 v_1@@62 r@@56 u@@56))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_28610 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_28610_28610 q@@56 w@@62 r@@56 u@@56))
)))
(assert (forall ((p@@64 T@Field_30746_30747) (v_1@@63 T@FrameType) (q@@57 T@Field_28647_28648) (w@@63 T@FrameType) (r@@57 T@Field_27821_27822) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_28610 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_28610_27788 q@@57 w@@63 r@@57 u@@57)) (InsidePredicate_30715_27788 p@@64 v_1@@63 r@@57 u@@57))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_28610 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_28610_27788 q@@57 w@@63 r@@57 u@@57))
)))
(assert (forall ((p@@65 T@Field_30746_30747) (v_1@@64 T@FrameType) (q@@58 T@Field_28647_28648) (w@@64 T@FrameType) (r@@58 T@Field_13942_13974) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_28610 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_28610_24457 q@@58 w@@64 r@@58 u@@58)) (InsidePredicate_30715_24457 p@@65 v_1@@64 r@@58 u@@58))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_28610 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_28610_24457 q@@58 w@@64 r@@58 u@@58))
)))
(assert (forall ((p@@66 T@Field_30746_30747) (v_1@@65 T@FrameType) (q@@59 T@Field_27821_27822) (w@@65 T@FrameType) (r@@59 T@Field_31895_31896) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_27788 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_27788_31895 q@@59 w@@65 r@@59 u@@59)) (InsidePredicate_30715_31895 p@@66 v_1@@65 r@@59 u@@59))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_27788 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_27788_31895 q@@59 w@@65 r@@59 u@@59))
)))
(assert (forall ((p@@67 T@Field_30746_30747) (v_1@@66 T@FrameType) (q@@60 T@Field_27821_27822) (w@@66 T@FrameType) (r@@60 T@Field_30746_30747) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_27788 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_27788_30715 q@@60 w@@66 r@@60 u@@60)) (InsidePredicate_30715_30715 p@@67 v_1@@66 r@@60 u@@60))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_27788 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_27788_30715 q@@60 w@@66 r@@60 u@@60))
)))
(assert (forall ((p@@68 T@Field_30746_30747) (v_1@@67 T@FrameType) (q@@61 T@Field_27821_27822) (w@@67 T@FrameType) (r@@61 T@Field_29643_29644) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_27788 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_27788_29606 q@@61 w@@67 r@@61 u@@61)) (InsidePredicate_30715_29606 p@@68 v_1@@67 r@@61 u@@61))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_27788 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_27788_29606 q@@61 w@@67 r@@61 u@@61))
)))
(assert (forall ((p@@69 T@Field_30746_30747) (v_1@@68 T@FrameType) (q@@62 T@Field_27821_27822) (w@@68 T@FrameType) (r@@62 T@Field_28647_28648) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_27788 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_27788_28610 q@@62 w@@68 r@@62 u@@62)) (InsidePredicate_30715_28610 p@@69 v_1@@68 r@@62 u@@62))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_27788 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_27788_28610 q@@62 w@@68 r@@62 u@@62))
)))
(assert (forall ((p@@70 T@Field_30746_30747) (v_1@@69 T@FrameType) (q@@63 T@Field_27821_27822) (w@@69 T@FrameType) (r@@63 T@Field_27821_27822) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_27788 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_27788_27788 q@@63 w@@69 r@@63 u@@63)) (InsidePredicate_30715_27788 p@@70 v_1@@69 r@@63 u@@63))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_27788 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_27788_27788 q@@63 w@@69 r@@63 u@@63))
)))
(assert (forall ((p@@71 T@Field_30746_30747) (v_1@@70 T@FrameType) (q@@64 T@Field_27821_27822) (w@@70 T@FrameType) (r@@64 T@Field_13942_13974) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_27788 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_27788_24457 q@@64 w@@70 r@@64 u@@64)) (InsidePredicate_30715_24457 p@@71 v_1@@70 r@@64 u@@64))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_27788 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_27788_24457 q@@64 w@@70 r@@64 u@@64))
)))
(assert (forall ((p@@72 T@Field_30746_30747) (v_1@@71 T@FrameType) (q@@65 T@Field_13942_13974) (w@@71 T@FrameType) (r@@65 T@Field_31895_31896) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_24457 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_24457_31895 q@@65 w@@71 r@@65 u@@65)) (InsidePredicate_30715_31895 p@@72 v_1@@71 r@@65 u@@65))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_24457 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_24457_31895 q@@65 w@@71 r@@65 u@@65))
)))
(assert (forall ((p@@73 T@Field_30746_30747) (v_1@@72 T@FrameType) (q@@66 T@Field_13942_13974) (w@@72 T@FrameType) (r@@66 T@Field_30746_30747) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_24457 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_24457_30715 q@@66 w@@72 r@@66 u@@66)) (InsidePredicate_30715_30715 p@@73 v_1@@72 r@@66 u@@66))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_24457 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_24457_30715 q@@66 w@@72 r@@66 u@@66))
)))
(assert (forall ((p@@74 T@Field_30746_30747) (v_1@@73 T@FrameType) (q@@67 T@Field_13942_13974) (w@@73 T@FrameType) (r@@67 T@Field_29643_29644) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_24457 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_24457_29606 q@@67 w@@73 r@@67 u@@67)) (InsidePredicate_30715_29606 p@@74 v_1@@73 r@@67 u@@67))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_24457 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_24457_29606 q@@67 w@@73 r@@67 u@@67))
)))
(assert (forall ((p@@75 T@Field_30746_30747) (v_1@@74 T@FrameType) (q@@68 T@Field_13942_13974) (w@@74 T@FrameType) (r@@68 T@Field_28647_28648) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_24457 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_24457_28610 q@@68 w@@74 r@@68 u@@68)) (InsidePredicate_30715_28610 p@@75 v_1@@74 r@@68 u@@68))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_24457 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_24457_28610 q@@68 w@@74 r@@68 u@@68))
)))
(assert (forall ((p@@76 T@Field_30746_30747) (v_1@@75 T@FrameType) (q@@69 T@Field_13942_13974) (w@@75 T@FrameType) (r@@69 T@Field_27821_27822) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_24457 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_24457_27788 q@@69 w@@75 r@@69 u@@69)) (InsidePredicate_30715_27788 p@@76 v_1@@75 r@@69 u@@69))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_24457 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_24457_27788 q@@69 w@@75 r@@69 u@@69))
)))
(assert (forall ((p@@77 T@Field_30746_30747) (v_1@@76 T@FrameType) (q@@70 T@Field_13942_13974) (w@@76 T@FrameType) (r@@70 T@Field_13942_13974) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_30715_24457 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_24457_24457 q@@70 w@@76 r@@70 u@@70)) (InsidePredicate_30715_24457 p@@77 v_1@@76 r@@70 u@@70))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30715_24457 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_24457_24457 q@@70 w@@76 r@@70 u@@70))
)))
(assert (forall ((p@@78 T@Field_29643_29644) (v_1@@77 T@FrameType) (q@@71 T@Field_31895_31896) (w@@77 T@FrameType) (r@@71 T@Field_31895_31896) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_31895 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_31895_31895 q@@71 w@@77 r@@71 u@@71)) (InsidePredicate_29606_31895 p@@78 v_1@@77 r@@71 u@@71))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_31895 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_31895_31895 q@@71 w@@77 r@@71 u@@71))
)))
(assert (forall ((p@@79 T@Field_29643_29644) (v_1@@78 T@FrameType) (q@@72 T@Field_31895_31896) (w@@78 T@FrameType) (r@@72 T@Field_30746_30747) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_31895 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_31895_30715 q@@72 w@@78 r@@72 u@@72)) (InsidePredicate_29606_30715 p@@79 v_1@@78 r@@72 u@@72))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_31895 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_31895_30715 q@@72 w@@78 r@@72 u@@72))
)))
(assert (forall ((p@@80 T@Field_29643_29644) (v_1@@79 T@FrameType) (q@@73 T@Field_31895_31896) (w@@79 T@FrameType) (r@@73 T@Field_29643_29644) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_31895 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_31895_29606 q@@73 w@@79 r@@73 u@@73)) (InsidePredicate_29606_29606 p@@80 v_1@@79 r@@73 u@@73))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_31895 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_31895_29606 q@@73 w@@79 r@@73 u@@73))
)))
(assert (forall ((p@@81 T@Field_29643_29644) (v_1@@80 T@FrameType) (q@@74 T@Field_31895_31896) (w@@80 T@FrameType) (r@@74 T@Field_28647_28648) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_31895 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_31895_28610 q@@74 w@@80 r@@74 u@@74)) (InsidePredicate_29606_28610 p@@81 v_1@@80 r@@74 u@@74))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_31895 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_31895_28610 q@@74 w@@80 r@@74 u@@74))
)))
(assert (forall ((p@@82 T@Field_29643_29644) (v_1@@81 T@FrameType) (q@@75 T@Field_31895_31896) (w@@81 T@FrameType) (r@@75 T@Field_27821_27822) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_31895 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_31895_27788 q@@75 w@@81 r@@75 u@@75)) (InsidePredicate_29606_27788 p@@82 v_1@@81 r@@75 u@@75))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_31895 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_31895_27788 q@@75 w@@81 r@@75 u@@75))
)))
(assert (forall ((p@@83 T@Field_29643_29644) (v_1@@82 T@FrameType) (q@@76 T@Field_31895_31896) (w@@82 T@FrameType) (r@@76 T@Field_13942_13974) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_31895 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_31895_24457 q@@76 w@@82 r@@76 u@@76)) (InsidePredicate_29606_24457 p@@83 v_1@@82 r@@76 u@@76))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_31895 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_31895_24457 q@@76 w@@82 r@@76 u@@76))
)))
(assert (forall ((p@@84 T@Field_29643_29644) (v_1@@83 T@FrameType) (q@@77 T@Field_30746_30747) (w@@83 T@FrameType) (r@@77 T@Field_31895_31896) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_30715 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_30715_31895 q@@77 w@@83 r@@77 u@@77)) (InsidePredicate_29606_31895 p@@84 v_1@@83 r@@77 u@@77))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_30715 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_30715_31895 q@@77 w@@83 r@@77 u@@77))
)))
(assert (forall ((p@@85 T@Field_29643_29644) (v_1@@84 T@FrameType) (q@@78 T@Field_30746_30747) (w@@84 T@FrameType) (r@@78 T@Field_30746_30747) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_30715 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_30715_30715 q@@78 w@@84 r@@78 u@@78)) (InsidePredicate_29606_30715 p@@85 v_1@@84 r@@78 u@@78))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_30715 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_30715_30715 q@@78 w@@84 r@@78 u@@78))
)))
(assert (forall ((p@@86 T@Field_29643_29644) (v_1@@85 T@FrameType) (q@@79 T@Field_30746_30747) (w@@85 T@FrameType) (r@@79 T@Field_29643_29644) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_30715 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_30715_29606 q@@79 w@@85 r@@79 u@@79)) (InsidePredicate_29606_29606 p@@86 v_1@@85 r@@79 u@@79))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_30715 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_30715_29606 q@@79 w@@85 r@@79 u@@79))
)))
(assert (forall ((p@@87 T@Field_29643_29644) (v_1@@86 T@FrameType) (q@@80 T@Field_30746_30747) (w@@86 T@FrameType) (r@@80 T@Field_28647_28648) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_30715 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_30715_28610 q@@80 w@@86 r@@80 u@@80)) (InsidePredicate_29606_28610 p@@87 v_1@@86 r@@80 u@@80))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_30715 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_30715_28610 q@@80 w@@86 r@@80 u@@80))
)))
(assert (forall ((p@@88 T@Field_29643_29644) (v_1@@87 T@FrameType) (q@@81 T@Field_30746_30747) (w@@87 T@FrameType) (r@@81 T@Field_27821_27822) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_30715 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_30715_27788 q@@81 w@@87 r@@81 u@@81)) (InsidePredicate_29606_27788 p@@88 v_1@@87 r@@81 u@@81))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_30715 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_30715_27788 q@@81 w@@87 r@@81 u@@81))
)))
(assert (forall ((p@@89 T@Field_29643_29644) (v_1@@88 T@FrameType) (q@@82 T@Field_30746_30747) (w@@88 T@FrameType) (r@@82 T@Field_13942_13974) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_30715 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_30715_24457 q@@82 w@@88 r@@82 u@@82)) (InsidePredicate_29606_24457 p@@89 v_1@@88 r@@82 u@@82))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_30715 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_30715_24457 q@@82 w@@88 r@@82 u@@82))
)))
(assert (forall ((p@@90 T@Field_29643_29644) (v_1@@89 T@FrameType) (q@@83 T@Field_29643_29644) (w@@89 T@FrameType) (r@@83 T@Field_31895_31896) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_29606 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_29606_31895 q@@83 w@@89 r@@83 u@@83)) (InsidePredicate_29606_31895 p@@90 v_1@@89 r@@83 u@@83))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_29606 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_29606_31895 q@@83 w@@89 r@@83 u@@83))
)))
(assert (forall ((p@@91 T@Field_29643_29644) (v_1@@90 T@FrameType) (q@@84 T@Field_29643_29644) (w@@90 T@FrameType) (r@@84 T@Field_30746_30747) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_29606 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_29606_30715 q@@84 w@@90 r@@84 u@@84)) (InsidePredicate_29606_30715 p@@91 v_1@@90 r@@84 u@@84))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_29606 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_29606_30715 q@@84 w@@90 r@@84 u@@84))
)))
(assert (forall ((p@@92 T@Field_29643_29644) (v_1@@91 T@FrameType) (q@@85 T@Field_29643_29644) (w@@91 T@FrameType) (r@@85 T@Field_29643_29644) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_29606 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_29606_29606 q@@85 w@@91 r@@85 u@@85)) (InsidePredicate_29606_29606 p@@92 v_1@@91 r@@85 u@@85))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_29606 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_29606_29606 q@@85 w@@91 r@@85 u@@85))
)))
(assert (forall ((p@@93 T@Field_29643_29644) (v_1@@92 T@FrameType) (q@@86 T@Field_29643_29644) (w@@92 T@FrameType) (r@@86 T@Field_28647_28648) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_29606 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_29606_28610 q@@86 w@@92 r@@86 u@@86)) (InsidePredicate_29606_28610 p@@93 v_1@@92 r@@86 u@@86))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_29606 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_29606_28610 q@@86 w@@92 r@@86 u@@86))
)))
(assert (forall ((p@@94 T@Field_29643_29644) (v_1@@93 T@FrameType) (q@@87 T@Field_29643_29644) (w@@93 T@FrameType) (r@@87 T@Field_27821_27822) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_29606 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_29606_27788 q@@87 w@@93 r@@87 u@@87)) (InsidePredicate_29606_27788 p@@94 v_1@@93 r@@87 u@@87))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_29606 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_29606_27788 q@@87 w@@93 r@@87 u@@87))
)))
(assert (forall ((p@@95 T@Field_29643_29644) (v_1@@94 T@FrameType) (q@@88 T@Field_29643_29644) (w@@94 T@FrameType) (r@@88 T@Field_13942_13974) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_29606 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_29606_24457 q@@88 w@@94 r@@88 u@@88)) (InsidePredicate_29606_24457 p@@95 v_1@@94 r@@88 u@@88))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_29606 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_29606_24457 q@@88 w@@94 r@@88 u@@88))
)))
(assert (forall ((p@@96 T@Field_29643_29644) (v_1@@95 T@FrameType) (q@@89 T@Field_28647_28648) (w@@95 T@FrameType) (r@@89 T@Field_31895_31896) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_28610 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_28610_31895 q@@89 w@@95 r@@89 u@@89)) (InsidePredicate_29606_31895 p@@96 v_1@@95 r@@89 u@@89))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_28610 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_28610_31895 q@@89 w@@95 r@@89 u@@89))
)))
(assert (forall ((p@@97 T@Field_29643_29644) (v_1@@96 T@FrameType) (q@@90 T@Field_28647_28648) (w@@96 T@FrameType) (r@@90 T@Field_30746_30747) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_28610 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_28610_30715 q@@90 w@@96 r@@90 u@@90)) (InsidePredicate_29606_30715 p@@97 v_1@@96 r@@90 u@@90))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_28610 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_28610_30715 q@@90 w@@96 r@@90 u@@90))
)))
(assert (forall ((p@@98 T@Field_29643_29644) (v_1@@97 T@FrameType) (q@@91 T@Field_28647_28648) (w@@97 T@FrameType) (r@@91 T@Field_29643_29644) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_28610 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_28610_29606 q@@91 w@@97 r@@91 u@@91)) (InsidePredicate_29606_29606 p@@98 v_1@@97 r@@91 u@@91))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_28610 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_28610_29606 q@@91 w@@97 r@@91 u@@91))
)))
(assert (forall ((p@@99 T@Field_29643_29644) (v_1@@98 T@FrameType) (q@@92 T@Field_28647_28648) (w@@98 T@FrameType) (r@@92 T@Field_28647_28648) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_28610 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_28610_28610 q@@92 w@@98 r@@92 u@@92)) (InsidePredicate_29606_28610 p@@99 v_1@@98 r@@92 u@@92))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_28610 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_28610_28610 q@@92 w@@98 r@@92 u@@92))
)))
(assert (forall ((p@@100 T@Field_29643_29644) (v_1@@99 T@FrameType) (q@@93 T@Field_28647_28648) (w@@99 T@FrameType) (r@@93 T@Field_27821_27822) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_28610 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_28610_27788 q@@93 w@@99 r@@93 u@@93)) (InsidePredicate_29606_27788 p@@100 v_1@@99 r@@93 u@@93))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_28610 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_28610_27788 q@@93 w@@99 r@@93 u@@93))
)))
(assert (forall ((p@@101 T@Field_29643_29644) (v_1@@100 T@FrameType) (q@@94 T@Field_28647_28648) (w@@100 T@FrameType) (r@@94 T@Field_13942_13974) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_28610 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_28610_24457 q@@94 w@@100 r@@94 u@@94)) (InsidePredicate_29606_24457 p@@101 v_1@@100 r@@94 u@@94))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_28610 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_28610_24457 q@@94 w@@100 r@@94 u@@94))
)))
(assert (forall ((p@@102 T@Field_29643_29644) (v_1@@101 T@FrameType) (q@@95 T@Field_27821_27822) (w@@101 T@FrameType) (r@@95 T@Field_31895_31896) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_27788 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_27788_31895 q@@95 w@@101 r@@95 u@@95)) (InsidePredicate_29606_31895 p@@102 v_1@@101 r@@95 u@@95))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_27788 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_27788_31895 q@@95 w@@101 r@@95 u@@95))
)))
(assert (forall ((p@@103 T@Field_29643_29644) (v_1@@102 T@FrameType) (q@@96 T@Field_27821_27822) (w@@102 T@FrameType) (r@@96 T@Field_30746_30747) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_27788 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_27788_30715 q@@96 w@@102 r@@96 u@@96)) (InsidePredicate_29606_30715 p@@103 v_1@@102 r@@96 u@@96))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_27788 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_27788_30715 q@@96 w@@102 r@@96 u@@96))
)))
(assert (forall ((p@@104 T@Field_29643_29644) (v_1@@103 T@FrameType) (q@@97 T@Field_27821_27822) (w@@103 T@FrameType) (r@@97 T@Field_29643_29644) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_27788 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_27788_29606 q@@97 w@@103 r@@97 u@@97)) (InsidePredicate_29606_29606 p@@104 v_1@@103 r@@97 u@@97))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_27788 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_27788_29606 q@@97 w@@103 r@@97 u@@97))
)))
(assert (forall ((p@@105 T@Field_29643_29644) (v_1@@104 T@FrameType) (q@@98 T@Field_27821_27822) (w@@104 T@FrameType) (r@@98 T@Field_28647_28648) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_27788 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_27788_28610 q@@98 w@@104 r@@98 u@@98)) (InsidePredicate_29606_28610 p@@105 v_1@@104 r@@98 u@@98))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_27788 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_27788_28610 q@@98 w@@104 r@@98 u@@98))
)))
(assert (forall ((p@@106 T@Field_29643_29644) (v_1@@105 T@FrameType) (q@@99 T@Field_27821_27822) (w@@105 T@FrameType) (r@@99 T@Field_27821_27822) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_27788 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_27788_27788 q@@99 w@@105 r@@99 u@@99)) (InsidePredicate_29606_27788 p@@106 v_1@@105 r@@99 u@@99))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_27788 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_27788_27788 q@@99 w@@105 r@@99 u@@99))
)))
(assert (forall ((p@@107 T@Field_29643_29644) (v_1@@106 T@FrameType) (q@@100 T@Field_27821_27822) (w@@106 T@FrameType) (r@@100 T@Field_13942_13974) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_27788 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_27788_24457 q@@100 w@@106 r@@100 u@@100)) (InsidePredicate_29606_24457 p@@107 v_1@@106 r@@100 u@@100))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_27788 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_27788_24457 q@@100 w@@106 r@@100 u@@100))
)))
(assert (forall ((p@@108 T@Field_29643_29644) (v_1@@107 T@FrameType) (q@@101 T@Field_13942_13974) (w@@107 T@FrameType) (r@@101 T@Field_31895_31896) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_24457 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_24457_31895 q@@101 w@@107 r@@101 u@@101)) (InsidePredicate_29606_31895 p@@108 v_1@@107 r@@101 u@@101))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_24457 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_24457_31895 q@@101 w@@107 r@@101 u@@101))
)))
(assert (forall ((p@@109 T@Field_29643_29644) (v_1@@108 T@FrameType) (q@@102 T@Field_13942_13974) (w@@108 T@FrameType) (r@@102 T@Field_30746_30747) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_24457 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_24457_30715 q@@102 w@@108 r@@102 u@@102)) (InsidePredicate_29606_30715 p@@109 v_1@@108 r@@102 u@@102))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_24457 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_24457_30715 q@@102 w@@108 r@@102 u@@102))
)))
(assert (forall ((p@@110 T@Field_29643_29644) (v_1@@109 T@FrameType) (q@@103 T@Field_13942_13974) (w@@109 T@FrameType) (r@@103 T@Field_29643_29644) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_24457 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_24457_29606 q@@103 w@@109 r@@103 u@@103)) (InsidePredicate_29606_29606 p@@110 v_1@@109 r@@103 u@@103))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_24457 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_24457_29606 q@@103 w@@109 r@@103 u@@103))
)))
(assert (forall ((p@@111 T@Field_29643_29644) (v_1@@110 T@FrameType) (q@@104 T@Field_13942_13974) (w@@110 T@FrameType) (r@@104 T@Field_28647_28648) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_24457 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_24457_28610 q@@104 w@@110 r@@104 u@@104)) (InsidePredicate_29606_28610 p@@111 v_1@@110 r@@104 u@@104))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_24457 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_24457_28610 q@@104 w@@110 r@@104 u@@104))
)))
(assert (forall ((p@@112 T@Field_29643_29644) (v_1@@111 T@FrameType) (q@@105 T@Field_13942_13974) (w@@111 T@FrameType) (r@@105 T@Field_27821_27822) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_24457 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_24457_27788 q@@105 w@@111 r@@105 u@@105)) (InsidePredicate_29606_27788 p@@112 v_1@@111 r@@105 u@@105))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_24457 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_24457_27788 q@@105 w@@111 r@@105 u@@105))
)))
(assert (forall ((p@@113 T@Field_29643_29644) (v_1@@112 T@FrameType) (q@@106 T@Field_13942_13974) (w@@112 T@FrameType) (r@@106 T@Field_13942_13974) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_29606_24457 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_24457_24457 q@@106 w@@112 r@@106 u@@106)) (InsidePredicate_29606_24457 p@@113 v_1@@112 r@@106 u@@106))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29606_24457 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_24457_24457 q@@106 w@@112 r@@106 u@@106))
)))
(assert (forall ((p@@114 T@Field_28647_28648) (v_1@@113 T@FrameType) (q@@107 T@Field_31895_31896) (w@@113 T@FrameType) (r@@107 T@Field_31895_31896) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_31895 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_31895_31895 q@@107 w@@113 r@@107 u@@107)) (InsidePredicate_28610_31895 p@@114 v_1@@113 r@@107 u@@107))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_31895 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_31895_31895 q@@107 w@@113 r@@107 u@@107))
)))
(assert (forall ((p@@115 T@Field_28647_28648) (v_1@@114 T@FrameType) (q@@108 T@Field_31895_31896) (w@@114 T@FrameType) (r@@108 T@Field_30746_30747) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_31895 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_31895_30715 q@@108 w@@114 r@@108 u@@108)) (InsidePredicate_28610_30715 p@@115 v_1@@114 r@@108 u@@108))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_31895 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_31895_30715 q@@108 w@@114 r@@108 u@@108))
)))
(assert (forall ((p@@116 T@Field_28647_28648) (v_1@@115 T@FrameType) (q@@109 T@Field_31895_31896) (w@@115 T@FrameType) (r@@109 T@Field_29643_29644) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_31895 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_31895_29606 q@@109 w@@115 r@@109 u@@109)) (InsidePredicate_28610_29606 p@@116 v_1@@115 r@@109 u@@109))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_31895 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_31895_29606 q@@109 w@@115 r@@109 u@@109))
)))
(assert (forall ((p@@117 T@Field_28647_28648) (v_1@@116 T@FrameType) (q@@110 T@Field_31895_31896) (w@@116 T@FrameType) (r@@110 T@Field_28647_28648) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_31895 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_31895_28610 q@@110 w@@116 r@@110 u@@110)) (InsidePredicate_28610_28610 p@@117 v_1@@116 r@@110 u@@110))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_31895 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_31895_28610 q@@110 w@@116 r@@110 u@@110))
)))
(assert (forall ((p@@118 T@Field_28647_28648) (v_1@@117 T@FrameType) (q@@111 T@Field_31895_31896) (w@@117 T@FrameType) (r@@111 T@Field_27821_27822) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_31895 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_31895_27788 q@@111 w@@117 r@@111 u@@111)) (InsidePredicate_28610_27788 p@@118 v_1@@117 r@@111 u@@111))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_31895 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_31895_27788 q@@111 w@@117 r@@111 u@@111))
)))
(assert (forall ((p@@119 T@Field_28647_28648) (v_1@@118 T@FrameType) (q@@112 T@Field_31895_31896) (w@@118 T@FrameType) (r@@112 T@Field_13942_13974) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_31895 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_31895_24457 q@@112 w@@118 r@@112 u@@112)) (InsidePredicate_28610_24457 p@@119 v_1@@118 r@@112 u@@112))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_31895 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_31895_24457 q@@112 w@@118 r@@112 u@@112))
)))
(assert (forall ((p@@120 T@Field_28647_28648) (v_1@@119 T@FrameType) (q@@113 T@Field_30746_30747) (w@@119 T@FrameType) (r@@113 T@Field_31895_31896) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_30715 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_30715_31895 q@@113 w@@119 r@@113 u@@113)) (InsidePredicate_28610_31895 p@@120 v_1@@119 r@@113 u@@113))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_30715 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_30715_31895 q@@113 w@@119 r@@113 u@@113))
)))
(assert (forall ((p@@121 T@Field_28647_28648) (v_1@@120 T@FrameType) (q@@114 T@Field_30746_30747) (w@@120 T@FrameType) (r@@114 T@Field_30746_30747) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_30715 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_30715_30715 q@@114 w@@120 r@@114 u@@114)) (InsidePredicate_28610_30715 p@@121 v_1@@120 r@@114 u@@114))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_30715 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_30715_30715 q@@114 w@@120 r@@114 u@@114))
)))
(assert (forall ((p@@122 T@Field_28647_28648) (v_1@@121 T@FrameType) (q@@115 T@Field_30746_30747) (w@@121 T@FrameType) (r@@115 T@Field_29643_29644) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_30715 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_30715_29606 q@@115 w@@121 r@@115 u@@115)) (InsidePredicate_28610_29606 p@@122 v_1@@121 r@@115 u@@115))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_30715 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_30715_29606 q@@115 w@@121 r@@115 u@@115))
)))
(assert (forall ((p@@123 T@Field_28647_28648) (v_1@@122 T@FrameType) (q@@116 T@Field_30746_30747) (w@@122 T@FrameType) (r@@116 T@Field_28647_28648) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_30715 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_30715_28610 q@@116 w@@122 r@@116 u@@116)) (InsidePredicate_28610_28610 p@@123 v_1@@122 r@@116 u@@116))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_30715 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_30715_28610 q@@116 w@@122 r@@116 u@@116))
)))
(assert (forall ((p@@124 T@Field_28647_28648) (v_1@@123 T@FrameType) (q@@117 T@Field_30746_30747) (w@@123 T@FrameType) (r@@117 T@Field_27821_27822) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_30715 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_30715_27788 q@@117 w@@123 r@@117 u@@117)) (InsidePredicate_28610_27788 p@@124 v_1@@123 r@@117 u@@117))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_30715 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_30715_27788 q@@117 w@@123 r@@117 u@@117))
)))
(assert (forall ((p@@125 T@Field_28647_28648) (v_1@@124 T@FrameType) (q@@118 T@Field_30746_30747) (w@@124 T@FrameType) (r@@118 T@Field_13942_13974) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_30715 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_30715_24457 q@@118 w@@124 r@@118 u@@118)) (InsidePredicate_28610_24457 p@@125 v_1@@124 r@@118 u@@118))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_30715 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_30715_24457 q@@118 w@@124 r@@118 u@@118))
)))
(assert (forall ((p@@126 T@Field_28647_28648) (v_1@@125 T@FrameType) (q@@119 T@Field_29643_29644) (w@@125 T@FrameType) (r@@119 T@Field_31895_31896) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_29606 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_29606_31895 q@@119 w@@125 r@@119 u@@119)) (InsidePredicate_28610_31895 p@@126 v_1@@125 r@@119 u@@119))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_29606 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_29606_31895 q@@119 w@@125 r@@119 u@@119))
)))
(assert (forall ((p@@127 T@Field_28647_28648) (v_1@@126 T@FrameType) (q@@120 T@Field_29643_29644) (w@@126 T@FrameType) (r@@120 T@Field_30746_30747) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_29606 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_29606_30715 q@@120 w@@126 r@@120 u@@120)) (InsidePredicate_28610_30715 p@@127 v_1@@126 r@@120 u@@120))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_29606 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_29606_30715 q@@120 w@@126 r@@120 u@@120))
)))
(assert (forall ((p@@128 T@Field_28647_28648) (v_1@@127 T@FrameType) (q@@121 T@Field_29643_29644) (w@@127 T@FrameType) (r@@121 T@Field_29643_29644) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_29606 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_29606_29606 q@@121 w@@127 r@@121 u@@121)) (InsidePredicate_28610_29606 p@@128 v_1@@127 r@@121 u@@121))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_29606 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_29606_29606 q@@121 w@@127 r@@121 u@@121))
)))
(assert (forall ((p@@129 T@Field_28647_28648) (v_1@@128 T@FrameType) (q@@122 T@Field_29643_29644) (w@@128 T@FrameType) (r@@122 T@Field_28647_28648) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_29606 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_29606_28610 q@@122 w@@128 r@@122 u@@122)) (InsidePredicate_28610_28610 p@@129 v_1@@128 r@@122 u@@122))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_29606 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_29606_28610 q@@122 w@@128 r@@122 u@@122))
)))
(assert (forall ((p@@130 T@Field_28647_28648) (v_1@@129 T@FrameType) (q@@123 T@Field_29643_29644) (w@@129 T@FrameType) (r@@123 T@Field_27821_27822) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_29606 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_29606_27788 q@@123 w@@129 r@@123 u@@123)) (InsidePredicate_28610_27788 p@@130 v_1@@129 r@@123 u@@123))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_29606 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_29606_27788 q@@123 w@@129 r@@123 u@@123))
)))
(assert (forall ((p@@131 T@Field_28647_28648) (v_1@@130 T@FrameType) (q@@124 T@Field_29643_29644) (w@@130 T@FrameType) (r@@124 T@Field_13942_13974) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_29606 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_29606_24457 q@@124 w@@130 r@@124 u@@124)) (InsidePredicate_28610_24457 p@@131 v_1@@130 r@@124 u@@124))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_29606 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_29606_24457 q@@124 w@@130 r@@124 u@@124))
)))
(assert (forall ((p@@132 T@Field_28647_28648) (v_1@@131 T@FrameType) (q@@125 T@Field_28647_28648) (w@@131 T@FrameType) (r@@125 T@Field_31895_31896) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_28610 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_28610_31895 q@@125 w@@131 r@@125 u@@125)) (InsidePredicate_28610_31895 p@@132 v_1@@131 r@@125 u@@125))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_28610 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_28610_31895 q@@125 w@@131 r@@125 u@@125))
)))
(assert (forall ((p@@133 T@Field_28647_28648) (v_1@@132 T@FrameType) (q@@126 T@Field_28647_28648) (w@@132 T@FrameType) (r@@126 T@Field_30746_30747) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_28610 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_28610_30715 q@@126 w@@132 r@@126 u@@126)) (InsidePredicate_28610_30715 p@@133 v_1@@132 r@@126 u@@126))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_28610 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_28610_30715 q@@126 w@@132 r@@126 u@@126))
)))
(assert (forall ((p@@134 T@Field_28647_28648) (v_1@@133 T@FrameType) (q@@127 T@Field_28647_28648) (w@@133 T@FrameType) (r@@127 T@Field_29643_29644) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_28610 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_28610_29606 q@@127 w@@133 r@@127 u@@127)) (InsidePredicate_28610_29606 p@@134 v_1@@133 r@@127 u@@127))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_28610 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_28610_29606 q@@127 w@@133 r@@127 u@@127))
)))
(assert (forall ((p@@135 T@Field_28647_28648) (v_1@@134 T@FrameType) (q@@128 T@Field_28647_28648) (w@@134 T@FrameType) (r@@128 T@Field_28647_28648) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_28610 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_28610_28610 q@@128 w@@134 r@@128 u@@128)) (InsidePredicate_28610_28610 p@@135 v_1@@134 r@@128 u@@128))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_28610 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_28610_28610 q@@128 w@@134 r@@128 u@@128))
)))
(assert (forall ((p@@136 T@Field_28647_28648) (v_1@@135 T@FrameType) (q@@129 T@Field_28647_28648) (w@@135 T@FrameType) (r@@129 T@Field_27821_27822) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_28610 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_28610_27788 q@@129 w@@135 r@@129 u@@129)) (InsidePredicate_28610_27788 p@@136 v_1@@135 r@@129 u@@129))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_28610 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_28610_27788 q@@129 w@@135 r@@129 u@@129))
)))
(assert (forall ((p@@137 T@Field_28647_28648) (v_1@@136 T@FrameType) (q@@130 T@Field_28647_28648) (w@@136 T@FrameType) (r@@130 T@Field_13942_13974) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_28610 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_28610_24457 q@@130 w@@136 r@@130 u@@130)) (InsidePredicate_28610_24457 p@@137 v_1@@136 r@@130 u@@130))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_28610 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_28610_24457 q@@130 w@@136 r@@130 u@@130))
)))
(assert (forall ((p@@138 T@Field_28647_28648) (v_1@@137 T@FrameType) (q@@131 T@Field_27821_27822) (w@@137 T@FrameType) (r@@131 T@Field_31895_31896) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_27788 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_27788_31895 q@@131 w@@137 r@@131 u@@131)) (InsidePredicate_28610_31895 p@@138 v_1@@137 r@@131 u@@131))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_27788 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_27788_31895 q@@131 w@@137 r@@131 u@@131))
)))
(assert (forall ((p@@139 T@Field_28647_28648) (v_1@@138 T@FrameType) (q@@132 T@Field_27821_27822) (w@@138 T@FrameType) (r@@132 T@Field_30746_30747) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_27788 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_27788_30715 q@@132 w@@138 r@@132 u@@132)) (InsidePredicate_28610_30715 p@@139 v_1@@138 r@@132 u@@132))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_27788 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_27788_30715 q@@132 w@@138 r@@132 u@@132))
)))
(assert (forall ((p@@140 T@Field_28647_28648) (v_1@@139 T@FrameType) (q@@133 T@Field_27821_27822) (w@@139 T@FrameType) (r@@133 T@Field_29643_29644) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_27788 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_27788_29606 q@@133 w@@139 r@@133 u@@133)) (InsidePredicate_28610_29606 p@@140 v_1@@139 r@@133 u@@133))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_27788 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_27788_29606 q@@133 w@@139 r@@133 u@@133))
)))
(assert (forall ((p@@141 T@Field_28647_28648) (v_1@@140 T@FrameType) (q@@134 T@Field_27821_27822) (w@@140 T@FrameType) (r@@134 T@Field_28647_28648) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_27788 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_27788_28610 q@@134 w@@140 r@@134 u@@134)) (InsidePredicate_28610_28610 p@@141 v_1@@140 r@@134 u@@134))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_27788 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_27788_28610 q@@134 w@@140 r@@134 u@@134))
)))
(assert (forall ((p@@142 T@Field_28647_28648) (v_1@@141 T@FrameType) (q@@135 T@Field_27821_27822) (w@@141 T@FrameType) (r@@135 T@Field_27821_27822) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_27788 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_27788_27788 q@@135 w@@141 r@@135 u@@135)) (InsidePredicate_28610_27788 p@@142 v_1@@141 r@@135 u@@135))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_27788 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_27788_27788 q@@135 w@@141 r@@135 u@@135))
)))
(assert (forall ((p@@143 T@Field_28647_28648) (v_1@@142 T@FrameType) (q@@136 T@Field_27821_27822) (w@@142 T@FrameType) (r@@136 T@Field_13942_13974) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_27788 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_27788_24457 q@@136 w@@142 r@@136 u@@136)) (InsidePredicate_28610_24457 p@@143 v_1@@142 r@@136 u@@136))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_27788 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_27788_24457 q@@136 w@@142 r@@136 u@@136))
)))
(assert (forall ((p@@144 T@Field_28647_28648) (v_1@@143 T@FrameType) (q@@137 T@Field_13942_13974) (w@@143 T@FrameType) (r@@137 T@Field_31895_31896) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_24457 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_24457_31895 q@@137 w@@143 r@@137 u@@137)) (InsidePredicate_28610_31895 p@@144 v_1@@143 r@@137 u@@137))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_24457 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_24457_31895 q@@137 w@@143 r@@137 u@@137))
)))
(assert (forall ((p@@145 T@Field_28647_28648) (v_1@@144 T@FrameType) (q@@138 T@Field_13942_13974) (w@@144 T@FrameType) (r@@138 T@Field_30746_30747) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_24457 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_24457_30715 q@@138 w@@144 r@@138 u@@138)) (InsidePredicate_28610_30715 p@@145 v_1@@144 r@@138 u@@138))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_24457 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_24457_30715 q@@138 w@@144 r@@138 u@@138))
)))
(assert (forall ((p@@146 T@Field_28647_28648) (v_1@@145 T@FrameType) (q@@139 T@Field_13942_13974) (w@@145 T@FrameType) (r@@139 T@Field_29643_29644) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_24457 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_24457_29606 q@@139 w@@145 r@@139 u@@139)) (InsidePredicate_28610_29606 p@@146 v_1@@145 r@@139 u@@139))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_24457 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_24457_29606 q@@139 w@@145 r@@139 u@@139))
)))
(assert (forall ((p@@147 T@Field_28647_28648) (v_1@@146 T@FrameType) (q@@140 T@Field_13942_13974) (w@@146 T@FrameType) (r@@140 T@Field_28647_28648) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_24457 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_24457_28610 q@@140 w@@146 r@@140 u@@140)) (InsidePredicate_28610_28610 p@@147 v_1@@146 r@@140 u@@140))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_24457 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_24457_28610 q@@140 w@@146 r@@140 u@@140))
)))
(assert (forall ((p@@148 T@Field_28647_28648) (v_1@@147 T@FrameType) (q@@141 T@Field_13942_13974) (w@@147 T@FrameType) (r@@141 T@Field_27821_27822) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_24457 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_24457_27788 q@@141 w@@147 r@@141 u@@141)) (InsidePredicate_28610_27788 p@@148 v_1@@147 r@@141 u@@141))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_24457 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_24457_27788 q@@141 w@@147 r@@141 u@@141))
)))
(assert (forall ((p@@149 T@Field_28647_28648) (v_1@@148 T@FrameType) (q@@142 T@Field_13942_13974) (w@@148 T@FrameType) (r@@142 T@Field_13942_13974) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_28610_24457 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_24457_24457 q@@142 w@@148 r@@142 u@@142)) (InsidePredicate_28610_24457 p@@149 v_1@@148 r@@142 u@@142))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28610_24457 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_24457_24457 q@@142 w@@148 r@@142 u@@142))
)))
(assert (forall ((p@@150 T@Field_27821_27822) (v_1@@149 T@FrameType) (q@@143 T@Field_31895_31896) (w@@149 T@FrameType) (r@@143 T@Field_31895_31896) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_31895 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_31895_31895 q@@143 w@@149 r@@143 u@@143)) (InsidePredicate_27788_31895 p@@150 v_1@@149 r@@143 u@@143))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_31895 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_31895_31895 q@@143 w@@149 r@@143 u@@143))
)))
(assert (forall ((p@@151 T@Field_27821_27822) (v_1@@150 T@FrameType) (q@@144 T@Field_31895_31896) (w@@150 T@FrameType) (r@@144 T@Field_30746_30747) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_31895 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_31895_30715 q@@144 w@@150 r@@144 u@@144)) (InsidePredicate_27788_30715 p@@151 v_1@@150 r@@144 u@@144))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_31895 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_31895_30715 q@@144 w@@150 r@@144 u@@144))
)))
(assert (forall ((p@@152 T@Field_27821_27822) (v_1@@151 T@FrameType) (q@@145 T@Field_31895_31896) (w@@151 T@FrameType) (r@@145 T@Field_29643_29644) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_31895 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_31895_29606 q@@145 w@@151 r@@145 u@@145)) (InsidePredicate_27788_29606 p@@152 v_1@@151 r@@145 u@@145))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_31895 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_31895_29606 q@@145 w@@151 r@@145 u@@145))
)))
(assert (forall ((p@@153 T@Field_27821_27822) (v_1@@152 T@FrameType) (q@@146 T@Field_31895_31896) (w@@152 T@FrameType) (r@@146 T@Field_28647_28648) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_31895 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_31895_28610 q@@146 w@@152 r@@146 u@@146)) (InsidePredicate_27788_28610 p@@153 v_1@@152 r@@146 u@@146))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_31895 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_31895_28610 q@@146 w@@152 r@@146 u@@146))
)))
(assert (forall ((p@@154 T@Field_27821_27822) (v_1@@153 T@FrameType) (q@@147 T@Field_31895_31896) (w@@153 T@FrameType) (r@@147 T@Field_27821_27822) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_31895 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_31895_27788 q@@147 w@@153 r@@147 u@@147)) (InsidePredicate_27788_27788 p@@154 v_1@@153 r@@147 u@@147))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_31895 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_31895_27788 q@@147 w@@153 r@@147 u@@147))
)))
(assert (forall ((p@@155 T@Field_27821_27822) (v_1@@154 T@FrameType) (q@@148 T@Field_31895_31896) (w@@154 T@FrameType) (r@@148 T@Field_13942_13974) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_31895 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_31895_24457 q@@148 w@@154 r@@148 u@@148)) (InsidePredicate_27788_24457 p@@155 v_1@@154 r@@148 u@@148))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_31895 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_31895_24457 q@@148 w@@154 r@@148 u@@148))
)))
(assert (forall ((p@@156 T@Field_27821_27822) (v_1@@155 T@FrameType) (q@@149 T@Field_30746_30747) (w@@155 T@FrameType) (r@@149 T@Field_31895_31896) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_30715 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_30715_31895 q@@149 w@@155 r@@149 u@@149)) (InsidePredicate_27788_31895 p@@156 v_1@@155 r@@149 u@@149))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_30715 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_30715_31895 q@@149 w@@155 r@@149 u@@149))
)))
(assert (forall ((p@@157 T@Field_27821_27822) (v_1@@156 T@FrameType) (q@@150 T@Field_30746_30747) (w@@156 T@FrameType) (r@@150 T@Field_30746_30747) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_30715 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_30715_30715 q@@150 w@@156 r@@150 u@@150)) (InsidePredicate_27788_30715 p@@157 v_1@@156 r@@150 u@@150))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_30715 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_30715_30715 q@@150 w@@156 r@@150 u@@150))
)))
(assert (forall ((p@@158 T@Field_27821_27822) (v_1@@157 T@FrameType) (q@@151 T@Field_30746_30747) (w@@157 T@FrameType) (r@@151 T@Field_29643_29644) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_30715 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_30715_29606 q@@151 w@@157 r@@151 u@@151)) (InsidePredicate_27788_29606 p@@158 v_1@@157 r@@151 u@@151))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_30715 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_30715_29606 q@@151 w@@157 r@@151 u@@151))
)))
(assert (forall ((p@@159 T@Field_27821_27822) (v_1@@158 T@FrameType) (q@@152 T@Field_30746_30747) (w@@158 T@FrameType) (r@@152 T@Field_28647_28648) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_30715 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_30715_28610 q@@152 w@@158 r@@152 u@@152)) (InsidePredicate_27788_28610 p@@159 v_1@@158 r@@152 u@@152))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_30715 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_30715_28610 q@@152 w@@158 r@@152 u@@152))
)))
(assert (forall ((p@@160 T@Field_27821_27822) (v_1@@159 T@FrameType) (q@@153 T@Field_30746_30747) (w@@159 T@FrameType) (r@@153 T@Field_27821_27822) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_30715 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_30715_27788 q@@153 w@@159 r@@153 u@@153)) (InsidePredicate_27788_27788 p@@160 v_1@@159 r@@153 u@@153))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_30715 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_30715_27788 q@@153 w@@159 r@@153 u@@153))
)))
(assert (forall ((p@@161 T@Field_27821_27822) (v_1@@160 T@FrameType) (q@@154 T@Field_30746_30747) (w@@160 T@FrameType) (r@@154 T@Field_13942_13974) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_30715 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_30715_24457 q@@154 w@@160 r@@154 u@@154)) (InsidePredicate_27788_24457 p@@161 v_1@@160 r@@154 u@@154))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_30715 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_30715_24457 q@@154 w@@160 r@@154 u@@154))
)))
(assert (forall ((p@@162 T@Field_27821_27822) (v_1@@161 T@FrameType) (q@@155 T@Field_29643_29644) (w@@161 T@FrameType) (r@@155 T@Field_31895_31896) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_29606 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_29606_31895 q@@155 w@@161 r@@155 u@@155)) (InsidePredicate_27788_31895 p@@162 v_1@@161 r@@155 u@@155))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_29606 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_29606_31895 q@@155 w@@161 r@@155 u@@155))
)))
(assert (forall ((p@@163 T@Field_27821_27822) (v_1@@162 T@FrameType) (q@@156 T@Field_29643_29644) (w@@162 T@FrameType) (r@@156 T@Field_30746_30747) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_29606 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_29606_30715 q@@156 w@@162 r@@156 u@@156)) (InsidePredicate_27788_30715 p@@163 v_1@@162 r@@156 u@@156))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_29606 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_29606_30715 q@@156 w@@162 r@@156 u@@156))
)))
(assert (forall ((p@@164 T@Field_27821_27822) (v_1@@163 T@FrameType) (q@@157 T@Field_29643_29644) (w@@163 T@FrameType) (r@@157 T@Field_29643_29644) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_29606 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_29606_29606 q@@157 w@@163 r@@157 u@@157)) (InsidePredicate_27788_29606 p@@164 v_1@@163 r@@157 u@@157))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_29606 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_29606_29606 q@@157 w@@163 r@@157 u@@157))
)))
(assert (forall ((p@@165 T@Field_27821_27822) (v_1@@164 T@FrameType) (q@@158 T@Field_29643_29644) (w@@164 T@FrameType) (r@@158 T@Field_28647_28648) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_29606 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_29606_28610 q@@158 w@@164 r@@158 u@@158)) (InsidePredicate_27788_28610 p@@165 v_1@@164 r@@158 u@@158))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_29606 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_29606_28610 q@@158 w@@164 r@@158 u@@158))
)))
(assert (forall ((p@@166 T@Field_27821_27822) (v_1@@165 T@FrameType) (q@@159 T@Field_29643_29644) (w@@165 T@FrameType) (r@@159 T@Field_27821_27822) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_29606 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_29606_27788 q@@159 w@@165 r@@159 u@@159)) (InsidePredicate_27788_27788 p@@166 v_1@@165 r@@159 u@@159))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_29606 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_29606_27788 q@@159 w@@165 r@@159 u@@159))
)))
(assert (forall ((p@@167 T@Field_27821_27822) (v_1@@166 T@FrameType) (q@@160 T@Field_29643_29644) (w@@166 T@FrameType) (r@@160 T@Field_13942_13974) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_29606 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_29606_24457 q@@160 w@@166 r@@160 u@@160)) (InsidePredicate_27788_24457 p@@167 v_1@@166 r@@160 u@@160))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_29606 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_29606_24457 q@@160 w@@166 r@@160 u@@160))
)))
(assert (forall ((p@@168 T@Field_27821_27822) (v_1@@167 T@FrameType) (q@@161 T@Field_28647_28648) (w@@167 T@FrameType) (r@@161 T@Field_31895_31896) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_28610 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_28610_31895 q@@161 w@@167 r@@161 u@@161)) (InsidePredicate_27788_31895 p@@168 v_1@@167 r@@161 u@@161))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_28610 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_28610_31895 q@@161 w@@167 r@@161 u@@161))
)))
(assert (forall ((p@@169 T@Field_27821_27822) (v_1@@168 T@FrameType) (q@@162 T@Field_28647_28648) (w@@168 T@FrameType) (r@@162 T@Field_30746_30747) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_28610 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_28610_30715 q@@162 w@@168 r@@162 u@@162)) (InsidePredicate_27788_30715 p@@169 v_1@@168 r@@162 u@@162))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_28610 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_28610_30715 q@@162 w@@168 r@@162 u@@162))
)))
(assert (forall ((p@@170 T@Field_27821_27822) (v_1@@169 T@FrameType) (q@@163 T@Field_28647_28648) (w@@169 T@FrameType) (r@@163 T@Field_29643_29644) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_28610 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_28610_29606 q@@163 w@@169 r@@163 u@@163)) (InsidePredicate_27788_29606 p@@170 v_1@@169 r@@163 u@@163))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_28610 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_28610_29606 q@@163 w@@169 r@@163 u@@163))
)))
(assert (forall ((p@@171 T@Field_27821_27822) (v_1@@170 T@FrameType) (q@@164 T@Field_28647_28648) (w@@170 T@FrameType) (r@@164 T@Field_28647_28648) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_28610 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_28610_28610 q@@164 w@@170 r@@164 u@@164)) (InsidePredicate_27788_28610 p@@171 v_1@@170 r@@164 u@@164))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_28610 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_28610_28610 q@@164 w@@170 r@@164 u@@164))
)))
(assert (forall ((p@@172 T@Field_27821_27822) (v_1@@171 T@FrameType) (q@@165 T@Field_28647_28648) (w@@171 T@FrameType) (r@@165 T@Field_27821_27822) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_28610 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_28610_27788 q@@165 w@@171 r@@165 u@@165)) (InsidePredicate_27788_27788 p@@172 v_1@@171 r@@165 u@@165))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_28610 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_28610_27788 q@@165 w@@171 r@@165 u@@165))
)))
(assert (forall ((p@@173 T@Field_27821_27822) (v_1@@172 T@FrameType) (q@@166 T@Field_28647_28648) (w@@172 T@FrameType) (r@@166 T@Field_13942_13974) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_28610 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_28610_24457 q@@166 w@@172 r@@166 u@@166)) (InsidePredicate_27788_24457 p@@173 v_1@@172 r@@166 u@@166))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_28610 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_28610_24457 q@@166 w@@172 r@@166 u@@166))
)))
(assert (forall ((p@@174 T@Field_27821_27822) (v_1@@173 T@FrameType) (q@@167 T@Field_27821_27822) (w@@173 T@FrameType) (r@@167 T@Field_31895_31896) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_27788 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_27788_31895 q@@167 w@@173 r@@167 u@@167)) (InsidePredicate_27788_31895 p@@174 v_1@@173 r@@167 u@@167))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_27788 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_27788_31895 q@@167 w@@173 r@@167 u@@167))
)))
(assert (forall ((p@@175 T@Field_27821_27822) (v_1@@174 T@FrameType) (q@@168 T@Field_27821_27822) (w@@174 T@FrameType) (r@@168 T@Field_30746_30747) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_27788 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_27788_30715 q@@168 w@@174 r@@168 u@@168)) (InsidePredicate_27788_30715 p@@175 v_1@@174 r@@168 u@@168))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_27788 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_27788_30715 q@@168 w@@174 r@@168 u@@168))
)))
(assert (forall ((p@@176 T@Field_27821_27822) (v_1@@175 T@FrameType) (q@@169 T@Field_27821_27822) (w@@175 T@FrameType) (r@@169 T@Field_29643_29644) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_27788 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_27788_29606 q@@169 w@@175 r@@169 u@@169)) (InsidePredicate_27788_29606 p@@176 v_1@@175 r@@169 u@@169))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_27788 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_27788_29606 q@@169 w@@175 r@@169 u@@169))
)))
(assert (forall ((p@@177 T@Field_27821_27822) (v_1@@176 T@FrameType) (q@@170 T@Field_27821_27822) (w@@176 T@FrameType) (r@@170 T@Field_28647_28648) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_27788 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_27788_28610 q@@170 w@@176 r@@170 u@@170)) (InsidePredicate_27788_28610 p@@177 v_1@@176 r@@170 u@@170))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_27788 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_27788_28610 q@@170 w@@176 r@@170 u@@170))
)))
(assert (forall ((p@@178 T@Field_27821_27822) (v_1@@177 T@FrameType) (q@@171 T@Field_27821_27822) (w@@177 T@FrameType) (r@@171 T@Field_27821_27822) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_27788 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_27788_27788 q@@171 w@@177 r@@171 u@@171)) (InsidePredicate_27788_27788 p@@178 v_1@@177 r@@171 u@@171))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_27788 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_27788_27788 q@@171 w@@177 r@@171 u@@171))
)))
(assert (forall ((p@@179 T@Field_27821_27822) (v_1@@178 T@FrameType) (q@@172 T@Field_27821_27822) (w@@178 T@FrameType) (r@@172 T@Field_13942_13974) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_27788 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_27788_24457 q@@172 w@@178 r@@172 u@@172)) (InsidePredicate_27788_24457 p@@179 v_1@@178 r@@172 u@@172))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_27788 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_27788_24457 q@@172 w@@178 r@@172 u@@172))
)))
(assert (forall ((p@@180 T@Field_27821_27822) (v_1@@179 T@FrameType) (q@@173 T@Field_13942_13974) (w@@179 T@FrameType) (r@@173 T@Field_31895_31896) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_24457 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_24457_31895 q@@173 w@@179 r@@173 u@@173)) (InsidePredicate_27788_31895 p@@180 v_1@@179 r@@173 u@@173))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_24457 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_24457_31895 q@@173 w@@179 r@@173 u@@173))
)))
(assert (forall ((p@@181 T@Field_27821_27822) (v_1@@180 T@FrameType) (q@@174 T@Field_13942_13974) (w@@180 T@FrameType) (r@@174 T@Field_30746_30747) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_24457 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_24457_30715 q@@174 w@@180 r@@174 u@@174)) (InsidePredicate_27788_30715 p@@181 v_1@@180 r@@174 u@@174))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_24457 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_24457_30715 q@@174 w@@180 r@@174 u@@174))
)))
(assert (forall ((p@@182 T@Field_27821_27822) (v_1@@181 T@FrameType) (q@@175 T@Field_13942_13974) (w@@181 T@FrameType) (r@@175 T@Field_29643_29644) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_24457 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_24457_29606 q@@175 w@@181 r@@175 u@@175)) (InsidePredicate_27788_29606 p@@182 v_1@@181 r@@175 u@@175))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_24457 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_24457_29606 q@@175 w@@181 r@@175 u@@175))
)))
(assert (forall ((p@@183 T@Field_27821_27822) (v_1@@182 T@FrameType) (q@@176 T@Field_13942_13974) (w@@182 T@FrameType) (r@@176 T@Field_28647_28648) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_24457 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_24457_28610 q@@176 w@@182 r@@176 u@@176)) (InsidePredicate_27788_28610 p@@183 v_1@@182 r@@176 u@@176))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_24457 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_24457_28610 q@@176 w@@182 r@@176 u@@176))
)))
(assert (forall ((p@@184 T@Field_27821_27822) (v_1@@183 T@FrameType) (q@@177 T@Field_13942_13974) (w@@183 T@FrameType) (r@@177 T@Field_27821_27822) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_24457 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_24457_27788 q@@177 w@@183 r@@177 u@@177)) (InsidePredicate_27788_27788 p@@184 v_1@@183 r@@177 u@@177))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_24457 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_24457_27788 q@@177 w@@183 r@@177 u@@177))
)))
(assert (forall ((p@@185 T@Field_27821_27822) (v_1@@184 T@FrameType) (q@@178 T@Field_13942_13974) (w@@184 T@FrameType) (r@@178 T@Field_13942_13974) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_27788_24457 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_24457_24457 q@@178 w@@184 r@@178 u@@178)) (InsidePredicate_27788_24457 p@@185 v_1@@184 r@@178 u@@178))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27788_24457 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_24457_24457 q@@178 w@@184 r@@178 u@@178))
)))
(assert (forall ((p@@186 T@Field_13942_13974) (v_1@@185 T@FrameType) (q@@179 T@Field_31895_31896) (w@@185 T@FrameType) (r@@179 T@Field_31895_31896) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_31895 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_31895_31895 q@@179 w@@185 r@@179 u@@179)) (InsidePredicate_24457_31895 p@@186 v_1@@185 r@@179 u@@179))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_31895 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_31895_31895 q@@179 w@@185 r@@179 u@@179))
)))
(assert (forall ((p@@187 T@Field_13942_13974) (v_1@@186 T@FrameType) (q@@180 T@Field_31895_31896) (w@@186 T@FrameType) (r@@180 T@Field_30746_30747) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_31895 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_31895_30715 q@@180 w@@186 r@@180 u@@180)) (InsidePredicate_24457_30715 p@@187 v_1@@186 r@@180 u@@180))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_31895 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_31895_30715 q@@180 w@@186 r@@180 u@@180))
)))
(assert (forall ((p@@188 T@Field_13942_13974) (v_1@@187 T@FrameType) (q@@181 T@Field_31895_31896) (w@@187 T@FrameType) (r@@181 T@Field_29643_29644) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_31895 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_31895_29606 q@@181 w@@187 r@@181 u@@181)) (InsidePredicate_24457_29606 p@@188 v_1@@187 r@@181 u@@181))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_31895 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_31895_29606 q@@181 w@@187 r@@181 u@@181))
)))
(assert (forall ((p@@189 T@Field_13942_13974) (v_1@@188 T@FrameType) (q@@182 T@Field_31895_31896) (w@@188 T@FrameType) (r@@182 T@Field_28647_28648) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_31895 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_31895_28610 q@@182 w@@188 r@@182 u@@182)) (InsidePredicate_24457_28610 p@@189 v_1@@188 r@@182 u@@182))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_31895 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_31895_28610 q@@182 w@@188 r@@182 u@@182))
)))
(assert (forall ((p@@190 T@Field_13942_13974) (v_1@@189 T@FrameType) (q@@183 T@Field_31895_31896) (w@@189 T@FrameType) (r@@183 T@Field_27821_27822) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_31895 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_31895_27788 q@@183 w@@189 r@@183 u@@183)) (InsidePredicate_24457_27788 p@@190 v_1@@189 r@@183 u@@183))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_31895 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_31895_27788 q@@183 w@@189 r@@183 u@@183))
)))
(assert (forall ((p@@191 T@Field_13942_13974) (v_1@@190 T@FrameType) (q@@184 T@Field_31895_31896) (w@@190 T@FrameType) (r@@184 T@Field_13942_13974) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_31895 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_31895_24457 q@@184 w@@190 r@@184 u@@184)) (InsidePredicate_24457_24457 p@@191 v_1@@190 r@@184 u@@184))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_31895 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_31895_24457 q@@184 w@@190 r@@184 u@@184))
)))
(assert (forall ((p@@192 T@Field_13942_13974) (v_1@@191 T@FrameType) (q@@185 T@Field_30746_30747) (w@@191 T@FrameType) (r@@185 T@Field_31895_31896) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_30715 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_30715_31895 q@@185 w@@191 r@@185 u@@185)) (InsidePredicate_24457_31895 p@@192 v_1@@191 r@@185 u@@185))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_30715 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_30715_31895 q@@185 w@@191 r@@185 u@@185))
)))
(assert (forall ((p@@193 T@Field_13942_13974) (v_1@@192 T@FrameType) (q@@186 T@Field_30746_30747) (w@@192 T@FrameType) (r@@186 T@Field_30746_30747) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_30715 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_30715_30715 q@@186 w@@192 r@@186 u@@186)) (InsidePredicate_24457_30715 p@@193 v_1@@192 r@@186 u@@186))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_30715 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_30715_30715 q@@186 w@@192 r@@186 u@@186))
)))
(assert (forall ((p@@194 T@Field_13942_13974) (v_1@@193 T@FrameType) (q@@187 T@Field_30746_30747) (w@@193 T@FrameType) (r@@187 T@Field_29643_29644) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_30715 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_30715_29606 q@@187 w@@193 r@@187 u@@187)) (InsidePredicate_24457_29606 p@@194 v_1@@193 r@@187 u@@187))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_30715 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_30715_29606 q@@187 w@@193 r@@187 u@@187))
)))
(assert (forall ((p@@195 T@Field_13942_13974) (v_1@@194 T@FrameType) (q@@188 T@Field_30746_30747) (w@@194 T@FrameType) (r@@188 T@Field_28647_28648) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_30715 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_30715_28610 q@@188 w@@194 r@@188 u@@188)) (InsidePredicate_24457_28610 p@@195 v_1@@194 r@@188 u@@188))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_30715 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_30715_28610 q@@188 w@@194 r@@188 u@@188))
)))
(assert (forall ((p@@196 T@Field_13942_13974) (v_1@@195 T@FrameType) (q@@189 T@Field_30746_30747) (w@@195 T@FrameType) (r@@189 T@Field_27821_27822) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_30715 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_30715_27788 q@@189 w@@195 r@@189 u@@189)) (InsidePredicate_24457_27788 p@@196 v_1@@195 r@@189 u@@189))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_30715 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_30715_27788 q@@189 w@@195 r@@189 u@@189))
)))
(assert (forall ((p@@197 T@Field_13942_13974) (v_1@@196 T@FrameType) (q@@190 T@Field_30746_30747) (w@@196 T@FrameType) (r@@190 T@Field_13942_13974) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_30715 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_30715_24457 q@@190 w@@196 r@@190 u@@190)) (InsidePredicate_24457_24457 p@@197 v_1@@196 r@@190 u@@190))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_30715 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_30715_24457 q@@190 w@@196 r@@190 u@@190))
)))
(assert (forall ((p@@198 T@Field_13942_13974) (v_1@@197 T@FrameType) (q@@191 T@Field_29643_29644) (w@@197 T@FrameType) (r@@191 T@Field_31895_31896) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_29606 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_29606_31895 q@@191 w@@197 r@@191 u@@191)) (InsidePredicate_24457_31895 p@@198 v_1@@197 r@@191 u@@191))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_29606 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_29606_31895 q@@191 w@@197 r@@191 u@@191))
)))
(assert (forall ((p@@199 T@Field_13942_13974) (v_1@@198 T@FrameType) (q@@192 T@Field_29643_29644) (w@@198 T@FrameType) (r@@192 T@Field_30746_30747) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_29606 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_29606_30715 q@@192 w@@198 r@@192 u@@192)) (InsidePredicate_24457_30715 p@@199 v_1@@198 r@@192 u@@192))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_29606 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_29606_30715 q@@192 w@@198 r@@192 u@@192))
)))
(assert (forall ((p@@200 T@Field_13942_13974) (v_1@@199 T@FrameType) (q@@193 T@Field_29643_29644) (w@@199 T@FrameType) (r@@193 T@Field_29643_29644) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_29606 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_29606_29606 q@@193 w@@199 r@@193 u@@193)) (InsidePredicate_24457_29606 p@@200 v_1@@199 r@@193 u@@193))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_29606 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_29606_29606 q@@193 w@@199 r@@193 u@@193))
)))
(assert (forall ((p@@201 T@Field_13942_13974) (v_1@@200 T@FrameType) (q@@194 T@Field_29643_29644) (w@@200 T@FrameType) (r@@194 T@Field_28647_28648) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_29606 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_29606_28610 q@@194 w@@200 r@@194 u@@194)) (InsidePredicate_24457_28610 p@@201 v_1@@200 r@@194 u@@194))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_29606 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_29606_28610 q@@194 w@@200 r@@194 u@@194))
)))
(assert (forall ((p@@202 T@Field_13942_13974) (v_1@@201 T@FrameType) (q@@195 T@Field_29643_29644) (w@@201 T@FrameType) (r@@195 T@Field_27821_27822) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_29606 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_29606_27788 q@@195 w@@201 r@@195 u@@195)) (InsidePredicate_24457_27788 p@@202 v_1@@201 r@@195 u@@195))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_29606 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_29606_27788 q@@195 w@@201 r@@195 u@@195))
)))
(assert (forall ((p@@203 T@Field_13942_13974) (v_1@@202 T@FrameType) (q@@196 T@Field_29643_29644) (w@@202 T@FrameType) (r@@196 T@Field_13942_13974) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_29606 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_29606_24457 q@@196 w@@202 r@@196 u@@196)) (InsidePredicate_24457_24457 p@@203 v_1@@202 r@@196 u@@196))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_29606 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_29606_24457 q@@196 w@@202 r@@196 u@@196))
)))
(assert (forall ((p@@204 T@Field_13942_13974) (v_1@@203 T@FrameType) (q@@197 T@Field_28647_28648) (w@@203 T@FrameType) (r@@197 T@Field_31895_31896) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_28610 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_28610_31895 q@@197 w@@203 r@@197 u@@197)) (InsidePredicate_24457_31895 p@@204 v_1@@203 r@@197 u@@197))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_28610 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_28610_31895 q@@197 w@@203 r@@197 u@@197))
)))
(assert (forall ((p@@205 T@Field_13942_13974) (v_1@@204 T@FrameType) (q@@198 T@Field_28647_28648) (w@@204 T@FrameType) (r@@198 T@Field_30746_30747) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_28610 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_28610_30715 q@@198 w@@204 r@@198 u@@198)) (InsidePredicate_24457_30715 p@@205 v_1@@204 r@@198 u@@198))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_28610 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_28610_30715 q@@198 w@@204 r@@198 u@@198))
)))
(assert (forall ((p@@206 T@Field_13942_13974) (v_1@@205 T@FrameType) (q@@199 T@Field_28647_28648) (w@@205 T@FrameType) (r@@199 T@Field_29643_29644) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_28610 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_28610_29606 q@@199 w@@205 r@@199 u@@199)) (InsidePredicate_24457_29606 p@@206 v_1@@205 r@@199 u@@199))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_28610 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_28610_29606 q@@199 w@@205 r@@199 u@@199))
)))
(assert (forall ((p@@207 T@Field_13942_13974) (v_1@@206 T@FrameType) (q@@200 T@Field_28647_28648) (w@@206 T@FrameType) (r@@200 T@Field_28647_28648) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_28610 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_28610_28610 q@@200 w@@206 r@@200 u@@200)) (InsidePredicate_24457_28610 p@@207 v_1@@206 r@@200 u@@200))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_28610 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_28610_28610 q@@200 w@@206 r@@200 u@@200))
)))
(assert (forall ((p@@208 T@Field_13942_13974) (v_1@@207 T@FrameType) (q@@201 T@Field_28647_28648) (w@@207 T@FrameType) (r@@201 T@Field_27821_27822) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_28610 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_28610_27788 q@@201 w@@207 r@@201 u@@201)) (InsidePredicate_24457_27788 p@@208 v_1@@207 r@@201 u@@201))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_28610 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_28610_27788 q@@201 w@@207 r@@201 u@@201))
)))
(assert (forall ((p@@209 T@Field_13942_13974) (v_1@@208 T@FrameType) (q@@202 T@Field_28647_28648) (w@@208 T@FrameType) (r@@202 T@Field_13942_13974) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_28610 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_28610_24457 q@@202 w@@208 r@@202 u@@202)) (InsidePredicate_24457_24457 p@@209 v_1@@208 r@@202 u@@202))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_28610 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_28610_24457 q@@202 w@@208 r@@202 u@@202))
)))
(assert (forall ((p@@210 T@Field_13942_13974) (v_1@@209 T@FrameType) (q@@203 T@Field_27821_27822) (w@@209 T@FrameType) (r@@203 T@Field_31895_31896) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_27788 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_27788_31895 q@@203 w@@209 r@@203 u@@203)) (InsidePredicate_24457_31895 p@@210 v_1@@209 r@@203 u@@203))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_27788 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_27788_31895 q@@203 w@@209 r@@203 u@@203))
)))
(assert (forall ((p@@211 T@Field_13942_13974) (v_1@@210 T@FrameType) (q@@204 T@Field_27821_27822) (w@@210 T@FrameType) (r@@204 T@Field_30746_30747) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_27788 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_27788_30715 q@@204 w@@210 r@@204 u@@204)) (InsidePredicate_24457_30715 p@@211 v_1@@210 r@@204 u@@204))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_27788 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_27788_30715 q@@204 w@@210 r@@204 u@@204))
)))
(assert (forall ((p@@212 T@Field_13942_13974) (v_1@@211 T@FrameType) (q@@205 T@Field_27821_27822) (w@@211 T@FrameType) (r@@205 T@Field_29643_29644) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_27788 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_27788_29606 q@@205 w@@211 r@@205 u@@205)) (InsidePredicate_24457_29606 p@@212 v_1@@211 r@@205 u@@205))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_27788 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_27788_29606 q@@205 w@@211 r@@205 u@@205))
)))
(assert (forall ((p@@213 T@Field_13942_13974) (v_1@@212 T@FrameType) (q@@206 T@Field_27821_27822) (w@@212 T@FrameType) (r@@206 T@Field_28647_28648) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_27788 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_27788_28610 q@@206 w@@212 r@@206 u@@206)) (InsidePredicate_24457_28610 p@@213 v_1@@212 r@@206 u@@206))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_27788 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_27788_28610 q@@206 w@@212 r@@206 u@@206))
)))
(assert (forall ((p@@214 T@Field_13942_13974) (v_1@@213 T@FrameType) (q@@207 T@Field_27821_27822) (w@@213 T@FrameType) (r@@207 T@Field_27821_27822) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_27788 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_27788_27788 q@@207 w@@213 r@@207 u@@207)) (InsidePredicate_24457_27788 p@@214 v_1@@213 r@@207 u@@207))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_27788 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_27788_27788 q@@207 w@@213 r@@207 u@@207))
)))
(assert (forall ((p@@215 T@Field_13942_13974) (v_1@@214 T@FrameType) (q@@208 T@Field_27821_27822) (w@@214 T@FrameType) (r@@208 T@Field_13942_13974) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_27788 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_27788_24457 q@@208 w@@214 r@@208 u@@208)) (InsidePredicate_24457_24457 p@@215 v_1@@214 r@@208 u@@208))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_27788 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_27788_24457 q@@208 w@@214 r@@208 u@@208))
)))
(assert (forall ((p@@216 T@Field_13942_13974) (v_1@@215 T@FrameType) (q@@209 T@Field_13942_13974) (w@@215 T@FrameType) (r@@209 T@Field_31895_31896) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_24457 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_24457_31895 q@@209 w@@215 r@@209 u@@209)) (InsidePredicate_24457_31895 p@@216 v_1@@215 r@@209 u@@209))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_24457 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_24457_31895 q@@209 w@@215 r@@209 u@@209))
)))
(assert (forall ((p@@217 T@Field_13942_13974) (v_1@@216 T@FrameType) (q@@210 T@Field_13942_13974) (w@@216 T@FrameType) (r@@210 T@Field_30746_30747) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_24457 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_24457_30715 q@@210 w@@216 r@@210 u@@210)) (InsidePredicate_24457_30715 p@@217 v_1@@216 r@@210 u@@210))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_24457 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_24457_30715 q@@210 w@@216 r@@210 u@@210))
)))
(assert (forall ((p@@218 T@Field_13942_13974) (v_1@@217 T@FrameType) (q@@211 T@Field_13942_13974) (w@@217 T@FrameType) (r@@211 T@Field_29643_29644) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_24457 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_24457_29606 q@@211 w@@217 r@@211 u@@211)) (InsidePredicate_24457_29606 p@@218 v_1@@217 r@@211 u@@211))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_24457 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_24457_29606 q@@211 w@@217 r@@211 u@@211))
)))
(assert (forall ((p@@219 T@Field_13942_13974) (v_1@@218 T@FrameType) (q@@212 T@Field_13942_13974) (w@@218 T@FrameType) (r@@212 T@Field_28647_28648) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_24457 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_24457_28610 q@@212 w@@218 r@@212 u@@212)) (InsidePredicate_24457_28610 p@@219 v_1@@218 r@@212 u@@212))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_24457 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_24457_28610 q@@212 w@@218 r@@212 u@@212))
)))
(assert (forall ((p@@220 T@Field_13942_13974) (v_1@@219 T@FrameType) (q@@213 T@Field_13942_13974) (w@@219 T@FrameType) (r@@213 T@Field_27821_27822) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_24457 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_24457_27788 q@@213 w@@219 r@@213 u@@213)) (InsidePredicate_24457_27788 p@@220 v_1@@219 r@@213 u@@213))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_24457 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_24457_27788 q@@213 w@@219 r@@213 u@@213))
)))
(assert (forall ((p@@221 T@Field_13942_13974) (v_1@@220 T@FrameType) (q@@214 T@Field_13942_13974) (w@@220 T@FrameType) (r@@214 T@Field_13942_13974) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_24457_24457 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_24457_24457 q@@214 w@@220 r@@214 u@@214)) (InsidePredicate_24457_24457 p@@221 v_1@@220 r@@214 u@@214))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24457_24457 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_24457_24457 q@@214 w@@220 r@@214 u@@214))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@26 T@Ref) (arg2@@26 T@Ref) (arg3@@26 Int) (arg4@@26 T@Ref) (arg5@@26 Real) (arg6@@26 T@Ref) (arg7@@12 Real) (arg8@@12 T@Ref) (arg9@@5 T@Ref) (arg10@@5 Int) ) (! (= (getPredWandId_13780_2216 (wand_2 arg1@@26 arg2@@26 arg3@@26 arg4@@26 arg5@@26 arg6@@26 arg7@@12 arg8@@12 arg9@@5 arg10@@5)) 3)
 :qid |stdinbpl.271:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@26 arg2@@26 arg3@@26 arg4@@26 arg5@@26 arg6@@26 arg7@@12 arg8@@12 arg9@@5 arg10@@5))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_17@15 () Bool)
(declare-fun b_20@12 () Bool)
(declare-fun neededTransfer@11 () Real)
(declare-fun Used_10Mask@7 () T@PolymorphicMapType_24418)
(declare-fun p_1@@3 () T@Ref)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun takeTransfer@5 () Real)
(declare-fun neededTransfer@9 () Real)
(declare-fun Heap@6 () T@PolymorphicMapType_24397)
(declare-fun Heap@4 () T@PolymorphicMapType_24397)
(declare-fun b_20@9 () Bool)
(declare-fun Mask@7 () T@PolymorphicMapType_24418)
(declare-fun Mask@5 () T@PolymorphicMapType_24418)
(declare-fun Used_10Mask@5 () T@PolymorphicMapType_24418)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_10Mask@6 () T@PolymorphicMapType_24418)
(declare-fun b_20@10 () Bool)
(declare-fun Used_10Heap@0 () T@PolymorphicMapType_24397)
(declare-fun b_20@11 () Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_24418)
(declare-fun Heap@5 () T@PolymorphicMapType_24397)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun Used_10Mask@3 () T@PolymorphicMapType_24418)
(declare-fun b_20@6 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_10Mask@4 () T@PolymorphicMapType_24418)
(declare-fun b_20@7 () Bool)
(declare-fun b_20@8 () Bool)
(declare-fun Ops_7Heap@0 () T@PolymorphicMapType_24397)
(declare-fun Ops_7Mask@9 () T@PolymorphicMapType_24418)
(declare-fun Ops_7Mask@8 () T@PolymorphicMapType_24418)
(declare-fun maskTransfer@4 () Real)
(declare-fun b_17@14 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_21@0 () Bool)
(declare-fun b_21@1 () Bool)
(declare-fun Result_6Heap () T@PolymorphicMapType_24397)
(declare-fun Result_6Mask () T@PolymorphicMapType_24418)
(declare-fun b_21@2 () Bool)
(declare-fun b_21@3 () Bool)
(declare-fun b_21@4 () Bool)
(declare-fun takeTransfer@3 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_24418)
(declare-fun neededTransfer@5 () Real)
(declare-fun Heap@2 () T@PolymorphicMapType_24397)
(declare-fun b_20@3 () Bool)
(declare-fun Used_10Mask@1 () T@PolymorphicMapType_24418)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_10Mask@2 () T@PolymorphicMapType_24418)
(declare-fun b_20@4 () Bool)
(declare-fun b_20@5 () Bool)
(declare-fun Mask@4 () T@PolymorphicMapType_24418)
(declare-fun Heap@3 () T@PolymorphicMapType_24397)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Ops_7Mask@6 () T@PolymorphicMapType_24418)
(declare-fun b_20@0 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_10Mask@0 () T@PolymorphicMapType_24418)
(declare-fun b_20@1 () Bool)
(declare-fun b_20@2 () Bool)
(declare-fun Ops_7Mask@7 () T@PolymorphicMapType_24418)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_20 () Bool)
(declare-fun b_17@4 () Bool)
(declare-fun b_18@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_9Mask@3 () T@PolymorphicMapType_24418)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_19@0 () Bool)
(declare-fun b_19@1 () Bool)
(declare-fun Result_5Heap () T@PolymorphicMapType_24397)
(declare-fun Result_5Mask () T@PolymorphicMapType_24418)
(declare-fun b_19@2 () Bool)
(declare-fun Ops_7Mask@3 () T@PolymorphicMapType_24418)
(declare-fun b_19@3 () Bool)
(declare-fun Used_9Heap@0 () T@PolymorphicMapType_24397)
(declare-fun b_19@4 () Bool)
(declare-fun b_17@5 () Bool)
(declare-fun b_17@6 () Bool)
(declare-fun b_17@7 () Bool)
(declare-fun b_17@8 () Bool)
(declare-fun Ops_7Mask@4 () T@PolymorphicMapType_24418)
(declare-fun b_17@9 () Bool)
(declare-fun b_17@10 () Bool)
(declare-fun Ops_7Mask@5 () T@PolymorphicMapType_24418)
(declare-fun b_17@11 () Bool)
(declare-fun b_17@12 () Bool)
(declare-fun b_17@13 () Bool)
(declare-fun Mask@2 () T@PolymorphicMapType_24418)
(declare-fun Heap@1 () T@PolymorphicMapType_24397)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_24418)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_18@3 () Bool)
(declare-fun Used_9Mask@1 () T@PolymorphicMapType_24418)
(declare-fun Heap@@92 () T@PolymorphicMapType_24397)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_9Mask@2 () T@PolymorphicMapType_24418)
(declare-fun b_18@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_24418)
(declare-fun b_18@5 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_24418)
(declare-fun newPMask@0 () T@PolymorphicMapType_24946)
(declare-fun Heap@0 () T@PolymorphicMapType_24397)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_7Mask@1 () T@PolymorphicMapType_24418)
(declare-fun b_18@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_9Mask@0 () T@PolymorphicMapType_24418)
(declare-fun b_18@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_24418)
(declare-fun b_18@2 () Bool)
(declare-fun Ops_7Mask@2 () T@PolymorphicMapType_24418)
(declare-fun maskTransfer@0 () Real)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3275 (Int) T@FrameType)
(declare-fun b_18 () Bool)
(declare-fun b_17@3 () Bool)
(declare-fun b_17@2 () Bool)
(declare-fun b_17@0 () Bool)
(declare-fun perm@1 () Real)
(declare-fun Ops_7Mask@0 () T@PolymorphicMapType_24418)
(declare-fun b_17@1 () Bool)
(declare-fun perm@0 () Real)
(declare-fun b_17 () Bool)
(declare-fun b_16@0 () Bool)
(declare-fun b_16 () Bool)
(declare-fun Used_8Heap@0 () T@PolymorphicMapType_24397)
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
 (=> (= (ControlFlow 0 0) 55) (let ((anon40_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (and b_17@15 b_17@15) b_20@12) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@7) p_1@@3 g) initNeededTransfer@2))))))
(let ((anon60_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= neededTransfer@11 neededTransfer@9) (= Heap@6 Heap@4)) (=> (and (and (= b_20@12 b_20@9) (= Mask@7 Mask@5)) (and (= Used_10Mask@7 Used_10Mask@5) (= (ControlFlow 0 5) 2))) anon40_correct)))))
(let ((anon60_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (and (= neededTransfer@10 (- neededTransfer@9 takeTransfer@5)) (= Used_10Mask@6 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Used_10Mask@5) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@5) p_1@@3 g (+ (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@5) p_1@@3 g) takeTransfer@5)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Used_10Mask@5) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Used_10Mask@5)))) (and (= b_20@10  (and b_20@9 (state Used_10Heap@0 Used_10Mask@6))) (= b_20@11  (and b_20@10 (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@4) p_1@@3 g) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Used_10Heap@0) p_1@@3 g)))))) (=> (and (and (and (= Mask@6 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Mask@5) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@5) p_1@@3 g (- (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@5) p_1@@3 g) takeTransfer@5)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Mask@5) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Mask@5))) (= Heap@5 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@4) (store (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm) (PolymorphicMapType_24946 (store (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) p_1@@3 g true) (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@4) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))))) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@4) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@4)))) (and (= neededTransfer@11 neededTransfer@10) (= Heap@6 Heap@5))) (and (and (= b_20@12 b_20@11) (= Mask@7 Mask@6)) (and (= Used_10Mask@7 Used_10Mask@6) (= (ControlFlow 0 4) 2)))) anon40_correct)))))
(let ((anon59_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@9) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 7) 4) anon60_Then_correct) (=> (= (ControlFlow 0 7) 5) anon60_Else_correct)))))
(let ((anon59_Then_correct  (=> (and (<= neededTransfer@9 maskTransfer@5) (= takeTransfer@5 neededTransfer@9)) (and (=> (= (ControlFlow 0 6) 4) anon60_Then_correct) (=> (= (ControlFlow 0 6) 5) anon60_Else_correct)))))
(let ((anon58_Then_correct  (=> (and (and (and (and (and b_17@15 b_17@15) b_20@9) true) (> neededTransfer@9 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@5) p_1@@3 g))) (and (=> (= (ControlFlow 0 8) 6) anon59_Then_correct) (=> (= (ControlFlow 0 8) 7) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (not (and (and (and (and b_17@15 b_17@15) b_20@9) true) (> neededTransfer@9 0.0))) (=> (and (= neededTransfer@11 neededTransfer@9) (= Heap@6 Heap@4)) (=> (and (and (= b_20@12 b_20@9) (= Mask@7 Mask@5)) (and (= Used_10Mask@7 Used_10Mask@5) (= (ControlFlow 0 3) 2))) anon40_correct)))))
(let ((anon57_Else_correct  (=> (and (and (>= 0.0 takeTransfer@4) (= Used_10Mask@5 Used_10Mask@3)) (and (= b_20@9 b_20@6) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 11) 8) anon58_Then_correct) (=> (= (ControlFlow 0 11) 3) anon58_Else_correct)))))
(let ((anon57_Then_correct  (=> (> takeTransfer@4 0.0) (=> (and (and (and (= neededTransfer@8 (- FullPerm takeTransfer@4)) (= Used_10Mask@4 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Used_10Mask@3) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@3) p_1@@3 g (+ (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@3) p_1@@3 g) takeTransfer@4)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Used_10Mask@3) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Used_10Mask@3)))) (and (= b_20@7  (and b_20@6 (state Used_10Heap@0 Used_10Mask@4))) (= b_20@8  (and b_20@7 (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Ops_7Heap@0) p_1@@3 g) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Used_10Heap@0) p_1@@3 g)))))) (and (and (= Ops_7Mask@9 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Ops_7Mask@8) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@8) p_1@@3 g (- (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@8) p_1@@3 g) takeTransfer@4)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Ops_7Mask@8) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Ops_7Mask@8))) (= Used_10Mask@5 Used_10Mask@4)) (and (= b_20@9 b_20@8) (= neededTransfer@9 neededTransfer@8)))) (and (=> (= (ControlFlow 0 10) 8) anon58_Then_correct) (=> (= (ControlFlow 0 10) 3) anon58_Else_correct))))))
(let ((anon56_Else_correct  (=> (and (< maskTransfer@4 FullPerm) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 13) 10) anon57_Then_correct) (=> (= (ControlFlow 0 13) 11) anon57_Else_correct)))))
(let ((anon56_Then_correct  (=> (and (<= FullPerm maskTransfer@4) (= takeTransfer@4 FullPerm)) (and (=> (= (ControlFlow 0 12) 10) anon57_Then_correct) (=> (= (ControlFlow 0 12) 11) anon57_Else_correct)))))
(let ((anon55_Then_correct  (=> (and (and (and (and (and b_17@15 b_17@15) b_20@6) true) (> FullPerm 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@8) p_1@@3 g))) (and (=> (= (ControlFlow 0 14) 12) anon56_Then_correct) (=> (= (ControlFlow 0 14) 13) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (and (not (and (and (and (and b_17@15 b_17@15) b_20@6) true) (> FullPerm 0.0))) (= Used_10Mask@5 Used_10Mask@3)) (and (= b_20@9 b_20@6) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 9) 8) anon58_Then_correct) (=> (= (ControlFlow 0 9) 3) anon58_Else_correct)))))
(let ((anon28_correct  (and (=> (= (ControlFlow 0 15) (- 0 17)) (=> (and (and b_17@14 b_17@14) b_20@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@3) p_1@@3 f_7) initNeededTransfer@1)))) (=> (=> (and (and b_17@14 b_17@14) b_20@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@3) p_1@@3 f_7) initNeededTransfer@1))) (=> (= b_21@0  (and b_17@14 b_20@6)) (=> (and (= b_21@1  (and b_21@0 (state Result_6Heap Result_6Mask))) (= b_21@2  (and b_21@1 (sumMask Result_6Mask Ops_7Mask@8 Used_10Mask@3)))) (=> (and (and (= b_21@3  (and (and b_21@2 (IdenticalOnKnownLocations Ops_7Heap@0 Result_6Heap Ops_7Mask@8)) (IdenticalOnKnownLocations Used_10Heap@0 Result_6Heap Used_10Mask@3))) (= b_21@4  (and b_21@3 (state Result_6Heap Result_6Mask)))) (and (= b_17@15  (and b_17@14 b_21@4)) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@3) p_1@@3 g) FullPerm)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 15) 14) anon55_Then_correct) (=> (= (ControlFlow 0 15) 9) anon55_Else_correct)))))))))))
(let ((anon54_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= Mask@5 Mask@3) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Heap@4 Heap@2) (= b_20@6 b_20@3)) (and (= Used_10Mask@3 Used_10Mask@1) (= (ControlFlow 0 20) 15))) anon28_correct)))))
(let ((anon54_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_10Mask@2 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Used_10Mask@1) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@1) p_1@@3 f_7 (+ (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_10Mask@1) p_1@@3 f_7) takeTransfer@3)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Used_10Mask@1) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Used_10Mask@1)))) (and (= b_20@4  (and b_20@3 (state Used_10Heap@0 Used_10Mask@2))) (= b_20@5  (and b_20@4 (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@2) p_1@@3 f_7) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Used_10Heap@0) p_1@@3 f_7)))))) (=> (and (and (and (= Mask@4 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Mask@3) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@3) p_1@@3 f_7 (- (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@3) p_1@@3 f_7) takeTransfer@3)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Mask@3) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Mask@3))) (= Heap@3 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@2) (store (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm) (PolymorphicMapType_24946 (store (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) p_1@@3 f_7 true) (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@2) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))))) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@2) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@2)))) (and (= Mask@5 Mask@4) (= neededTransfer@7 neededTransfer@6))) (and (and (= Heap@4 Heap@3) (= b_20@6 b_20@5)) (and (= Used_10Mask@3 Used_10Mask@2) (= (ControlFlow 0 19) 15)))) anon28_correct)))))
(let ((anon53_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 22) 19) anon54_Then_correct) (=> (= (ControlFlow 0 22) 20) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 21) 19) anon54_Then_correct) (=> (= (ControlFlow 0 21) 20) anon54_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (and (and (and (and b_17@14 b_17@14) b_20@3) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@3) p_1@@3 f_7))) (and (=> (= (ControlFlow 0 23) 21) anon53_Then_correct) (=> (= (ControlFlow 0 23) 22) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (not (and (and (and (and b_17@14 b_17@14) b_20@3) true) (> neededTransfer@5 0.0))) (=> (and (= Mask@5 Mask@3) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Heap@4 Heap@2) (= b_20@6 b_20@3)) (and (= Used_10Mask@3 Used_10Mask@1) (= (ControlFlow 0 18) 15))) anon28_correct)))))
(let ((anon51_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= Ops_7Mask@8 Ops_7Mask@6) (= Used_10Mask@1 ZeroMask)) (and (= b_20@3 b_20@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 26) 23) anon52_Then_correct) (=> (= (ControlFlow 0 26) 18) anon52_Else_correct))))))
(let ((anon51_Then_correct  (=> (and (> takeTransfer@2 0.0) (= neededTransfer@4 (- FullPerm takeTransfer@2))) (=> (and (and (and (= Used_10Mask@0 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) p_1@@3 f_7 (+ (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) p_1@@3 f_7) takeTransfer@2)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ZeroMask))) (= b_20@1  (and b_20@0 (state Used_10Heap@0 Used_10Mask@0)))) (and (= b_20@2  (and b_20@1 (= (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Ops_7Heap@0) p_1@@3 f_7) (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Used_10Heap@0) p_1@@3 f_7)))) (= Ops_7Mask@7 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Ops_7Mask@6) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@6) p_1@@3 f_7 (- (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@6) p_1@@3 f_7) takeTransfer@2)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Ops_7Mask@6) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Ops_7Mask@6))))) (and (and (= Ops_7Mask@8 Ops_7Mask@7) (= Used_10Mask@1 Used_10Mask@0)) (and (= b_20@3 b_20@2) (= neededTransfer@5 neededTransfer@4)))) (and (=> (= (ControlFlow 0 25) 23) anon52_Then_correct) (=> (= (ControlFlow 0 25) 18) anon52_Else_correct))))))
(let ((anon50_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 28) 25) anon51_Then_correct) (=> (= (ControlFlow 0 28) 26) anon51_Else_correct)))))
(let ((anon50_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 27) 25) anon51_Then_correct) (=> (= (ControlFlow 0 27) 26) anon51_Else_correct)))))
(let ((anon49_Then_correct  (=> (and (and (and (and (and b_17@14 b_17@14) b_20@0) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@6) p_1@@3 f_7))) (and (=> (= (ControlFlow 0 29) 27) anon50_Then_correct) (=> (= (ControlFlow 0 29) 28) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (not (and (and (and (and b_17@14 b_17@14) b_20@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_7Mask@8 Ops_7Mask@6) (= Used_10Mask@1 ZeroMask)) (and (= b_20@3 b_20@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 24) 23) anon52_Then_correct) (=> (= (ControlFlow 0 24) 18) anon52_Else_correct))))))
(let ((anon16_correct  (=> (and (= b_20@0  (and b_20 (state Used_10Heap@0 ZeroMask))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) p_1@@3 f_7) FullPerm))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 30) 29) anon49_Then_correct) (=> (= (ControlFlow 0 30) 24) anon49_Else_correct)))))))
(let ((anon15_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (=> (and b_17@4 b_18@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Used_9Mask@3) null (Pair p_1@@3)) initNeededTransfer@0)))) (=> (=> (and b_17@4 b_18@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Used_9Mask@3) null (Pair p_1@@3)) initNeededTransfer@0))) (=> (= b_19@0  (and b_17@4 b_18@6)) (=> (and (and (= b_19@1  (and b_19@0 (state Result_5Heap Result_5Mask))) (= b_19@2  (and b_19@1 (sumMask Result_5Mask Ops_7Mask@3 Used_9Mask@3)))) (and (= b_19@3  (and (and b_19@2 (IdenticalOnKnownLocations Ops_7Heap@0 Result_5Heap Ops_7Mask@3)) (IdenticalOnKnownLocations Used_9Heap@0 Result_5Heap Used_9Mask@3))) (= b_19@4  (and b_19@3 (state Result_5Heap Result_5Mask))))) (=> (and (and (and (and (= b_17@5  (and b_17@4 b_19@4)) (= b_17@6  (and b_17@5 b_18@6))) (and (= b_17@7  (and b_17@6 (= Used_9Heap@0 Ops_7Heap@0))) (= b_17@8  (and b_17@7 (not (= p_1@@3 null)))))) (and (and (= Ops_7Mask@4 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Ops_7Mask@3) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@3) p_1@@3 f_7 (+ (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@3) p_1@@3 f_7) FullPerm)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Ops_7Mask@3) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Ops_7Mask@3))) (= b_17@9  (and b_17@8 (state Ops_7Heap@0 Ops_7Mask@4)))) (and (= b_17@10  (and b_17@9 (not (= p_1@@3 null)))) (= Ops_7Mask@5 (PolymorphicMapType_24418 (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Ops_7Mask@4) (store (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@4) p_1@@3 g (+ (select (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@4) p_1@@3 g) FullPerm)) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Ops_7Mask@4) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Ops_7Mask@4)))))) (and (and (and (= b_17@11  (and b_17@10 (state Ops_7Heap@0 Ops_7Mask@5))) (= b_17@12  (and b_17@11 (state Ops_7Heap@0 Ops_7Mask@5)))) (and (= b_17@13  (and b_17@12 (state Ops_7Heap@0 Ops_7Mask@5))) (= b_17@14 b_17@13))) (and (and (= Mask@3 Mask@2) (= Ops_7Mask@6 Ops_7Mask@5)) (and (= Heap@2 Heap@1) (= (ControlFlow 0 33) 30))))) anon16_correct)))))))
(let ((anon48_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_18@6 b_18@3) (= Used_9Mask@3 Used_9Mask@1)) (and (= Heap@1 Heap@@92) (= (ControlFlow 0 37) 33))) anon15_correct)))))
(let ((anon48_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_9Mask@2 (PolymorphicMapType_24418 (store (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Used_9Mask@1) null (Pair p_1@@3) (+ (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Used_9Mask@1) null (Pair p_1@@3)) takeTransfer@1)) (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Used_9Mask@1) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Used_9Mask@1)))) (=> (and (and (= b_18@4  (and b_18@3 (state Used_9Heap@0 Used_9Mask@2))) (= TempMask@1 (PolymorphicMapType_24418 (store (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) null (Pair p_1@@3) FullPerm) (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ZeroMask)))) (and (= b_18@5  (and b_18@4 (IdenticalOnKnownLocations Heap@@92 Used_9Heap@0 TempMask@1))) (= Mask@1 (PolymorphicMapType_24418 (store (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Mask@0) null (Pair p_1@@3) (- (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Mask@0) null (Pair p_1@@3)) takeTransfer@1)) (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Mask@0) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Mask@0))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_53 T@Ref) (f_56 T@Field_31502_3275) ) (!  (=> (or (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53 f_56) (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53 f_56)) (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| newPMask@0) o_53 f_56))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_13942_3275#PolymorphicMapType_24946| newPMask@0) o_53 f_56))
)) (forall ((o_53@@0 T@Ref) (f_56@@0 T@Field_24457_53) ) (!  (=> (or (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@0 f_56@@0) (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@0 f_56@@0)) (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| newPMask@0) o_53@@0 f_56@@0))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_13942_53#PolymorphicMapType_24946| newPMask@0) o_53@@0 f_56@@0))
))) (forall ((o_53@@1 T@Ref) (f_56@@1 T@Field_24470_24471) ) (!  (=> (or (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@1 f_56@@1) (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@1 f_56@@1)) (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| newPMask@0) o_53@@1 f_56@@1))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_13942_24471#PolymorphicMapType_24946| newPMask@0) o_53@@1 f_56@@1))
))) (forall ((o_53@@2 T@Ref) (f_56@@2 T@Field_13942_27808) ) (!  (=> (or (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@2 f_56@@2) (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@2 f_56@@2)) (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| newPMask@0) o_53@@2 f_56@@2))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_13942_88310#PolymorphicMapType_24946| newPMask@0) o_53@@2 f_56@@2))
))) (forall ((o_53@@3 T@Ref) (f_56@@3 T@Field_13942_13974) ) (!  (=> (or (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@3 f_56@@3) (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@3 f_56@@3)) (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| newPMask@0) o_53@@3 f_56@@3))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_13942_27822#PolymorphicMapType_24946| newPMask@0) o_53@@3 f_56@@3))
))) (forall ((o_53@@4 T@Ref) (f_56@@4 T@Field_27788_1214) ) (!  (=> (or (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@4 f_56@@4) (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@4 f_56@@4)) (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| newPMask@0) o_53@@4 f_56@@4))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_27788_3275#PolymorphicMapType_24946| newPMask@0) o_53@@4 f_56@@4))
))) (forall ((o_53@@5 T@Ref) (f_56@@5 T@Field_27788_53) ) (!  (=> (or (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@5 f_56@@5) (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@5 f_56@@5)) (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| newPMask@0) o_53@@5 f_56@@5))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_27788_53#PolymorphicMapType_24946| newPMask@0) o_53@@5 f_56@@5))
))) (forall ((o_53@@6 T@Ref) (f_56@@6 T@Field_27788_24471) ) (!  (=> (or (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@6 f_56@@6) (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@6 f_56@@6)) (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| newPMask@0) o_53@@6 f_56@@6))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_27788_24471#PolymorphicMapType_24946| newPMask@0) o_53@@6 f_56@@6))
))) (forall ((o_53@@7 T@Ref) (f_56@@7 T@Field_27803_27808) ) (!  (=> (or (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@7 f_56@@7) (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@7 f_56@@7)) (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| newPMask@0) o_53@@7 f_56@@7))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_27788_89358#PolymorphicMapType_24946| newPMask@0) o_53@@7 f_56@@7))
))) (forall ((o_53@@8 T@Ref) (f_56@@8 T@Field_27821_27822) ) (!  (=> (or (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@8 f_56@@8) (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@8 f_56@@8)) (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| newPMask@0) o_53@@8 f_56@@8))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_27788_27822#PolymorphicMapType_24946| newPMask@0) o_53@@8 f_56@@8))
))) (forall ((o_53@@9 T@Ref) (f_56@@9 T@Field_28610_1658) ) (!  (=> (or (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@9 f_56@@9) (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@9 f_56@@9)) (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| newPMask@0) o_53@@9 f_56@@9))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_28610_3275#PolymorphicMapType_24946| newPMask@0) o_53@@9 f_56@@9))
))) (forall ((o_53@@10 T@Ref) (f_56@@10 T@Field_28610_53) ) (!  (=> (or (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@10 f_56@@10) (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@10 f_56@@10)) (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| newPMask@0) o_53@@10 f_56@@10))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_28610_53#PolymorphicMapType_24946| newPMask@0) o_53@@10 f_56@@10))
))) (forall ((o_53@@11 T@Ref) (f_56@@11 T@Field_28610_24471) ) (!  (=> (or (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@11 f_56@@11) (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@11 f_56@@11)) (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| newPMask@0) o_53@@11 f_56@@11))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_28610_24471#PolymorphicMapType_24946| newPMask@0) o_53@@11 f_56@@11))
))) (forall ((o_53@@12 T@Ref) (f_56@@12 T@Field_28627_28632) ) (!  (=> (or (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@12 f_56@@12) (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@12 f_56@@12)) (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| newPMask@0) o_53@@12 f_56@@12))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_28610_90406#PolymorphicMapType_24946| newPMask@0) o_53@@12 f_56@@12))
))) (forall ((o_53@@13 T@Ref) (f_56@@13 T@Field_28647_28648) ) (!  (=> (or (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@13 f_56@@13) (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@13 f_56@@13)) (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| newPMask@0) o_53@@13 f_56@@13))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_28610_27822#PolymorphicMapType_24946| newPMask@0) o_53@@13 f_56@@13))
))) (forall ((o_53@@14 T@Ref) (f_56@@14 T@Field_29606_2216) ) (!  (=> (or (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@14 f_56@@14) (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@14 f_56@@14)) (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| newPMask@0) o_53@@14 f_56@@14))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_29606_3275#PolymorphicMapType_24946| newPMask@0) o_53@@14 f_56@@14))
))) (forall ((o_53@@15 T@Ref) (f_56@@15 T@Field_29606_53) ) (!  (=> (or (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@15 f_56@@15) (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@15 f_56@@15)) (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| newPMask@0) o_53@@15 f_56@@15))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_29606_53#PolymorphicMapType_24946| newPMask@0) o_53@@15 f_56@@15))
))) (forall ((o_53@@16 T@Ref) (f_56@@16 T@Field_29606_24471) ) (!  (=> (or (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@16 f_56@@16) (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@16 f_56@@16)) (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| newPMask@0) o_53@@16 f_56@@16))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_29606_24471#PolymorphicMapType_24946| newPMask@0) o_53@@16 f_56@@16))
))) (forall ((o_53@@17 T@Ref) (f_56@@17 T@Field_29623_29628) ) (!  (=> (or (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@17 f_56@@17) (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@17 f_56@@17)) (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| newPMask@0) o_53@@17 f_56@@17))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_29606_91454#PolymorphicMapType_24946| newPMask@0) o_53@@17 f_56@@17))
))) (forall ((o_53@@18 T@Ref) (f_56@@18 T@Field_29643_29644) ) (!  (=> (or (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@18 f_56@@18) (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@18 f_56@@18)) (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| newPMask@0) o_53@@18 f_56@@18))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_29606_27822#PolymorphicMapType_24946| newPMask@0) o_53@@18 f_56@@18))
))) (forall ((o_53@@19 T@Ref) (f_56@@19 T@Field_30715_2864) ) (!  (=> (or (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@19 f_56@@19) (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@19 f_56@@19)) (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| newPMask@0) o_53@@19 f_56@@19))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_30715_3275#PolymorphicMapType_24946| newPMask@0) o_53@@19 f_56@@19))
))) (forall ((o_53@@20 T@Ref) (f_56@@20 T@Field_30715_53) ) (!  (=> (or (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@20 f_56@@20) (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@20 f_56@@20)) (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| newPMask@0) o_53@@20 f_56@@20))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_30715_53#PolymorphicMapType_24946| newPMask@0) o_53@@20 f_56@@20))
))) (forall ((o_53@@21 T@Ref) (f_56@@21 T@Field_30715_24471) ) (!  (=> (or (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@21 f_56@@21) (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@21 f_56@@21)) (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| newPMask@0) o_53@@21 f_56@@21))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_30715_24471#PolymorphicMapType_24946| newPMask@0) o_53@@21 f_56@@21))
))) (forall ((o_53@@22 T@Ref) (f_56@@22 T@Field_30729_30734) ) (!  (=> (or (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@22 f_56@@22) (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@22 f_56@@22)) (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| newPMask@0) o_53@@22 f_56@@22))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_30715_92502#PolymorphicMapType_24946| newPMask@0) o_53@@22 f_56@@22))
))) (forall ((o_53@@23 T@Ref) (f_56@@23 T@Field_30746_30747) ) (!  (=> (or (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@23 f_56@@23) (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@23 f_56@@23)) (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| newPMask@0) o_53@@23 f_56@@23))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_30715_27822#PolymorphicMapType_24946| newPMask@0) o_53@@23 f_56@@23))
))) (forall ((o_53@@24 T@Ref) (f_56@@24 T@Field_13973_3275) ) (!  (=> (or (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@24 f_56@@24) (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@24 f_56@@24)) (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| newPMask@0) o_53@@24 f_56@@24))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_31895_3275#PolymorphicMapType_24946| newPMask@0) o_53@@24 f_56@@24))
))) (forall ((o_53@@25 T@Ref) (f_56@@25 T@Field_13973_53) ) (!  (=> (or (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@25 f_56@@25) (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@25 f_56@@25)) (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| newPMask@0) o_53@@25 f_56@@25))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_31895_53#PolymorphicMapType_24946| newPMask@0) o_53@@25 f_56@@25))
))) (forall ((o_53@@26 T@Ref) (f_56@@26 T@Field_13973_24471) ) (!  (=> (or (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@26 f_56@@26) (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@26 f_56@@26)) (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| newPMask@0) o_53@@26 f_56@@26))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_31895_24471#PolymorphicMapType_24946| newPMask@0) o_53@@26 f_56@@26))
))) (forall ((o_53@@27 T@Ref) (f_56@@27 T@Field_33374_33379) ) (!  (=> (or (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@27 f_56@@27) (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@27 f_56@@27)) (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| newPMask@0) o_53@@27 f_56@@27))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_31895_93550#PolymorphicMapType_24946| newPMask@0) o_53@@27 f_56@@27))
))) (forall ((o_53@@28 T@Ref) (f_56@@28 T@Field_31895_31896) ) (!  (=> (or (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm))) o_53@@28 f_56@@28) (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| (select (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) null (|Pair#sm| p_1@@3))) o_53@@28 f_56@@28)) (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| newPMask@0) o_53@@28 f_56@@28))
 :qid |stdinbpl.1755:39|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_24946_31895_27822#PolymorphicMapType_24946| newPMask@0) o_53@@28 f_56@@28))
))) (= Heap@0 (PolymorphicMapType_24397 (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13521_13522#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13977_33466#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13656_37634#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13712_41916#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13790_56526#PolymorphicMapType_24397| Heap@@92) (store (|PolymorphicMapType_24397_13882_67251#PolymorphicMapType_24397| Heap@@92) null (|wand_3#sm| p_1@@3 (/ (to_real 1) (to_real 2)) p_1@@3 FullPerm p_1@@3 FullPerm) newPMask@0) (|PolymorphicMapType_24397_13942_13974#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13942_79762#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13973_3275#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13973_53#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_13973_24471#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_27788_3275#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_27788_13974#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_27788_53#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_27788_24471#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_28610_3275#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_28610_13974#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_28610_53#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_28610_24471#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_29606_3275#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_29606_13974#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_29606_53#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_29606_24471#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_30715_3275#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_30715_13974#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_30715_53#PolymorphicMapType_24397| Heap@@92) (|PolymorphicMapType_24397_30715_24471#PolymorphicMapType_24397| Heap@@92)))) (and (= Mask@2 Mask@1) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_18@6 b_18@5) (= Used_9Mask@3 Used_9Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 36) 33)))) anon15_correct))))))
(let ((anon47_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 39) 36) anon48_Then_correct) (=> (= (ControlFlow 0 39) 37) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 38) 36) anon48_Then_correct) (=> (= (ControlFlow 0 38) 37) anon48_Else_correct)))))
(let ((anon46_Then_correct  (=> (and (and (and (and b_17@4 b_18@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Mask@0) null (Pair p_1@@3)))) (and (=> (= (ControlFlow 0 40) 38) anon47_Then_correct) (=> (= (ControlFlow 0 40) 39) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (not (and (and (and b_17@4 b_18@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_18@6 b_18@3) (= Used_9Mask@3 Used_9Mask@1)) (and (= Heap@1 Heap@@92) (= (ControlFlow 0 35) 33))) anon15_correct)))))
(let ((anon45_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_7Mask@3 Ops_7Mask@1) (= Used_9Mask@1 ZeroMask)) (and (= b_18@3 b_18@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 43) 40) anon46_Then_correct) (=> (= (ControlFlow 0 43) 35) anon46_Else_correct))))))
(let ((anon45_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_9Mask@0 (PolymorphicMapType_24418 (store (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) null (Pair p_1@@3) (+ (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) null (Pair p_1@@3)) takeTransfer@0)) (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ZeroMask)))) (=> (and (and (and (= b_18@1  (and b_18@0 (state Used_9Heap@0 Used_9Mask@0))) (= TempMask@0 (PolymorphicMapType_24418 (store (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) null (Pair p_1@@3) FullPerm) (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ZeroMask)))) (and (= b_18@2  (and b_18@1 (IdenticalOnKnownLocations Ops_7Heap@0 Used_9Heap@0 TempMask@0))) (= Ops_7Mask@2 (PolymorphicMapType_24418 (store (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Ops_7Mask@1) null (Pair p_1@@3) (- (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Ops_7Mask@1) null (Pair p_1@@3)) takeTransfer@0)) (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| Ops_7Mask@1) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| Ops_7Mask@1))))) (and (and (= Ops_7Mask@3 Ops_7Mask@2) (= Used_9Mask@1 Used_9Mask@0)) (and (= b_18@3 b_18@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 42) 40) anon46_Then_correct) (=> (= (ControlFlow 0 42) 35) anon46_Else_correct)))))))
(let ((anon44_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 45) 42) anon45_Then_correct) (=> (= (ControlFlow 0 45) 43) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 44) 42) anon45_Then_correct) (=> (= (ControlFlow 0 44) 43) anon45_Else_correct)))))
(let ((anon43_Then_correct  (=> (and (and (and (and b_17@4 b_18@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| Ops_7Mask@1) null (Pair p_1@@3)))) (and (=> (= (ControlFlow 0 46) 44) anon44_Then_correct) (=> (= (ControlFlow 0 46) 45) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (not (and (and (and b_17@4 b_18@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_7Mask@3 Ops_7Mask@1) (= Used_9Mask@1 ZeroMask)) (and (= b_18@3 b_18@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 41) 40) anon46_Then_correct) (=> (= (ControlFlow 0 41) 35) anon46_Else_correct))))))
(let ((anon42_Then_correct  (=> b_17@4 (=> (and (and (|Pair#trigger_13973| Ops_7Heap@0 (Pair p_1@@3)) (= (select (|PolymorphicMapType_24397_13973_13974#PolymorphicMapType_24397| Ops_7Heap@0) null (Pair p_1@@3)) (CombineFrames (FrameFragment_3275 (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Ops_7Heap@0) p_1@@3 f_7)) (FrameFragment_3275 (select (|PolymorphicMapType_24397_13942_3275#PolymorphicMapType_24397| Ops_7Heap@0) p_1@@3 g))))) (and (= b_18@0  (and b_18 (state Used_9Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) null (Pair p_1@@3)) FullPerm)))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 47) 46) anon43_Then_correct) (=> (= (ControlFlow 0 47) 41) anon43_Else_correct))))))))
(let ((anon42_Else_correct  (=> (and (not b_17@4) (= b_17@14 b_17@4)) (=> (and (and (= Mask@3 Mask@0) (= Ops_7Mask@6 Ops_7Mask@1)) (and (= Heap@2 Heap@@92) (= (ControlFlow 0 32) 30))) anon16_correct))))
(let ((anon2_correct  (=> (and (= b_17@3  (and b_17@2 (state Ops_7Heap@0 Ops_7Mask@1))) (= b_17@4  (and b_17@3 (state Ops_7Heap@0 Ops_7Mask@1)))) (and (=> (= (ControlFlow 0 49) 47) anon42_Then_correct) (=> (= (ControlFlow 0 49) 32) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (and (and (not b_17@0) (= Ops_7Mask@1 ZeroMask)) (and (= b_17@2 b_17@0) (= (ControlFlow 0 52) 49))) anon2_correct)))
(let ((anon41_Then_correct  (=> (and b_17@0 (= perm@1 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (= Ops_7Mask@0 (PolymorphicMapType_24418 (store (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) null (Pair p_1@@3) (+ (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) null (Pair p_1@@3)) perm@1)) (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ZeroMask))) (=> (and (and (= b_17@1  (and b_17@0 (state Ops_7Heap@0 Ops_7Mask@0))) (= Ops_7Mask@1 Ops_7Mask@0)) (and (= b_17@2 b_17@1) (= (ControlFlow 0 50) 49))) anon2_correct)))))))
(let ((anon0_correct  (=> (state Heap@@92 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_24397_13518_53#PolymorphicMapType_24397| Heap@@92) p_1@@3 $allocated) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (= Mask@0 (PolymorphicMapType_24418 (store (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) null (Pair p_1@@3) (+ (select (|PolymorphicMapType_24418_13973_13974#PolymorphicMapType_24418| ZeroMask) null (Pair p_1@@3)) perm@0)) (|PolymorphicMapType_24418_13942_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_1214#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_1658#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_2216#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_2864#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_3275#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13973_108817#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13942_109231#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13650_109645#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13704_110059#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13780_110473#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_13974#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_53#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_24471#PolymorphicMapType_24418| ZeroMask) (|PolymorphicMapType_24418_13874_110887#PolymorphicMapType_24418| ZeroMask))) (state Heap@@92 Mask@0)) (=> (and (and (state Heap@@92 Mask@0) (state Heap@@92 Mask@0)) (and (= b_17@0  (and b_17 (state Ops_7Heap@0 ZeroMask))) (= b_16@0  (and b_16 (state Used_8Heap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 53) 50) anon41_Then_correct) (=> (= (ControlFlow 0 53) 52) anon41_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 55) 53) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid