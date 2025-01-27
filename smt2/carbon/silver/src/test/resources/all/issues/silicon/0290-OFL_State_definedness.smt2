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
(declare-sort T@Field_8748_53 0)
(declare-sort T@Field_8761_8762 0)
(declare-sort T@Field_13157_13158 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17617_17618 0)
(declare-sort T@Field_12162_12163 0)
(declare-sort T@Field_15345_15346 0)
(declare-sort T@Field_15358_15363 0)
(declare-sort T@Field_16657_16658 0)
(declare-sort T@Field_16670_16675 0)
(declare-sort T@Field_19084_19089 0)
(declare-sort T@Field_4491_4499 0)
(declare-sort T@Field_4491_12180 0)
(declare-sort T@Field_4498_4492 0)
(declare-sort T@Field_4498_53 0)
(declare-sort T@Field_12175_12180 0)
(declare-sort T@Field_13157_4492 0)
(declare-sort T@Field_13157_53 0)
(declare-sort T@Field_14624_14629 0)
(declare-sort T@Field_15345_4492 0)
(declare-sort T@Field_15345_53 0)
(declare-sort T@Field_16657_4492 0)
(declare-sort T@Field_16657_53 0)
(declare-sort T@Field_17617_4492 0)
(declare-sort T@Field_17617_53 0)
(declare-datatypes ((T@PolymorphicMapType_8709 0)) (((PolymorphicMapType_8709 (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| (Array T@Ref T@Field_8761_8762 Real)) (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| (Array T@Ref T@Field_13157_13158 Real)) (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| (Array T@Ref T@Field_15345_15346 Real)) (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| (Array T@Ref T@Field_17617_17618 Real)) (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| (Array T@Ref T@Field_12162_12163 Real)) (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| (Array T@Ref T@Field_16657_16658 Real)) (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| (Array T@Ref T@Field_4491_4499 Real)) (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| (Array T@Ref T@Field_8748_53 Real)) (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| (Array T@Ref T@Field_4491_12180 Real)) (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| (Array T@Ref T@Field_13157_4492 Real)) (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| (Array T@Ref T@Field_13157_53 Real)) (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| (Array T@Ref T@Field_14624_14629 Real)) (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| (Array T@Ref T@Field_15345_4492 Real)) (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| (Array T@Ref T@Field_15345_53 Real)) (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| (Array T@Ref T@Field_15358_15363 Real)) (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| (Array T@Ref T@Field_17617_4492 Real)) (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| (Array T@Ref T@Field_17617_53 Real)) (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| (Array T@Ref T@Field_19084_19089 Real)) (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| (Array T@Ref T@Field_4498_4492 Real)) (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| (Array T@Ref T@Field_4498_53 Real)) (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| (Array T@Ref T@Field_12175_12180 Real)) (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| (Array T@Ref T@Field_16657_4492 Real)) (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| (Array T@Ref T@Field_16657_53 Real)) (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| (Array T@Ref T@Field_16670_16675 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9237 0)) (((PolymorphicMapType_9237 (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (Array T@Ref T@Field_8761_8762 Bool)) (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (Array T@Ref T@Field_8748_53 Bool)) (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (Array T@Ref T@Field_4491_4499 Bool)) (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (Array T@Ref T@Field_4491_12180 Bool)) (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (Array T@Ref T@Field_4498_4492 Bool)) (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (Array T@Ref T@Field_4498_53 Bool)) (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (Array T@Ref T@Field_12162_12163 Bool)) (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (Array T@Ref T@Field_12175_12180 Bool)) (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (Array T@Ref T@Field_13157_4492 Bool)) (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (Array T@Ref T@Field_13157_53 Bool)) (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (Array T@Ref T@Field_13157_13158 Bool)) (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (Array T@Ref T@Field_14624_14629 Bool)) (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (Array T@Ref T@Field_15345_4492 Bool)) (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (Array T@Ref T@Field_15345_53 Bool)) (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (Array T@Ref T@Field_15345_15346 Bool)) (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (Array T@Ref T@Field_15358_15363 Bool)) (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (Array T@Ref T@Field_16657_4492 Bool)) (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (Array T@Ref T@Field_16657_53 Bool)) (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (Array T@Ref T@Field_16657_16658 Bool)) (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (Array T@Ref T@Field_16670_16675 Bool)) (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (Array T@Ref T@Field_17617_4492 Bool)) (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (Array T@Ref T@Field_17617_53 Bool)) (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (Array T@Ref T@Field_17617_17618 Bool)) (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (Array T@Ref T@Field_19084_19089 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8688 0)) (((PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| (Array T@Ref T@Field_8748_53 Bool)) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| (Array T@Ref T@Field_8761_8762 T@Ref)) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| (Array T@Ref T@Field_13157_13158 T@FrameType)) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| (Array T@Ref T@Field_17617_17618 T@FrameType)) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| (Array T@Ref T@Field_12162_12163 T@FrameType)) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| (Array T@Ref T@Field_15345_15346 T@FrameType)) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| (Array T@Ref T@Field_15358_15363 T@PolymorphicMapType_9237)) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| (Array T@Ref T@Field_16657_16658 T@FrameType)) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| (Array T@Ref T@Field_16670_16675 T@PolymorphicMapType_9237)) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| (Array T@Ref T@Field_19084_19089 T@PolymorphicMapType_9237)) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| (Array T@Ref T@Field_4491_4499 T@FrameType)) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| (Array T@Ref T@Field_4491_12180 T@PolymorphicMapType_9237)) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| (Array T@Ref T@Field_4498_4492 T@Ref)) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| (Array T@Ref T@Field_4498_53 Bool)) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| (Array T@Ref T@Field_12175_12180 T@PolymorphicMapType_9237)) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| (Array T@Ref T@Field_13157_4492 T@Ref)) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| (Array T@Ref T@Field_13157_53 Bool)) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| (Array T@Ref T@Field_14624_14629 T@PolymorphicMapType_9237)) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| (Array T@Ref T@Field_15345_4492 T@Ref)) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| (Array T@Ref T@Field_15345_53 Bool)) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| (Array T@Ref T@Field_16657_4492 T@Ref)) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| (Array T@Ref T@Field_16657_53 Bool)) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| (Array T@Ref T@Field_17617_4492 T@Ref)) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| (Array T@Ref T@Field_17617_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_8748_53)
(declare-fun f_7 () T@Field_8761_8762)
(declare-fun ofs () T@Field_8761_8762)
(declare-fun succHeap (T@PolymorphicMapType_8688 T@PolymorphicMapType_8688) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8688 T@PolymorphicMapType_8688) Bool)
(declare-fun state (T@PolymorphicMapType_8688 T@PolymorphicMapType_8709) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8709) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9237)
(declare-fun P (T@Ref) T@Field_12162_12163)
(declare-fun IsPredicateField_4498_4499 (T@Field_12162_12163) Bool)
(declare-fun Q (T@Ref) T@Field_13157_13158)
(declare-fun IsPredicateField_4527_4528 (T@Field_13157_13158) Bool)
(declare-fun Rec (T@Ref) T@Field_15345_15346)
(declare-fun IsPredicateField_4551_4552 (T@Field_15345_15346) Bool)
(declare-fun SP_State (T@Ref) T@Field_16657_16658)
(declare-fun IsPredicateField_4576_4577 (T@Field_16657_16658) Bool)
(declare-fun OFL_State (T@Ref) T@Field_17617_17618)
(declare-fun IsPredicateField_4605_4606 (T@Field_17617_17618) Bool)
(declare-fun |P#trigger_4498| (T@PolymorphicMapType_8688 T@Field_12162_12163) Bool)
(declare-fun |P#everUsed_4498| (T@Field_12162_12163) Bool)
(declare-fun |Q#trigger_4527| (T@PolymorphicMapType_8688 T@Field_13157_13158) Bool)
(declare-fun |Q#everUsed_4527| (T@Field_13157_13158) Bool)
(declare-fun |Rec#trigger_4551| (T@PolymorphicMapType_8688 T@Field_15345_15346) Bool)
(declare-fun |Rec#everUsed_4551| (T@Field_15345_15346) Bool)
(declare-fun |SP_State#trigger_4576| (T@PolymorphicMapType_8688 T@Field_16657_16658) Bool)
(declare-fun |SP_State#everUsed_4576| (T@Field_16657_16658) Bool)
(declare-fun |OFL_State#trigger_4605| (T@PolymorphicMapType_8688 T@Field_17617_17618) Bool)
(declare-fun |OFL_State#everUsed_4605| (T@Field_17617_17618) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8688 T@PolymorphicMapType_8688 T@PolymorphicMapType_8709) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4605 (T@Field_17617_17618) T@Field_19084_19089)
(declare-fun HasDirectPerm_17617_4499 (T@PolymorphicMapType_8709 T@Ref T@Field_17617_17618) Bool)
(declare-fun PredicateMaskField_4576 (T@Field_16657_16658) T@Field_16670_16675)
(declare-fun HasDirectPerm_16657_4499 (T@PolymorphicMapType_8709 T@Ref T@Field_16657_16658) Bool)
(declare-fun PredicateMaskField_4551 (T@Field_15345_15346) T@Field_15358_15363)
(declare-fun HasDirectPerm_15345_4499 (T@PolymorphicMapType_8709 T@Ref T@Field_15345_15346) Bool)
(declare-fun PredicateMaskField_4527 (T@Field_13157_13158) T@Field_14624_14629)
(declare-fun HasDirectPerm_13157_4499 (T@PolymorphicMapType_8709 T@Ref T@Field_13157_13158) Bool)
(declare-fun PredicateMaskField_4498 (T@Field_12162_12163) T@Field_12175_12180)
(declare-fun HasDirectPerm_4498_4499 (T@PolymorphicMapType_8709 T@Ref T@Field_12162_12163) Bool)
(declare-fun IsPredicateField_4491_34961 (T@Field_4491_4499) Bool)
(declare-fun PredicateMaskField_4491 (T@Field_4491_4499) T@Field_4491_12180)
(declare-fun HasDirectPerm_4491_4499 (T@PolymorphicMapType_8709 T@Ref T@Field_4491_4499) Bool)
(declare-fun IsWandField_17617_45499 (T@Field_17617_17618) Bool)
(declare-fun WandMaskField_17617 (T@Field_17617_17618) T@Field_19084_19089)
(declare-fun IsWandField_16657_45142 (T@Field_16657_16658) Bool)
(declare-fun WandMaskField_16657 (T@Field_16657_16658) T@Field_16670_16675)
(declare-fun IsWandField_15345_44785 (T@Field_15345_15346) Bool)
(declare-fun WandMaskField_15345 (T@Field_15345_15346) T@Field_15358_15363)
(declare-fun IsWandField_13157_44428 (T@Field_13157_13158) Bool)
(declare-fun WandMaskField_13157 (T@Field_13157_13158) T@Field_14624_14629)
(declare-fun IsWandField_4498_44071 (T@Field_12162_12163) Bool)
(declare-fun WandMaskField_4498 (T@Field_12162_12163) T@Field_12175_12180)
(declare-fun IsWandField_4491_43714 (T@Field_4491_4499) Bool)
(declare-fun WandMaskField_4491 (T@Field_4491_4499) T@Field_4491_12180)
(declare-fun |P#sm| (T@Ref) T@Field_12175_12180)
(declare-fun |Q#sm| (T@Ref) T@Field_14624_14629)
(declare-fun |Rec#sm| (T@Ref) T@Field_15358_15363)
(declare-fun |SP_State#sm| (T@Ref) T@Field_16670_16675)
(declare-fun |OFL_State#sm| (T@Ref) T@Field_19084_19089)
(declare-fun dummyHeap () T@PolymorphicMapType_8688)
(declare-fun ZeroMask () T@PolymorphicMapType_8709)
(declare-fun InsidePredicate_8748_8748 (T@Field_4491_4499 T@FrameType T@Field_4491_4499 T@FrameType) Bool)
(declare-fun InsidePredicate_4605_4605 (T@Field_17617_17618 T@FrameType T@Field_17617_17618 T@FrameType) Bool)
(declare-fun InsidePredicate_4576_16657 (T@Field_16657_16658 T@FrameType T@Field_16657_16658 T@FrameType) Bool)
(declare-fun InsidePredicate_4551_4551 (T@Field_15345_15346 T@FrameType T@Field_15345_15346 T@FrameType) Bool)
(declare-fun InsidePredicate_4527_4527 (T@Field_13157_13158 T@FrameType T@Field_13157_13158 T@FrameType) Bool)
(declare-fun InsidePredicate_4498_12162 (T@Field_12162_12163 T@FrameType T@Field_12162_12163 T@FrameType) Bool)
(declare-fun IsPredicateField_4491_4492 (T@Field_8761_8762) Bool)
(declare-fun IsWandField_4491_4492 (T@Field_8761_8762) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4576_62318 (T@Field_16670_16675) Bool)
(declare-fun IsWandField_4576_62334 (T@Field_16670_16675) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4576_53 (T@Field_16657_53) Bool)
(declare-fun IsWandField_4576_53 (T@Field_16657_53) Bool)
(declare-fun IsPredicateField_4576_4492 (T@Field_16657_4492) Bool)
(declare-fun IsWandField_4576_4492 (T@Field_16657_4492) Bool)
(declare-fun IsPredicateField_4498_61655 (T@Field_12175_12180) Bool)
(declare-fun IsWandField_4498_61671 (T@Field_12175_12180) Bool)
(declare-fun IsPredicateField_4498_53 (T@Field_4498_53) Bool)
(declare-fun IsWandField_4498_53 (T@Field_4498_53) Bool)
(declare-fun IsPredicateField_4498_4492 (T@Field_4498_4492) Bool)
(declare-fun IsWandField_4498_4492 (T@Field_4498_4492) Bool)
(declare-fun IsPredicateField_4605_60992 (T@Field_19084_19089) Bool)
(declare-fun IsWandField_4605_61008 (T@Field_19084_19089) Bool)
(declare-fun IsPredicateField_4605_53 (T@Field_17617_53) Bool)
(declare-fun IsWandField_4605_53 (T@Field_17617_53) Bool)
(declare-fun IsPredicateField_4605_4492 (T@Field_17617_4492) Bool)
(declare-fun IsWandField_4605_4492 (T@Field_17617_4492) Bool)
(declare-fun IsPredicateField_4551_60329 (T@Field_15358_15363) Bool)
(declare-fun IsWandField_4551_60345 (T@Field_15358_15363) Bool)
(declare-fun IsPredicateField_4551_53 (T@Field_15345_53) Bool)
(declare-fun IsWandField_4551_53 (T@Field_15345_53) Bool)
(declare-fun IsPredicateField_4551_4492 (T@Field_15345_4492) Bool)
(declare-fun IsWandField_4551_4492 (T@Field_15345_4492) Bool)
(declare-fun IsPredicateField_4527_59666 (T@Field_14624_14629) Bool)
(declare-fun IsWandField_4527_59682 (T@Field_14624_14629) Bool)
(declare-fun IsPredicateField_4527_53 (T@Field_13157_53) Bool)
(declare-fun IsWandField_4527_53 (T@Field_13157_53) Bool)
(declare-fun IsPredicateField_4527_4492 (T@Field_13157_4492) Bool)
(declare-fun IsWandField_4527_4492 (T@Field_13157_4492) Bool)
(declare-fun IsPredicateField_4491_59003 (T@Field_4491_12180) Bool)
(declare-fun IsWandField_4491_59019 (T@Field_4491_12180) Bool)
(declare-fun IsPredicateField_4491_53 (T@Field_8748_53) Bool)
(declare-fun IsWandField_4491_53 (T@Field_8748_53) Bool)
(declare-fun HasDirectPerm_17617_34716 (T@PolymorphicMapType_8709 T@Ref T@Field_19084_19089) Bool)
(declare-fun HasDirectPerm_17617_53 (T@PolymorphicMapType_8709 T@Ref T@Field_17617_53) Bool)
(declare-fun HasDirectPerm_17617_4492 (T@PolymorphicMapType_8709 T@Ref T@Field_17617_4492) Bool)
(declare-fun HasDirectPerm_16657_33819 (T@PolymorphicMapType_8709 T@Ref T@Field_16670_16675) Bool)
(declare-fun HasDirectPerm_16657_53 (T@PolymorphicMapType_8709 T@Ref T@Field_16657_53) Bool)
(declare-fun HasDirectPerm_16657_4492 (T@PolymorphicMapType_8709 T@Ref T@Field_16657_4492) Bool)
(declare-fun HasDirectPerm_15345_32922 (T@PolymorphicMapType_8709 T@Ref T@Field_15358_15363) Bool)
(declare-fun HasDirectPerm_15345_53 (T@PolymorphicMapType_8709 T@Ref T@Field_15345_53) Bool)
(declare-fun HasDirectPerm_15345_4492 (T@PolymorphicMapType_8709 T@Ref T@Field_15345_4492) Bool)
(declare-fun HasDirectPerm_13157_31982 (T@PolymorphicMapType_8709 T@Ref T@Field_14624_14629) Bool)
(declare-fun HasDirectPerm_13157_53 (T@PolymorphicMapType_8709 T@Ref T@Field_13157_53) Bool)
(declare-fun HasDirectPerm_13157_4492 (T@PolymorphicMapType_8709 T@Ref T@Field_13157_4492) Bool)
(declare-fun HasDirectPerm_4498_31042 (T@PolymorphicMapType_8709 T@Ref T@Field_12175_12180) Bool)
(declare-fun HasDirectPerm_4498_53 (T@PolymorphicMapType_8709 T@Ref T@Field_4498_53) Bool)
(declare-fun HasDirectPerm_4498_4492 (T@PolymorphicMapType_8709 T@Ref T@Field_4498_4492) Bool)
(declare-fun HasDirectPerm_4491_30122 (T@PolymorphicMapType_8709 T@Ref T@Field_4491_12180) Bool)
(declare-fun HasDirectPerm_4491_53 (T@PolymorphicMapType_8709 T@Ref T@Field_8748_53) Bool)
(declare-fun HasDirectPerm_4491_4492 (T@PolymorphicMapType_8709 T@Ref T@Field_8761_8762) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8709 T@PolymorphicMapType_8709 T@PolymorphicMapType_8709) Bool)
(declare-fun getPredWandId_4498_4499 (T@Field_12162_12163) Int)
(declare-fun getPredWandId_4527_4528 (T@Field_13157_13158) Int)
(declare-fun getPredWandId_4551_4552 (T@Field_15345_15346) Int)
(declare-fun getPredWandId_4576_4577 (T@Field_16657_16658) Int)
(declare-fun getPredWandId_4605_4606 (T@Field_17617_17618) Int)
(declare-fun InsidePredicate_4605_8748 (T@Field_17617_17618 T@FrameType T@Field_4491_4499 T@FrameType) Bool)
(declare-fun InsidePredicate_8748_16657 (T@Field_4491_4499 T@FrameType T@Field_16657_16658 T@FrameType) Bool)
(declare-fun InsidePredicate_4605_16657 (T@Field_17617_17618 T@FrameType T@Field_16657_16658 T@FrameType) Bool)
(declare-fun InsidePredicate_8748_12162 (T@Field_4491_4499 T@FrameType T@Field_12162_12163 T@FrameType) Bool)
(declare-fun InsidePredicate_4605_12162 (T@Field_17617_17618 T@FrameType T@Field_12162_12163 T@FrameType) Bool)
(declare-fun InsidePredicate_8748_4605 (T@Field_4491_4499 T@FrameType T@Field_17617_17618 T@FrameType) Bool)
(declare-fun InsidePredicate_8748_4551 (T@Field_4491_4499 T@FrameType T@Field_15345_15346 T@FrameType) Bool)
(declare-fun InsidePredicate_4605_4551 (T@Field_17617_17618 T@FrameType T@Field_15345_15346 T@FrameType) Bool)
(declare-fun InsidePredicate_8748_4527 (T@Field_4491_4499 T@FrameType T@Field_13157_13158 T@FrameType) Bool)
(declare-fun InsidePredicate_4605_4527 (T@Field_17617_17618 T@FrameType T@Field_13157_13158 T@FrameType) Bool)
(declare-fun InsidePredicate_4576_12162 (T@Field_16657_16658 T@FrameType T@Field_12162_12163 T@FrameType) Bool)
(declare-fun InsidePredicate_4576_8748 (T@Field_16657_16658 T@FrameType T@Field_4491_4499 T@FrameType) Bool)
(declare-fun InsidePredicate_4576_4605 (T@Field_16657_16658 T@FrameType T@Field_17617_17618 T@FrameType) Bool)
(declare-fun InsidePredicate_4576_4551 (T@Field_16657_16658 T@FrameType T@Field_15345_15346 T@FrameType) Bool)
(declare-fun InsidePredicate_4576_4527 (T@Field_16657_16658 T@FrameType T@Field_13157_13158 T@FrameType) Bool)
(declare-fun InsidePredicate_4551_16657 (T@Field_15345_15346 T@FrameType T@Field_16657_16658 T@FrameType) Bool)
(declare-fun InsidePredicate_4551_12162 (T@Field_15345_15346 T@FrameType T@Field_12162_12163 T@FrameType) Bool)
(declare-fun InsidePredicate_4551_8748 (T@Field_15345_15346 T@FrameType T@Field_4491_4499 T@FrameType) Bool)
(declare-fun InsidePredicate_4551_4605 (T@Field_15345_15346 T@FrameType T@Field_17617_17618 T@FrameType) Bool)
(declare-fun InsidePredicate_4551_4527 (T@Field_15345_15346 T@FrameType T@Field_13157_13158 T@FrameType) Bool)
(declare-fun InsidePredicate_4498_16657 (T@Field_12162_12163 T@FrameType T@Field_16657_16658 T@FrameType) Bool)
(declare-fun InsidePredicate_4498_8748 (T@Field_12162_12163 T@FrameType T@Field_4491_4499 T@FrameType) Bool)
(declare-fun InsidePredicate_4498_4605 (T@Field_12162_12163 T@FrameType T@Field_17617_17618 T@FrameType) Bool)
(declare-fun InsidePredicate_4498_4551 (T@Field_12162_12163 T@FrameType T@Field_15345_15346 T@FrameType) Bool)
(declare-fun InsidePredicate_4498_4527 (T@Field_12162_12163 T@FrameType T@Field_13157_13158 T@FrameType) Bool)
(declare-fun InsidePredicate_4527_16657 (T@Field_13157_13158 T@FrameType T@Field_16657_16658 T@FrameType) Bool)
(declare-fun InsidePredicate_4527_12162 (T@Field_13157_13158 T@FrameType T@Field_12162_12163 T@FrameType) Bool)
(declare-fun InsidePredicate_4527_8748 (T@Field_13157_13158 T@FrameType T@Field_4491_4499 T@FrameType) Bool)
(declare-fun InsidePredicate_4527_4605 (T@Field_13157_13158 T@FrameType T@Field_17617_17618 T@FrameType) Bool)
(declare-fun InsidePredicate_4527_4551 (T@Field_13157_13158 T@FrameType T@Field_15345_15346 T@FrameType) Bool)
(assert (distinct f_7 ofs)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8688) (Heap1 T@PolymorphicMapType_8688) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8688) (Mask T@PolymorphicMapType_8709) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8688) (Heap1@@0 T@PolymorphicMapType_8688) (Heap2 T@PolymorphicMapType_8688) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19084_19089) ) (!  (not (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17617_17618) ) (!  (not (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17617_53) ) (!  (not (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17617_4492) ) (!  (not (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16670_16675) ) (!  (not (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_16657_16658) ) (!  (not (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16657_53) ) (!  (not (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16657_4492) ) (!  (not (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_15358_15363) ) (!  (not (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_15345_15346) ) (!  (not (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_15345_53) ) (!  (not (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_15345_4492) ) (!  (not (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_14624_14629) ) (!  (not (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_13157_13158) ) (!  (not (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_13157_53) ) (!  (not (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_13157_4492) ) (!  (not (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12175_12180) ) (!  (not (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12162_12163) ) (!  (not (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4498_53) ) (!  (not (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_4498_4492) ) (!  (not (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_4491_12180) ) (!  (not (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_4491_4499) ) (!  (not (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_8748_53) ) (!  (not (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_8761_8762) ) (!  (not (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((r_1 T@Ref) ) (! (IsPredicateField_4498_4499 (P r_1))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (P r_1))
)))
(assert (forall ((r_1@@0 T@Ref) ) (! (IsPredicateField_4527_4528 (Q r_1@@0))
 :qid |stdinbpl.294:15|
 :skolemid |29|
 :pattern ( (Q r_1@@0))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_4551_4552 (Rec x))
 :qid |stdinbpl.343:15|
 :skolemid |35|
 :pattern ( (Rec x))
)))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_4576_4577 (SP_State self))
 :qid |stdinbpl.413:15|
 :skolemid |41|
 :pattern ( (SP_State self))
)))
(assert (forall ((self@@0 T@Ref) ) (! (IsPredicateField_4605_4606 (OFL_State self@@0))
 :qid |stdinbpl.509:15|
 :skolemid |47|
 :pattern ( (OFL_State self@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8688) (r_1@@1 T@Ref) ) (! (|P#everUsed_4498| (P r_1@@1))
 :qid |stdinbpl.217:15|
 :skolemid |27|
 :pattern ( (|P#trigger_4498| Heap@@0 (P r_1@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8688) (r_1@@2 T@Ref) ) (! (|Q#everUsed_4527| (Q r_1@@2))
 :qid |stdinbpl.313:15|
 :skolemid |33|
 :pattern ( (|Q#trigger_4527| Heap@@1 (Q r_1@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8688) (x@@0 T@Ref) ) (! (|Rec#everUsed_4551| (Rec x@@0))
 :qid |stdinbpl.362:15|
 :skolemid |39|
 :pattern ( (|Rec#trigger_4551| Heap@@2 (Rec x@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8688) (self@@1 T@Ref) ) (! (|SP_State#everUsed_4576| (SP_State self@@1))
 :qid |stdinbpl.432:15|
 :skolemid |45|
 :pattern ( (|SP_State#trigger_4576| Heap@@3 (SP_State self@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8688) (self@@2 T@Ref) ) (! (|OFL_State#everUsed_4605| (OFL_State self@@2))
 :qid |stdinbpl.528:15|
 :skolemid |51|
 :pattern ( (|OFL_State#trigger_4605| Heap@@4 (OFL_State self@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8688) (ExhaleHeap T@PolymorphicMapType_8688) (Mask@@0 T@PolymorphicMapType_8709) (pm_f_1 T@Field_17617_17618) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17617_4499 Mask@@0 null pm_f_1) (IsPredicateField_4605_4606 pm_f_1)) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@5) null (PredicateMaskField_4605 pm_f_1)) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap) null (PredicateMaskField_4605 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (IsPredicateField_4605_4606 pm_f_1) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap) null (PredicateMaskField_4605 pm_f_1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8688) (ExhaleHeap@@0 T@PolymorphicMapType_8688) (Mask@@1 T@PolymorphicMapType_8709) (pm_f_1@@0 T@Field_16657_16658) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16657_4499 Mask@@1 null pm_f_1@@0) (IsPredicateField_4576_4577 pm_f_1@@0)) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@6) null (PredicateMaskField_4576 pm_f_1@@0)) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@0) null (PredicateMaskField_4576 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4576_4577 pm_f_1@@0) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@0) null (PredicateMaskField_4576 pm_f_1@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8688) (ExhaleHeap@@1 T@PolymorphicMapType_8688) (Mask@@2 T@PolymorphicMapType_8709) (pm_f_1@@1 T@Field_15345_15346) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_15345_4499 Mask@@2 null pm_f_1@@1) (IsPredicateField_4551_4552 pm_f_1@@1)) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@7) null (PredicateMaskField_4551 pm_f_1@@1)) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@1) null (PredicateMaskField_4551 pm_f_1@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4551_4552 pm_f_1@@1) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@1) null (PredicateMaskField_4551 pm_f_1@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8688) (ExhaleHeap@@2 T@PolymorphicMapType_8688) (Mask@@3 T@PolymorphicMapType_8709) (pm_f_1@@2 T@Field_13157_13158) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_13157_4499 Mask@@3 null pm_f_1@@2) (IsPredicateField_4527_4528 pm_f_1@@2)) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@8) null (PredicateMaskField_4527 pm_f_1@@2)) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@2) null (PredicateMaskField_4527 pm_f_1@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (IsPredicateField_4527_4528 pm_f_1@@2) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@2) null (PredicateMaskField_4527 pm_f_1@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8688) (ExhaleHeap@@3 T@PolymorphicMapType_8688) (Mask@@4 T@PolymorphicMapType_8709) (pm_f_1@@3 T@Field_12162_12163) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_4498_4499 Mask@@4 null pm_f_1@@3) (IsPredicateField_4498_4499 pm_f_1@@3)) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@9) null (PredicateMaskField_4498 pm_f_1@@3)) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@3) null (PredicateMaskField_4498 pm_f_1@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4498_4499 pm_f_1@@3) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@3) null (PredicateMaskField_4498 pm_f_1@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8688) (ExhaleHeap@@4 T@PolymorphicMapType_8688) (Mask@@5 T@PolymorphicMapType_8709) (pm_f_1@@4 T@Field_4491_4499) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4491_4499 Mask@@5 null pm_f_1@@4) (IsPredicateField_4491_34961 pm_f_1@@4)) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@10) null (PredicateMaskField_4491 pm_f_1@@4)) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@4) null (PredicateMaskField_4491 pm_f_1@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4491_34961 pm_f_1@@4) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@4) null (PredicateMaskField_4491 pm_f_1@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8688) (ExhaleHeap@@5 T@PolymorphicMapType_8688) (Mask@@6 T@PolymorphicMapType_8709) (pm_f_1@@5 T@Field_17617_17618) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_17617_4499 Mask@@6 null pm_f_1@@5) (IsWandField_17617_45499 pm_f_1@@5)) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@11) null (WandMaskField_17617 pm_f_1@@5)) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@5) null (WandMaskField_17617 pm_f_1@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (IsWandField_17617_45499 pm_f_1@@5) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@5) null (WandMaskField_17617 pm_f_1@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8688) (ExhaleHeap@@6 T@PolymorphicMapType_8688) (Mask@@7 T@PolymorphicMapType_8709) (pm_f_1@@6 T@Field_16657_16658) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_16657_4499 Mask@@7 null pm_f_1@@6) (IsWandField_16657_45142 pm_f_1@@6)) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@12) null (WandMaskField_16657 pm_f_1@@6)) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@6) null (WandMaskField_16657 pm_f_1@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (IsWandField_16657_45142 pm_f_1@@6) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@6) null (WandMaskField_16657 pm_f_1@@6)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8688) (ExhaleHeap@@7 T@PolymorphicMapType_8688) (Mask@@8 T@PolymorphicMapType_8709) (pm_f_1@@7 T@Field_15345_15346) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_15345_4499 Mask@@8 null pm_f_1@@7) (IsWandField_15345_44785 pm_f_1@@7)) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@13) null (WandMaskField_15345 pm_f_1@@7)) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@7) null (WandMaskField_15345 pm_f_1@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (IsWandField_15345_44785 pm_f_1@@7) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@7) null (WandMaskField_15345 pm_f_1@@7)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8688) (ExhaleHeap@@8 T@PolymorphicMapType_8688) (Mask@@9 T@PolymorphicMapType_8709) (pm_f_1@@8 T@Field_13157_13158) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_13157_4499 Mask@@9 null pm_f_1@@8) (IsWandField_13157_44428 pm_f_1@@8)) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@14) null (WandMaskField_13157 pm_f_1@@8)) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@8) null (WandMaskField_13157 pm_f_1@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (IsWandField_13157_44428 pm_f_1@@8) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@8) null (WandMaskField_13157 pm_f_1@@8)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8688) (ExhaleHeap@@9 T@PolymorphicMapType_8688) (Mask@@10 T@PolymorphicMapType_8709) (pm_f_1@@9 T@Field_12162_12163) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_4498_4499 Mask@@10 null pm_f_1@@9) (IsWandField_4498_44071 pm_f_1@@9)) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@15) null (WandMaskField_4498 pm_f_1@@9)) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@9) null (WandMaskField_4498 pm_f_1@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (IsWandField_4498_44071 pm_f_1@@9) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@9) null (WandMaskField_4498 pm_f_1@@9)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8688) (ExhaleHeap@@10 T@PolymorphicMapType_8688) (Mask@@11 T@PolymorphicMapType_8709) (pm_f_1@@10 T@Field_4491_4499) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_4491_4499 Mask@@11 null pm_f_1@@10) (IsWandField_4491_43714 pm_f_1@@10)) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@16) null (WandMaskField_4491 pm_f_1@@10)) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@10) null (WandMaskField_4491 pm_f_1@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (IsWandField_4491_43714 pm_f_1@@10) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@10) null (WandMaskField_4491 pm_f_1@@10)))
)))
(assert (forall ((r_1@@3 T@Ref) (r2 T@Ref) ) (!  (=> (= (P r_1@@3) (P r2)) (= r_1@@3 r2))
 :qid |stdinbpl.208:15|
 :skolemid |25|
 :pattern ( (P r_1@@3) (P r2))
)))
(assert (forall ((r_1@@4 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|P#sm| r_1@@4) (|P#sm| r2@@0)) (= r_1@@4 r2@@0))
 :qid |stdinbpl.212:15|
 :skolemid |26|
 :pattern ( (|P#sm| r_1@@4) (|P#sm| r2@@0))
)))
(assert (forall ((r_1@@5 T@Ref) (r2@@1 T@Ref) ) (!  (=> (= (Q r_1@@5) (Q r2@@1)) (= r_1@@5 r2@@1))
 :qid |stdinbpl.304:15|
 :skolemid |31|
 :pattern ( (Q r_1@@5) (Q r2@@1))
)))
(assert (forall ((r_1@@6 T@Ref) (r2@@2 T@Ref) ) (!  (=> (= (|Q#sm| r_1@@6) (|Q#sm| r2@@2)) (= r_1@@6 r2@@2))
 :qid |stdinbpl.308:15|
 :skolemid |32|
 :pattern ( (|Q#sm| r_1@@6) (|Q#sm| r2@@2))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (Rec x@@1) (Rec x2)) (= x@@1 x2))
 :qid |stdinbpl.353:15|
 :skolemid |37|
 :pattern ( (Rec x@@1) (Rec x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|Rec#sm| x@@2) (|Rec#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.357:15|
 :skolemid |38|
 :pattern ( (|Rec#sm| x@@2) (|Rec#sm| x2@@0))
)))
(assert (forall ((self@@3 T@Ref) (self2 T@Ref) ) (!  (=> (= (SP_State self@@3) (SP_State self2)) (= self@@3 self2))
 :qid |stdinbpl.423:15|
 :skolemid |43|
 :pattern ( (SP_State self@@3) (SP_State self2))
)))
(assert (forall ((self@@4 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|SP_State#sm| self@@4) (|SP_State#sm| self2@@0)) (= self@@4 self2@@0))
 :qid |stdinbpl.427:15|
 :skolemid |44|
 :pattern ( (|SP_State#sm| self@@4) (|SP_State#sm| self2@@0))
)))
(assert (forall ((self@@5 T@Ref) (self2@@1 T@Ref) ) (!  (=> (= (OFL_State self@@5) (OFL_State self2@@1)) (= self@@5 self2@@1))
 :qid |stdinbpl.519:15|
 :skolemid |49|
 :pattern ( (OFL_State self@@5) (OFL_State self2@@1))
)))
(assert (forall ((self@@6 T@Ref) (self2@@2 T@Ref) ) (!  (=> (= (|OFL_State#sm| self@@6) (|OFL_State#sm| self2@@2)) (= self@@6 self2@@2))
 :qid |stdinbpl.523:15|
 :skolemid |50|
 :pattern ( (|OFL_State#sm| self@@6) (|OFL_State#sm| self2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8688) (ExhaleHeap@@11 T@PolymorphicMapType_8688) (Mask@@12 T@PolymorphicMapType_8709) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@17) o_4 $allocated) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@11) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@11) o_4 $allocated))
)))
(assert (forall ((p T@Field_4491_4499) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8748_8748 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8748_8748 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_17617_17618) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4605_4605 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4605_4605 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_16657_16658) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_4576_16657 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4576_16657 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_15345_15346) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_4551_4551 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4551_4551 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_13157_13158) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_4527_4527 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4527_4527 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_12162_12163) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_4498_12162 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4498_12162 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert  (not (IsPredicateField_4491_4492 f_7)))
(assert  (not (IsWandField_4491_4492 f_7)))
(assert  (not (IsPredicateField_4491_4492 ofs)))
(assert  (not (IsWandField_4491_4492 ofs)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8688) (ExhaleHeap@@12 T@PolymorphicMapType_8688) (Mask@@13 T@PolymorphicMapType_8709) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@18 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8709) (o_2@@23 T@Ref) (f_4@@23 T@Field_16670_16675) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| Mask@@14) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4576_62318 f_4@@23))) (not (IsWandField_4576_62334 f_4@@23))) (<= (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| Mask@@14) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| Mask@@14) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8709) (o_2@@24 T@Ref) (f_4@@24 T@Field_16657_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| Mask@@15) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4576_53 f_4@@24))) (not (IsWandField_4576_53 f_4@@24))) (<= (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| Mask@@15) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| Mask@@15) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8709) (o_2@@25 T@Ref) (f_4@@25 T@Field_16657_16658) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| Mask@@16) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4576_4577 f_4@@25))) (not (IsWandField_16657_45142 f_4@@25))) (<= (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| Mask@@16) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| Mask@@16) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8709) (o_2@@26 T@Ref) (f_4@@26 T@Field_16657_4492) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| Mask@@17) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4576_4492 f_4@@26))) (not (IsWandField_4576_4492 f_4@@26))) (<= (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| Mask@@17) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| Mask@@17) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8709) (o_2@@27 T@Ref) (f_4@@27 T@Field_12175_12180) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| Mask@@18) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4498_61655 f_4@@27))) (not (IsWandField_4498_61671 f_4@@27))) (<= (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| Mask@@18) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| Mask@@18) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8709) (o_2@@28 T@Ref) (f_4@@28 T@Field_4498_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| Mask@@19) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4498_53 f_4@@28))) (not (IsWandField_4498_53 f_4@@28))) (<= (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| Mask@@19) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| Mask@@19) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8709) (o_2@@29 T@Ref) (f_4@@29 T@Field_12162_12163) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| Mask@@20) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4498_4499 f_4@@29))) (not (IsWandField_4498_44071 f_4@@29))) (<= (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| Mask@@20) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| Mask@@20) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8709) (o_2@@30 T@Ref) (f_4@@30 T@Field_4498_4492) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| Mask@@21) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4498_4492 f_4@@30))) (not (IsWandField_4498_4492 f_4@@30))) (<= (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| Mask@@21) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| Mask@@21) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8709) (o_2@@31 T@Ref) (f_4@@31 T@Field_19084_19089) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| Mask@@22) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4605_60992 f_4@@31))) (not (IsWandField_4605_61008 f_4@@31))) (<= (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| Mask@@22) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| Mask@@22) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8709) (o_2@@32 T@Ref) (f_4@@32 T@Field_17617_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| Mask@@23) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_4605_53 f_4@@32))) (not (IsWandField_4605_53 f_4@@32))) (<= (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| Mask@@23) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| Mask@@23) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8709) (o_2@@33 T@Ref) (f_4@@33 T@Field_17617_17618) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| Mask@@24) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_4605_4606 f_4@@33))) (not (IsWandField_17617_45499 f_4@@33))) (<= (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| Mask@@24) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| Mask@@24) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8709) (o_2@@34 T@Ref) (f_4@@34 T@Field_17617_4492) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| Mask@@25) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_4605_4492 f_4@@34))) (not (IsWandField_4605_4492 f_4@@34))) (<= (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| Mask@@25) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| Mask@@25) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8709) (o_2@@35 T@Ref) (f_4@@35 T@Field_15358_15363) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| Mask@@26) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_4551_60329 f_4@@35))) (not (IsWandField_4551_60345 f_4@@35))) (<= (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| Mask@@26) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| Mask@@26) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8709) (o_2@@36 T@Ref) (f_4@@36 T@Field_15345_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| Mask@@27) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_4551_53 f_4@@36))) (not (IsWandField_4551_53 f_4@@36))) (<= (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| Mask@@27) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| Mask@@27) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8709) (o_2@@37 T@Ref) (f_4@@37 T@Field_15345_15346) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| Mask@@28) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_4551_4552 f_4@@37))) (not (IsWandField_15345_44785 f_4@@37))) (<= (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| Mask@@28) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| Mask@@28) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8709) (o_2@@38 T@Ref) (f_4@@38 T@Field_15345_4492) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| Mask@@29) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_4551_4492 f_4@@38))) (not (IsWandField_4551_4492 f_4@@38))) (<= (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| Mask@@29) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| Mask@@29) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8709) (o_2@@39 T@Ref) (f_4@@39 T@Field_14624_14629) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| Mask@@30) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_4527_59666 f_4@@39))) (not (IsWandField_4527_59682 f_4@@39))) (<= (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| Mask@@30) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| Mask@@30) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8709) (o_2@@40 T@Ref) (f_4@@40 T@Field_13157_53) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| Mask@@31) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_4527_53 f_4@@40))) (not (IsWandField_4527_53 f_4@@40))) (<= (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| Mask@@31) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| Mask@@31) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_8709) (o_2@@41 T@Ref) (f_4@@41 T@Field_13157_13158) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| Mask@@32) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_4527_4528 f_4@@41))) (not (IsWandField_13157_44428 f_4@@41))) (<= (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| Mask@@32) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| Mask@@32) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_8709) (o_2@@42 T@Ref) (f_4@@42 T@Field_13157_4492) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| Mask@@33) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_4527_4492 f_4@@42))) (not (IsWandField_4527_4492 f_4@@42))) (<= (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| Mask@@33) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| Mask@@33) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_8709) (o_2@@43 T@Ref) (f_4@@43 T@Field_4491_12180) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| Mask@@34) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_4491_59003 f_4@@43))) (not (IsWandField_4491_59019 f_4@@43))) (<= (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| Mask@@34) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| Mask@@34) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_8709) (o_2@@44 T@Ref) (f_4@@44 T@Field_8748_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| Mask@@35) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_4491_53 f_4@@44))) (not (IsWandField_4491_53 f_4@@44))) (<= (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| Mask@@35) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| Mask@@35) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_8709) (o_2@@45 T@Ref) (f_4@@45 T@Field_4491_4499) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| Mask@@36) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_4491_34961 f_4@@45))) (not (IsWandField_4491_43714 f_4@@45))) (<= (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| Mask@@36) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| Mask@@36) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_8709) (o_2@@46 T@Ref) (f_4@@46 T@Field_8761_8762) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| Mask@@37) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_4491_4492 f_4@@46))) (not (IsWandField_4491_4492 f_4@@46))) (<= (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| Mask@@37) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| Mask@@37) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_8709) (o_2@@47 T@Ref) (f_4@@47 T@Field_19084_19089) ) (! (= (HasDirectPerm_17617_34716 Mask@@38 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| Mask@@38) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17617_34716 Mask@@38 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_8709) (o_2@@48 T@Ref) (f_4@@48 T@Field_17617_53) ) (! (= (HasDirectPerm_17617_53 Mask@@39 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| Mask@@39) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17617_53 Mask@@39 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_8709) (o_2@@49 T@Ref) (f_4@@49 T@Field_17617_17618) ) (! (= (HasDirectPerm_17617_4499 Mask@@40 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| Mask@@40) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17617_4499 Mask@@40 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_8709) (o_2@@50 T@Ref) (f_4@@50 T@Field_17617_4492) ) (! (= (HasDirectPerm_17617_4492 Mask@@41 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| Mask@@41) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17617_4492 Mask@@41 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_8709) (o_2@@51 T@Ref) (f_4@@51 T@Field_16670_16675) ) (! (= (HasDirectPerm_16657_33819 Mask@@42 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| Mask@@42) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16657_33819 Mask@@42 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_8709) (o_2@@52 T@Ref) (f_4@@52 T@Field_16657_53) ) (! (= (HasDirectPerm_16657_53 Mask@@43 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| Mask@@43) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16657_53 Mask@@43 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_8709) (o_2@@53 T@Ref) (f_4@@53 T@Field_16657_16658) ) (! (= (HasDirectPerm_16657_4499 Mask@@44 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| Mask@@44) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16657_4499 Mask@@44 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_8709) (o_2@@54 T@Ref) (f_4@@54 T@Field_16657_4492) ) (! (= (HasDirectPerm_16657_4492 Mask@@45 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| Mask@@45) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16657_4492 Mask@@45 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_8709) (o_2@@55 T@Ref) (f_4@@55 T@Field_15358_15363) ) (! (= (HasDirectPerm_15345_32922 Mask@@46 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| Mask@@46) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15345_32922 Mask@@46 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_8709) (o_2@@56 T@Ref) (f_4@@56 T@Field_15345_53) ) (! (= (HasDirectPerm_15345_53 Mask@@47 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| Mask@@47) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15345_53 Mask@@47 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_8709) (o_2@@57 T@Ref) (f_4@@57 T@Field_15345_15346) ) (! (= (HasDirectPerm_15345_4499 Mask@@48 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| Mask@@48) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15345_4499 Mask@@48 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_8709) (o_2@@58 T@Ref) (f_4@@58 T@Field_15345_4492) ) (! (= (HasDirectPerm_15345_4492 Mask@@49 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| Mask@@49) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15345_4492 Mask@@49 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_8709) (o_2@@59 T@Ref) (f_4@@59 T@Field_14624_14629) ) (! (= (HasDirectPerm_13157_31982 Mask@@50 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| Mask@@50) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13157_31982 Mask@@50 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_8709) (o_2@@60 T@Ref) (f_4@@60 T@Field_13157_53) ) (! (= (HasDirectPerm_13157_53 Mask@@51 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| Mask@@51) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13157_53 Mask@@51 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_8709) (o_2@@61 T@Ref) (f_4@@61 T@Field_13157_13158) ) (! (= (HasDirectPerm_13157_4499 Mask@@52 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| Mask@@52) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13157_4499 Mask@@52 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_8709) (o_2@@62 T@Ref) (f_4@@62 T@Field_13157_4492) ) (! (= (HasDirectPerm_13157_4492 Mask@@53 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| Mask@@53) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13157_4492 Mask@@53 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_8709) (o_2@@63 T@Ref) (f_4@@63 T@Field_12175_12180) ) (! (= (HasDirectPerm_4498_31042 Mask@@54 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| Mask@@54) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4498_31042 Mask@@54 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_8709) (o_2@@64 T@Ref) (f_4@@64 T@Field_4498_53) ) (! (= (HasDirectPerm_4498_53 Mask@@55 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| Mask@@55) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4498_53 Mask@@55 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_8709) (o_2@@65 T@Ref) (f_4@@65 T@Field_12162_12163) ) (! (= (HasDirectPerm_4498_4499 Mask@@56 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| Mask@@56) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4498_4499 Mask@@56 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_8709) (o_2@@66 T@Ref) (f_4@@66 T@Field_4498_4492) ) (! (= (HasDirectPerm_4498_4492 Mask@@57 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| Mask@@57) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4498_4492 Mask@@57 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_8709) (o_2@@67 T@Ref) (f_4@@67 T@Field_4491_12180) ) (! (= (HasDirectPerm_4491_30122 Mask@@58 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| Mask@@58) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4491_30122 Mask@@58 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_8709) (o_2@@68 T@Ref) (f_4@@68 T@Field_8748_53) ) (! (= (HasDirectPerm_4491_53 Mask@@59 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| Mask@@59) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4491_53 Mask@@59 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_8709) (o_2@@69 T@Ref) (f_4@@69 T@Field_4491_4499) ) (! (= (HasDirectPerm_4491_4499 Mask@@60 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| Mask@@60) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4491_4499 Mask@@60 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_8709) (o_2@@70 T@Ref) (f_4@@70 T@Field_8761_8762) ) (! (= (HasDirectPerm_4491_4492 Mask@@61 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| Mask@@61) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4491_4492 Mask@@61 o_2@@70 f_4@@70))
)))
(assert (forall ((p@@5 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@5 f_6) (ite (> p@@5 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@5 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8688) (ExhaleHeap@@13 T@PolymorphicMapType_8688) (Mask@@62 T@PolymorphicMapType_8709) (o_4@@0 T@Ref) (f_9 T@Field_19084_19089) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@62) (=> (HasDirectPerm_17617_34716 Mask@@62 o_4@@0 f_9) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@19) o_4@@0 f_9) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@13) o_4@@0 f_9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@62) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@13) o_4@@0 f_9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8688) (ExhaleHeap@@14 T@PolymorphicMapType_8688) (Mask@@63 T@PolymorphicMapType_8709) (o_4@@1 T@Ref) (f_9@@0 T@Field_17617_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@63) (=> (HasDirectPerm_17617_53 Mask@@63 o_4@@1 f_9@@0) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@20) o_4@@1 f_9@@0) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@14) o_4@@1 f_9@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@63) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@14) o_4@@1 f_9@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8688) (ExhaleHeap@@15 T@PolymorphicMapType_8688) (Mask@@64 T@PolymorphicMapType_8709) (o_4@@2 T@Ref) (f_9@@1 T@Field_17617_17618) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@64) (=> (HasDirectPerm_17617_4499 Mask@@64 o_4@@2 f_9@@1) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@21) o_4@@2 f_9@@1) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@15) o_4@@2 f_9@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@64) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@15) o_4@@2 f_9@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8688) (ExhaleHeap@@16 T@PolymorphicMapType_8688) (Mask@@65 T@PolymorphicMapType_8709) (o_4@@3 T@Ref) (f_9@@2 T@Field_17617_4492) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@65) (=> (HasDirectPerm_17617_4492 Mask@@65 o_4@@3 f_9@@2) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@22) o_4@@3 f_9@@2) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@16) o_4@@3 f_9@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@65) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@16) o_4@@3 f_9@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8688) (ExhaleHeap@@17 T@PolymorphicMapType_8688) (Mask@@66 T@PolymorphicMapType_8709) (o_4@@4 T@Ref) (f_9@@3 T@Field_16670_16675) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@66) (=> (HasDirectPerm_16657_33819 Mask@@66 o_4@@4 f_9@@3) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@23) o_4@@4 f_9@@3) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@17) o_4@@4 f_9@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@66) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@17) o_4@@4 f_9@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8688) (ExhaleHeap@@18 T@PolymorphicMapType_8688) (Mask@@67 T@PolymorphicMapType_8709) (o_4@@5 T@Ref) (f_9@@4 T@Field_16657_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@67) (=> (HasDirectPerm_16657_53 Mask@@67 o_4@@5 f_9@@4) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@24) o_4@@5 f_9@@4) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@18) o_4@@5 f_9@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@67) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@18) o_4@@5 f_9@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8688) (ExhaleHeap@@19 T@PolymorphicMapType_8688) (Mask@@68 T@PolymorphicMapType_8709) (o_4@@6 T@Ref) (f_9@@5 T@Field_16657_16658) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@68) (=> (HasDirectPerm_16657_4499 Mask@@68 o_4@@6 f_9@@5) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@25) o_4@@6 f_9@@5) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@19) o_4@@6 f_9@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@68) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@19) o_4@@6 f_9@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8688) (ExhaleHeap@@20 T@PolymorphicMapType_8688) (Mask@@69 T@PolymorphicMapType_8709) (o_4@@7 T@Ref) (f_9@@6 T@Field_16657_4492) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@69) (=> (HasDirectPerm_16657_4492 Mask@@69 o_4@@7 f_9@@6) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@26) o_4@@7 f_9@@6) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@20) o_4@@7 f_9@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@69) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@20) o_4@@7 f_9@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8688) (ExhaleHeap@@21 T@PolymorphicMapType_8688) (Mask@@70 T@PolymorphicMapType_8709) (o_4@@8 T@Ref) (f_9@@7 T@Field_15358_15363) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@70) (=> (HasDirectPerm_15345_32922 Mask@@70 o_4@@8 f_9@@7) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@27) o_4@@8 f_9@@7) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@21) o_4@@8 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@70) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@21) o_4@@8 f_9@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8688) (ExhaleHeap@@22 T@PolymorphicMapType_8688) (Mask@@71 T@PolymorphicMapType_8709) (o_4@@9 T@Ref) (f_9@@8 T@Field_15345_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@71) (=> (HasDirectPerm_15345_53 Mask@@71 o_4@@9 f_9@@8) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@28) o_4@@9 f_9@@8) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@22) o_4@@9 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@71) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@22) o_4@@9 f_9@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8688) (ExhaleHeap@@23 T@PolymorphicMapType_8688) (Mask@@72 T@PolymorphicMapType_8709) (o_4@@10 T@Ref) (f_9@@9 T@Field_15345_15346) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@72) (=> (HasDirectPerm_15345_4499 Mask@@72 o_4@@10 f_9@@9) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@29) o_4@@10 f_9@@9) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@23) o_4@@10 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@72) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@23) o_4@@10 f_9@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8688) (ExhaleHeap@@24 T@PolymorphicMapType_8688) (Mask@@73 T@PolymorphicMapType_8709) (o_4@@11 T@Ref) (f_9@@10 T@Field_15345_4492) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@73) (=> (HasDirectPerm_15345_4492 Mask@@73 o_4@@11 f_9@@10) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@30) o_4@@11 f_9@@10) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@24) o_4@@11 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@73) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@24) o_4@@11 f_9@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8688) (ExhaleHeap@@25 T@PolymorphicMapType_8688) (Mask@@74 T@PolymorphicMapType_8709) (o_4@@12 T@Ref) (f_9@@11 T@Field_14624_14629) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@74) (=> (HasDirectPerm_13157_31982 Mask@@74 o_4@@12 f_9@@11) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@31) o_4@@12 f_9@@11) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@25) o_4@@12 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@74) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@25) o_4@@12 f_9@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8688) (ExhaleHeap@@26 T@PolymorphicMapType_8688) (Mask@@75 T@PolymorphicMapType_8709) (o_4@@13 T@Ref) (f_9@@12 T@Field_13157_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@75) (=> (HasDirectPerm_13157_53 Mask@@75 o_4@@13 f_9@@12) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@32) o_4@@13 f_9@@12) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@26) o_4@@13 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@75) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@26) o_4@@13 f_9@@12))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8688) (ExhaleHeap@@27 T@PolymorphicMapType_8688) (Mask@@76 T@PolymorphicMapType_8709) (o_4@@14 T@Ref) (f_9@@13 T@Field_13157_13158) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@76) (=> (HasDirectPerm_13157_4499 Mask@@76 o_4@@14 f_9@@13) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@33) o_4@@14 f_9@@13) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@27) o_4@@14 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@76) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@27) o_4@@14 f_9@@13))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8688) (ExhaleHeap@@28 T@PolymorphicMapType_8688) (Mask@@77 T@PolymorphicMapType_8709) (o_4@@15 T@Ref) (f_9@@14 T@Field_13157_4492) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@77) (=> (HasDirectPerm_13157_4492 Mask@@77 o_4@@15 f_9@@14) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@34) o_4@@15 f_9@@14) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@28) o_4@@15 f_9@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@77) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@28) o_4@@15 f_9@@14))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8688) (ExhaleHeap@@29 T@PolymorphicMapType_8688) (Mask@@78 T@PolymorphicMapType_8709) (o_4@@16 T@Ref) (f_9@@15 T@Field_12175_12180) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@78) (=> (HasDirectPerm_4498_31042 Mask@@78 o_4@@16 f_9@@15) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@35) o_4@@16 f_9@@15) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@29) o_4@@16 f_9@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@78) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@29) o_4@@16 f_9@@15))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8688) (ExhaleHeap@@30 T@PolymorphicMapType_8688) (Mask@@79 T@PolymorphicMapType_8709) (o_4@@17 T@Ref) (f_9@@16 T@Field_4498_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@79) (=> (HasDirectPerm_4498_53 Mask@@79 o_4@@17 f_9@@16) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@36) o_4@@17 f_9@@16) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@30) o_4@@17 f_9@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@79) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@30) o_4@@17 f_9@@16))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8688) (ExhaleHeap@@31 T@PolymorphicMapType_8688) (Mask@@80 T@PolymorphicMapType_8709) (o_4@@18 T@Ref) (f_9@@17 T@Field_12162_12163) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@80) (=> (HasDirectPerm_4498_4499 Mask@@80 o_4@@18 f_9@@17) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@37) o_4@@18 f_9@@17) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@31) o_4@@18 f_9@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@80) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@31) o_4@@18 f_9@@17))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8688) (ExhaleHeap@@32 T@PolymorphicMapType_8688) (Mask@@81 T@PolymorphicMapType_8709) (o_4@@19 T@Ref) (f_9@@18 T@Field_4498_4492) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@81) (=> (HasDirectPerm_4498_4492 Mask@@81 o_4@@19 f_9@@18) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@38) o_4@@19 f_9@@18) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@32) o_4@@19 f_9@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@81) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@32) o_4@@19 f_9@@18))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8688) (ExhaleHeap@@33 T@PolymorphicMapType_8688) (Mask@@82 T@PolymorphicMapType_8709) (o_4@@20 T@Ref) (f_9@@19 T@Field_4491_12180) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@82) (=> (HasDirectPerm_4491_30122 Mask@@82 o_4@@20 f_9@@19) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@39) o_4@@20 f_9@@19) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@33) o_4@@20 f_9@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@82) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@33) o_4@@20 f_9@@19))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8688) (ExhaleHeap@@34 T@PolymorphicMapType_8688) (Mask@@83 T@PolymorphicMapType_8709) (o_4@@21 T@Ref) (f_9@@20 T@Field_8748_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@83) (=> (HasDirectPerm_4491_53 Mask@@83 o_4@@21 f_9@@20) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@40) o_4@@21 f_9@@20) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@34) o_4@@21 f_9@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@83) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@34) o_4@@21 f_9@@20))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_8688) (ExhaleHeap@@35 T@PolymorphicMapType_8688) (Mask@@84 T@PolymorphicMapType_8709) (o_4@@22 T@Ref) (f_9@@21 T@Field_4491_4499) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@84) (=> (HasDirectPerm_4491_4499 Mask@@84 o_4@@22 f_9@@21) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@41) o_4@@22 f_9@@21) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@35) o_4@@22 f_9@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@84) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@35) o_4@@22 f_9@@21))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_8688) (ExhaleHeap@@36 T@PolymorphicMapType_8688) (Mask@@85 T@PolymorphicMapType_8709) (o_4@@23 T@Ref) (f_9@@22 T@Field_8761_8762) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@85) (=> (HasDirectPerm_4491_4492 Mask@@85 o_4@@23 f_9@@22) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@42) o_4@@23 f_9@@22) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@36) o_4@@23 f_9@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@85) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@36) o_4@@23 f_9@@22))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_16670_16675) ) (! (= (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_16657_53) ) (! (= (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_16657_16658) ) (! (= (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_16657_4492) ) (! (= (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_12175_12180) ) (! (= (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_4498_53) ) (! (= (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_12162_12163) ) (! (= (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_4498_4492) ) (! (= (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_19084_19089) ) (! (= (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_17617_53) ) (! (= (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_17617_17618) ) (! (= (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_17617_4492) ) (! (= (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_15358_15363) ) (! (= (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_15345_53) ) (! (= (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_15345_15346) ) (! (= (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_15345_4492) ) (! (= (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_14624_14629) ) (! (= (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_13157_53) ) (! (= (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_13157_13158) ) (! (= (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_13157_4492) ) (! (= (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_4491_12180) ) (! (= (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_8748_53) ) (! (= (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_4491_4499) ) (! (= (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_8761_8762) ) (! (= (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8709) (SummandMask1 T@PolymorphicMapType_8709) (SummandMask2 T@PolymorphicMapType_8709) (o_2@@95 T@Ref) (f_4@@95 T@Field_16670_16675) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| ResultMask) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| SummandMask1) o_2@@95 f_4@@95) (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| SummandMask2) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| ResultMask) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| SummandMask1) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8709_4576_56778#PolymorphicMapType_8709| SummandMask2) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8709) (SummandMask1@@0 T@PolymorphicMapType_8709) (SummandMask2@@0 T@PolymorphicMapType_8709) (o_2@@96 T@Ref) (f_4@@96 T@Field_16657_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| ResultMask@@0) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| SummandMask1@@0) o_2@@96 f_4@@96) (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| SummandMask2@@0) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| ResultMask@@0) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| SummandMask1@@0) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8709_4576_53#PolymorphicMapType_8709| SummandMask2@@0) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8709) (SummandMask1@@1 T@PolymorphicMapType_8709) (SummandMask2@@1 T@PolymorphicMapType_8709) (o_2@@97 T@Ref) (f_4@@97 T@Field_16657_16658) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| ResultMask@@1) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| SummandMask1@@1) o_2@@97 f_4@@97) (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| SummandMask2@@1) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| ResultMask@@1) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| SummandMask1@@1) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8709_4576_4577#PolymorphicMapType_8709| SummandMask2@@1) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8709) (SummandMask1@@2 T@PolymorphicMapType_8709) (SummandMask2@@2 T@PolymorphicMapType_8709) (o_2@@98 T@Ref) (f_4@@98 T@Field_16657_4492) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| ResultMask@@2) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| SummandMask1@@2) o_2@@98 f_4@@98) (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| SummandMask2@@2) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| ResultMask@@2) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| SummandMask1@@2) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8709_4576_4492#PolymorphicMapType_8709| SummandMask2@@2) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8709) (SummandMask1@@3 T@PolymorphicMapType_8709) (SummandMask2@@3 T@PolymorphicMapType_8709) (o_2@@99 T@Ref) (f_4@@99 T@Field_12175_12180) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| ResultMask@@3) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| SummandMask1@@3) o_2@@99 f_4@@99) (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| SummandMask2@@3) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| ResultMask@@3) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| SummandMask1@@3) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8709_4498_56447#PolymorphicMapType_8709| SummandMask2@@3) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8709) (SummandMask1@@4 T@PolymorphicMapType_8709) (SummandMask2@@4 T@PolymorphicMapType_8709) (o_2@@100 T@Ref) (f_4@@100 T@Field_4498_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| ResultMask@@4) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| SummandMask1@@4) o_2@@100 f_4@@100) (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| SummandMask2@@4) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| ResultMask@@4) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| SummandMask1@@4) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8709_4498_53#PolymorphicMapType_8709| SummandMask2@@4) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8709) (SummandMask1@@5 T@PolymorphicMapType_8709) (SummandMask2@@5 T@PolymorphicMapType_8709) (o_2@@101 T@Ref) (f_4@@101 T@Field_12162_12163) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| ResultMask@@5) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| SummandMask1@@5) o_2@@101 f_4@@101) (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| SummandMask2@@5) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| ResultMask@@5) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| SummandMask1@@5) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8709_4498_4499#PolymorphicMapType_8709| SummandMask2@@5) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8709) (SummandMask1@@6 T@PolymorphicMapType_8709) (SummandMask2@@6 T@PolymorphicMapType_8709) (o_2@@102 T@Ref) (f_4@@102 T@Field_4498_4492) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| ResultMask@@6) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| SummandMask1@@6) o_2@@102 f_4@@102) (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| SummandMask2@@6) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| ResultMask@@6) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| SummandMask1@@6) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8709_4498_4492#PolymorphicMapType_8709| SummandMask2@@6) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8709) (SummandMask1@@7 T@PolymorphicMapType_8709) (SummandMask2@@7 T@PolymorphicMapType_8709) (o_2@@103 T@Ref) (f_4@@103 T@Field_19084_19089) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| ResultMask@@7) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| SummandMask1@@7) o_2@@103 f_4@@103) (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| SummandMask2@@7) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| ResultMask@@7) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| SummandMask1@@7) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8709_4605_56116#PolymorphicMapType_8709| SummandMask2@@7) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8709) (SummandMask1@@8 T@PolymorphicMapType_8709) (SummandMask2@@8 T@PolymorphicMapType_8709) (o_2@@104 T@Ref) (f_4@@104 T@Field_17617_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| ResultMask@@8) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| SummandMask1@@8) o_2@@104 f_4@@104) (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| SummandMask2@@8) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| ResultMask@@8) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| SummandMask1@@8) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8709_4605_53#PolymorphicMapType_8709| SummandMask2@@8) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_8709) (SummandMask1@@9 T@PolymorphicMapType_8709) (SummandMask2@@9 T@PolymorphicMapType_8709) (o_2@@105 T@Ref) (f_4@@105 T@Field_17617_17618) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| ResultMask@@9) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| SummandMask1@@9) o_2@@105 f_4@@105) (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| SummandMask2@@9) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| ResultMask@@9) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| SummandMask1@@9) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8709_4605_4606#PolymorphicMapType_8709| SummandMask2@@9) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_8709) (SummandMask1@@10 T@PolymorphicMapType_8709) (SummandMask2@@10 T@PolymorphicMapType_8709) (o_2@@106 T@Ref) (f_4@@106 T@Field_17617_4492) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| ResultMask@@10) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| SummandMask1@@10) o_2@@106 f_4@@106) (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| SummandMask2@@10) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| ResultMask@@10) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| SummandMask1@@10) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8709_4605_4492#PolymorphicMapType_8709| SummandMask2@@10) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_8709) (SummandMask1@@11 T@PolymorphicMapType_8709) (SummandMask2@@11 T@PolymorphicMapType_8709) (o_2@@107 T@Ref) (f_4@@107 T@Field_15358_15363) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| ResultMask@@11) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| SummandMask1@@11) o_2@@107 f_4@@107) (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| SummandMask2@@11) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| ResultMask@@11) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| SummandMask1@@11) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8709_4551_55785#PolymorphicMapType_8709| SummandMask2@@11) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_8709) (SummandMask1@@12 T@PolymorphicMapType_8709) (SummandMask2@@12 T@PolymorphicMapType_8709) (o_2@@108 T@Ref) (f_4@@108 T@Field_15345_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| ResultMask@@12) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| SummandMask1@@12) o_2@@108 f_4@@108) (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| SummandMask2@@12) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| ResultMask@@12) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| SummandMask1@@12) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8709_4551_53#PolymorphicMapType_8709| SummandMask2@@12) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_8709) (SummandMask1@@13 T@PolymorphicMapType_8709) (SummandMask2@@13 T@PolymorphicMapType_8709) (o_2@@109 T@Ref) (f_4@@109 T@Field_15345_15346) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| ResultMask@@13) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| SummandMask1@@13) o_2@@109 f_4@@109) (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| SummandMask2@@13) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| ResultMask@@13) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| SummandMask1@@13) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8709_4551_4552#PolymorphicMapType_8709| SummandMask2@@13) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_8709) (SummandMask1@@14 T@PolymorphicMapType_8709) (SummandMask2@@14 T@PolymorphicMapType_8709) (o_2@@110 T@Ref) (f_4@@110 T@Field_15345_4492) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| ResultMask@@14) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| SummandMask1@@14) o_2@@110 f_4@@110) (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| SummandMask2@@14) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| ResultMask@@14) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| SummandMask1@@14) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_8709_4551_4492#PolymorphicMapType_8709| SummandMask2@@14) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_8709) (SummandMask1@@15 T@PolymorphicMapType_8709) (SummandMask2@@15 T@PolymorphicMapType_8709) (o_2@@111 T@Ref) (f_4@@111 T@Field_14624_14629) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| ResultMask@@15) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| SummandMask1@@15) o_2@@111 f_4@@111) (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| SummandMask2@@15) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| ResultMask@@15) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| SummandMask1@@15) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_8709_4527_55454#PolymorphicMapType_8709| SummandMask2@@15) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_8709) (SummandMask1@@16 T@PolymorphicMapType_8709) (SummandMask2@@16 T@PolymorphicMapType_8709) (o_2@@112 T@Ref) (f_4@@112 T@Field_13157_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| ResultMask@@16) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| SummandMask1@@16) o_2@@112 f_4@@112) (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| SummandMask2@@16) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| ResultMask@@16) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| SummandMask1@@16) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_8709_4527_53#PolymorphicMapType_8709| SummandMask2@@16) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_8709) (SummandMask1@@17 T@PolymorphicMapType_8709) (SummandMask2@@17 T@PolymorphicMapType_8709) (o_2@@113 T@Ref) (f_4@@113 T@Field_13157_13158) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| ResultMask@@17) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| SummandMask1@@17) o_2@@113 f_4@@113) (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| SummandMask2@@17) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| ResultMask@@17) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| SummandMask1@@17) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_8709_4527_4528#PolymorphicMapType_8709| SummandMask2@@17) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_8709) (SummandMask1@@18 T@PolymorphicMapType_8709) (SummandMask2@@18 T@PolymorphicMapType_8709) (o_2@@114 T@Ref) (f_4@@114 T@Field_13157_4492) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| ResultMask@@18) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| SummandMask1@@18) o_2@@114 f_4@@114) (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| SummandMask2@@18) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| ResultMask@@18) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| SummandMask1@@18) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_8709_4527_4492#PolymorphicMapType_8709| SummandMask2@@18) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_8709) (SummandMask1@@19 T@PolymorphicMapType_8709) (SummandMask2@@19 T@PolymorphicMapType_8709) (o_2@@115 T@Ref) (f_4@@115 T@Field_4491_12180) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| ResultMask@@19) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| SummandMask1@@19) o_2@@115 f_4@@115) (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| SummandMask2@@19) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| ResultMask@@19) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| SummandMask1@@19) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_8709_4491_55123#PolymorphicMapType_8709| SummandMask2@@19) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_8709) (SummandMask1@@20 T@PolymorphicMapType_8709) (SummandMask2@@20 T@PolymorphicMapType_8709) (o_2@@116 T@Ref) (f_4@@116 T@Field_8748_53) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| ResultMask@@20) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| SummandMask1@@20) o_2@@116 f_4@@116) (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| SummandMask2@@20) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| ResultMask@@20) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| SummandMask1@@20) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_8709_4491_53#PolymorphicMapType_8709| SummandMask2@@20) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_8709) (SummandMask1@@21 T@PolymorphicMapType_8709) (SummandMask2@@21 T@PolymorphicMapType_8709) (o_2@@117 T@Ref) (f_4@@117 T@Field_4491_4499) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| ResultMask@@21) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| SummandMask1@@21) o_2@@117 f_4@@117) (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| SummandMask2@@21) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| ResultMask@@21) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| SummandMask1@@21) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_8709_4491_4528#PolymorphicMapType_8709| SummandMask2@@21) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_8709) (SummandMask1@@22 T@PolymorphicMapType_8709) (SummandMask2@@22 T@PolymorphicMapType_8709) (o_2@@118 T@Ref) (f_4@@118 T@Field_8761_8762) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| ResultMask@@22) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| SummandMask1@@22) o_2@@118 f_4@@118) (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| SummandMask2@@22) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| ResultMask@@22) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| SummandMask1@@22) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_8709_4491_4492#PolymorphicMapType_8709| SummandMask2@@22) o_2@@118 f_4@@118))
)))
(assert (forall ((r_1@@7 T@Ref) ) (! (= (getPredWandId_4498_4499 (P r_1@@7)) 0)
 :qid |stdinbpl.202:15|
 :skolemid |24|
 :pattern ( (P r_1@@7))
)))
(assert (forall ((r_1@@8 T@Ref) ) (! (= (getPredWandId_4527_4528 (Q r_1@@8)) 1)
 :qid |stdinbpl.298:15|
 :skolemid |30|
 :pattern ( (Q r_1@@8))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_4551_4552 (Rec x@@3)) 2)
 :qid |stdinbpl.347:15|
 :skolemid |36|
 :pattern ( (Rec x@@3))
)))
(assert (forall ((self@@7 T@Ref) ) (! (= (getPredWandId_4576_4577 (SP_State self@@7)) 3)
 :qid |stdinbpl.417:15|
 :skolemid |42|
 :pattern ( (SP_State self@@7))
)))
(assert (forall ((self@@8 T@Ref) ) (! (= (getPredWandId_4605_4606 (OFL_State self@@8)) 4)
 :qid |stdinbpl.513:15|
 :skolemid |48|
 :pattern ( (OFL_State self@@8))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_8688) (ExhaleHeap@@37 T@PolymorphicMapType_8688) (Mask@@86 T@PolymorphicMapType_8709) (pm_f_1@@11 T@Field_17617_17618) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@37 Mask@@86) (=> (and (HasDirectPerm_17617_4499 Mask@@86 null pm_f_1@@11) (IsPredicateField_4605_4606 pm_f_1@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9@@23 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1 f_9@@23) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@43) o2_1 f_9@@23) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1 f_9@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1 f_9@@23))
)) (forall ((o2_1@@0 T@Ref) (f_9@@24 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@0 f_9@@24) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@43) o2_1@@0 f_9@@24) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@0 f_9@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@0 f_9@@24))
))) (forall ((o2_1@@1 T@Ref) (f_9@@25 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@1 f_9@@25) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@43) o2_1@@1 f_9@@25) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@1 f_9@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@1 f_9@@25))
))) (forall ((o2_1@@2 T@Ref) (f_9@@26 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@2 f_9@@26) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@43) o2_1@@2 f_9@@26) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@2 f_9@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@2 f_9@@26))
))) (forall ((o2_1@@3 T@Ref) (f_9@@27 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@3 f_9@@27) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@43) o2_1@@3 f_9@@27) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@3 f_9@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@3 f_9@@27))
))) (forall ((o2_1@@4 T@Ref) (f_9@@28 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@4 f_9@@28) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@43) o2_1@@4 f_9@@28) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@4 f_9@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@4 f_9@@28))
))) (forall ((o2_1@@5 T@Ref) (f_9@@29 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@5 f_9@@29) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@43) o2_1@@5 f_9@@29) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@5 f_9@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@5 f_9@@29))
))) (forall ((o2_1@@6 T@Ref) (f_9@@30 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@6 f_9@@30) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@43) o2_1@@6 f_9@@30) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@6 f_9@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@6 f_9@@30))
))) (forall ((o2_1@@7 T@Ref) (f_9@@31 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@7 f_9@@31) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@43) o2_1@@7 f_9@@31) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@7 f_9@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@7 f_9@@31))
))) (forall ((o2_1@@8 T@Ref) (f_9@@32 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@8 f_9@@32) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@43) o2_1@@8 f_9@@32) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@8 f_9@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@8 f_9@@32))
))) (forall ((o2_1@@9 T@Ref) (f_9@@33 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@9 f_9@@33) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@43) o2_1@@9 f_9@@33) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@9 f_9@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@9 f_9@@33))
))) (forall ((o2_1@@10 T@Ref) (f_9@@34 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@10 f_9@@34) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@43) o2_1@@10 f_9@@34) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@10 f_9@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@10 f_9@@34))
))) (forall ((o2_1@@11 T@Ref) (f_9@@35 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@11 f_9@@35) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@43) o2_1@@11 f_9@@35) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@11 f_9@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@11 f_9@@35))
))) (forall ((o2_1@@12 T@Ref) (f_9@@36 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@12 f_9@@36) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@43) o2_1@@12 f_9@@36) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@12 f_9@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@12 f_9@@36))
))) (forall ((o2_1@@13 T@Ref) (f_9@@37 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@13 f_9@@37) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@43) o2_1@@13 f_9@@37) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@13 f_9@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@13 f_9@@37))
))) (forall ((o2_1@@14 T@Ref) (f_9@@38 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@14 f_9@@38) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@43) o2_1@@14 f_9@@38) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@14 f_9@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@14 f_9@@38))
))) (forall ((o2_1@@15 T@Ref) (f_9@@39 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@15 f_9@@39) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@43) o2_1@@15 f_9@@39) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@15 f_9@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@15 f_9@@39))
))) (forall ((o2_1@@16 T@Ref) (f_9@@40 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@16 f_9@@40) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@43) o2_1@@16 f_9@@40) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@16 f_9@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@16 f_9@@40))
))) (forall ((o2_1@@17 T@Ref) (f_9@@41 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@17 f_9@@41) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@43) o2_1@@17 f_9@@41) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@17 f_9@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@17 f_9@@41))
))) (forall ((o2_1@@18 T@Ref) (f_9@@42 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@18 f_9@@42) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@43) o2_1@@18 f_9@@42) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@18 f_9@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@18 f_9@@42))
))) (forall ((o2_1@@19 T@Ref) (f_9@@43 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@19 f_9@@43) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@43) o2_1@@19 f_9@@43) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@19 f_9@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@19 f_9@@43))
))) (forall ((o2_1@@20 T@Ref) (f_9@@44 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@20 f_9@@44) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@43) o2_1@@20 f_9@@44) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@20 f_9@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@20 f_9@@44))
))) (forall ((o2_1@@21 T@Ref) (f_9@@45 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@21 f_9@@45) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@43) o2_1@@21 f_9@@45) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@21 f_9@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@21 f_9@@45))
))) (forall ((o2_1@@22 T@Ref) (f_9@@46 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) null (PredicateMaskField_4605 pm_f_1@@11))) o2_1@@22 f_9@@46) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@43) o2_1@@22 f_9@@46) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@22 f_9@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@37) o2_1@@22 f_9@@46))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@37 Mask@@86) (IsPredicateField_4605_4606 pm_f_1@@11))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_8688) (ExhaleHeap@@38 T@PolymorphicMapType_8688) (Mask@@87 T@PolymorphicMapType_8709) (pm_f_1@@12 T@Field_16657_16658) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@38 Mask@@87) (=> (and (HasDirectPerm_16657_4499 Mask@@87 null pm_f_1@@12) (IsPredicateField_4576_4577 pm_f_1@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@23 T@Ref) (f_9@@47 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@23 f_9@@47) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@44) o2_1@@23 f_9@@47) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@23 f_9@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@23 f_9@@47))
)) (forall ((o2_1@@24 T@Ref) (f_9@@48 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@24 f_9@@48) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@44) o2_1@@24 f_9@@48) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@24 f_9@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@24 f_9@@48))
))) (forall ((o2_1@@25 T@Ref) (f_9@@49 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@25 f_9@@49) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@44) o2_1@@25 f_9@@49) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@25 f_9@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@25 f_9@@49))
))) (forall ((o2_1@@26 T@Ref) (f_9@@50 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@26 f_9@@50) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@44) o2_1@@26 f_9@@50) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@26 f_9@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@26 f_9@@50))
))) (forall ((o2_1@@27 T@Ref) (f_9@@51 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@27 f_9@@51) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@44) o2_1@@27 f_9@@51) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@27 f_9@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@27 f_9@@51))
))) (forall ((o2_1@@28 T@Ref) (f_9@@52 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@28 f_9@@52) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@44) o2_1@@28 f_9@@52) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@28 f_9@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@28 f_9@@52))
))) (forall ((o2_1@@29 T@Ref) (f_9@@53 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@29 f_9@@53) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@44) o2_1@@29 f_9@@53) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@29 f_9@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@29 f_9@@53))
))) (forall ((o2_1@@30 T@Ref) (f_9@@54 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@30 f_9@@54) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@44) o2_1@@30 f_9@@54) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@30 f_9@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@30 f_9@@54))
))) (forall ((o2_1@@31 T@Ref) (f_9@@55 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@31 f_9@@55) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@44) o2_1@@31 f_9@@55) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@31 f_9@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@31 f_9@@55))
))) (forall ((o2_1@@32 T@Ref) (f_9@@56 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@32 f_9@@56) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@44) o2_1@@32 f_9@@56) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@32 f_9@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@32 f_9@@56))
))) (forall ((o2_1@@33 T@Ref) (f_9@@57 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@33 f_9@@57) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@44) o2_1@@33 f_9@@57) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@33 f_9@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@33 f_9@@57))
))) (forall ((o2_1@@34 T@Ref) (f_9@@58 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@34 f_9@@58) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@44) o2_1@@34 f_9@@58) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@34 f_9@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@34 f_9@@58))
))) (forall ((o2_1@@35 T@Ref) (f_9@@59 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@35 f_9@@59) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@44) o2_1@@35 f_9@@59) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@35 f_9@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@35 f_9@@59))
))) (forall ((o2_1@@36 T@Ref) (f_9@@60 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@36 f_9@@60) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@44) o2_1@@36 f_9@@60) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@36 f_9@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@36 f_9@@60))
))) (forall ((o2_1@@37 T@Ref) (f_9@@61 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@37 f_9@@61) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@44) o2_1@@37 f_9@@61) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@37 f_9@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@37 f_9@@61))
))) (forall ((o2_1@@38 T@Ref) (f_9@@62 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@38 f_9@@62) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@44) o2_1@@38 f_9@@62) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@38 f_9@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@38 f_9@@62))
))) (forall ((o2_1@@39 T@Ref) (f_9@@63 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@39 f_9@@63) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@44) o2_1@@39 f_9@@63) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@39 f_9@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@39 f_9@@63))
))) (forall ((o2_1@@40 T@Ref) (f_9@@64 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@40 f_9@@64) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@44) o2_1@@40 f_9@@64) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@40 f_9@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@40 f_9@@64))
))) (forall ((o2_1@@41 T@Ref) (f_9@@65 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@41 f_9@@65) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@44) o2_1@@41 f_9@@65) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@41 f_9@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@41 f_9@@65))
))) (forall ((o2_1@@42 T@Ref) (f_9@@66 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@42 f_9@@66) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) o2_1@@42 f_9@@66) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@42 f_9@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@42 f_9@@66))
))) (forall ((o2_1@@43 T@Ref) (f_9@@67 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@43 f_9@@67) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@44) o2_1@@43 f_9@@67) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@43 f_9@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@43 f_9@@67))
))) (forall ((o2_1@@44 T@Ref) (f_9@@68 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@44 f_9@@68) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@44) o2_1@@44 f_9@@68) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@44 f_9@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@44 f_9@@68))
))) (forall ((o2_1@@45 T@Ref) (f_9@@69 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@45 f_9@@69) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@44) o2_1@@45 f_9@@69) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@45 f_9@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@45 f_9@@69))
))) (forall ((o2_1@@46 T@Ref) (f_9@@70 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@44) null (PredicateMaskField_4576 pm_f_1@@12))) o2_1@@46 f_9@@70) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@44) o2_1@@46 f_9@@70) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@46 f_9@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@38) o2_1@@46 f_9@@70))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@38 Mask@@87) (IsPredicateField_4576_4577 pm_f_1@@12))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_8688) (ExhaleHeap@@39 T@PolymorphicMapType_8688) (Mask@@88 T@PolymorphicMapType_8709) (pm_f_1@@13 T@Field_15345_15346) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@39 Mask@@88) (=> (and (HasDirectPerm_15345_4499 Mask@@88 null pm_f_1@@13) (IsPredicateField_4551_4552 pm_f_1@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@47 T@Ref) (f_9@@71 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@47 f_9@@71) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@45) o2_1@@47 f_9@@71) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@47 f_9@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@47 f_9@@71))
)) (forall ((o2_1@@48 T@Ref) (f_9@@72 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@48 f_9@@72) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@45) o2_1@@48 f_9@@72) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@48 f_9@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@48 f_9@@72))
))) (forall ((o2_1@@49 T@Ref) (f_9@@73 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@49 f_9@@73) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@45) o2_1@@49 f_9@@73) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@49 f_9@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@49 f_9@@73))
))) (forall ((o2_1@@50 T@Ref) (f_9@@74 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@50 f_9@@74) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@45) o2_1@@50 f_9@@74) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@50 f_9@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@50 f_9@@74))
))) (forall ((o2_1@@51 T@Ref) (f_9@@75 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@51 f_9@@75) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@45) o2_1@@51 f_9@@75) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@51 f_9@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@51 f_9@@75))
))) (forall ((o2_1@@52 T@Ref) (f_9@@76 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@52 f_9@@76) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@45) o2_1@@52 f_9@@76) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@52 f_9@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@52 f_9@@76))
))) (forall ((o2_1@@53 T@Ref) (f_9@@77 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@53 f_9@@77) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@45) o2_1@@53 f_9@@77) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@53 f_9@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@53 f_9@@77))
))) (forall ((o2_1@@54 T@Ref) (f_9@@78 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@54 f_9@@78) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@45) o2_1@@54 f_9@@78) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@54 f_9@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@54 f_9@@78))
))) (forall ((o2_1@@55 T@Ref) (f_9@@79 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@55 f_9@@79) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@45) o2_1@@55 f_9@@79) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@55 f_9@@79)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@55 f_9@@79))
))) (forall ((o2_1@@56 T@Ref) (f_9@@80 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@56 f_9@@80) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@45) o2_1@@56 f_9@@80) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@56 f_9@@80)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@56 f_9@@80))
))) (forall ((o2_1@@57 T@Ref) (f_9@@81 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@57 f_9@@81) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@45) o2_1@@57 f_9@@81) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@57 f_9@@81)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@57 f_9@@81))
))) (forall ((o2_1@@58 T@Ref) (f_9@@82 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@58 f_9@@82) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@45) o2_1@@58 f_9@@82) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@58 f_9@@82)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@58 f_9@@82))
))) (forall ((o2_1@@59 T@Ref) (f_9@@83 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@59 f_9@@83) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@45) o2_1@@59 f_9@@83) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@59 f_9@@83)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@59 f_9@@83))
))) (forall ((o2_1@@60 T@Ref) (f_9@@84 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@60 f_9@@84) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@45) o2_1@@60 f_9@@84) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@60 f_9@@84)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@60 f_9@@84))
))) (forall ((o2_1@@61 T@Ref) (f_9@@85 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@61 f_9@@85) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@45) o2_1@@61 f_9@@85) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@61 f_9@@85)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@61 f_9@@85))
))) (forall ((o2_1@@62 T@Ref) (f_9@@86 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@62 f_9@@86) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) o2_1@@62 f_9@@86) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@62 f_9@@86)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@62 f_9@@86))
))) (forall ((o2_1@@63 T@Ref) (f_9@@87 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@63 f_9@@87) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@45) o2_1@@63 f_9@@87) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@63 f_9@@87)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@63 f_9@@87))
))) (forall ((o2_1@@64 T@Ref) (f_9@@88 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@64 f_9@@88) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@45) o2_1@@64 f_9@@88) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@64 f_9@@88)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@64 f_9@@88))
))) (forall ((o2_1@@65 T@Ref) (f_9@@89 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@65 f_9@@89) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@45) o2_1@@65 f_9@@89) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@65 f_9@@89)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@65 f_9@@89))
))) (forall ((o2_1@@66 T@Ref) (f_9@@90 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@66 f_9@@90) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@45) o2_1@@66 f_9@@90) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@66 f_9@@90)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@66 f_9@@90))
))) (forall ((o2_1@@67 T@Ref) (f_9@@91 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@67 f_9@@91) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@45) o2_1@@67 f_9@@91) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@67 f_9@@91)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@67 f_9@@91))
))) (forall ((o2_1@@68 T@Ref) (f_9@@92 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@68 f_9@@92) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@45) o2_1@@68 f_9@@92) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@68 f_9@@92)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@68 f_9@@92))
))) (forall ((o2_1@@69 T@Ref) (f_9@@93 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@69 f_9@@93) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@45) o2_1@@69 f_9@@93) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@69 f_9@@93)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@69 f_9@@93))
))) (forall ((o2_1@@70 T@Ref) (f_9@@94 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@45) null (PredicateMaskField_4551 pm_f_1@@13))) o2_1@@70 f_9@@94) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@45) o2_1@@70 f_9@@94) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@70 f_9@@94)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@39) o2_1@@70 f_9@@94))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@39 Mask@@88) (IsPredicateField_4551_4552 pm_f_1@@13))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_8688) (ExhaleHeap@@40 T@PolymorphicMapType_8688) (Mask@@89 T@PolymorphicMapType_8709) (pm_f_1@@14 T@Field_13157_13158) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@40 Mask@@89) (=> (and (HasDirectPerm_13157_4499 Mask@@89 null pm_f_1@@14) (IsPredicateField_4527_4528 pm_f_1@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@71 T@Ref) (f_9@@95 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@71 f_9@@95) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@46) o2_1@@71 f_9@@95) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@71 f_9@@95)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@71 f_9@@95))
)) (forall ((o2_1@@72 T@Ref) (f_9@@96 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@72 f_9@@96) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@46) o2_1@@72 f_9@@96) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@72 f_9@@96)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@72 f_9@@96))
))) (forall ((o2_1@@73 T@Ref) (f_9@@97 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@73 f_9@@97) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@46) o2_1@@73 f_9@@97) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@73 f_9@@97)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@73 f_9@@97))
))) (forall ((o2_1@@74 T@Ref) (f_9@@98 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@74 f_9@@98) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@46) o2_1@@74 f_9@@98) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@74 f_9@@98)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@74 f_9@@98))
))) (forall ((o2_1@@75 T@Ref) (f_9@@99 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@75 f_9@@99) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@46) o2_1@@75 f_9@@99) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@75 f_9@@99)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@75 f_9@@99))
))) (forall ((o2_1@@76 T@Ref) (f_9@@100 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@76 f_9@@100) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@46) o2_1@@76 f_9@@100) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@76 f_9@@100)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@76 f_9@@100))
))) (forall ((o2_1@@77 T@Ref) (f_9@@101 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@77 f_9@@101) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@46) o2_1@@77 f_9@@101) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@77 f_9@@101)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@77 f_9@@101))
))) (forall ((o2_1@@78 T@Ref) (f_9@@102 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@78 f_9@@102) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@46) o2_1@@78 f_9@@102) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@78 f_9@@102)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@78 f_9@@102))
))) (forall ((o2_1@@79 T@Ref) (f_9@@103 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@79 f_9@@103) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@46) o2_1@@79 f_9@@103) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@79 f_9@@103)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@79 f_9@@103))
))) (forall ((o2_1@@80 T@Ref) (f_9@@104 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@80 f_9@@104) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@46) o2_1@@80 f_9@@104) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@80 f_9@@104)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@80 f_9@@104))
))) (forall ((o2_1@@81 T@Ref) (f_9@@105 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@81 f_9@@105) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@46) o2_1@@81 f_9@@105) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@81 f_9@@105)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@81 f_9@@105))
))) (forall ((o2_1@@82 T@Ref) (f_9@@106 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@82 f_9@@106) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) o2_1@@82 f_9@@106) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@82 f_9@@106)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@82 f_9@@106))
))) (forall ((o2_1@@83 T@Ref) (f_9@@107 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@83 f_9@@107) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@46) o2_1@@83 f_9@@107) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@83 f_9@@107)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@83 f_9@@107))
))) (forall ((o2_1@@84 T@Ref) (f_9@@108 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@84 f_9@@108) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@46) o2_1@@84 f_9@@108) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@84 f_9@@108)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@84 f_9@@108))
))) (forall ((o2_1@@85 T@Ref) (f_9@@109 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@85 f_9@@109) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@46) o2_1@@85 f_9@@109) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@85 f_9@@109)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@85 f_9@@109))
))) (forall ((o2_1@@86 T@Ref) (f_9@@110 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@86 f_9@@110) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@46) o2_1@@86 f_9@@110) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@86 f_9@@110)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@86 f_9@@110))
))) (forall ((o2_1@@87 T@Ref) (f_9@@111 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@87 f_9@@111) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@46) o2_1@@87 f_9@@111) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@87 f_9@@111)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@87 f_9@@111))
))) (forall ((o2_1@@88 T@Ref) (f_9@@112 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@88 f_9@@112) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@46) o2_1@@88 f_9@@112) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@88 f_9@@112)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@88 f_9@@112))
))) (forall ((o2_1@@89 T@Ref) (f_9@@113 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@89 f_9@@113) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@46) o2_1@@89 f_9@@113) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@89 f_9@@113)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@89 f_9@@113))
))) (forall ((o2_1@@90 T@Ref) (f_9@@114 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@90 f_9@@114) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@46) o2_1@@90 f_9@@114) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@90 f_9@@114)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@90 f_9@@114))
))) (forall ((o2_1@@91 T@Ref) (f_9@@115 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@91 f_9@@115) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@46) o2_1@@91 f_9@@115) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@91 f_9@@115)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@91 f_9@@115))
))) (forall ((o2_1@@92 T@Ref) (f_9@@116 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@92 f_9@@116) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@46) o2_1@@92 f_9@@116) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@92 f_9@@116)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@92 f_9@@116))
))) (forall ((o2_1@@93 T@Ref) (f_9@@117 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@93 f_9@@117) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@46) o2_1@@93 f_9@@117) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@93 f_9@@117)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@93 f_9@@117))
))) (forall ((o2_1@@94 T@Ref) (f_9@@118 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@46) null (PredicateMaskField_4527 pm_f_1@@14))) o2_1@@94 f_9@@118) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@46) o2_1@@94 f_9@@118) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@94 f_9@@118)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@40) o2_1@@94 f_9@@118))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@40 Mask@@89) (IsPredicateField_4527_4528 pm_f_1@@14))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_8688) (ExhaleHeap@@41 T@PolymorphicMapType_8688) (Mask@@90 T@PolymorphicMapType_8709) (pm_f_1@@15 T@Field_12162_12163) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@41 Mask@@90) (=> (and (HasDirectPerm_4498_4499 Mask@@90 null pm_f_1@@15) (IsPredicateField_4498_4499 pm_f_1@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@95 T@Ref) (f_9@@119 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@95 f_9@@119) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@47) o2_1@@95 f_9@@119) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@95 f_9@@119)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@95 f_9@@119))
)) (forall ((o2_1@@96 T@Ref) (f_9@@120 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@96 f_9@@120) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@47) o2_1@@96 f_9@@120) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@96 f_9@@120)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@96 f_9@@120))
))) (forall ((o2_1@@97 T@Ref) (f_9@@121 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@97 f_9@@121) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@47) o2_1@@97 f_9@@121) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@97 f_9@@121)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@97 f_9@@121))
))) (forall ((o2_1@@98 T@Ref) (f_9@@122 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@98 f_9@@122) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@47) o2_1@@98 f_9@@122) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@98 f_9@@122)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@98 f_9@@122))
))) (forall ((o2_1@@99 T@Ref) (f_9@@123 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@99 f_9@@123) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@47) o2_1@@99 f_9@@123) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@99 f_9@@123)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@99 f_9@@123))
))) (forall ((o2_1@@100 T@Ref) (f_9@@124 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@100 f_9@@124) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@47) o2_1@@100 f_9@@124) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@100 f_9@@124)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@100 f_9@@124))
))) (forall ((o2_1@@101 T@Ref) (f_9@@125 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@101 f_9@@125) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@47) o2_1@@101 f_9@@125) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@101 f_9@@125)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@101 f_9@@125))
))) (forall ((o2_1@@102 T@Ref) (f_9@@126 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@102 f_9@@126) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) o2_1@@102 f_9@@126) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@102 f_9@@126)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@102 f_9@@126))
))) (forall ((o2_1@@103 T@Ref) (f_9@@127 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@103 f_9@@127) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@47) o2_1@@103 f_9@@127) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@103 f_9@@127)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@103 f_9@@127))
))) (forall ((o2_1@@104 T@Ref) (f_9@@128 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@104 f_9@@128) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@47) o2_1@@104 f_9@@128) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@104 f_9@@128)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@104 f_9@@128))
))) (forall ((o2_1@@105 T@Ref) (f_9@@129 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@105 f_9@@129) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@47) o2_1@@105 f_9@@129) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@105 f_9@@129)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@105 f_9@@129))
))) (forall ((o2_1@@106 T@Ref) (f_9@@130 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@106 f_9@@130) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@47) o2_1@@106 f_9@@130) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@106 f_9@@130)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@106 f_9@@130))
))) (forall ((o2_1@@107 T@Ref) (f_9@@131 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@107 f_9@@131) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@47) o2_1@@107 f_9@@131) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@107 f_9@@131)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@107 f_9@@131))
))) (forall ((o2_1@@108 T@Ref) (f_9@@132 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@108 f_9@@132) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@47) o2_1@@108 f_9@@132) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@108 f_9@@132)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@108 f_9@@132))
))) (forall ((o2_1@@109 T@Ref) (f_9@@133 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@109 f_9@@133) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@47) o2_1@@109 f_9@@133) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@109 f_9@@133)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@109 f_9@@133))
))) (forall ((o2_1@@110 T@Ref) (f_9@@134 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@110 f_9@@134) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@47) o2_1@@110 f_9@@134) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@110 f_9@@134)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@110 f_9@@134))
))) (forall ((o2_1@@111 T@Ref) (f_9@@135 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@111 f_9@@135) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@47) o2_1@@111 f_9@@135) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@111 f_9@@135)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@111 f_9@@135))
))) (forall ((o2_1@@112 T@Ref) (f_9@@136 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@112 f_9@@136) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@47) o2_1@@112 f_9@@136) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@112 f_9@@136)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@112 f_9@@136))
))) (forall ((o2_1@@113 T@Ref) (f_9@@137 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@113 f_9@@137) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@47) o2_1@@113 f_9@@137) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@113 f_9@@137)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@113 f_9@@137))
))) (forall ((o2_1@@114 T@Ref) (f_9@@138 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@114 f_9@@138) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@47) o2_1@@114 f_9@@138) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@114 f_9@@138)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@114 f_9@@138))
))) (forall ((o2_1@@115 T@Ref) (f_9@@139 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@115 f_9@@139) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@47) o2_1@@115 f_9@@139) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@115 f_9@@139)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@115 f_9@@139))
))) (forall ((o2_1@@116 T@Ref) (f_9@@140 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@116 f_9@@140) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@47) o2_1@@116 f_9@@140) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@116 f_9@@140)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@116 f_9@@140))
))) (forall ((o2_1@@117 T@Ref) (f_9@@141 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@117 f_9@@141) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@47) o2_1@@117 f_9@@141) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@117 f_9@@141)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@117 f_9@@141))
))) (forall ((o2_1@@118 T@Ref) (f_9@@142 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@47) null (PredicateMaskField_4498 pm_f_1@@15))) o2_1@@118 f_9@@142) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@47) o2_1@@118 f_9@@142) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@118 f_9@@142)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@41) o2_1@@118 f_9@@142))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@41 Mask@@90) (IsPredicateField_4498_4499 pm_f_1@@15))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_8688) (ExhaleHeap@@42 T@PolymorphicMapType_8688) (Mask@@91 T@PolymorphicMapType_8709) (pm_f_1@@16 T@Field_4491_4499) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@42 Mask@@91) (=> (and (HasDirectPerm_4491_4499 Mask@@91 null pm_f_1@@16) (IsPredicateField_4491_34961 pm_f_1@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@119 T@Ref) (f_9@@143 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@119 f_9@@143) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@48) o2_1@@119 f_9@@143) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@119 f_9@@143)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@119 f_9@@143))
)) (forall ((o2_1@@120 T@Ref) (f_9@@144 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@120 f_9@@144) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@48) o2_1@@120 f_9@@144) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@120 f_9@@144)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@120 f_9@@144))
))) (forall ((o2_1@@121 T@Ref) (f_9@@145 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@121 f_9@@145) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@48) o2_1@@121 f_9@@145) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@121 f_9@@145)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@121 f_9@@145))
))) (forall ((o2_1@@122 T@Ref) (f_9@@146 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@122 f_9@@146) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) o2_1@@122 f_9@@146) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@122 f_9@@146)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@122 f_9@@146))
))) (forall ((o2_1@@123 T@Ref) (f_9@@147 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@123 f_9@@147) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@48) o2_1@@123 f_9@@147) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@123 f_9@@147)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@123 f_9@@147))
))) (forall ((o2_1@@124 T@Ref) (f_9@@148 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@124 f_9@@148) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@48) o2_1@@124 f_9@@148) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@124 f_9@@148)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@124 f_9@@148))
))) (forall ((o2_1@@125 T@Ref) (f_9@@149 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@125 f_9@@149) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@48) o2_1@@125 f_9@@149) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@125 f_9@@149)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@125 f_9@@149))
))) (forall ((o2_1@@126 T@Ref) (f_9@@150 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@126 f_9@@150) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@48) o2_1@@126 f_9@@150) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@126 f_9@@150)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@126 f_9@@150))
))) (forall ((o2_1@@127 T@Ref) (f_9@@151 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@127 f_9@@151) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@48) o2_1@@127 f_9@@151) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@127 f_9@@151)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@127 f_9@@151))
))) (forall ((o2_1@@128 T@Ref) (f_9@@152 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@128 f_9@@152) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@48) o2_1@@128 f_9@@152) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@128 f_9@@152)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@128 f_9@@152))
))) (forall ((o2_1@@129 T@Ref) (f_9@@153 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@129 f_9@@153) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@48) o2_1@@129 f_9@@153) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@129 f_9@@153)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@129 f_9@@153))
))) (forall ((o2_1@@130 T@Ref) (f_9@@154 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@130 f_9@@154) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@48) o2_1@@130 f_9@@154) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@130 f_9@@154)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@130 f_9@@154))
))) (forall ((o2_1@@131 T@Ref) (f_9@@155 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@131 f_9@@155) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@48) o2_1@@131 f_9@@155) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@131 f_9@@155)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@131 f_9@@155))
))) (forall ((o2_1@@132 T@Ref) (f_9@@156 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@132 f_9@@156) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@48) o2_1@@132 f_9@@156) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@132 f_9@@156)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@132 f_9@@156))
))) (forall ((o2_1@@133 T@Ref) (f_9@@157 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@133 f_9@@157) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@48) o2_1@@133 f_9@@157) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@133 f_9@@157)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@133 f_9@@157))
))) (forall ((o2_1@@134 T@Ref) (f_9@@158 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@134 f_9@@158) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@48) o2_1@@134 f_9@@158) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@134 f_9@@158)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@134 f_9@@158))
))) (forall ((o2_1@@135 T@Ref) (f_9@@159 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@135 f_9@@159) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@48) o2_1@@135 f_9@@159) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@135 f_9@@159)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@135 f_9@@159))
))) (forall ((o2_1@@136 T@Ref) (f_9@@160 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@136 f_9@@160) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@48) o2_1@@136 f_9@@160) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@136 f_9@@160)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@136 f_9@@160))
))) (forall ((o2_1@@137 T@Ref) (f_9@@161 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@137 f_9@@161) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@48) o2_1@@137 f_9@@161) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@137 f_9@@161)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@137 f_9@@161))
))) (forall ((o2_1@@138 T@Ref) (f_9@@162 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@138 f_9@@162) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@48) o2_1@@138 f_9@@162) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@138 f_9@@162)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@138 f_9@@162))
))) (forall ((o2_1@@139 T@Ref) (f_9@@163 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@139 f_9@@163) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@48) o2_1@@139 f_9@@163) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@139 f_9@@163)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@139 f_9@@163))
))) (forall ((o2_1@@140 T@Ref) (f_9@@164 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@140 f_9@@164) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@48) o2_1@@140 f_9@@164) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@140 f_9@@164)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@140 f_9@@164))
))) (forall ((o2_1@@141 T@Ref) (f_9@@165 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@141 f_9@@165) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@48) o2_1@@141 f_9@@165) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@141 f_9@@165)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@141 f_9@@165))
))) (forall ((o2_1@@142 T@Ref) (f_9@@166 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@48) null (PredicateMaskField_4491 pm_f_1@@16))) o2_1@@142 f_9@@166) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@48) o2_1@@142 f_9@@166) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@142 f_9@@166)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@42) o2_1@@142 f_9@@166))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@42 Mask@@91) (IsPredicateField_4491_34961 pm_f_1@@16))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_8688) (ExhaleHeap@@43 T@PolymorphicMapType_8688) (Mask@@92 T@PolymorphicMapType_8709) (pm_f_1@@17 T@Field_17617_17618) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@43 Mask@@92) (=> (and (HasDirectPerm_17617_4499 Mask@@92 null pm_f_1@@17) (IsWandField_17617_45499 pm_f_1@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@143 T@Ref) (f_9@@167 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@143 f_9@@167) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@49) o2_1@@143 f_9@@167) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@143 f_9@@167)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@143 f_9@@167))
)) (forall ((o2_1@@144 T@Ref) (f_9@@168 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@144 f_9@@168) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@49) o2_1@@144 f_9@@168) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@144 f_9@@168)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@144 f_9@@168))
))) (forall ((o2_1@@145 T@Ref) (f_9@@169 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@145 f_9@@169) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@49) o2_1@@145 f_9@@169) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@145 f_9@@169)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@145 f_9@@169))
))) (forall ((o2_1@@146 T@Ref) (f_9@@170 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@146 f_9@@170) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@49) o2_1@@146 f_9@@170) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@146 f_9@@170)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@146 f_9@@170))
))) (forall ((o2_1@@147 T@Ref) (f_9@@171 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@147 f_9@@171) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@49) o2_1@@147 f_9@@171) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@147 f_9@@171)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@147 f_9@@171))
))) (forall ((o2_1@@148 T@Ref) (f_9@@172 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@148 f_9@@172) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@49) o2_1@@148 f_9@@172) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@148 f_9@@172)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@148 f_9@@172))
))) (forall ((o2_1@@149 T@Ref) (f_9@@173 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@149 f_9@@173) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@49) o2_1@@149 f_9@@173) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@149 f_9@@173)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@149 f_9@@173))
))) (forall ((o2_1@@150 T@Ref) (f_9@@174 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@150 f_9@@174) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@49) o2_1@@150 f_9@@174) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@150 f_9@@174)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@150 f_9@@174))
))) (forall ((o2_1@@151 T@Ref) (f_9@@175 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@151 f_9@@175) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@49) o2_1@@151 f_9@@175) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@151 f_9@@175)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@151 f_9@@175))
))) (forall ((o2_1@@152 T@Ref) (f_9@@176 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@152 f_9@@176) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@49) o2_1@@152 f_9@@176) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@152 f_9@@176)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@152 f_9@@176))
))) (forall ((o2_1@@153 T@Ref) (f_9@@177 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@153 f_9@@177) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@49) o2_1@@153 f_9@@177) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@153 f_9@@177)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@153 f_9@@177))
))) (forall ((o2_1@@154 T@Ref) (f_9@@178 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@154 f_9@@178) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@49) o2_1@@154 f_9@@178) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@154 f_9@@178)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@154 f_9@@178))
))) (forall ((o2_1@@155 T@Ref) (f_9@@179 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@155 f_9@@179) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@49) o2_1@@155 f_9@@179) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@155 f_9@@179)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@155 f_9@@179))
))) (forall ((o2_1@@156 T@Ref) (f_9@@180 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@156 f_9@@180) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@49) o2_1@@156 f_9@@180) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@156 f_9@@180)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@156 f_9@@180))
))) (forall ((o2_1@@157 T@Ref) (f_9@@181 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@157 f_9@@181) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@49) o2_1@@157 f_9@@181) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@157 f_9@@181)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@157 f_9@@181))
))) (forall ((o2_1@@158 T@Ref) (f_9@@182 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@158 f_9@@182) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@49) o2_1@@158 f_9@@182) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@158 f_9@@182)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@158 f_9@@182))
))) (forall ((o2_1@@159 T@Ref) (f_9@@183 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@159 f_9@@183) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@49) o2_1@@159 f_9@@183) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@159 f_9@@183)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@159 f_9@@183))
))) (forall ((o2_1@@160 T@Ref) (f_9@@184 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@160 f_9@@184) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@49) o2_1@@160 f_9@@184) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@160 f_9@@184)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@160 f_9@@184))
))) (forall ((o2_1@@161 T@Ref) (f_9@@185 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@161 f_9@@185) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@49) o2_1@@161 f_9@@185) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@161 f_9@@185)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@161 f_9@@185))
))) (forall ((o2_1@@162 T@Ref) (f_9@@186 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@162 f_9@@186) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@49) o2_1@@162 f_9@@186) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@162 f_9@@186)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@162 f_9@@186))
))) (forall ((o2_1@@163 T@Ref) (f_9@@187 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@163 f_9@@187) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@49) o2_1@@163 f_9@@187) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@163 f_9@@187)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@163 f_9@@187))
))) (forall ((o2_1@@164 T@Ref) (f_9@@188 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@164 f_9@@188) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@49) o2_1@@164 f_9@@188) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@164 f_9@@188)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@164 f_9@@188))
))) (forall ((o2_1@@165 T@Ref) (f_9@@189 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@165 f_9@@189) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@49) o2_1@@165 f_9@@189) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@165 f_9@@189)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@165 f_9@@189))
))) (forall ((o2_1@@166 T@Ref) (f_9@@190 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) null (WandMaskField_17617 pm_f_1@@17))) o2_1@@166 f_9@@190) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@49) o2_1@@166 f_9@@190) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@166 f_9@@190)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@43) o2_1@@166 f_9@@190))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@43 Mask@@92) (IsWandField_17617_45499 pm_f_1@@17))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_8688) (ExhaleHeap@@44 T@PolymorphicMapType_8688) (Mask@@93 T@PolymorphicMapType_8709) (pm_f_1@@18 T@Field_16657_16658) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@44 Mask@@93) (=> (and (HasDirectPerm_16657_4499 Mask@@93 null pm_f_1@@18) (IsWandField_16657_45142 pm_f_1@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@167 T@Ref) (f_9@@191 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@167 f_9@@191) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@50) o2_1@@167 f_9@@191) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@167 f_9@@191)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@167 f_9@@191))
)) (forall ((o2_1@@168 T@Ref) (f_9@@192 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@168 f_9@@192) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@50) o2_1@@168 f_9@@192) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@168 f_9@@192)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@168 f_9@@192))
))) (forall ((o2_1@@169 T@Ref) (f_9@@193 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@169 f_9@@193) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@50) o2_1@@169 f_9@@193) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@169 f_9@@193)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@169 f_9@@193))
))) (forall ((o2_1@@170 T@Ref) (f_9@@194 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@170 f_9@@194) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@50) o2_1@@170 f_9@@194) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@170 f_9@@194)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@170 f_9@@194))
))) (forall ((o2_1@@171 T@Ref) (f_9@@195 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@171 f_9@@195) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@50) o2_1@@171 f_9@@195) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@171 f_9@@195)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@171 f_9@@195))
))) (forall ((o2_1@@172 T@Ref) (f_9@@196 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@172 f_9@@196) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@50) o2_1@@172 f_9@@196) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@172 f_9@@196)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@172 f_9@@196))
))) (forall ((o2_1@@173 T@Ref) (f_9@@197 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@173 f_9@@197) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@50) o2_1@@173 f_9@@197) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@173 f_9@@197)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@173 f_9@@197))
))) (forall ((o2_1@@174 T@Ref) (f_9@@198 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@174 f_9@@198) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@50) o2_1@@174 f_9@@198) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@174 f_9@@198)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@174 f_9@@198))
))) (forall ((o2_1@@175 T@Ref) (f_9@@199 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@175 f_9@@199) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@50) o2_1@@175 f_9@@199) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@175 f_9@@199)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@175 f_9@@199))
))) (forall ((o2_1@@176 T@Ref) (f_9@@200 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@176 f_9@@200) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@50) o2_1@@176 f_9@@200) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@176 f_9@@200)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@176 f_9@@200))
))) (forall ((o2_1@@177 T@Ref) (f_9@@201 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@177 f_9@@201) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@50) o2_1@@177 f_9@@201) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@177 f_9@@201)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@177 f_9@@201))
))) (forall ((o2_1@@178 T@Ref) (f_9@@202 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@178 f_9@@202) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@50) o2_1@@178 f_9@@202) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@178 f_9@@202)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@178 f_9@@202))
))) (forall ((o2_1@@179 T@Ref) (f_9@@203 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@179 f_9@@203) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@50) o2_1@@179 f_9@@203) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@179 f_9@@203)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@179 f_9@@203))
))) (forall ((o2_1@@180 T@Ref) (f_9@@204 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@180 f_9@@204) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@50) o2_1@@180 f_9@@204) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@180 f_9@@204)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@180 f_9@@204))
))) (forall ((o2_1@@181 T@Ref) (f_9@@205 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@181 f_9@@205) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@50) o2_1@@181 f_9@@205) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@181 f_9@@205)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@181 f_9@@205))
))) (forall ((o2_1@@182 T@Ref) (f_9@@206 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@182 f_9@@206) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@50) o2_1@@182 f_9@@206) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@182 f_9@@206)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@182 f_9@@206))
))) (forall ((o2_1@@183 T@Ref) (f_9@@207 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@183 f_9@@207) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@50) o2_1@@183 f_9@@207) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@183 f_9@@207)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@183 f_9@@207))
))) (forall ((o2_1@@184 T@Ref) (f_9@@208 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@184 f_9@@208) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@50) o2_1@@184 f_9@@208) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@184 f_9@@208)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@184 f_9@@208))
))) (forall ((o2_1@@185 T@Ref) (f_9@@209 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@185 f_9@@209) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@50) o2_1@@185 f_9@@209) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@185 f_9@@209)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@185 f_9@@209))
))) (forall ((o2_1@@186 T@Ref) (f_9@@210 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@186 f_9@@210) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) o2_1@@186 f_9@@210) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@186 f_9@@210)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@186 f_9@@210))
))) (forall ((o2_1@@187 T@Ref) (f_9@@211 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@187 f_9@@211) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@50) o2_1@@187 f_9@@211) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@187 f_9@@211)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@187 f_9@@211))
))) (forall ((o2_1@@188 T@Ref) (f_9@@212 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@188 f_9@@212) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@50) o2_1@@188 f_9@@212) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@188 f_9@@212)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@188 f_9@@212))
))) (forall ((o2_1@@189 T@Ref) (f_9@@213 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@189 f_9@@213) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@50) o2_1@@189 f_9@@213) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@189 f_9@@213)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@189 f_9@@213))
))) (forall ((o2_1@@190 T@Ref) (f_9@@214 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@50) null (WandMaskField_16657 pm_f_1@@18))) o2_1@@190 f_9@@214) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@50) o2_1@@190 f_9@@214) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@190 f_9@@214)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@44) o2_1@@190 f_9@@214))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@44 Mask@@93) (IsWandField_16657_45142 pm_f_1@@18))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_8688) (ExhaleHeap@@45 T@PolymorphicMapType_8688) (Mask@@94 T@PolymorphicMapType_8709) (pm_f_1@@19 T@Field_15345_15346) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@45 Mask@@94) (=> (and (HasDirectPerm_15345_4499 Mask@@94 null pm_f_1@@19) (IsWandField_15345_44785 pm_f_1@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@191 T@Ref) (f_9@@215 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@191 f_9@@215) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@51) o2_1@@191 f_9@@215) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@191 f_9@@215)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@191 f_9@@215))
)) (forall ((o2_1@@192 T@Ref) (f_9@@216 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@192 f_9@@216) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@51) o2_1@@192 f_9@@216) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@192 f_9@@216)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@192 f_9@@216))
))) (forall ((o2_1@@193 T@Ref) (f_9@@217 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@193 f_9@@217) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@51) o2_1@@193 f_9@@217) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@193 f_9@@217)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@193 f_9@@217))
))) (forall ((o2_1@@194 T@Ref) (f_9@@218 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@194 f_9@@218) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@51) o2_1@@194 f_9@@218) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@194 f_9@@218)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@194 f_9@@218))
))) (forall ((o2_1@@195 T@Ref) (f_9@@219 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@195 f_9@@219) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@51) o2_1@@195 f_9@@219) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@195 f_9@@219)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@195 f_9@@219))
))) (forall ((o2_1@@196 T@Ref) (f_9@@220 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@196 f_9@@220) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@51) o2_1@@196 f_9@@220) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@196 f_9@@220)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@196 f_9@@220))
))) (forall ((o2_1@@197 T@Ref) (f_9@@221 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@197 f_9@@221) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@51) o2_1@@197 f_9@@221) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@197 f_9@@221)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@197 f_9@@221))
))) (forall ((o2_1@@198 T@Ref) (f_9@@222 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@198 f_9@@222) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@51) o2_1@@198 f_9@@222) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@198 f_9@@222)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@198 f_9@@222))
))) (forall ((o2_1@@199 T@Ref) (f_9@@223 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@199 f_9@@223) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@51) o2_1@@199 f_9@@223) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@199 f_9@@223)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@199 f_9@@223))
))) (forall ((o2_1@@200 T@Ref) (f_9@@224 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@200 f_9@@224) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@51) o2_1@@200 f_9@@224) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@200 f_9@@224)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@200 f_9@@224))
))) (forall ((o2_1@@201 T@Ref) (f_9@@225 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@201 f_9@@225) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@51) o2_1@@201 f_9@@225) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@201 f_9@@225)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@201 f_9@@225))
))) (forall ((o2_1@@202 T@Ref) (f_9@@226 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@202 f_9@@226) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@51) o2_1@@202 f_9@@226) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@202 f_9@@226)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@202 f_9@@226))
))) (forall ((o2_1@@203 T@Ref) (f_9@@227 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@203 f_9@@227) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@51) o2_1@@203 f_9@@227) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@203 f_9@@227)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@203 f_9@@227))
))) (forall ((o2_1@@204 T@Ref) (f_9@@228 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@204 f_9@@228) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@51) o2_1@@204 f_9@@228) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@204 f_9@@228)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@204 f_9@@228))
))) (forall ((o2_1@@205 T@Ref) (f_9@@229 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@205 f_9@@229) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@51) o2_1@@205 f_9@@229) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@205 f_9@@229)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@205 f_9@@229))
))) (forall ((o2_1@@206 T@Ref) (f_9@@230 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@206 f_9@@230) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) o2_1@@206 f_9@@230) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@206 f_9@@230)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@206 f_9@@230))
))) (forall ((o2_1@@207 T@Ref) (f_9@@231 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@207 f_9@@231) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@51) o2_1@@207 f_9@@231) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@207 f_9@@231)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@207 f_9@@231))
))) (forall ((o2_1@@208 T@Ref) (f_9@@232 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@208 f_9@@232) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@51) o2_1@@208 f_9@@232) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@208 f_9@@232)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@208 f_9@@232))
))) (forall ((o2_1@@209 T@Ref) (f_9@@233 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@209 f_9@@233) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@51) o2_1@@209 f_9@@233) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@209 f_9@@233)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@209 f_9@@233))
))) (forall ((o2_1@@210 T@Ref) (f_9@@234 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@210 f_9@@234) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@51) o2_1@@210 f_9@@234) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@210 f_9@@234)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@210 f_9@@234))
))) (forall ((o2_1@@211 T@Ref) (f_9@@235 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@211 f_9@@235) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@51) o2_1@@211 f_9@@235) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@211 f_9@@235)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@211 f_9@@235))
))) (forall ((o2_1@@212 T@Ref) (f_9@@236 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@212 f_9@@236) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@51) o2_1@@212 f_9@@236) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@212 f_9@@236)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@212 f_9@@236))
))) (forall ((o2_1@@213 T@Ref) (f_9@@237 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@213 f_9@@237) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@51) o2_1@@213 f_9@@237) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@213 f_9@@237)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@213 f_9@@237))
))) (forall ((o2_1@@214 T@Ref) (f_9@@238 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@51) null (WandMaskField_15345 pm_f_1@@19))) o2_1@@214 f_9@@238) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@51) o2_1@@214 f_9@@238) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@214 f_9@@238)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@45) o2_1@@214 f_9@@238))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@45 Mask@@94) (IsWandField_15345_44785 pm_f_1@@19))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_8688) (ExhaleHeap@@46 T@PolymorphicMapType_8688) (Mask@@95 T@PolymorphicMapType_8709) (pm_f_1@@20 T@Field_13157_13158) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@46 Mask@@95) (=> (and (HasDirectPerm_13157_4499 Mask@@95 null pm_f_1@@20) (IsWandField_13157_44428 pm_f_1@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@215 T@Ref) (f_9@@239 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@215 f_9@@239) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@52) o2_1@@215 f_9@@239) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@215 f_9@@239)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@215 f_9@@239))
)) (forall ((o2_1@@216 T@Ref) (f_9@@240 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@216 f_9@@240) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@52) o2_1@@216 f_9@@240) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@216 f_9@@240)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@216 f_9@@240))
))) (forall ((o2_1@@217 T@Ref) (f_9@@241 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@217 f_9@@241) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@52) o2_1@@217 f_9@@241) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@217 f_9@@241)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@217 f_9@@241))
))) (forall ((o2_1@@218 T@Ref) (f_9@@242 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@218 f_9@@242) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@52) o2_1@@218 f_9@@242) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@218 f_9@@242)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@218 f_9@@242))
))) (forall ((o2_1@@219 T@Ref) (f_9@@243 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@219 f_9@@243) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@52) o2_1@@219 f_9@@243) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@219 f_9@@243)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@219 f_9@@243))
))) (forall ((o2_1@@220 T@Ref) (f_9@@244 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@220 f_9@@244) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@52) o2_1@@220 f_9@@244) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@220 f_9@@244)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@220 f_9@@244))
))) (forall ((o2_1@@221 T@Ref) (f_9@@245 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@221 f_9@@245) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@52) o2_1@@221 f_9@@245) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@221 f_9@@245)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@221 f_9@@245))
))) (forall ((o2_1@@222 T@Ref) (f_9@@246 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@222 f_9@@246) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@52) o2_1@@222 f_9@@246) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@222 f_9@@246)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@222 f_9@@246))
))) (forall ((o2_1@@223 T@Ref) (f_9@@247 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@223 f_9@@247) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@52) o2_1@@223 f_9@@247) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@223 f_9@@247)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@223 f_9@@247))
))) (forall ((o2_1@@224 T@Ref) (f_9@@248 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@224 f_9@@248) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@52) o2_1@@224 f_9@@248) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@224 f_9@@248)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@224 f_9@@248))
))) (forall ((o2_1@@225 T@Ref) (f_9@@249 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@225 f_9@@249) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@52) o2_1@@225 f_9@@249) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@225 f_9@@249)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@225 f_9@@249))
))) (forall ((o2_1@@226 T@Ref) (f_9@@250 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@226 f_9@@250) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) o2_1@@226 f_9@@250) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@226 f_9@@250)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@226 f_9@@250))
))) (forall ((o2_1@@227 T@Ref) (f_9@@251 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@227 f_9@@251) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@52) o2_1@@227 f_9@@251) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@227 f_9@@251)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@227 f_9@@251))
))) (forall ((o2_1@@228 T@Ref) (f_9@@252 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@228 f_9@@252) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@52) o2_1@@228 f_9@@252) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@228 f_9@@252)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@228 f_9@@252))
))) (forall ((o2_1@@229 T@Ref) (f_9@@253 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@229 f_9@@253) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@52) o2_1@@229 f_9@@253) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@229 f_9@@253)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@229 f_9@@253))
))) (forall ((o2_1@@230 T@Ref) (f_9@@254 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@230 f_9@@254) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@52) o2_1@@230 f_9@@254) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@230 f_9@@254)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@230 f_9@@254))
))) (forall ((o2_1@@231 T@Ref) (f_9@@255 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@231 f_9@@255) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@52) o2_1@@231 f_9@@255) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@231 f_9@@255)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@231 f_9@@255))
))) (forall ((o2_1@@232 T@Ref) (f_9@@256 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@232 f_9@@256) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@52) o2_1@@232 f_9@@256) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@232 f_9@@256)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@232 f_9@@256))
))) (forall ((o2_1@@233 T@Ref) (f_9@@257 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@233 f_9@@257) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@52) o2_1@@233 f_9@@257) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@233 f_9@@257)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@233 f_9@@257))
))) (forall ((o2_1@@234 T@Ref) (f_9@@258 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@234 f_9@@258) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@52) o2_1@@234 f_9@@258) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@234 f_9@@258)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@234 f_9@@258))
))) (forall ((o2_1@@235 T@Ref) (f_9@@259 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@235 f_9@@259) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@52) o2_1@@235 f_9@@259) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@235 f_9@@259)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@235 f_9@@259))
))) (forall ((o2_1@@236 T@Ref) (f_9@@260 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@236 f_9@@260) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@52) o2_1@@236 f_9@@260) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@236 f_9@@260)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@236 f_9@@260))
))) (forall ((o2_1@@237 T@Ref) (f_9@@261 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@237 f_9@@261) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@52) o2_1@@237 f_9@@261) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@237 f_9@@261)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@237 f_9@@261))
))) (forall ((o2_1@@238 T@Ref) (f_9@@262 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@52) null (WandMaskField_13157 pm_f_1@@20))) o2_1@@238 f_9@@262) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@52) o2_1@@238 f_9@@262) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@238 f_9@@262)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@46) o2_1@@238 f_9@@262))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@46 Mask@@95) (IsWandField_13157_44428 pm_f_1@@20))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_8688) (ExhaleHeap@@47 T@PolymorphicMapType_8688) (Mask@@96 T@PolymorphicMapType_8709) (pm_f_1@@21 T@Field_12162_12163) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@47 Mask@@96) (=> (and (HasDirectPerm_4498_4499 Mask@@96 null pm_f_1@@21) (IsWandField_4498_44071 pm_f_1@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@239 T@Ref) (f_9@@263 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@239 f_9@@263) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@53) o2_1@@239 f_9@@263) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@239 f_9@@263)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@239 f_9@@263))
)) (forall ((o2_1@@240 T@Ref) (f_9@@264 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@240 f_9@@264) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@53) o2_1@@240 f_9@@264) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@240 f_9@@264)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@240 f_9@@264))
))) (forall ((o2_1@@241 T@Ref) (f_9@@265 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@241 f_9@@265) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@53) o2_1@@241 f_9@@265) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@241 f_9@@265)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@241 f_9@@265))
))) (forall ((o2_1@@242 T@Ref) (f_9@@266 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@242 f_9@@266) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@53) o2_1@@242 f_9@@266) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@242 f_9@@266)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@242 f_9@@266))
))) (forall ((o2_1@@243 T@Ref) (f_9@@267 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@243 f_9@@267) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@53) o2_1@@243 f_9@@267) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@243 f_9@@267)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@243 f_9@@267))
))) (forall ((o2_1@@244 T@Ref) (f_9@@268 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@244 f_9@@268) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@53) o2_1@@244 f_9@@268) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@244 f_9@@268)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@244 f_9@@268))
))) (forall ((o2_1@@245 T@Ref) (f_9@@269 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@245 f_9@@269) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@53) o2_1@@245 f_9@@269) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@245 f_9@@269)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@245 f_9@@269))
))) (forall ((o2_1@@246 T@Ref) (f_9@@270 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@246 f_9@@270) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) o2_1@@246 f_9@@270) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@246 f_9@@270)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@246 f_9@@270))
))) (forall ((o2_1@@247 T@Ref) (f_9@@271 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@247 f_9@@271) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@53) o2_1@@247 f_9@@271) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@247 f_9@@271)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@247 f_9@@271))
))) (forall ((o2_1@@248 T@Ref) (f_9@@272 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@248 f_9@@272) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@53) o2_1@@248 f_9@@272) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@248 f_9@@272)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@248 f_9@@272))
))) (forall ((o2_1@@249 T@Ref) (f_9@@273 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@249 f_9@@273) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@53) o2_1@@249 f_9@@273) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@249 f_9@@273)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@249 f_9@@273))
))) (forall ((o2_1@@250 T@Ref) (f_9@@274 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@250 f_9@@274) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@53) o2_1@@250 f_9@@274) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@250 f_9@@274)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@250 f_9@@274))
))) (forall ((o2_1@@251 T@Ref) (f_9@@275 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@251 f_9@@275) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@53) o2_1@@251 f_9@@275) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@251 f_9@@275)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@251 f_9@@275))
))) (forall ((o2_1@@252 T@Ref) (f_9@@276 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@252 f_9@@276) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@53) o2_1@@252 f_9@@276) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@252 f_9@@276)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@252 f_9@@276))
))) (forall ((o2_1@@253 T@Ref) (f_9@@277 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@253 f_9@@277) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@53) o2_1@@253 f_9@@277) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@253 f_9@@277)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@253 f_9@@277))
))) (forall ((o2_1@@254 T@Ref) (f_9@@278 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@254 f_9@@278) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@53) o2_1@@254 f_9@@278) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@254 f_9@@278)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@254 f_9@@278))
))) (forall ((o2_1@@255 T@Ref) (f_9@@279 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@255 f_9@@279) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@53) o2_1@@255 f_9@@279) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@255 f_9@@279)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@255 f_9@@279))
))) (forall ((o2_1@@256 T@Ref) (f_9@@280 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@256 f_9@@280) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@53) o2_1@@256 f_9@@280) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@256 f_9@@280)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@256 f_9@@280))
))) (forall ((o2_1@@257 T@Ref) (f_9@@281 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@257 f_9@@281) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@53) o2_1@@257 f_9@@281) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@257 f_9@@281)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@257 f_9@@281))
))) (forall ((o2_1@@258 T@Ref) (f_9@@282 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@258 f_9@@282) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@53) o2_1@@258 f_9@@282) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@258 f_9@@282)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@258 f_9@@282))
))) (forall ((o2_1@@259 T@Ref) (f_9@@283 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@259 f_9@@283) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@53) o2_1@@259 f_9@@283) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@259 f_9@@283)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@259 f_9@@283))
))) (forall ((o2_1@@260 T@Ref) (f_9@@284 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@260 f_9@@284) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@53) o2_1@@260 f_9@@284) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@260 f_9@@284)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@260 f_9@@284))
))) (forall ((o2_1@@261 T@Ref) (f_9@@285 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@261 f_9@@285) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@53) o2_1@@261 f_9@@285) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@261 f_9@@285)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@261 f_9@@285))
))) (forall ((o2_1@@262 T@Ref) (f_9@@286 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@53) null (WandMaskField_4498 pm_f_1@@21))) o2_1@@262 f_9@@286) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@53) o2_1@@262 f_9@@286) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@262 f_9@@286)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@47) o2_1@@262 f_9@@286))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@47 Mask@@96) (IsWandField_4498_44071 pm_f_1@@21))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_8688) (ExhaleHeap@@48 T@PolymorphicMapType_8688) (Mask@@97 T@PolymorphicMapType_8709) (pm_f_1@@22 T@Field_4491_4499) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@48 Mask@@97) (=> (and (HasDirectPerm_4491_4499 Mask@@97 null pm_f_1@@22) (IsWandField_4491_43714 pm_f_1@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@263 T@Ref) (f_9@@287 T@Field_8761_8762) ) (!  (=> (select (|PolymorphicMapType_9237_4491_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@263 f_9@@287) (= (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@54) o2_1@@263 f_9@@287) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@263 f_9@@287)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@263 f_9@@287))
)) (forall ((o2_1@@264 T@Ref) (f_9@@288 T@Field_8748_53) ) (!  (=> (select (|PolymorphicMapType_9237_4491_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@264 f_9@@288) (= (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@54) o2_1@@264 f_9@@288) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@264 f_9@@288)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@264 f_9@@288))
))) (forall ((o2_1@@265 T@Ref) (f_9@@289 T@Field_4491_4499) ) (!  (=> (select (|PolymorphicMapType_9237_4491_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@265 f_9@@289) (= (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@54) o2_1@@265 f_9@@289) (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@265 f_9@@289)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@265 f_9@@289))
))) (forall ((o2_1@@266 T@Ref) (f_9@@290 T@Field_4491_12180) ) (!  (=> (select (|PolymorphicMapType_9237_4491_37532#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@266 f_9@@290) (= (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) o2_1@@266 f_9@@290) (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@266 f_9@@290)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@266 f_9@@290))
))) (forall ((o2_1@@267 T@Ref) (f_9@@291 T@Field_4498_4492) ) (!  (=> (select (|PolymorphicMapType_9237_12162_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@267 f_9@@291) (= (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@54) o2_1@@267 f_9@@291) (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@267 f_9@@291)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@267 f_9@@291))
))) (forall ((o2_1@@268 T@Ref) (f_9@@292 T@Field_4498_53) ) (!  (=> (select (|PolymorphicMapType_9237_12162_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@268 f_9@@292) (= (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@54) o2_1@@268 f_9@@292) (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@268 f_9@@292)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@268 f_9@@292))
))) (forall ((o2_1@@269 T@Ref) (f_9@@293 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_9237_12162_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@269 f_9@@293) (= (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@54) o2_1@@269 f_9@@293) (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@269 f_9@@293)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@269 f_9@@293))
))) (forall ((o2_1@@270 T@Ref) (f_9@@294 T@Field_12175_12180) ) (!  (=> (select (|PolymorphicMapType_9237_12162_38382#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@270 f_9@@294) (= (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@54) o2_1@@270 f_9@@294) (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@270 f_9@@294)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@270 f_9@@294))
))) (forall ((o2_1@@271 T@Ref) (f_9@@295 T@Field_13157_4492) ) (!  (=> (select (|PolymorphicMapType_9237_13157_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@271 f_9@@295) (= (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@54) o2_1@@271 f_9@@295) (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@271 f_9@@295)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@271 f_9@@295))
))) (forall ((o2_1@@272 T@Ref) (f_9@@296 T@Field_13157_53) ) (!  (=> (select (|PolymorphicMapType_9237_13157_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@272 f_9@@296) (= (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@54) o2_1@@272 f_9@@296) (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@272 f_9@@296)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@272 f_9@@296))
))) (forall ((o2_1@@273 T@Ref) (f_9@@297 T@Field_13157_13158) ) (!  (=> (select (|PolymorphicMapType_9237_13157_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@273 f_9@@297) (= (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@54) o2_1@@273 f_9@@297) (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@273 f_9@@297)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@273 f_9@@297))
))) (forall ((o2_1@@274 T@Ref) (f_9@@298 T@Field_14624_14629) ) (!  (=> (select (|PolymorphicMapType_9237_13157_39232#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@274 f_9@@298) (= (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@54) o2_1@@274 f_9@@298) (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@274 f_9@@298)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@274 f_9@@298))
))) (forall ((o2_1@@275 T@Ref) (f_9@@299 T@Field_15345_4492) ) (!  (=> (select (|PolymorphicMapType_9237_15345_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@275 f_9@@299) (= (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@54) o2_1@@275 f_9@@299) (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@275 f_9@@299)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@275 f_9@@299))
))) (forall ((o2_1@@276 T@Ref) (f_9@@300 T@Field_15345_53) ) (!  (=> (select (|PolymorphicMapType_9237_15345_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@276 f_9@@300) (= (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@54) o2_1@@276 f_9@@300) (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@276 f_9@@300)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@276 f_9@@300))
))) (forall ((o2_1@@277 T@Ref) (f_9@@301 T@Field_15345_15346) ) (!  (=> (select (|PolymorphicMapType_9237_15345_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@277 f_9@@301) (= (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@54) o2_1@@277 f_9@@301) (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@277 f_9@@301)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@277 f_9@@301))
))) (forall ((o2_1@@278 T@Ref) (f_9@@302 T@Field_15358_15363) ) (!  (=> (select (|PolymorphicMapType_9237_15345_40082#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@278 f_9@@302) (= (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@54) o2_1@@278 f_9@@302) (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@278 f_9@@302)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@278 f_9@@302))
))) (forall ((o2_1@@279 T@Ref) (f_9@@303 T@Field_16657_4492) ) (!  (=> (select (|PolymorphicMapType_9237_16657_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@279 f_9@@303) (= (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@54) o2_1@@279 f_9@@303) (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@279 f_9@@303)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@279 f_9@@303))
))) (forall ((o2_1@@280 T@Ref) (f_9@@304 T@Field_16657_53) ) (!  (=> (select (|PolymorphicMapType_9237_16657_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@280 f_9@@304) (= (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@54) o2_1@@280 f_9@@304) (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@280 f_9@@304)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@280 f_9@@304))
))) (forall ((o2_1@@281 T@Ref) (f_9@@305 T@Field_16657_16658) ) (!  (=> (select (|PolymorphicMapType_9237_16657_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@281 f_9@@305) (= (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@54) o2_1@@281 f_9@@305) (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@281 f_9@@305)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@281 f_9@@305))
))) (forall ((o2_1@@282 T@Ref) (f_9@@306 T@Field_16670_16675) ) (!  (=> (select (|PolymorphicMapType_9237_16657_40932#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@282 f_9@@306) (= (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@54) o2_1@@282 f_9@@306) (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@282 f_9@@306)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@282 f_9@@306))
))) (forall ((o2_1@@283 T@Ref) (f_9@@307 T@Field_17617_4492) ) (!  (=> (select (|PolymorphicMapType_9237_17617_4492#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@283 f_9@@307) (= (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@54) o2_1@@283 f_9@@307) (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@283 f_9@@307)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@283 f_9@@307))
))) (forall ((o2_1@@284 T@Ref) (f_9@@308 T@Field_17617_53) ) (!  (=> (select (|PolymorphicMapType_9237_17617_53#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@284 f_9@@308) (= (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@54) o2_1@@284 f_9@@308) (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@284 f_9@@308)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@284 f_9@@308))
))) (forall ((o2_1@@285 T@Ref) (f_9@@309 T@Field_17617_17618) ) (!  (=> (select (|PolymorphicMapType_9237_17617_12163#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@285 f_9@@309) (= (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@54) o2_1@@285 f_9@@309) (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@285 f_9@@309)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@285 f_9@@309))
))) (forall ((o2_1@@286 T@Ref) (f_9@@310 T@Field_19084_19089) ) (!  (=> (select (|PolymorphicMapType_9237_17617_41782#PolymorphicMapType_9237| (select (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@54) null (WandMaskField_4491 pm_f_1@@22))) o2_1@@286 f_9@@310) (= (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@54) o2_1@@286 f_9@@310) (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@286 f_9@@310)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| ExhaleHeap@@48) o2_1@@286 f_9@@310))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@48 Mask@@97) (IsWandField_4491_43714 pm_f_1@@22))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_8688) (o_3 T@Ref) (f_10 T@Field_16670_16675) (v T@PolymorphicMapType_9237) ) (! (succHeap Heap@@55 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@55) (store (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@55) o_3 f_10 v) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@55) (store (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@55) o_3 f_10 v) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@55) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_8688) (o_3@@0 T@Ref) (f_10@@0 T@Field_16657_16658) (v@@0 T@FrameType) ) (! (succHeap Heap@@56 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@56) (store (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@56) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@56) (store (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@56) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@56) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_8688) (o_3@@1 T@Ref) (f_10@@1 T@Field_16657_4492) (v@@1 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@57) (store (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@57) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@57) (store (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@57) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@57) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_8688) (o_3@@2 T@Ref) (f_10@@2 T@Field_16657_53) (v@@2 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@58) (store (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@58) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@58) (store (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@58) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@58) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_8688) (o_3@@3 T@Ref) (f_10@@3 T@Field_15358_15363) (v@@3 T@PolymorphicMapType_9237) ) (! (succHeap Heap@@59 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@59) (store (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@59) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@59) (store (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@59) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@59) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_8688) (o_3@@4 T@Ref) (f_10@@4 T@Field_15345_15346) (v@@4 T@FrameType) ) (! (succHeap Heap@@60 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@60) (store (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@60) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@60) (store (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@60) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@60) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_8688) (o_3@@5 T@Ref) (f_10@@5 T@Field_15345_4492) (v@@5 T@Ref) ) (! (succHeap Heap@@61 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@61) (store (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@61) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@61) (store (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@61) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@61) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_8688) (o_3@@6 T@Ref) (f_10@@6 T@Field_15345_53) (v@@6 Bool) ) (! (succHeap Heap@@62 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@62) (store (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@62) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@62) (store (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@62) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@62) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_8688) (o_3@@7 T@Ref) (f_10@@7 T@Field_12175_12180) (v@@7 T@PolymorphicMapType_9237) ) (! (succHeap Heap@@63 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@63) (store (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@63) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@63) (store (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@63) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@63) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_8688) (o_3@@8 T@Ref) (f_10@@8 T@Field_12162_12163) (v@@8 T@FrameType) ) (! (succHeap Heap@@64 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@64) (store (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@64) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@64) (store (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@64) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@64) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_8688) (o_3@@9 T@Ref) (f_10@@9 T@Field_4498_4492) (v@@9 T@Ref) ) (! (succHeap Heap@@65 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@65) (store (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@65) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@65) (store (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@65) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@65) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_8688) (o_3@@10 T@Ref) (f_10@@10 T@Field_4498_53) (v@@10 Bool) ) (! (succHeap Heap@@66 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@66) (store (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@66) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@66) (store (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@66) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@66) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_8688) (o_3@@11 T@Ref) (f_10@@11 T@Field_19084_19089) (v@@11 T@PolymorphicMapType_9237) ) (! (succHeap Heap@@67 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@67) (store (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@67) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@67) (store (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@67) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@67) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_8688) (o_3@@12 T@Ref) (f_10@@12 T@Field_17617_17618) (v@@12 T@FrameType) ) (! (succHeap Heap@@68 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@68) (store (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@68) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@68) (store (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@68) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@68) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_8688) (o_3@@13 T@Ref) (f_10@@13 T@Field_17617_4492) (v@@13 T@Ref) ) (! (succHeap Heap@@69 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@69) (store (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@69) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@69) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@69) (store (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@69) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_8688) (o_3@@14 T@Ref) (f_10@@14 T@Field_17617_53) (v@@14 Bool) ) (! (succHeap Heap@@70 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@70) (store (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@70) o_3@@14 f_10@@14 v@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@70) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@70) (store (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@70) o_3@@14 f_10@@14 v@@14)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_8688) (o_3@@15 T@Ref) (f_10@@15 T@Field_14624_14629) (v@@15 T@PolymorphicMapType_9237) ) (! (succHeap Heap@@71 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@71) (store (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@71) o_3@@15 f_10@@15 v@@15) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@71) (store (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@71) o_3@@15 f_10@@15 v@@15) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@71) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_8688) (o_3@@16 T@Ref) (f_10@@16 T@Field_13157_13158) (v@@16 T@FrameType) ) (! (succHeap Heap@@72 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@72) (store (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@72) o_3@@16 f_10@@16 v@@16) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@72) (store (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@72) o_3@@16 f_10@@16 v@@16) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@72) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_8688) (o_3@@17 T@Ref) (f_10@@17 T@Field_13157_4492) (v@@17 T@Ref) ) (! (succHeap Heap@@73 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@73) (store (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@73) o_3@@17 f_10@@17 v@@17) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@73) (store (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@73) o_3@@17 f_10@@17 v@@17) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@73) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_8688) (o_3@@18 T@Ref) (f_10@@18 T@Field_13157_53) (v@@18 Bool) ) (! (succHeap Heap@@74 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@74) (store (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@74) o_3@@18 f_10@@18 v@@18) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@74) (store (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@74) o_3@@18 f_10@@18 v@@18) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@74) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_8688) (o_3@@19 T@Ref) (f_10@@19 T@Field_4491_12180) (v@@19 T@PolymorphicMapType_9237) ) (! (succHeap Heap@@75 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@75) (store (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@75) o_3@@19 f_10@@19 v@@19) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@75) (store (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@75) o_3@@19 f_10@@19 v@@19) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@75) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_8688) (o_3@@20 T@Ref) (f_10@@20 T@Field_4491_4499) (v@@20 T@FrameType) ) (! (succHeap Heap@@76 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@76) (store (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@76) o_3@@20 f_10@@20 v@@20) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@76) (store (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@76) o_3@@20 f_10@@20 v@@20) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@76) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_8688) (o_3@@21 T@Ref) (f_10@@21 T@Field_8761_8762) (v@@21 T@Ref) ) (! (succHeap Heap@@77 (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@77) (store (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@77) o_3@@21 f_10@@21 v@@21) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@77) (store (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@77) o_3@@21 f_10@@21 v@@21) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@77) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_8688) (o_3@@22 T@Ref) (f_10@@22 T@Field_8748_53) (v@@22 Bool) ) (! (succHeap Heap@@78 (PolymorphicMapType_8688 (store (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@78) o_3@@22 f_10@@22 v@@22) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8688 (store (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@78) o_3@@22 f_10@@22 v@@22) (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4527_4528#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4605_4606#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4498_4499#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4551_4552#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4555_24376#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4576_4577#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4580_27437#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4609_27739#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4491_4499#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4491_30164#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4498_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4498_53#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_4498_31084#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_13157_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_13157_53#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_13157_32024#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_15345_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_15345_53#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_16657_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_16657_53#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_17617_4492#PolymorphicMapType_8688| Heap@@78) (|PolymorphicMapType_8688_17617_53#PolymorphicMapType_8688| Heap@@78)))
)))
(assert (forall ((r_1@@9 T@Ref) ) (! (= (PredicateMaskField_4498 (P r_1@@9)) (|P#sm| r_1@@9))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_4498 (P r_1@@9)))
)))
(assert (forall ((r_1@@10 T@Ref) ) (! (= (PredicateMaskField_4527 (Q r_1@@10)) (|Q#sm| r_1@@10))
 :qid |stdinbpl.290:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_4527 (Q r_1@@10)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_4551 (Rec x@@4)) (|Rec#sm| x@@4))
 :qid |stdinbpl.339:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_4551 (Rec x@@4)))
)))
(assert (forall ((self@@9 T@Ref) ) (! (= (PredicateMaskField_4576 (SP_State self@@9)) (|SP_State#sm| self@@9))
 :qid |stdinbpl.409:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_4576 (SP_State self@@9)))
)))
(assert (forall ((self@@10 T@Ref) ) (! (= (PredicateMaskField_4605 (OFL_State self@@10)) (|OFL_State#sm| self@@10))
 :qid |stdinbpl.505:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_4605 (OFL_State self@@10)))
)))
(assert (forall ((o_3@@23 T@Ref) (f_8 T@Field_8761_8762) (Heap@@79 T@PolymorphicMapType_8688) ) (!  (=> (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@79) o_3@@23 $allocated) (select (|PolymorphicMapType_8688_4363_53#PolymorphicMapType_8688| Heap@@79) (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@79) o_3@@23 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8688_4366_4367#PolymorphicMapType_8688| Heap@@79) o_3@@23 f_8))
)))
(assert (forall ((p@@6 T@Field_17617_17618) (v_1@@5 T@FrameType) (q T@Field_4491_4499) (w@@5 T@FrameType) (r T@Field_16657_16658) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4605_8748 p@@6 v_1@@5 q w@@5) (InsidePredicate_8748_16657 q w@@5 r u)) (InsidePredicate_4605_16657 p@@6 v_1@@5 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_8748 p@@6 v_1@@5 q w@@5) (InsidePredicate_8748_16657 q w@@5 r u))
)))
(assert (forall ((p@@7 T@Field_17617_17618) (v_1@@6 T@FrameType) (q@@0 T@Field_4491_4499) (w@@6 T@FrameType) (r@@0 T@Field_12162_12163) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_8748 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_8748_12162 q@@0 w@@6 r@@0 u@@0)) (InsidePredicate_4605_12162 p@@7 v_1@@6 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_8748 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_8748_12162 q@@0 w@@6 r@@0 u@@0))
)))
(assert (forall ((p@@8 T@Field_17617_17618) (v_1@@7 T@FrameType) (q@@1 T@Field_4491_4499) (w@@7 T@FrameType) (r@@1 T@Field_4491_4499) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_8748 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_8748_8748 q@@1 w@@7 r@@1 u@@1)) (InsidePredicate_4605_8748 p@@8 v_1@@7 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_8748 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_8748_8748 q@@1 w@@7 r@@1 u@@1))
)))
(assert (forall ((p@@9 T@Field_17617_17618) (v_1@@8 T@FrameType) (q@@2 T@Field_4491_4499) (w@@8 T@FrameType) (r@@2 T@Field_17617_17618) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_8748 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_8748_4605 q@@2 w@@8 r@@2 u@@2)) (InsidePredicate_4605_4605 p@@9 v_1@@8 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_8748 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_8748_4605 q@@2 w@@8 r@@2 u@@2))
)))
(assert (forall ((p@@10 T@Field_17617_17618) (v_1@@9 T@FrameType) (q@@3 T@Field_4491_4499) (w@@9 T@FrameType) (r@@3 T@Field_15345_15346) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_8748 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_8748_4551 q@@3 w@@9 r@@3 u@@3)) (InsidePredicate_4605_4551 p@@10 v_1@@9 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_8748 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_8748_4551 q@@3 w@@9 r@@3 u@@3))
)))
(assert (forall ((p@@11 T@Field_17617_17618) (v_1@@10 T@FrameType) (q@@4 T@Field_4491_4499) (w@@10 T@FrameType) (r@@4 T@Field_13157_13158) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_8748 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_8748_4527 q@@4 w@@10 r@@4 u@@4)) (InsidePredicate_4605_4527 p@@11 v_1@@10 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_8748 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_8748_4527 q@@4 w@@10 r@@4 u@@4))
)))
(assert (forall ((p@@12 T@Field_17617_17618) (v_1@@11 T@FrameType) (q@@5 T@Field_16657_16658) (w@@11 T@FrameType) (r@@5 T@Field_16657_16658) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_16657 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_4576_16657 q@@5 w@@11 r@@5 u@@5)) (InsidePredicate_4605_16657 p@@12 v_1@@11 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_16657 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_4576_16657 q@@5 w@@11 r@@5 u@@5))
)))
(assert (forall ((p@@13 T@Field_17617_17618) (v_1@@12 T@FrameType) (q@@6 T@Field_16657_16658) (w@@12 T@FrameType) (r@@6 T@Field_12162_12163) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_16657 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_4576_12162 q@@6 w@@12 r@@6 u@@6)) (InsidePredicate_4605_12162 p@@13 v_1@@12 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_16657 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_4576_12162 q@@6 w@@12 r@@6 u@@6))
)))
(assert (forall ((p@@14 T@Field_17617_17618) (v_1@@13 T@FrameType) (q@@7 T@Field_16657_16658) (w@@13 T@FrameType) (r@@7 T@Field_4491_4499) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_16657 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_4576_8748 q@@7 w@@13 r@@7 u@@7)) (InsidePredicate_4605_8748 p@@14 v_1@@13 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_16657 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_4576_8748 q@@7 w@@13 r@@7 u@@7))
)))
(assert (forall ((p@@15 T@Field_17617_17618) (v_1@@14 T@FrameType) (q@@8 T@Field_16657_16658) (w@@14 T@FrameType) (r@@8 T@Field_17617_17618) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_16657 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_4576_4605 q@@8 w@@14 r@@8 u@@8)) (InsidePredicate_4605_4605 p@@15 v_1@@14 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_16657 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_4576_4605 q@@8 w@@14 r@@8 u@@8))
)))
(assert (forall ((p@@16 T@Field_17617_17618) (v_1@@15 T@FrameType) (q@@9 T@Field_16657_16658) (w@@15 T@FrameType) (r@@9 T@Field_15345_15346) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_16657 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_4576_4551 q@@9 w@@15 r@@9 u@@9)) (InsidePredicate_4605_4551 p@@16 v_1@@15 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_16657 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_4576_4551 q@@9 w@@15 r@@9 u@@9))
)))
(assert (forall ((p@@17 T@Field_17617_17618) (v_1@@16 T@FrameType) (q@@10 T@Field_16657_16658) (w@@16 T@FrameType) (r@@10 T@Field_13157_13158) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_16657 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_4576_4527 q@@10 w@@16 r@@10 u@@10)) (InsidePredicate_4605_4527 p@@17 v_1@@16 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_16657 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_4576_4527 q@@10 w@@16 r@@10 u@@10))
)))
(assert (forall ((p@@18 T@Field_17617_17618) (v_1@@17 T@FrameType) (q@@11 T@Field_17617_17618) (w@@17 T@FrameType) (r@@11 T@Field_16657_16658) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4605 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_4605_16657 q@@11 w@@17 r@@11 u@@11)) (InsidePredicate_4605_16657 p@@18 v_1@@17 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4605 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_4605_16657 q@@11 w@@17 r@@11 u@@11))
)))
(assert (forall ((p@@19 T@Field_17617_17618) (v_1@@18 T@FrameType) (q@@12 T@Field_17617_17618) (w@@18 T@FrameType) (r@@12 T@Field_12162_12163) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4605 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_4605_12162 q@@12 w@@18 r@@12 u@@12)) (InsidePredicate_4605_12162 p@@19 v_1@@18 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4605 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_4605_12162 q@@12 w@@18 r@@12 u@@12))
)))
(assert (forall ((p@@20 T@Field_17617_17618) (v_1@@19 T@FrameType) (q@@13 T@Field_17617_17618) (w@@19 T@FrameType) (r@@13 T@Field_4491_4499) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4605 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_4605_8748 q@@13 w@@19 r@@13 u@@13)) (InsidePredicate_4605_8748 p@@20 v_1@@19 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4605 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_4605_8748 q@@13 w@@19 r@@13 u@@13))
)))
(assert (forall ((p@@21 T@Field_17617_17618) (v_1@@20 T@FrameType) (q@@14 T@Field_17617_17618) (w@@20 T@FrameType) (r@@14 T@Field_17617_17618) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4605 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_4605_4605 q@@14 w@@20 r@@14 u@@14)) (InsidePredicate_4605_4605 p@@21 v_1@@20 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4605 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_4605_4605 q@@14 w@@20 r@@14 u@@14))
)))
(assert (forall ((p@@22 T@Field_17617_17618) (v_1@@21 T@FrameType) (q@@15 T@Field_17617_17618) (w@@21 T@FrameType) (r@@15 T@Field_15345_15346) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4605 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_4605_4551 q@@15 w@@21 r@@15 u@@15)) (InsidePredicate_4605_4551 p@@22 v_1@@21 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4605 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_4605_4551 q@@15 w@@21 r@@15 u@@15))
)))
(assert (forall ((p@@23 T@Field_17617_17618) (v_1@@22 T@FrameType) (q@@16 T@Field_17617_17618) (w@@22 T@FrameType) (r@@16 T@Field_13157_13158) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4605 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_4605_4527 q@@16 w@@22 r@@16 u@@16)) (InsidePredicate_4605_4527 p@@23 v_1@@22 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4605 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_4605_4527 q@@16 w@@22 r@@16 u@@16))
)))
(assert (forall ((p@@24 T@Field_17617_17618) (v_1@@23 T@FrameType) (q@@17 T@Field_15345_15346) (w@@23 T@FrameType) (r@@17 T@Field_16657_16658) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4551 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_4551_16657 q@@17 w@@23 r@@17 u@@17)) (InsidePredicate_4605_16657 p@@24 v_1@@23 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4551 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_4551_16657 q@@17 w@@23 r@@17 u@@17))
)))
(assert (forall ((p@@25 T@Field_17617_17618) (v_1@@24 T@FrameType) (q@@18 T@Field_15345_15346) (w@@24 T@FrameType) (r@@18 T@Field_12162_12163) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4551 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_4551_12162 q@@18 w@@24 r@@18 u@@18)) (InsidePredicate_4605_12162 p@@25 v_1@@24 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4551 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_4551_12162 q@@18 w@@24 r@@18 u@@18))
)))
(assert (forall ((p@@26 T@Field_17617_17618) (v_1@@25 T@FrameType) (q@@19 T@Field_15345_15346) (w@@25 T@FrameType) (r@@19 T@Field_4491_4499) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4551 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_4551_8748 q@@19 w@@25 r@@19 u@@19)) (InsidePredicate_4605_8748 p@@26 v_1@@25 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4551 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_4551_8748 q@@19 w@@25 r@@19 u@@19))
)))
(assert (forall ((p@@27 T@Field_17617_17618) (v_1@@26 T@FrameType) (q@@20 T@Field_15345_15346) (w@@26 T@FrameType) (r@@20 T@Field_17617_17618) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4551 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_4551_4605 q@@20 w@@26 r@@20 u@@20)) (InsidePredicate_4605_4605 p@@27 v_1@@26 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4551 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_4551_4605 q@@20 w@@26 r@@20 u@@20))
)))
(assert (forall ((p@@28 T@Field_17617_17618) (v_1@@27 T@FrameType) (q@@21 T@Field_15345_15346) (w@@27 T@FrameType) (r@@21 T@Field_15345_15346) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4551 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_4551_4551 q@@21 w@@27 r@@21 u@@21)) (InsidePredicate_4605_4551 p@@28 v_1@@27 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4551 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_4551_4551 q@@21 w@@27 r@@21 u@@21))
)))
(assert (forall ((p@@29 T@Field_17617_17618) (v_1@@28 T@FrameType) (q@@22 T@Field_15345_15346) (w@@28 T@FrameType) (r@@22 T@Field_13157_13158) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4551 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_4551_4527 q@@22 w@@28 r@@22 u@@22)) (InsidePredicate_4605_4527 p@@29 v_1@@28 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4551 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_4551_4527 q@@22 w@@28 r@@22 u@@22))
)))
(assert (forall ((p@@30 T@Field_17617_17618) (v_1@@29 T@FrameType) (q@@23 T@Field_12162_12163) (w@@29 T@FrameType) (r@@23 T@Field_16657_16658) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_12162 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_4498_16657 q@@23 w@@29 r@@23 u@@23)) (InsidePredicate_4605_16657 p@@30 v_1@@29 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_12162 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_4498_16657 q@@23 w@@29 r@@23 u@@23))
)))
(assert (forall ((p@@31 T@Field_17617_17618) (v_1@@30 T@FrameType) (q@@24 T@Field_12162_12163) (w@@30 T@FrameType) (r@@24 T@Field_12162_12163) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_12162 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_4498_12162 q@@24 w@@30 r@@24 u@@24)) (InsidePredicate_4605_12162 p@@31 v_1@@30 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_12162 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_4498_12162 q@@24 w@@30 r@@24 u@@24))
)))
(assert (forall ((p@@32 T@Field_17617_17618) (v_1@@31 T@FrameType) (q@@25 T@Field_12162_12163) (w@@31 T@FrameType) (r@@25 T@Field_4491_4499) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_12162 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_4498_8748 q@@25 w@@31 r@@25 u@@25)) (InsidePredicate_4605_8748 p@@32 v_1@@31 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_12162 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_4498_8748 q@@25 w@@31 r@@25 u@@25))
)))
(assert (forall ((p@@33 T@Field_17617_17618) (v_1@@32 T@FrameType) (q@@26 T@Field_12162_12163) (w@@32 T@FrameType) (r@@26 T@Field_17617_17618) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_12162 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_4498_4605 q@@26 w@@32 r@@26 u@@26)) (InsidePredicate_4605_4605 p@@33 v_1@@32 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_12162 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_4498_4605 q@@26 w@@32 r@@26 u@@26))
)))
(assert (forall ((p@@34 T@Field_17617_17618) (v_1@@33 T@FrameType) (q@@27 T@Field_12162_12163) (w@@33 T@FrameType) (r@@27 T@Field_15345_15346) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_12162 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_4498_4551 q@@27 w@@33 r@@27 u@@27)) (InsidePredicate_4605_4551 p@@34 v_1@@33 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_12162 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_4498_4551 q@@27 w@@33 r@@27 u@@27))
)))
(assert (forall ((p@@35 T@Field_17617_17618) (v_1@@34 T@FrameType) (q@@28 T@Field_12162_12163) (w@@34 T@FrameType) (r@@28 T@Field_13157_13158) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_12162 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_4498_4527 q@@28 w@@34 r@@28 u@@28)) (InsidePredicate_4605_4527 p@@35 v_1@@34 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_12162 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_4498_4527 q@@28 w@@34 r@@28 u@@28))
)))
(assert (forall ((p@@36 T@Field_17617_17618) (v_1@@35 T@FrameType) (q@@29 T@Field_13157_13158) (w@@35 T@FrameType) (r@@29 T@Field_16657_16658) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4527 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_4527_16657 q@@29 w@@35 r@@29 u@@29)) (InsidePredicate_4605_16657 p@@36 v_1@@35 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4527 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_4527_16657 q@@29 w@@35 r@@29 u@@29))
)))
(assert (forall ((p@@37 T@Field_17617_17618) (v_1@@36 T@FrameType) (q@@30 T@Field_13157_13158) (w@@36 T@FrameType) (r@@30 T@Field_12162_12163) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4527 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_4527_12162 q@@30 w@@36 r@@30 u@@30)) (InsidePredicate_4605_12162 p@@37 v_1@@36 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4527 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_4527_12162 q@@30 w@@36 r@@30 u@@30))
)))
(assert (forall ((p@@38 T@Field_17617_17618) (v_1@@37 T@FrameType) (q@@31 T@Field_13157_13158) (w@@37 T@FrameType) (r@@31 T@Field_4491_4499) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4527 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_4527_8748 q@@31 w@@37 r@@31 u@@31)) (InsidePredicate_4605_8748 p@@38 v_1@@37 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4527 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_4527_8748 q@@31 w@@37 r@@31 u@@31))
)))
(assert (forall ((p@@39 T@Field_17617_17618) (v_1@@38 T@FrameType) (q@@32 T@Field_13157_13158) (w@@38 T@FrameType) (r@@32 T@Field_17617_17618) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4527 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_4527_4605 q@@32 w@@38 r@@32 u@@32)) (InsidePredicate_4605_4605 p@@39 v_1@@38 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4527 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_4527_4605 q@@32 w@@38 r@@32 u@@32))
)))
(assert (forall ((p@@40 T@Field_17617_17618) (v_1@@39 T@FrameType) (q@@33 T@Field_13157_13158) (w@@39 T@FrameType) (r@@33 T@Field_15345_15346) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4527 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_4527_4551 q@@33 w@@39 r@@33 u@@33)) (InsidePredicate_4605_4551 p@@40 v_1@@39 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4527 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_4527_4551 q@@33 w@@39 r@@33 u@@33))
)))
(assert (forall ((p@@41 T@Field_17617_17618) (v_1@@40 T@FrameType) (q@@34 T@Field_13157_13158) (w@@40 T@FrameType) (r@@34 T@Field_13157_13158) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_4605_4527 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_4527_4527 q@@34 w@@40 r@@34 u@@34)) (InsidePredicate_4605_4527 p@@41 v_1@@40 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4605_4527 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_4527_4527 q@@34 w@@40 r@@34 u@@34))
)))
(assert (forall ((p@@42 T@Field_13157_13158) (v_1@@41 T@FrameType) (q@@35 T@Field_4491_4499) (w@@41 T@FrameType) (r@@35 T@Field_16657_16658) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_8748 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_8748_16657 q@@35 w@@41 r@@35 u@@35)) (InsidePredicate_4527_16657 p@@42 v_1@@41 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_8748 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_8748_16657 q@@35 w@@41 r@@35 u@@35))
)))
(assert (forall ((p@@43 T@Field_13157_13158) (v_1@@42 T@FrameType) (q@@36 T@Field_4491_4499) (w@@42 T@FrameType) (r@@36 T@Field_12162_12163) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_8748 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_8748_12162 q@@36 w@@42 r@@36 u@@36)) (InsidePredicate_4527_12162 p@@43 v_1@@42 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_8748 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_8748_12162 q@@36 w@@42 r@@36 u@@36))
)))
(assert (forall ((p@@44 T@Field_13157_13158) (v_1@@43 T@FrameType) (q@@37 T@Field_4491_4499) (w@@43 T@FrameType) (r@@37 T@Field_4491_4499) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_8748 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_8748_8748 q@@37 w@@43 r@@37 u@@37)) (InsidePredicate_4527_8748 p@@44 v_1@@43 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_8748 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_8748_8748 q@@37 w@@43 r@@37 u@@37))
)))
(assert (forall ((p@@45 T@Field_13157_13158) (v_1@@44 T@FrameType) (q@@38 T@Field_4491_4499) (w@@44 T@FrameType) (r@@38 T@Field_17617_17618) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_8748 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_8748_4605 q@@38 w@@44 r@@38 u@@38)) (InsidePredicate_4527_4605 p@@45 v_1@@44 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_8748 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_8748_4605 q@@38 w@@44 r@@38 u@@38))
)))
(assert (forall ((p@@46 T@Field_13157_13158) (v_1@@45 T@FrameType) (q@@39 T@Field_4491_4499) (w@@45 T@FrameType) (r@@39 T@Field_15345_15346) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_8748 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_8748_4551 q@@39 w@@45 r@@39 u@@39)) (InsidePredicate_4527_4551 p@@46 v_1@@45 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_8748 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_8748_4551 q@@39 w@@45 r@@39 u@@39))
)))
(assert (forall ((p@@47 T@Field_13157_13158) (v_1@@46 T@FrameType) (q@@40 T@Field_4491_4499) (w@@46 T@FrameType) (r@@40 T@Field_13157_13158) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_8748 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_8748_4527 q@@40 w@@46 r@@40 u@@40)) (InsidePredicate_4527_4527 p@@47 v_1@@46 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_8748 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_8748_4527 q@@40 w@@46 r@@40 u@@40))
)))
(assert (forall ((p@@48 T@Field_13157_13158) (v_1@@47 T@FrameType) (q@@41 T@Field_16657_16658) (w@@47 T@FrameType) (r@@41 T@Field_16657_16658) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_16657 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_4576_16657 q@@41 w@@47 r@@41 u@@41)) (InsidePredicate_4527_16657 p@@48 v_1@@47 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_16657 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_4576_16657 q@@41 w@@47 r@@41 u@@41))
)))
(assert (forall ((p@@49 T@Field_13157_13158) (v_1@@48 T@FrameType) (q@@42 T@Field_16657_16658) (w@@48 T@FrameType) (r@@42 T@Field_12162_12163) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_16657 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_4576_12162 q@@42 w@@48 r@@42 u@@42)) (InsidePredicate_4527_12162 p@@49 v_1@@48 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_16657 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_4576_12162 q@@42 w@@48 r@@42 u@@42))
)))
(assert (forall ((p@@50 T@Field_13157_13158) (v_1@@49 T@FrameType) (q@@43 T@Field_16657_16658) (w@@49 T@FrameType) (r@@43 T@Field_4491_4499) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_16657 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_4576_8748 q@@43 w@@49 r@@43 u@@43)) (InsidePredicate_4527_8748 p@@50 v_1@@49 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_16657 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_4576_8748 q@@43 w@@49 r@@43 u@@43))
)))
(assert (forall ((p@@51 T@Field_13157_13158) (v_1@@50 T@FrameType) (q@@44 T@Field_16657_16658) (w@@50 T@FrameType) (r@@44 T@Field_17617_17618) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_16657 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_4576_4605 q@@44 w@@50 r@@44 u@@44)) (InsidePredicate_4527_4605 p@@51 v_1@@50 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_16657 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_4576_4605 q@@44 w@@50 r@@44 u@@44))
)))
(assert (forall ((p@@52 T@Field_13157_13158) (v_1@@51 T@FrameType) (q@@45 T@Field_16657_16658) (w@@51 T@FrameType) (r@@45 T@Field_15345_15346) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_16657 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_4576_4551 q@@45 w@@51 r@@45 u@@45)) (InsidePredicate_4527_4551 p@@52 v_1@@51 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_16657 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_4576_4551 q@@45 w@@51 r@@45 u@@45))
)))
(assert (forall ((p@@53 T@Field_13157_13158) (v_1@@52 T@FrameType) (q@@46 T@Field_16657_16658) (w@@52 T@FrameType) (r@@46 T@Field_13157_13158) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_16657 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_4576_4527 q@@46 w@@52 r@@46 u@@46)) (InsidePredicate_4527_4527 p@@53 v_1@@52 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_16657 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_4576_4527 q@@46 w@@52 r@@46 u@@46))
)))
(assert (forall ((p@@54 T@Field_13157_13158) (v_1@@53 T@FrameType) (q@@47 T@Field_17617_17618) (w@@53 T@FrameType) (r@@47 T@Field_16657_16658) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4605 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_4605_16657 q@@47 w@@53 r@@47 u@@47)) (InsidePredicate_4527_16657 p@@54 v_1@@53 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4605 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_4605_16657 q@@47 w@@53 r@@47 u@@47))
)))
(assert (forall ((p@@55 T@Field_13157_13158) (v_1@@54 T@FrameType) (q@@48 T@Field_17617_17618) (w@@54 T@FrameType) (r@@48 T@Field_12162_12163) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4605 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_4605_12162 q@@48 w@@54 r@@48 u@@48)) (InsidePredicate_4527_12162 p@@55 v_1@@54 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4605 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_4605_12162 q@@48 w@@54 r@@48 u@@48))
)))
(assert (forall ((p@@56 T@Field_13157_13158) (v_1@@55 T@FrameType) (q@@49 T@Field_17617_17618) (w@@55 T@FrameType) (r@@49 T@Field_4491_4499) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4605 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_4605_8748 q@@49 w@@55 r@@49 u@@49)) (InsidePredicate_4527_8748 p@@56 v_1@@55 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4605 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_4605_8748 q@@49 w@@55 r@@49 u@@49))
)))
(assert (forall ((p@@57 T@Field_13157_13158) (v_1@@56 T@FrameType) (q@@50 T@Field_17617_17618) (w@@56 T@FrameType) (r@@50 T@Field_17617_17618) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4605 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_4605_4605 q@@50 w@@56 r@@50 u@@50)) (InsidePredicate_4527_4605 p@@57 v_1@@56 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4605 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_4605_4605 q@@50 w@@56 r@@50 u@@50))
)))
(assert (forall ((p@@58 T@Field_13157_13158) (v_1@@57 T@FrameType) (q@@51 T@Field_17617_17618) (w@@57 T@FrameType) (r@@51 T@Field_15345_15346) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4605 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_4605_4551 q@@51 w@@57 r@@51 u@@51)) (InsidePredicate_4527_4551 p@@58 v_1@@57 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4605 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_4605_4551 q@@51 w@@57 r@@51 u@@51))
)))
(assert (forall ((p@@59 T@Field_13157_13158) (v_1@@58 T@FrameType) (q@@52 T@Field_17617_17618) (w@@58 T@FrameType) (r@@52 T@Field_13157_13158) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4605 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_4605_4527 q@@52 w@@58 r@@52 u@@52)) (InsidePredicate_4527_4527 p@@59 v_1@@58 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4605 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_4605_4527 q@@52 w@@58 r@@52 u@@52))
)))
(assert (forall ((p@@60 T@Field_13157_13158) (v_1@@59 T@FrameType) (q@@53 T@Field_15345_15346) (w@@59 T@FrameType) (r@@53 T@Field_16657_16658) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4551 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_4551_16657 q@@53 w@@59 r@@53 u@@53)) (InsidePredicate_4527_16657 p@@60 v_1@@59 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4551 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_4551_16657 q@@53 w@@59 r@@53 u@@53))
)))
(assert (forall ((p@@61 T@Field_13157_13158) (v_1@@60 T@FrameType) (q@@54 T@Field_15345_15346) (w@@60 T@FrameType) (r@@54 T@Field_12162_12163) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4551 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_4551_12162 q@@54 w@@60 r@@54 u@@54)) (InsidePredicate_4527_12162 p@@61 v_1@@60 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4551 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_4551_12162 q@@54 w@@60 r@@54 u@@54))
)))
(assert (forall ((p@@62 T@Field_13157_13158) (v_1@@61 T@FrameType) (q@@55 T@Field_15345_15346) (w@@61 T@FrameType) (r@@55 T@Field_4491_4499) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4551 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_4551_8748 q@@55 w@@61 r@@55 u@@55)) (InsidePredicate_4527_8748 p@@62 v_1@@61 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4551 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_4551_8748 q@@55 w@@61 r@@55 u@@55))
)))
(assert (forall ((p@@63 T@Field_13157_13158) (v_1@@62 T@FrameType) (q@@56 T@Field_15345_15346) (w@@62 T@FrameType) (r@@56 T@Field_17617_17618) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4551 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_4551_4605 q@@56 w@@62 r@@56 u@@56)) (InsidePredicate_4527_4605 p@@63 v_1@@62 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4551 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_4551_4605 q@@56 w@@62 r@@56 u@@56))
)))
(assert (forall ((p@@64 T@Field_13157_13158) (v_1@@63 T@FrameType) (q@@57 T@Field_15345_15346) (w@@63 T@FrameType) (r@@57 T@Field_15345_15346) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4551 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_4551_4551 q@@57 w@@63 r@@57 u@@57)) (InsidePredicate_4527_4551 p@@64 v_1@@63 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4551 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_4551_4551 q@@57 w@@63 r@@57 u@@57))
)))
(assert (forall ((p@@65 T@Field_13157_13158) (v_1@@64 T@FrameType) (q@@58 T@Field_15345_15346) (w@@64 T@FrameType) (r@@58 T@Field_13157_13158) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4551 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_4551_4527 q@@58 w@@64 r@@58 u@@58)) (InsidePredicate_4527_4527 p@@65 v_1@@64 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4551 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_4551_4527 q@@58 w@@64 r@@58 u@@58))
)))
(assert (forall ((p@@66 T@Field_13157_13158) (v_1@@65 T@FrameType) (q@@59 T@Field_12162_12163) (w@@65 T@FrameType) (r@@59 T@Field_16657_16658) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_12162 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_4498_16657 q@@59 w@@65 r@@59 u@@59)) (InsidePredicate_4527_16657 p@@66 v_1@@65 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_12162 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_4498_16657 q@@59 w@@65 r@@59 u@@59))
)))
(assert (forall ((p@@67 T@Field_13157_13158) (v_1@@66 T@FrameType) (q@@60 T@Field_12162_12163) (w@@66 T@FrameType) (r@@60 T@Field_12162_12163) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_12162 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_4498_12162 q@@60 w@@66 r@@60 u@@60)) (InsidePredicate_4527_12162 p@@67 v_1@@66 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_12162 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_4498_12162 q@@60 w@@66 r@@60 u@@60))
)))
(assert (forall ((p@@68 T@Field_13157_13158) (v_1@@67 T@FrameType) (q@@61 T@Field_12162_12163) (w@@67 T@FrameType) (r@@61 T@Field_4491_4499) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_12162 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_4498_8748 q@@61 w@@67 r@@61 u@@61)) (InsidePredicate_4527_8748 p@@68 v_1@@67 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_12162 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_4498_8748 q@@61 w@@67 r@@61 u@@61))
)))
(assert (forall ((p@@69 T@Field_13157_13158) (v_1@@68 T@FrameType) (q@@62 T@Field_12162_12163) (w@@68 T@FrameType) (r@@62 T@Field_17617_17618) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_12162 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_4498_4605 q@@62 w@@68 r@@62 u@@62)) (InsidePredicate_4527_4605 p@@69 v_1@@68 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_12162 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_4498_4605 q@@62 w@@68 r@@62 u@@62))
)))
(assert (forall ((p@@70 T@Field_13157_13158) (v_1@@69 T@FrameType) (q@@63 T@Field_12162_12163) (w@@69 T@FrameType) (r@@63 T@Field_15345_15346) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_12162 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_4498_4551 q@@63 w@@69 r@@63 u@@63)) (InsidePredicate_4527_4551 p@@70 v_1@@69 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_12162 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_4498_4551 q@@63 w@@69 r@@63 u@@63))
)))
(assert (forall ((p@@71 T@Field_13157_13158) (v_1@@70 T@FrameType) (q@@64 T@Field_12162_12163) (w@@70 T@FrameType) (r@@64 T@Field_13157_13158) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_12162 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_4498_4527 q@@64 w@@70 r@@64 u@@64)) (InsidePredicate_4527_4527 p@@71 v_1@@70 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_12162 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_4498_4527 q@@64 w@@70 r@@64 u@@64))
)))
(assert (forall ((p@@72 T@Field_13157_13158) (v_1@@71 T@FrameType) (q@@65 T@Field_13157_13158) (w@@71 T@FrameType) (r@@65 T@Field_16657_16658) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4527 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_4527_16657 q@@65 w@@71 r@@65 u@@65)) (InsidePredicate_4527_16657 p@@72 v_1@@71 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4527 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_4527_16657 q@@65 w@@71 r@@65 u@@65))
)))
(assert (forall ((p@@73 T@Field_13157_13158) (v_1@@72 T@FrameType) (q@@66 T@Field_13157_13158) (w@@72 T@FrameType) (r@@66 T@Field_12162_12163) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4527 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_4527_12162 q@@66 w@@72 r@@66 u@@66)) (InsidePredicate_4527_12162 p@@73 v_1@@72 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4527 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_4527_12162 q@@66 w@@72 r@@66 u@@66))
)))
(assert (forall ((p@@74 T@Field_13157_13158) (v_1@@73 T@FrameType) (q@@67 T@Field_13157_13158) (w@@73 T@FrameType) (r@@67 T@Field_4491_4499) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4527 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_4527_8748 q@@67 w@@73 r@@67 u@@67)) (InsidePredicate_4527_8748 p@@74 v_1@@73 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4527 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_4527_8748 q@@67 w@@73 r@@67 u@@67))
)))
(assert (forall ((p@@75 T@Field_13157_13158) (v_1@@74 T@FrameType) (q@@68 T@Field_13157_13158) (w@@74 T@FrameType) (r@@68 T@Field_17617_17618) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4527 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_4527_4605 q@@68 w@@74 r@@68 u@@68)) (InsidePredicate_4527_4605 p@@75 v_1@@74 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4527 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_4527_4605 q@@68 w@@74 r@@68 u@@68))
)))
(assert (forall ((p@@76 T@Field_13157_13158) (v_1@@75 T@FrameType) (q@@69 T@Field_13157_13158) (w@@75 T@FrameType) (r@@69 T@Field_15345_15346) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4527 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_4527_4551 q@@69 w@@75 r@@69 u@@69)) (InsidePredicate_4527_4551 p@@76 v_1@@75 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4527 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_4527_4551 q@@69 w@@75 r@@69 u@@69))
)))
(assert (forall ((p@@77 T@Field_13157_13158) (v_1@@76 T@FrameType) (q@@70 T@Field_13157_13158) (w@@76 T@FrameType) (r@@70 T@Field_13157_13158) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_4527_4527 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_4527_4527 q@@70 w@@76 r@@70 u@@70)) (InsidePredicate_4527_4527 p@@77 v_1@@76 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4527_4527 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_4527_4527 q@@70 w@@76 r@@70 u@@70))
)))
(assert (forall ((p@@78 T@Field_4491_4499) (v_1@@77 T@FrameType) (q@@71 T@Field_4491_4499) (w@@77 T@FrameType) (r@@71 T@Field_16657_16658) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_8748 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_8748_16657 q@@71 w@@77 r@@71 u@@71)) (InsidePredicate_8748_16657 p@@78 v_1@@77 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_8748 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_8748_16657 q@@71 w@@77 r@@71 u@@71))
)))
(assert (forall ((p@@79 T@Field_4491_4499) (v_1@@78 T@FrameType) (q@@72 T@Field_4491_4499) (w@@78 T@FrameType) (r@@72 T@Field_12162_12163) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_8748 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_8748_12162 q@@72 w@@78 r@@72 u@@72)) (InsidePredicate_8748_12162 p@@79 v_1@@78 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_8748 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_8748_12162 q@@72 w@@78 r@@72 u@@72))
)))
(assert (forall ((p@@80 T@Field_4491_4499) (v_1@@79 T@FrameType) (q@@73 T@Field_4491_4499) (w@@79 T@FrameType) (r@@73 T@Field_4491_4499) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_8748 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_8748_8748 q@@73 w@@79 r@@73 u@@73)) (InsidePredicate_8748_8748 p@@80 v_1@@79 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_8748 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_8748_8748 q@@73 w@@79 r@@73 u@@73))
)))
(assert (forall ((p@@81 T@Field_4491_4499) (v_1@@80 T@FrameType) (q@@74 T@Field_4491_4499) (w@@80 T@FrameType) (r@@74 T@Field_17617_17618) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_8748 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_8748_4605 q@@74 w@@80 r@@74 u@@74)) (InsidePredicate_8748_4605 p@@81 v_1@@80 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_8748 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_8748_4605 q@@74 w@@80 r@@74 u@@74))
)))
(assert (forall ((p@@82 T@Field_4491_4499) (v_1@@81 T@FrameType) (q@@75 T@Field_4491_4499) (w@@81 T@FrameType) (r@@75 T@Field_15345_15346) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_8748 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_8748_4551 q@@75 w@@81 r@@75 u@@75)) (InsidePredicate_8748_4551 p@@82 v_1@@81 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_8748 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_8748_4551 q@@75 w@@81 r@@75 u@@75))
)))
(assert (forall ((p@@83 T@Field_4491_4499) (v_1@@82 T@FrameType) (q@@76 T@Field_4491_4499) (w@@82 T@FrameType) (r@@76 T@Field_13157_13158) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_8748 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_8748_4527 q@@76 w@@82 r@@76 u@@76)) (InsidePredicate_8748_4527 p@@83 v_1@@82 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_8748 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_8748_4527 q@@76 w@@82 r@@76 u@@76))
)))
(assert (forall ((p@@84 T@Field_4491_4499) (v_1@@83 T@FrameType) (q@@77 T@Field_16657_16658) (w@@83 T@FrameType) (r@@77 T@Field_16657_16658) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_16657 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_4576_16657 q@@77 w@@83 r@@77 u@@77)) (InsidePredicate_8748_16657 p@@84 v_1@@83 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_16657 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_4576_16657 q@@77 w@@83 r@@77 u@@77))
)))
(assert (forall ((p@@85 T@Field_4491_4499) (v_1@@84 T@FrameType) (q@@78 T@Field_16657_16658) (w@@84 T@FrameType) (r@@78 T@Field_12162_12163) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_16657 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_4576_12162 q@@78 w@@84 r@@78 u@@78)) (InsidePredicate_8748_12162 p@@85 v_1@@84 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_16657 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_4576_12162 q@@78 w@@84 r@@78 u@@78))
)))
(assert (forall ((p@@86 T@Field_4491_4499) (v_1@@85 T@FrameType) (q@@79 T@Field_16657_16658) (w@@85 T@FrameType) (r@@79 T@Field_4491_4499) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_16657 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_4576_8748 q@@79 w@@85 r@@79 u@@79)) (InsidePredicate_8748_8748 p@@86 v_1@@85 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_16657 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_4576_8748 q@@79 w@@85 r@@79 u@@79))
)))
(assert (forall ((p@@87 T@Field_4491_4499) (v_1@@86 T@FrameType) (q@@80 T@Field_16657_16658) (w@@86 T@FrameType) (r@@80 T@Field_17617_17618) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_16657 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_4576_4605 q@@80 w@@86 r@@80 u@@80)) (InsidePredicate_8748_4605 p@@87 v_1@@86 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_16657 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_4576_4605 q@@80 w@@86 r@@80 u@@80))
)))
(assert (forall ((p@@88 T@Field_4491_4499) (v_1@@87 T@FrameType) (q@@81 T@Field_16657_16658) (w@@87 T@FrameType) (r@@81 T@Field_15345_15346) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_16657 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_4576_4551 q@@81 w@@87 r@@81 u@@81)) (InsidePredicate_8748_4551 p@@88 v_1@@87 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_16657 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_4576_4551 q@@81 w@@87 r@@81 u@@81))
)))
(assert (forall ((p@@89 T@Field_4491_4499) (v_1@@88 T@FrameType) (q@@82 T@Field_16657_16658) (w@@88 T@FrameType) (r@@82 T@Field_13157_13158) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_16657 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_4576_4527 q@@82 w@@88 r@@82 u@@82)) (InsidePredicate_8748_4527 p@@89 v_1@@88 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_16657 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_4576_4527 q@@82 w@@88 r@@82 u@@82))
)))
(assert (forall ((p@@90 T@Field_4491_4499) (v_1@@89 T@FrameType) (q@@83 T@Field_17617_17618) (w@@89 T@FrameType) (r@@83 T@Field_16657_16658) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4605 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_4605_16657 q@@83 w@@89 r@@83 u@@83)) (InsidePredicate_8748_16657 p@@90 v_1@@89 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4605 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_4605_16657 q@@83 w@@89 r@@83 u@@83))
)))
(assert (forall ((p@@91 T@Field_4491_4499) (v_1@@90 T@FrameType) (q@@84 T@Field_17617_17618) (w@@90 T@FrameType) (r@@84 T@Field_12162_12163) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4605 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_4605_12162 q@@84 w@@90 r@@84 u@@84)) (InsidePredicate_8748_12162 p@@91 v_1@@90 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4605 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_4605_12162 q@@84 w@@90 r@@84 u@@84))
)))
(assert (forall ((p@@92 T@Field_4491_4499) (v_1@@91 T@FrameType) (q@@85 T@Field_17617_17618) (w@@91 T@FrameType) (r@@85 T@Field_4491_4499) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4605 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_4605_8748 q@@85 w@@91 r@@85 u@@85)) (InsidePredicate_8748_8748 p@@92 v_1@@91 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4605 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_4605_8748 q@@85 w@@91 r@@85 u@@85))
)))
(assert (forall ((p@@93 T@Field_4491_4499) (v_1@@92 T@FrameType) (q@@86 T@Field_17617_17618) (w@@92 T@FrameType) (r@@86 T@Field_17617_17618) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4605 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_4605_4605 q@@86 w@@92 r@@86 u@@86)) (InsidePredicate_8748_4605 p@@93 v_1@@92 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4605 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_4605_4605 q@@86 w@@92 r@@86 u@@86))
)))
(assert (forall ((p@@94 T@Field_4491_4499) (v_1@@93 T@FrameType) (q@@87 T@Field_17617_17618) (w@@93 T@FrameType) (r@@87 T@Field_15345_15346) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4605 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_4605_4551 q@@87 w@@93 r@@87 u@@87)) (InsidePredicate_8748_4551 p@@94 v_1@@93 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4605 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_4605_4551 q@@87 w@@93 r@@87 u@@87))
)))
(assert (forall ((p@@95 T@Field_4491_4499) (v_1@@94 T@FrameType) (q@@88 T@Field_17617_17618) (w@@94 T@FrameType) (r@@88 T@Field_13157_13158) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4605 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_4605_4527 q@@88 w@@94 r@@88 u@@88)) (InsidePredicate_8748_4527 p@@95 v_1@@94 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4605 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_4605_4527 q@@88 w@@94 r@@88 u@@88))
)))
(assert (forall ((p@@96 T@Field_4491_4499) (v_1@@95 T@FrameType) (q@@89 T@Field_15345_15346) (w@@95 T@FrameType) (r@@89 T@Field_16657_16658) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4551 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_4551_16657 q@@89 w@@95 r@@89 u@@89)) (InsidePredicate_8748_16657 p@@96 v_1@@95 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4551 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_4551_16657 q@@89 w@@95 r@@89 u@@89))
)))
(assert (forall ((p@@97 T@Field_4491_4499) (v_1@@96 T@FrameType) (q@@90 T@Field_15345_15346) (w@@96 T@FrameType) (r@@90 T@Field_12162_12163) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4551 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_4551_12162 q@@90 w@@96 r@@90 u@@90)) (InsidePredicate_8748_12162 p@@97 v_1@@96 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4551 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_4551_12162 q@@90 w@@96 r@@90 u@@90))
)))
(assert (forall ((p@@98 T@Field_4491_4499) (v_1@@97 T@FrameType) (q@@91 T@Field_15345_15346) (w@@97 T@FrameType) (r@@91 T@Field_4491_4499) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4551 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_4551_8748 q@@91 w@@97 r@@91 u@@91)) (InsidePredicate_8748_8748 p@@98 v_1@@97 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4551 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_4551_8748 q@@91 w@@97 r@@91 u@@91))
)))
(assert (forall ((p@@99 T@Field_4491_4499) (v_1@@98 T@FrameType) (q@@92 T@Field_15345_15346) (w@@98 T@FrameType) (r@@92 T@Field_17617_17618) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4551 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_4551_4605 q@@92 w@@98 r@@92 u@@92)) (InsidePredicate_8748_4605 p@@99 v_1@@98 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4551 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_4551_4605 q@@92 w@@98 r@@92 u@@92))
)))
(assert (forall ((p@@100 T@Field_4491_4499) (v_1@@99 T@FrameType) (q@@93 T@Field_15345_15346) (w@@99 T@FrameType) (r@@93 T@Field_15345_15346) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4551 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_4551_4551 q@@93 w@@99 r@@93 u@@93)) (InsidePredicate_8748_4551 p@@100 v_1@@99 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4551 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_4551_4551 q@@93 w@@99 r@@93 u@@93))
)))
(assert (forall ((p@@101 T@Field_4491_4499) (v_1@@100 T@FrameType) (q@@94 T@Field_15345_15346) (w@@100 T@FrameType) (r@@94 T@Field_13157_13158) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4551 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_4551_4527 q@@94 w@@100 r@@94 u@@94)) (InsidePredicate_8748_4527 p@@101 v_1@@100 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4551 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_4551_4527 q@@94 w@@100 r@@94 u@@94))
)))
(assert (forall ((p@@102 T@Field_4491_4499) (v_1@@101 T@FrameType) (q@@95 T@Field_12162_12163) (w@@101 T@FrameType) (r@@95 T@Field_16657_16658) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_12162 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_4498_16657 q@@95 w@@101 r@@95 u@@95)) (InsidePredicate_8748_16657 p@@102 v_1@@101 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_12162 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_4498_16657 q@@95 w@@101 r@@95 u@@95))
)))
(assert (forall ((p@@103 T@Field_4491_4499) (v_1@@102 T@FrameType) (q@@96 T@Field_12162_12163) (w@@102 T@FrameType) (r@@96 T@Field_12162_12163) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_12162 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_4498_12162 q@@96 w@@102 r@@96 u@@96)) (InsidePredicate_8748_12162 p@@103 v_1@@102 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_12162 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_4498_12162 q@@96 w@@102 r@@96 u@@96))
)))
(assert (forall ((p@@104 T@Field_4491_4499) (v_1@@103 T@FrameType) (q@@97 T@Field_12162_12163) (w@@103 T@FrameType) (r@@97 T@Field_4491_4499) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_12162 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_4498_8748 q@@97 w@@103 r@@97 u@@97)) (InsidePredicate_8748_8748 p@@104 v_1@@103 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_12162 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_4498_8748 q@@97 w@@103 r@@97 u@@97))
)))
(assert (forall ((p@@105 T@Field_4491_4499) (v_1@@104 T@FrameType) (q@@98 T@Field_12162_12163) (w@@104 T@FrameType) (r@@98 T@Field_17617_17618) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_12162 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_4498_4605 q@@98 w@@104 r@@98 u@@98)) (InsidePredicate_8748_4605 p@@105 v_1@@104 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_12162 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_4498_4605 q@@98 w@@104 r@@98 u@@98))
)))
(assert (forall ((p@@106 T@Field_4491_4499) (v_1@@105 T@FrameType) (q@@99 T@Field_12162_12163) (w@@105 T@FrameType) (r@@99 T@Field_15345_15346) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_12162 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_4498_4551 q@@99 w@@105 r@@99 u@@99)) (InsidePredicate_8748_4551 p@@106 v_1@@105 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_12162 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_4498_4551 q@@99 w@@105 r@@99 u@@99))
)))
(assert (forall ((p@@107 T@Field_4491_4499) (v_1@@106 T@FrameType) (q@@100 T@Field_12162_12163) (w@@106 T@FrameType) (r@@100 T@Field_13157_13158) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_12162 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_4498_4527 q@@100 w@@106 r@@100 u@@100)) (InsidePredicate_8748_4527 p@@107 v_1@@106 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_12162 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_4498_4527 q@@100 w@@106 r@@100 u@@100))
)))
(assert (forall ((p@@108 T@Field_4491_4499) (v_1@@107 T@FrameType) (q@@101 T@Field_13157_13158) (w@@107 T@FrameType) (r@@101 T@Field_16657_16658) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4527 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_4527_16657 q@@101 w@@107 r@@101 u@@101)) (InsidePredicate_8748_16657 p@@108 v_1@@107 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4527 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_4527_16657 q@@101 w@@107 r@@101 u@@101))
)))
(assert (forall ((p@@109 T@Field_4491_4499) (v_1@@108 T@FrameType) (q@@102 T@Field_13157_13158) (w@@108 T@FrameType) (r@@102 T@Field_12162_12163) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4527 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_4527_12162 q@@102 w@@108 r@@102 u@@102)) (InsidePredicate_8748_12162 p@@109 v_1@@108 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4527 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_4527_12162 q@@102 w@@108 r@@102 u@@102))
)))
(assert (forall ((p@@110 T@Field_4491_4499) (v_1@@109 T@FrameType) (q@@103 T@Field_13157_13158) (w@@109 T@FrameType) (r@@103 T@Field_4491_4499) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4527 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_4527_8748 q@@103 w@@109 r@@103 u@@103)) (InsidePredicate_8748_8748 p@@110 v_1@@109 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4527 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_4527_8748 q@@103 w@@109 r@@103 u@@103))
)))
(assert (forall ((p@@111 T@Field_4491_4499) (v_1@@110 T@FrameType) (q@@104 T@Field_13157_13158) (w@@110 T@FrameType) (r@@104 T@Field_17617_17618) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4527 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_4527_4605 q@@104 w@@110 r@@104 u@@104)) (InsidePredicate_8748_4605 p@@111 v_1@@110 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4527 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_4527_4605 q@@104 w@@110 r@@104 u@@104))
)))
(assert (forall ((p@@112 T@Field_4491_4499) (v_1@@111 T@FrameType) (q@@105 T@Field_13157_13158) (w@@111 T@FrameType) (r@@105 T@Field_15345_15346) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4527 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_4527_4551 q@@105 w@@111 r@@105 u@@105)) (InsidePredicate_8748_4551 p@@112 v_1@@111 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4527 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_4527_4551 q@@105 w@@111 r@@105 u@@105))
)))
(assert (forall ((p@@113 T@Field_4491_4499) (v_1@@112 T@FrameType) (q@@106 T@Field_13157_13158) (w@@112 T@FrameType) (r@@106 T@Field_13157_13158) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_8748_4527 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_4527_4527 q@@106 w@@112 r@@106 u@@106)) (InsidePredicate_8748_4527 p@@113 v_1@@112 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8748_4527 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_4527_4527 q@@106 w@@112 r@@106 u@@106))
)))
(assert (forall ((p@@114 T@Field_16657_16658) (v_1@@113 T@FrameType) (q@@107 T@Field_4491_4499) (w@@113 T@FrameType) (r@@107 T@Field_16657_16658) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_8748 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_8748_16657 q@@107 w@@113 r@@107 u@@107)) (InsidePredicate_4576_16657 p@@114 v_1@@113 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_8748 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_8748_16657 q@@107 w@@113 r@@107 u@@107))
)))
(assert (forall ((p@@115 T@Field_16657_16658) (v_1@@114 T@FrameType) (q@@108 T@Field_4491_4499) (w@@114 T@FrameType) (r@@108 T@Field_12162_12163) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_8748 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_8748_12162 q@@108 w@@114 r@@108 u@@108)) (InsidePredicate_4576_12162 p@@115 v_1@@114 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_8748 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_8748_12162 q@@108 w@@114 r@@108 u@@108))
)))
(assert (forall ((p@@116 T@Field_16657_16658) (v_1@@115 T@FrameType) (q@@109 T@Field_4491_4499) (w@@115 T@FrameType) (r@@109 T@Field_4491_4499) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_8748 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_8748_8748 q@@109 w@@115 r@@109 u@@109)) (InsidePredicate_4576_8748 p@@116 v_1@@115 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_8748 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_8748_8748 q@@109 w@@115 r@@109 u@@109))
)))
(assert (forall ((p@@117 T@Field_16657_16658) (v_1@@116 T@FrameType) (q@@110 T@Field_4491_4499) (w@@116 T@FrameType) (r@@110 T@Field_17617_17618) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_8748 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_8748_4605 q@@110 w@@116 r@@110 u@@110)) (InsidePredicate_4576_4605 p@@117 v_1@@116 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_8748 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_8748_4605 q@@110 w@@116 r@@110 u@@110))
)))
(assert (forall ((p@@118 T@Field_16657_16658) (v_1@@117 T@FrameType) (q@@111 T@Field_4491_4499) (w@@117 T@FrameType) (r@@111 T@Field_15345_15346) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_8748 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_8748_4551 q@@111 w@@117 r@@111 u@@111)) (InsidePredicate_4576_4551 p@@118 v_1@@117 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_8748 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_8748_4551 q@@111 w@@117 r@@111 u@@111))
)))
(assert (forall ((p@@119 T@Field_16657_16658) (v_1@@118 T@FrameType) (q@@112 T@Field_4491_4499) (w@@118 T@FrameType) (r@@112 T@Field_13157_13158) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_8748 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_8748_4527 q@@112 w@@118 r@@112 u@@112)) (InsidePredicate_4576_4527 p@@119 v_1@@118 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_8748 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_8748_4527 q@@112 w@@118 r@@112 u@@112))
)))
(assert (forall ((p@@120 T@Field_16657_16658) (v_1@@119 T@FrameType) (q@@113 T@Field_16657_16658) (w@@119 T@FrameType) (r@@113 T@Field_16657_16658) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_16657 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_4576_16657 q@@113 w@@119 r@@113 u@@113)) (InsidePredicate_4576_16657 p@@120 v_1@@119 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_16657 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_4576_16657 q@@113 w@@119 r@@113 u@@113))
)))
(assert (forall ((p@@121 T@Field_16657_16658) (v_1@@120 T@FrameType) (q@@114 T@Field_16657_16658) (w@@120 T@FrameType) (r@@114 T@Field_12162_12163) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_16657 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_4576_12162 q@@114 w@@120 r@@114 u@@114)) (InsidePredicate_4576_12162 p@@121 v_1@@120 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_16657 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_4576_12162 q@@114 w@@120 r@@114 u@@114))
)))
(assert (forall ((p@@122 T@Field_16657_16658) (v_1@@121 T@FrameType) (q@@115 T@Field_16657_16658) (w@@121 T@FrameType) (r@@115 T@Field_4491_4499) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_16657 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_4576_8748 q@@115 w@@121 r@@115 u@@115)) (InsidePredicate_4576_8748 p@@122 v_1@@121 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_16657 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_4576_8748 q@@115 w@@121 r@@115 u@@115))
)))
(assert (forall ((p@@123 T@Field_16657_16658) (v_1@@122 T@FrameType) (q@@116 T@Field_16657_16658) (w@@122 T@FrameType) (r@@116 T@Field_17617_17618) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_16657 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_4576_4605 q@@116 w@@122 r@@116 u@@116)) (InsidePredicate_4576_4605 p@@123 v_1@@122 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_16657 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_4576_4605 q@@116 w@@122 r@@116 u@@116))
)))
(assert (forall ((p@@124 T@Field_16657_16658) (v_1@@123 T@FrameType) (q@@117 T@Field_16657_16658) (w@@123 T@FrameType) (r@@117 T@Field_15345_15346) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_16657 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_4576_4551 q@@117 w@@123 r@@117 u@@117)) (InsidePredicate_4576_4551 p@@124 v_1@@123 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_16657 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_4576_4551 q@@117 w@@123 r@@117 u@@117))
)))
(assert (forall ((p@@125 T@Field_16657_16658) (v_1@@124 T@FrameType) (q@@118 T@Field_16657_16658) (w@@124 T@FrameType) (r@@118 T@Field_13157_13158) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_16657 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_4576_4527 q@@118 w@@124 r@@118 u@@118)) (InsidePredicate_4576_4527 p@@125 v_1@@124 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_16657 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_4576_4527 q@@118 w@@124 r@@118 u@@118))
)))
(assert (forall ((p@@126 T@Field_16657_16658) (v_1@@125 T@FrameType) (q@@119 T@Field_17617_17618) (w@@125 T@FrameType) (r@@119 T@Field_16657_16658) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4605 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_4605_16657 q@@119 w@@125 r@@119 u@@119)) (InsidePredicate_4576_16657 p@@126 v_1@@125 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4605 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_4605_16657 q@@119 w@@125 r@@119 u@@119))
)))
(assert (forall ((p@@127 T@Field_16657_16658) (v_1@@126 T@FrameType) (q@@120 T@Field_17617_17618) (w@@126 T@FrameType) (r@@120 T@Field_12162_12163) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4605 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_4605_12162 q@@120 w@@126 r@@120 u@@120)) (InsidePredicate_4576_12162 p@@127 v_1@@126 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4605 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_4605_12162 q@@120 w@@126 r@@120 u@@120))
)))
(assert (forall ((p@@128 T@Field_16657_16658) (v_1@@127 T@FrameType) (q@@121 T@Field_17617_17618) (w@@127 T@FrameType) (r@@121 T@Field_4491_4499) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4605 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_4605_8748 q@@121 w@@127 r@@121 u@@121)) (InsidePredicate_4576_8748 p@@128 v_1@@127 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4605 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_4605_8748 q@@121 w@@127 r@@121 u@@121))
)))
(assert (forall ((p@@129 T@Field_16657_16658) (v_1@@128 T@FrameType) (q@@122 T@Field_17617_17618) (w@@128 T@FrameType) (r@@122 T@Field_17617_17618) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4605 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_4605_4605 q@@122 w@@128 r@@122 u@@122)) (InsidePredicate_4576_4605 p@@129 v_1@@128 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4605 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_4605_4605 q@@122 w@@128 r@@122 u@@122))
)))
(assert (forall ((p@@130 T@Field_16657_16658) (v_1@@129 T@FrameType) (q@@123 T@Field_17617_17618) (w@@129 T@FrameType) (r@@123 T@Field_15345_15346) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4605 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_4605_4551 q@@123 w@@129 r@@123 u@@123)) (InsidePredicate_4576_4551 p@@130 v_1@@129 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4605 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_4605_4551 q@@123 w@@129 r@@123 u@@123))
)))
(assert (forall ((p@@131 T@Field_16657_16658) (v_1@@130 T@FrameType) (q@@124 T@Field_17617_17618) (w@@130 T@FrameType) (r@@124 T@Field_13157_13158) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4605 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_4605_4527 q@@124 w@@130 r@@124 u@@124)) (InsidePredicate_4576_4527 p@@131 v_1@@130 r@@124 u@@124))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4605 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_4605_4527 q@@124 w@@130 r@@124 u@@124))
)))
(assert (forall ((p@@132 T@Field_16657_16658) (v_1@@131 T@FrameType) (q@@125 T@Field_15345_15346) (w@@131 T@FrameType) (r@@125 T@Field_16657_16658) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4551 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_4551_16657 q@@125 w@@131 r@@125 u@@125)) (InsidePredicate_4576_16657 p@@132 v_1@@131 r@@125 u@@125))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4551 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_4551_16657 q@@125 w@@131 r@@125 u@@125))
)))
(assert (forall ((p@@133 T@Field_16657_16658) (v_1@@132 T@FrameType) (q@@126 T@Field_15345_15346) (w@@132 T@FrameType) (r@@126 T@Field_12162_12163) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4551 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_4551_12162 q@@126 w@@132 r@@126 u@@126)) (InsidePredicate_4576_12162 p@@133 v_1@@132 r@@126 u@@126))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4551 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_4551_12162 q@@126 w@@132 r@@126 u@@126))
)))
(assert (forall ((p@@134 T@Field_16657_16658) (v_1@@133 T@FrameType) (q@@127 T@Field_15345_15346) (w@@133 T@FrameType) (r@@127 T@Field_4491_4499) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4551 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_4551_8748 q@@127 w@@133 r@@127 u@@127)) (InsidePredicate_4576_8748 p@@134 v_1@@133 r@@127 u@@127))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4551 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_4551_8748 q@@127 w@@133 r@@127 u@@127))
)))
(assert (forall ((p@@135 T@Field_16657_16658) (v_1@@134 T@FrameType) (q@@128 T@Field_15345_15346) (w@@134 T@FrameType) (r@@128 T@Field_17617_17618) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4551 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_4551_4605 q@@128 w@@134 r@@128 u@@128)) (InsidePredicate_4576_4605 p@@135 v_1@@134 r@@128 u@@128))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4551 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_4551_4605 q@@128 w@@134 r@@128 u@@128))
)))
(assert (forall ((p@@136 T@Field_16657_16658) (v_1@@135 T@FrameType) (q@@129 T@Field_15345_15346) (w@@135 T@FrameType) (r@@129 T@Field_15345_15346) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4551 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_4551_4551 q@@129 w@@135 r@@129 u@@129)) (InsidePredicate_4576_4551 p@@136 v_1@@135 r@@129 u@@129))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4551 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_4551_4551 q@@129 w@@135 r@@129 u@@129))
)))
(assert (forall ((p@@137 T@Field_16657_16658) (v_1@@136 T@FrameType) (q@@130 T@Field_15345_15346) (w@@136 T@FrameType) (r@@130 T@Field_13157_13158) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4551 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_4551_4527 q@@130 w@@136 r@@130 u@@130)) (InsidePredicate_4576_4527 p@@137 v_1@@136 r@@130 u@@130))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4551 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_4551_4527 q@@130 w@@136 r@@130 u@@130))
)))
(assert (forall ((p@@138 T@Field_16657_16658) (v_1@@137 T@FrameType) (q@@131 T@Field_12162_12163) (w@@137 T@FrameType) (r@@131 T@Field_16657_16658) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_12162 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_4498_16657 q@@131 w@@137 r@@131 u@@131)) (InsidePredicate_4576_16657 p@@138 v_1@@137 r@@131 u@@131))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_12162 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_4498_16657 q@@131 w@@137 r@@131 u@@131))
)))
(assert (forall ((p@@139 T@Field_16657_16658) (v_1@@138 T@FrameType) (q@@132 T@Field_12162_12163) (w@@138 T@FrameType) (r@@132 T@Field_12162_12163) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_12162 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_4498_12162 q@@132 w@@138 r@@132 u@@132)) (InsidePredicate_4576_12162 p@@139 v_1@@138 r@@132 u@@132))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_12162 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_4498_12162 q@@132 w@@138 r@@132 u@@132))
)))
(assert (forall ((p@@140 T@Field_16657_16658) (v_1@@139 T@FrameType) (q@@133 T@Field_12162_12163) (w@@139 T@FrameType) (r@@133 T@Field_4491_4499) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_12162 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_4498_8748 q@@133 w@@139 r@@133 u@@133)) (InsidePredicate_4576_8748 p@@140 v_1@@139 r@@133 u@@133))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_12162 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_4498_8748 q@@133 w@@139 r@@133 u@@133))
)))
(assert (forall ((p@@141 T@Field_16657_16658) (v_1@@140 T@FrameType) (q@@134 T@Field_12162_12163) (w@@140 T@FrameType) (r@@134 T@Field_17617_17618) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_12162 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_4498_4605 q@@134 w@@140 r@@134 u@@134)) (InsidePredicate_4576_4605 p@@141 v_1@@140 r@@134 u@@134))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_12162 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_4498_4605 q@@134 w@@140 r@@134 u@@134))
)))
(assert (forall ((p@@142 T@Field_16657_16658) (v_1@@141 T@FrameType) (q@@135 T@Field_12162_12163) (w@@141 T@FrameType) (r@@135 T@Field_15345_15346) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_12162 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_4498_4551 q@@135 w@@141 r@@135 u@@135)) (InsidePredicate_4576_4551 p@@142 v_1@@141 r@@135 u@@135))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_12162 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_4498_4551 q@@135 w@@141 r@@135 u@@135))
)))
(assert (forall ((p@@143 T@Field_16657_16658) (v_1@@142 T@FrameType) (q@@136 T@Field_12162_12163) (w@@142 T@FrameType) (r@@136 T@Field_13157_13158) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_12162 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_4498_4527 q@@136 w@@142 r@@136 u@@136)) (InsidePredicate_4576_4527 p@@143 v_1@@142 r@@136 u@@136))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_12162 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_4498_4527 q@@136 w@@142 r@@136 u@@136))
)))
(assert (forall ((p@@144 T@Field_16657_16658) (v_1@@143 T@FrameType) (q@@137 T@Field_13157_13158) (w@@143 T@FrameType) (r@@137 T@Field_16657_16658) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4527 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_4527_16657 q@@137 w@@143 r@@137 u@@137)) (InsidePredicate_4576_16657 p@@144 v_1@@143 r@@137 u@@137))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4527 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_4527_16657 q@@137 w@@143 r@@137 u@@137))
)))
(assert (forall ((p@@145 T@Field_16657_16658) (v_1@@144 T@FrameType) (q@@138 T@Field_13157_13158) (w@@144 T@FrameType) (r@@138 T@Field_12162_12163) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4527 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_4527_12162 q@@138 w@@144 r@@138 u@@138)) (InsidePredicate_4576_12162 p@@145 v_1@@144 r@@138 u@@138))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4527 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_4527_12162 q@@138 w@@144 r@@138 u@@138))
)))
(assert (forall ((p@@146 T@Field_16657_16658) (v_1@@145 T@FrameType) (q@@139 T@Field_13157_13158) (w@@145 T@FrameType) (r@@139 T@Field_4491_4499) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4527 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_4527_8748 q@@139 w@@145 r@@139 u@@139)) (InsidePredicate_4576_8748 p@@146 v_1@@145 r@@139 u@@139))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4527 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_4527_8748 q@@139 w@@145 r@@139 u@@139))
)))
(assert (forall ((p@@147 T@Field_16657_16658) (v_1@@146 T@FrameType) (q@@140 T@Field_13157_13158) (w@@146 T@FrameType) (r@@140 T@Field_17617_17618) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4527 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_4527_4605 q@@140 w@@146 r@@140 u@@140)) (InsidePredicate_4576_4605 p@@147 v_1@@146 r@@140 u@@140))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4527 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_4527_4605 q@@140 w@@146 r@@140 u@@140))
)))
(assert (forall ((p@@148 T@Field_16657_16658) (v_1@@147 T@FrameType) (q@@141 T@Field_13157_13158) (w@@147 T@FrameType) (r@@141 T@Field_15345_15346) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4527 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_4527_4551 q@@141 w@@147 r@@141 u@@141)) (InsidePredicate_4576_4551 p@@148 v_1@@147 r@@141 u@@141))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4527 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_4527_4551 q@@141 w@@147 r@@141 u@@141))
)))
(assert (forall ((p@@149 T@Field_16657_16658) (v_1@@148 T@FrameType) (q@@142 T@Field_13157_13158) (w@@148 T@FrameType) (r@@142 T@Field_13157_13158) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_4576_4527 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_4527_4527 q@@142 w@@148 r@@142 u@@142)) (InsidePredicate_4576_4527 p@@149 v_1@@148 r@@142 u@@142))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4576_4527 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_4527_4527 q@@142 w@@148 r@@142 u@@142))
)))
(assert (forall ((p@@150 T@Field_15345_15346) (v_1@@149 T@FrameType) (q@@143 T@Field_4491_4499) (w@@149 T@FrameType) (r@@143 T@Field_16657_16658) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_8748 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_8748_16657 q@@143 w@@149 r@@143 u@@143)) (InsidePredicate_4551_16657 p@@150 v_1@@149 r@@143 u@@143))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_8748 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_8748_16657 q@@143 w@@149 r@@143 u@@143))
)))
(assert (forall ((p@@151 T@Field_15345_15346) (v_1@@150 T@FrameType) (q@@144 T@Field_4491_4499) (w@@150 T@FrameType) (r@@144 T@Field_12162_12163) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_8748 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_8748_12162 q@@144 w@@150 r@@144 u@@144)) (InsidePredicate_4551_12162 p@@151 v_1@@150 r@@144 u@@144))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_8748 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_8748_12162 q@@144 w@@150 r@@144 u@@144))
)))
(assert (forall ((p@@152 T@Field_15345_15346) (v_1@@151 T@FrameType) (q@@145 T@Field_4491_4499) (w@@151 T@FrameType) (r@@145 T@Field_4491_4499) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_8748 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_8748_8748 q@@145 w@@151 r@@145 u@@145)) (InsidePredicate_4551_8748 p@@152 v_1@@151 r@@145 u@@145))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_8748 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_8748_8748 q@@145 w@@151 r@@145 u@@145))
)))
(assert (forall ((p@@153 T@Field_15345_15346) (v_1@@152 T@FrameType) (q@@146 T@Field_4491_4499) (w@@152 T@FrameType) (r@@146 T@Field_17617_17618) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_8748 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_8748_4605 q@@146 w@@152 r@@146 u@@146)) (InsidePredicate_4551_4605 p@@153 v_1@@152 r@@146 u@@146))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_8748 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_8748_4605 q@@146 w@@152 r@@146 u@@146))
)))
(assert (forall ((p@@154 T@Field_15345_15346) (v_1@@153 T@FrameType) (q@@147 T@Field_4491_4499) (w@@153 T@FrameType) (r@@147 T@Field_15345_15346) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_8748 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_8748_4551 q@@147 w@@153 r@@147 u@@147)) (InsidePredicate_4551_4551 p@@154 v_1@@153 r@@147 u@@147))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_8748 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_8748_4551 q@@147 w@@153 r@@147 u@@147))
)))
(assert (forall ((p@@155 T@Field_15345_15346) (v_1@@154 T@FrameType) (q@@148 T@Field_4491_4499) (w@@154 T@FrameType) (r@@148 T@Field_13157_13158) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_8748 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_8748_4527 q@@148 w@@154 r@@148 u@@148)) (InsidePredicate_4551_4527 p@@155 v_1@@154 r@@148 u@@148))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_8748 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_8748_4527 q@@148 w@@154 r@@148 u@@148))
)))
(assert (forall ((p@@156 T@Field_15345_15346) (v_1@@155 T@FrameType) (q@@149 T@Field_16657_16658) (w@@155 T@FrameType) (r@@149 T@Field_16657_16658) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_16657 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_4576_16657 q@@149 w@@155 r@@149 u@@149)) (InsidePredicate_4551_16657 p@@156 v_1@@155 r@@149 u@@149))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_16657 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_4576_16657 q@@149 w@@155 r@@149 u@@149))
)))
(assert (forall ((p@@157 T@Field_15345_15346) (v_1@@156 T@FrameType) (q@@150 T@Field_16657_16658) (w@@156 T@FrameType) (r@@150 T@Field_12162_12163) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_16657 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_4576_12162 q@@150 w@@156 r@@150 u@@150)) (InsidePredicate_4551_12162 p@@157 v_1@@156 r@@150 u@@150))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_16657 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_4576_12162 q@@150 w@@156 r@@150 u@@150))
)))
(assert (forall ((p@@158 T@Field_15345_15346) (v_1@@157 T@FrameType) (q@@151 T@Field_16657_16658) (w@@157 T@FrameType) (r@@151 T@Field_4491_4499) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_16657 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_4576_8748 q@@151 w@@157 r@@151 u@@151)) (InsidePredicate_4551_8748 p@@158 v_1@@157 r@@151 u@@151))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_16657 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_4576_8748 q@@151 w@@157 r@@151 u@@151))
)))
(assert (forall ((p@@159 T@Field_15345_15346) (v_1@@158 T@FrameType) (q@@152 T@Field_16657_16658) (w@@158 T@FrameType) (r@@152 T@Field_17617_17618) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_16657 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_4576_4605 q@@152 w@@158 r@@152 u@@152)) (InsidePredicate_4551_4605 p@@159 v_1@@158 r@@152 u@@152))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_16657 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_4576_4605 q@@152 w@@158 r@@152 u@@152))
)))
(assert (forall ((p@@160 T@Field_15345_15346) (v_1@@159 T@FrameType) (q@@153 T@Field_16657_16658) (w@@159 T@FrameType) (r@@153 T@Field_15345_15346) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_16657 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_4576_4551 q@@153 w@@159 r@@153 u@@153)) (InsidePredicate_4551_4551 p@@160 v_1@@159 r@@153 u@@153))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_16657 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_4576_4551 q@@153 w@@159 r@@153 u@@153))
)))
(assert (forall ((p@@161 T@Field_15345_15346) (v_1@@160 T@FrameType) (q@@154 T@Field_16657_16658) (w@@160 T@FrameType) (r@@154 T@Field_13157_13158) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_16657 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_4576_4527 q@@154 w@@160 r@@154 u@@154)) (InsidePredicate_4551_4527 p@@161 v_1@@160 r@@154 u@@154))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_16657 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_4576_4527 q@@154 w@@160 r@@154 u@@154))
)))
(assert (forall ((p@@162 T@Field_15345_15346) (v_1@@161 T@FrameType) (q@@155 T@Field_17617_17618) (w@@161 T@FrameType) (r@@155 T@Field_16657_16658) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4605 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_4605_16657 q@@155 w@@161 r@@155 u@@155)) (InsidePredicate_4551_16657 p@@162 v_1@@161 r@@155 u@@155))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4605 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_4605_16657 q@@155 w@@161 r@@155 u@@155))
)))
(assert (forall ((p@@163 T@Field_15345_15346) (v_1@@162 T@FrameType) (q@@156 T@Field_17617_17618) (w@@162 T@FrameType) (r@@156 T@Field_12162_12163) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4605 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_4605_12162 q@@156 w@@162 r@@156 u@@156)) (InsidePredicate_4551_12162 p@@163 v_1@@162 r@@156 u@@156))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4605 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_4605_12162 q@@156 w@@162 r@@156 u@@156))
)))
(assert (forall ((p@@164 T@Field_15345_15346) (v_1@@163 T@FrameType) (q@@157 T@Field_17617_17618) (w@@163 T@FrameType) (r@@157 T@Field_4491_4499) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4605 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_4605_8748 q@@157 w@@163 r@@157 u@@157)) (InsidePredicate_4551_8748 p@@164 v_1@@163 r@@157 u@@157))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4605 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_4605_8748 q@@157 w@@163 r@@157 u@@157))
)))
(assert (forall ((p@@165 T@Field_15345_15346) (v_1@@164 T@FrameType) (q@@158 T@Field_17617_17618) (w@@164 T@FrameType) (r@@158 T@Field_17617_17618) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4605 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_4605_4605 q@@158 w@@164 r@@158 u@@158)) (InsidePredicate_4551_4605 p@@165 v_1@@164 r@@158 u@@158))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4605 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_4605_4605 q@@158 w@@164 r@@158 u@@158))
)))
(assert (forall ((p@@166 T@Field_15345_15346) (v_1@@165 T@FrameType) (q@@159 T@Field_17617_17618) (w@@165 T@FrameType) (r@@159 T@Field_15345_15346) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4605 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_4605_4551 q@@159 w@@165 r@@159 u@@159)) (InsidePredicate_4551_4551 p@@166 v_1@@165 r@@159 u@@159))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4605 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_4605_4551 q@@159 w@@165 r@@159 u@@159))
)))
(assert (forall ((p@@167 T@Field_15345_15346) (v_1@@166 T@FrameType) (q@@160 T@Field_17617_17618) (w@@166 T@FrameType) (r@@160 T@Field_13157_13158) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4605 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_4605_4527 q@@160 w@@166 r@@160 u@@160)) (InsidePredicate_4551_4527 p@@167 v_1@@166 r@@160 u@@160))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4605 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_4605_4527 q@@160 w@@166 r@@160 u@@160))
)))
(assert (forall ((p@@168 T@Field_15345_15346) (v_1@@167 T@FrameType) (q@@161 T@Field_15345_15346) (w@@167 T@FrameType) (r@@161 T@Field_16657_16658) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4551 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_4551_16657 q@@161 w@@167 r@@161 u@@161)) (InsidePredicate_4551_16657 p@@168 v_1@@167 r@@161 u@@161))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4551 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_4551_16657 q@@161 w@@167 r@@161 u@@161))
)))
(assert (forall ((p@@169 T@Field_15345_15346) (v_1@@168 T@FrameType) (q@@162 T@Field_15345_15346) (w@@168 T@FrameType) (r@@162 T@Field_12162_12163) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4551 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_4551_12162 q@@162 w@@168 r@@162 u@@162)) (InsidePredicate_4551_12162 p@@169 v_1@@168 r@@162 u@@162))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4551 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_4551_12162 q@@162 w@@168 r@@162 u@@162))
)))
(assert (forall ((p@@170 T@Field_15345_15346) (v_1@@169 T@FrameType) (q@@163 T@Field_15345_15346) (w@@169 T@FrameType) (r@@163 T@Field_4491_4499) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4551 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_4551_8748 q@@163 w@@169 r@@163 u@@163)) (InsidePredicate_4551_8748 p@@170 v_1@@169 r@@163 u@@163))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4551 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_4551_8748 q@@163 w@@169 r@@163 u@@163))
)))
(assert (forall ((p@@171 T@Field_15345_15346) (v_1@@170 T@FrameType) (q@@164 T@Field_15345_15346) (w@@170 T@FrameType) (r@@164 T@Field_17617_17618) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4551 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_4551_4605 q@@164 w@@170 r@@164 u@@164)) (InsidePredicate_4551_4605 p@@171 v_1@@170 r@@164 u@@164))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4551 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_4551_4605 q@@164 w@@170 r@@164 u@@164))
)))
(assert (forall ((p@@172 T@Field_15345_15346) (v_1@@171 T@FrameType) (q@@165 T@Field_15345_15346) (w@@171 T@FrameType) (r@@165 T@Field_15345_15346) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4551 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_4551_4551 q@@165 w@@171 r@@165 u@@165)) (InsidePredicate_4551_4551 p@@172 v_1@@171 r@@165 u@@165))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4551 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_4551_4551 q@@165 w@@171 r@@165 u@@165))
)))
(assert (forall ((p@@173 T@Field_15345_15346) (v_1@@172 T@FrameType) (q@@166 T@Field_15345_15346) (w@@172 T@FrameType) (r@@166 T@Field_13157_13158) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4551 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_4551_4527 q@@166 w@@172 r@@166 u@@166)) (InsidePredicate_4551_4527 p@@173 v_1@@172 r@@166 u@@166))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4551 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_4551_4527 q@@166 w@@172 r@@166 u@@166))
)))
(assert (forall ((p@@174 T@Field_15345_15346) (v_1@@173 T@FrameType) (q@@167 T@Field_12162_12163) (w@@173 T@FrameType) (r@@167 T@Field_16657_16658) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_12162 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_4498_16657 q@@167 w@@173 r@@167 u@@167)) (InsidePredicate_4551_16657 p@@174 v_1@@173 r@@167 u@@167))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_12162 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_4498_16657 q@@167 w@@173 r@@167 u@@167))
)))
(assert (forall ((p@@175 T@Field_15345_15346) (v_1@@174 T@FrameType) (q@@168 T@Field_12162_12163) (w@@174 T@FrameType) (r@@168 T@Field_12162_12163) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_12162 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_4498_12162 q@@168 w@@174 r@@168 u@@168)) (InsidePredicate_4551_12162 p@@175 v_1@@174 r@@168 u@@168))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_12162 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_4498_12162 q@@168 w@@174 r@@168 u@@168))
)))
(assert (forall ((p@@176 T@Field_15345_15346) (v_1@@175 T@FrameType) (q@@169 T@Field_12162_12163) (w@@175 T@FrameType) (r@@169 T@Field_4491_4499) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_12162 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_4498_8748 q@@169 w@@175 r@@169 u@@169)) (InsidePredicate_4551_8748 p@@176 v_1@@175 r@@169 u@@169))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_12162 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_4498_8748 q@@169 w@@175 r@@169 u@@169))
)))
(assert (forall ((p@@177 T@Field_15345_15346) (v_1@@176 T@FrameType) (q@@170 T@Field_12162_12163) (w@@176 T@FrameType) (r@@170 T@Field_17617_17618) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_12162 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_4498_4605 q@@170 w@@176 r@@170 u@@170)) (InsidePredicate_4551_4605 p@@177 v_1@@176 r@@170 u@@170))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_12162 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_4498_4605 q@@170 w@@176 r@@170 u@@170))
)))
(assert (forall ((p@@178 T@Field_15345_15346) (v_1@@177 T@FrameType) (q@@171 T@Field_12162_12163) (w@@177 T@FrameType) (r@@171 T@Field_15345_15346) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_12162 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_4498_4551 q@@171 w@@177 r@@171 u@@171)) (InsidePredicate_4551_4551 p@@178 v_1@@177 r@@171 u@@171))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_12162 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_4498_4551 q@@171 w@@177 r@@171 u@@171))
)))
(assert (forall ((p@@179 T@Field_15345_15346) (v_1@@178 T@FrameType) (q@@172 T@Field_12162_12163) (w@@178 T@FrameType) (r@@172 T@Field_13157_13158) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_12162 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_4498_4527 q@@172 w@@178 r@@172 u@@172)) (InsidePredicate_4551_4527 p@@179 v_1@@178 r@@172 u@@172))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_12162 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_4498_4527 q@@172 w@@178 r@@172 u@@172))
)))
(assert (forall ((p@@180 T@Field_15345_15346) (v_1@@179 T@FrameType) (q@@173 T@Field_13157_13158) (w@@179 T@FrameType) (r@@173 T@Field_16657_16658) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4527 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_4527_16657 q@@173 w@@179 r@@173 u@@173)) (InsidePredicate_4551_16657 p@@180 v_1@@179 r@@173 u@@173))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4527 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_4527_16657 q@@173 w@@179 r@@173 u@@173))
)))
(assert (forall ((p@@181 T@Field_15345_15346) (v_1@@180 T@FrameType) (q@@174 T@Field_13157_13158) (w@@180 T@FrameType) (r@@174 T@Field_12162_12163) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4527 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_4527_12162 q@@174 w@@180 r@@174 u@@174)) (InsidePredicate_4551_12162 p@@181 v_1@@180 r@@174 u@@174))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4527 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_4527_12162 q@@174 w@@180 r@@174 u@@174))
)))
(assert (forall ((p@@182 T@Field_15345_15346) (v_1@@181 T@FrameType) (q@@175 T@Field_13157_13158) (w@@181 T@FrameType) (r@@175 T@Field_4491_4499) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4527 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_4527_8748 q@@175 w@@181 r@@175 u@@175)) (InsidePredicate_4551_8748 p@@182 v_1@@181 r@@175 u@@175))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4527 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_4527_8748 q@@175 w@@181 r@@175 u@@175))
)))
(assert (forall ((p@@183 T@Field_15345_15346) (v_1@@182 T@FrameType) (q@@176 T@Field_13157_13158) (w@@182 T@FrameType) (r@@176 T@Field_17617_17618) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4527 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_4527_4605 q@@176 w@@182 r@@176 u@@176)) (InsidePredicate_4551_4605 p@@183 v_1@@182 r@@176 u@@176))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4527 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_4527_4605 q@@176 w@@182 r@@176 u@@176))
)))
(assert (forall ((p@@184 T@Field_15345_15346) (v_1@@183 T@FrameType) (q@@177 T@Field_13157_13158) (w@@183 T@FrameType) (r@@177 T@Field_15345_15346) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4527 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_4527_4551 q@@177 w@@183 r@@177 u@@177)) (InsidePredicate_4551_4551 p@@184 v_1@@183 r@@177 u@@177))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4527 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_4527_4551 q@@177 w@@183 r@@177 u@@177))
)))
(assert (forall ((p@@185 T@Field_15345_15346) (v_1@@184 T@FrameType) (q@@178 T@Field_13157_13158) (w@@184 T@FrameType) (r@@178 T@Field_13157_13158) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_4551_4527 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_4527_4527 q@@178 w@@184 r@@178 u@@178)) (InsidePredicate_4551_4527 p@@185 v_1@@184 r@@178 u@@178))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4551_4527 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_4527_4527 q@@178 w@@184 r@@178 u@@178))
)))
(assert (forall ((p@@186 T@Field_12162_12163) (v_1@@185 T@FrameType) (q@@179 T@Field_4491_4499) (w@@185 T@FrameType) (r@@179 T@Field_16657_16658) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_8748 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_8748_16657 q@@179 w@@185 r@@179 u@@179)) (InsidePredicate_4498_16657 p@@186 v_1@@185 r@@179 u@@179))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_8748 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_8748_16657 q@@179 w@@185 r@@179 u@@179))
)))
(assert (forall ((p@@187 T@Field_12162_12163) (v_1@@186 T@FrameType) (q@@180 T@Field_4491_4499) (w@@186 T@FrameType) (r@@180 T@Field_12162_12163) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_8748 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_8748_12162 q@@180 w@@186 r@@180 u@@180)) (InsidePredicate_4498_12162 p@@187 v_1@@186 r@@180 u@@180))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_8748 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_8748_12162 q@@180 w@@186 r@@180 u@@180))
)))
(assert (forall ((p@@188 T@Field_12162_12163) (v_1@@187 T@FrameType) (q@@181 T@Field_4491_4499) (w@@187 T@FrameType) (r@@181 T@Field_4491_4499) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_8748 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_8748_8748 q@@181 w@@187 r@@181 u@@181)) (InsidePredicate_4498_8748 p@@188 v_1@@187 r@@181 u@@181))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_8748 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_8748_8748 q@@181 w@@187 r@@181 u@@181))
)))
(assert (forall ((p@@189 T@Field_12162_12163) (v_1@@188 T@FrameType) (q@@182 T@Field_4491_4499) (w@@188 T@FrameType) (r@@182 T@Field_17617_17618) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_8748 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_8748_4605 q@@182 w@@188 r@@182 u@@182)) (InsidePredicate_4498_4605 p@@189 v_1@@188 r@@182 u@@182))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_8748 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_8748_4605 q@@182 w@@188 r@@182 u@@182))
)))
(assert (forall ((p@@190 T@Field_12162_12163) (v_1@@189 T@FrameType) (q@@183 T@Field_4491_4499) (w@@189 T@FrameType) (r@@183 T@Field_15345_15346) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_8748 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_8748_4551 q@@183 w@@189 r@@183 u@@183)) (InsidePredicate_4498_4551 p@@190 v_1@@189 r@@183 u@@183))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_8748 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_8748_4551 q@@183 w@@189 r@@183 u@@183))
)))
(assert (forall ((p@@191 T@Field_12162_12163) (v_1@@190 T@FrameType) (q@@184 T@Field_4491_4499) (w@@190 T@FrameType) (r@@184 T@Field_13157_13158) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_8748 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_8748_4527 q@@184 w@@190 r@@184 u@@184)) (InsidePredicate_4498_4527 p@@191 v_1@@190 r@@184 u@@184))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_8748 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_8748_4527 q@@184 w@@190 r@@184 u@@184))
)))
(assert (forall ((p@@192 T@Field_12162_12163) (v_1@@191 T@FrameType) (q@@185 T@Field_16657_16658) (w@@191 T@FrameType) (r@@185 T@Field_16657_16658) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_16657 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_4576_16657 q@@185 w@@191 r@@185 u@@185)) (InsidePredicate_4498_16657 p@@192 v_1@@191 r@@185 u@@185))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_16657 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_4576_16657 q@@185 w@@191 r@@185 u@@185))
)))
(assert (forall ((p@@193 T@Field_12162_12163) (v_1@@192 T@FrameType) (q@@186 T@Field_16657_16658) (w@@192 T@FrameType) (r@@186 T@Field_12162_12163) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_16657 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_4576_12162 q@@186 w@@192 r@@186 u@@186)) (InsidePredicate_4498_12162 p@@193 v_1@@192 r@@186 u@@186))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_16657 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_4576_12162 q@@186 w@@192 r@@186 u@@186))
)))
(assert (forall ((p@@194 T@Field_12162_12163) (v_1@@193 T@FrameType) (q@@187 T@Field_16657_16658) (w@@193 T@FrameType) (r@@187 T@Field_4491_4499) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_16657 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_4576_8748 q@@187 w@@193 r@@187 u@@187)) (InsidePredicate_4498_8748 p@@194 v_1@@193 r@@187 u@@187))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_16657 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_4576_8748 q@@187 w@@193 r@@187 u@@187))
)))
(assert (forall ((p@@195 T@Field_12162_12163) (v_1@@194 T@FrameType) (q@@188 T@Field_16657_16658) (w@@194 T@FrameType) (r@@188 T@Field_17617_17618) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_16657 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_4576_4605 q@@188 w@@194 r@@188 u@@188)) (InsidePredicate_4498_4605 p@@195 v_1@@194 r@@188 u@@188))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_16657 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_4576_4605 q@@188 w@@194 r@@188 u@@188))
)))
(assert (forall ((p@@196 T@Field_12162_12163) (v_1@@195 T@FrameType) (q@@189 T@Field_16657_16658) (w@@195 T@FrameType) (r@@189 T@Field_15345_15346) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_16657 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_4576_4551 q@@189 w@@195 r@@189 u@@189)) (InsidePredicate_4498_4551 p@@196 v_1@@195 r@@189 u@@189))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_16657 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_4576_4551 q@@189 w@@195 r@@189 u@@189))
)))
(assert (forall ((p@@197 T@Field_12162_12163) (v_1@@196 T@FrameType) (q@@190 T@Field_16657_16658) (w@@196 T@FrameType) (r@@190 T@Field_13157_13158) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_16657 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_4576_4527 q@@190 w@@196 r@@190 u@@190)) (InsidePredicate_4498_4527 p@@197 v_1@@196 r@@190 u@@190))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_16657 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_4576_4527 q@@190 w@@196 r@@190 u@@190))
)))
(assert (forall ((p@@198 T@Field_12162_12163) (v_1@@197 T@FrameType) (q@@191 T@Field_17617_17618) (w@@197 T@FrameType) (r@@191 T@Field_16657_16658) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4605 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_4605_16657 q@@191 w@@197 r@@191 u@@191)) (InsidePredicate_4498_16657 p@@198 v_1@@197 r@@191 u@@191))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4605 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_4605_16657 q@@191 w@@197 r@@191 u@@191))
)))
(assert (forall ((p@@199 T@Field_12162_12163) (v_1@@198 T@FrameType) (q@@192 T@Field_17617_17618) (w@@198 T@FrameType) (r@@192 T@Field_12162_12163) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4605 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_4605_12162 q@@192 w@@198 r@@192 u@@192)) (InsidePredicate_4498_12162 p@@199 v_1@@198 r@@192 u@@192))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4605 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_4605_12162 q@@192 w@@198 r@@192 u@@192))
)))
(assert (forall ((p@@200 T@Field_12162_12163) (v_1@@199 T@FrameType) (q@@193 T@Field_17617_17618) (w@@199 T@FrameType) (r@@193 T@Field_4491_4499) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4605 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_4605_8748 q@@193 w@@199 r@@193 u@@193)) (InsidePredicate_4498_8748 p@@200 v_1@@199 r@@193 u@@193))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4605 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_4605_8748 q@@193 w@@199 r@@193 u@@193))
)))
(assert (forall ((p@@201 T@Field_12162_12163) (v_1@@200 T@FrameType) (q@@194 T@Field_17617_17618) (w@@200 T@FrameType) (r@@194 T@Field_17617_17618) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4605 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_4605_4605 q@@194 w@@200 r@@194 u@@194)) (InsidePredicate_4498_4605 p@@201 v_1@@200 r@@194 u@@194))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4605 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_4605_4605 q@@194 w@@200 r@@194 u@@194))
)))
(assert (forall ((p@@202 T@Field_12162_12163) (v_1@@201 T@FrameType) (q@@195 T@Field_17617_17618) (w@@201 T@FrameType) (r@@195 T@Field_15345_15346) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4605 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_4605_4551 q@@195 w@@201 r@@195 u@@195)) (InsidePredicate_4498_4551 p@@202 v_1@@201 r@@195 u@@195))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4605 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_4605_4551 q@@195 w@@201 r@@195 u@@195))
)))
(assert (forall ((p@@203 T@Field_12162_12163) (v_1@@202 T@FrameType) (q@@196 T@Field_17617_17618) (w@@202 T@FrameType) (r@@196 T@Field_13157_13158) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4605 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_4605_4527 q@@196 w@@202 r@@196 u@@196)) (InsidePredicate_4498_4527 p@@203 v_1@@202 r@@196 u@@196))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4605 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_4605_4527 q@@196 w@@202 r@@196 u@@196))
)))
(assert (forall ((p@@204 T@Field_12162_12163) (v_1@@203 T@FrameType) (q@@197 T@Field_15345_15346) (w@@203 T@FrameType) (r@@197 T@Field_16657_16658) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4551 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_4551_16657 q@@197 w@@203 r@@197 u@@197)) (InsidePredicate_4498_16657 p@@204 v_1@@203 r@@197 u@@197))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4551 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_4551_16657 q@@197 w@@203 r@@197 u@@197))
)))
(assert (forall ((p@@205 T@Field_12162_12163) (v_1@@204 T@FrameType) (q@@198 T@Field_15345_15346) (w@@204 T@FrameType) (r@@198 T@Field_12162_12163) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4551 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_4551_12162 q@@198 w@@204 r@@198 u@@198)) (InsidePredicate_4498_12162 p@@205 v_1@@204 r@@198 u@@198))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4551 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_4551_12162 q@@198 w@@204 r@@198 u@@198))
)))
(assert (forall ((p@@206 T@Field_12162_12163) (v_1@@205 T@FrameType) (q@@199 T@Field_15345_15346) (w@@205 T@FrameType) (r@@199 T@Field_4491_4499) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4551 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_4551_8748 q@@199 w@@205 r@@199 u@@199)) (InsidePredicate_4498_8748 p@@206 v_1@@205 r@@199 u@@199))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4551 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_4551_8748 q@@199 w@@205 r@@199 u@@199))
)))
(assert (forall ((p@@207 T@Field_12162_12163) (v_1@@206 T@FrameType) (q@@200 T@Field_15345_15346) (w@@206 T@FrameType) (r@@200 T@Field_17617_17618) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4551 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_4551_4605 q@@200 w@@206 r@@200 u@@200)) (InsidePredicate_4498_4605 p@@207 v_1@@206 r@@200 u@@200))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4551 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_4551_4605 q@@200 w@@206 r@@200 u@@200))
)))
(assert (forall ((p@@208 T@Field_12162_12163) (v_1@@207 T@FrameType) (q@@201 T@Field_15345_15346) (w@@207 T@FrameType) (r@@201 T@Field_15345_15346) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4551 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_4551_4551 q@@201 w@@207 r@@201 u@@201)) (InsidePredicate_4498_4551 p@@208 v_1@@207 r@@201 u@@201))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4551 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_4551_4551 q@@201 w@@207 r@@201 u@@201))
)))
(assert (forall ((p@@209 T@Field_12162_12163) (v_1@@208 T@FrameType) (q@@202 T@Field_15345_15346) (w@@208 T@FrameType) (r@@202 T@Field_13157_13158) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4551 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_4551_4527 q@@202 w@@208 r@@202 u@@202)) (InsidePredicate_4498_4527 p@@209 v_1@@208 r@@202 u@@202))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4551 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_4551_4527 q@@202 w@@208 r@@202 u@@202))
)))
(assert (forall ((p@@210 T@Field_12162_12163) (v_1@@209 T@FrameType) (q@@203 T@Field_12162_12163) (w@@209 T@FrameType) (r@@203 T@Field_16657_16658) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_12162 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_4498_16657 q@@203 w@@209 r@@203 u@@203)) (InsidePredicate_4498_16657 p@@210 v_1@@209 r@@203 u@@203))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_12162 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_4498_16657 q@@203 w@@209 r@@203 u@@203))
)))
(assert (forall ((p@@211 T@Field_12162_12163) (v_1@@210 T@FrameType) (q@@204 T@Field_12162_12163) (w@@210 T@FrameType) (r@@204 T@Field_12162_12163) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_12162 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_4498_12162 q@@204 w@@210 r@@204 u@@204)) (InsidePredicate_4498_12162 p@@211 v_1@@210 r@@204 u@@204))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_12162 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_4498_12162 q@@204 w@@210 r@@204 u@@204))
)))
(assert (forall ((p@@212 T@Field_12162_12163) (v_1@@211 T@FrameType) (q@@205 T@Field_12162_12163) (w@@211 T@FrameType) (r@@205 T@Field_4491_4499) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_12162 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_4498_8748 q@@205 w@@211 r@@205 u@@205)) (InsidePredicate_4498_8748 p@@212 v_1@@211 r@@205 u@@205))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_12162 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_4498_8748 q@@205 w@@211 r@@205 u@@205))
)))
(assert (forall ((p@@213 T@Field_12162_12163) (v_1@@212 T@FrameType) (q@@206 T@Field_12162_12163) (w@@212 T@FrameType) (r@@206 T@Field_17617_17618) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_12162 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_4498_4605 q@@206 w@@212 r@@206 u@@206)) (InsidePredicate_4498_4605 p@@213 v_1@@212 r@@206 u@@206))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_12162 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_4498_4605 q@@206 w@@212 r@@206 u@@206))
)))
(assert (forall ((p@@214 T@Field_12162_12163) (v_1@@213 T@FrameType) (q@@207 T@Field_12162_12163) (w@@213 T@FrameType) (r@@207 T@Field_15345_15346) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_12162 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_4498_4551 q@@207 w@@213 r@@207 u@@207)) (InsidePredicate_4498_4551 p@@214 v_1@@213 r@@207 u@@207))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_12162 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_4498_4551 q@@207 w@@213 r@@207 u@@207))
)))
(assert (forall ((p@@215 T@Field_12162_12163) (v_1@@214 T@FrameType) (q@@208 T@Field_12162_12163) (w@@214 T@FrameType) (r@@208 T@Field_13157_13158) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_12162 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_4498_4527 q@@208 w@@214 r@@208 u@@208)) (InsidePredicate_4498_4527 p@@215 v_1@@214 r@@208 u@@208))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_12162 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_4498_4527 q@@208 w@@214 r@@208 u@@208))
)))
(assert (forall ((p@@216 T@Field_12162_12163) (v_1@@215 T@FrameType) (q@@209 T@Field_13157_13158) (w@@215 T@FrameType) (r@@209 T@Field_16657_16658) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4527 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_4527_16657 q@@209 w@@215 r@@209 u@@209)) (InsidePredicate_4498_16657 p@@216 v_1@@215 r@@209 u@@209))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4527 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_4527_16657 q@@209 w@@215 r@@209 u@@209))
)))
(assert (forall ((p@@217 T@Field_12162_12163) (v_1@@216 T@FrameType) (q@@210 T@Field_13157_13158) (w@@216 T@FrameType) (r@@210 T@Field_12162_12163) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4527 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_4527_12162 q@@210 w@@216 r@@210 u@@210)) (InsidePredicate_4498_12162 p@@217 v_1@@216 r@@210 u@@210))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4527 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_4527_12162 q@@210 w@@216 r@@210 u@@210))
)))
(assert (forall ((p@@218 T@Field_12162_12163) (v_1@@217 T@FrameType) (q@@211 T@Field_13157_13158) (w@@217 T@FrameType) (r@@211 T@Field_4491_4499) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4527 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_4527_8748 q@@211 w@@217 r@@211 u@@211)) (InsidePredicate_4498_8748 p@@218 v_1@@217 r@@211 u@@211))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4527 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_4527_8748 q@@211 w@@217 r@@211 u@@211))
)))
(assert (forall ((p@@219 T@Field_12162_12163) (v_1@@218 T@FrameType) (q@@212 T@Field_13157_13158) (w@@218 T@FrameType) (r@@212 T@Field_17617_17618) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4527 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_4527_4605 q@@212 w@@218 r@@212 u@@212)) (InsidePredicate_4498_4605 p@@219 v_1@@218 r@@212 u@@212))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4527 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_4527_4605 q@@212 w@@218 r@@212 u@@212))
)))
(assert (forall ((p@@220 T@Field_12162_12163) (v_1@@219 T@FrameType) (q@@213 T@Field_13157_13158) (w@@219 T@FrameType) (r@@213 T@Field_15345_15346) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4527 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_4527_4551 q@@213 w@@219 r@@213 u@@213)) (InsidePredicate_4498_4551 p@@220 v_1@@219 r@@213 u@@213))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4527 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_4527_4551 q@@213 w@@219 r@@213 u@@213))
)))
(assert (forall ((p@@221 T@Field_12162_12163) (v_1@@220 T@FrameType) (q@@214 T@Field_13157_13158) (w@@220 T@FrameType) (r@@214 T@Field_13157_13158) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_4498_4527 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_4527_4527 q@@214 w@@220 r@@214 u@@214)) (InsidePredicate_4498_4527 p@@221 v_1@@220 r@@214 u@@214))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4498_4527 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_4527_4527 q@@214 w@@220 r@@214 u@@214))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |OFL_State#definedness|)
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
