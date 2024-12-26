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
(declare-sort T@Field_22827_53 0)
(declare-sort T@Field_22840_22841 0)
(declare-sort T@Field_26666_26667 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_26154_1189 0)
(declare-sort T@Field_29631_29636 0)
(declare-sort T@Field_35526_35527 0)
(declare-sort T@Field_36825_36830 0)
(declare-sort T@Field_40435_40436 0)
(declare-sort T@Field_40448_40453 0)
(declare-sort T@Field_11185_11294 0)
(declare-sort T@Field_11185_29636 0)
(declare-sort T@Field_11293_11186 0)
(declare-sort T@Field_11293_1249 0)
(declare-sort T@Field_11293_53 0)
(declare-sort T@Field_11318_11186 0)
(declare-sort T@Field_11318_1249 0)
(declare-sort T@Field_11318_53 0)
(declare-sort T@Field_11343_11186 0)
(declare-sort T@Field_11343_1249 0)
(declare-sort T@Field_11343_53 0)
(declare-datatypes ((T@PolymorphicMapType_22788 0)) (((PolymorphicMapType_22788 (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| (Array T@Ref T@Field_26666_26667 Real)) (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| (Array T@Ref T@Field_26154_1189 Real)) (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| (Array T@Ref T@Field_22840_22841 Real)) (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| (Array T@Ref T@Field_35526_35527 Real)) (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| (Array T@Ref T@Field_40435_40436 Real)) (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| (Array T@Ref T@Field_11293_1249 Real)) (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| (Array T@Ref T@Field_11293_11186 Real)) (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| (Array T@Ref T@Field_11293_53 Real)) (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| (Array T@Ref T@Field_29631_29636 Real)) (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| (Array T@Ref T@Field_11185_11294 Real)) (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| (Array T@Ref T@Field_22827_53 Real)) (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| (Array T@Ref T@Field_11185_29636 Real)) (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| (Array T@Ref T@Field_11318_1249 Real)) (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| (Array T@Ref T@Field_11318_11186 Real)) (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| (Array T@Ref T@Field_11318_53 Real)) (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| (Array T@Ref T@Field_36825_36830 Real)) (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| (Array T@Ref T@Field_11343_1249 Real)) (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| (Array T@Ref T@Field_11343_11186 Real)) (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| (Array T@Ref T@Field_11343_53 Real)) (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| (Array T@Ref T@Field_40448_40453 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23316 0)) (((PolymorphicMapType_23316 (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (Array T@Ref T@Field_26154_1189 Bool)) (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (Array T@Ref T@Field_22840_22841 Bool)) (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (Array T@Ref T@Field_22827_53 Bool)) (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (Array T@Ref T@Field_11185_11294 Bool)) (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (Array T@Ref T@Field_11185_29636 Bool)) (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (Array T@Ref T@Field_11293_1249 Bool)) (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (Array T@Ref T@Field_11293_11186 Bool)) (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (Array T@Ref T@Field_11293_53 Bool)) (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (Array T@Ref T@Field_26666_26667 Bool)) (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (Array T@Ref T@Field_29631_29636 Bool)) (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (Array T@Ref T@Field_11318_1249 Bool)) (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (Array T@Ref T@Field_11318_11186 Bool)) (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (Array T@Ref T@Field_11318_53 Bool)) (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (Array T@Ref T@Field_35526_35527 Bool)) (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (Array T@Ref T@Field_36825_36830 Bool)) (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (Array T@Ref T@Field_11343_1249 Bool)) (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (Array T@Ref T@Field_11343_11186 Bool)) (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (Array T@Ref T@Field_11343_53 Bool)) (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (Array T@Ref T@Field_40435_40436 Bool)) (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (Array T@Ref T@Field_40448_40453 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22767 0)) (((PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| (Array T@Ref T@Field_22827_53 Bool)) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| (Array T@Ref T@Field_22840_22841 T@Ref)) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| (Array T@Ref T@Field_26666_26667 T@FrameType)) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| (Array T@Ref T@Field_26154_1189 Int)) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| (Array T@Ref T@Field_29631_29636 T@PolymorphicMapType_23316)) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| (Array T@Ref T@Field_35526_35527 T@FrameType)) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| (Array T@Ref T@Field_36825_36830 T@PolymorphicMapType_23316)) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| (Array T@Ref T@Field_40435_40436 T@FrameType)) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| (Array T@Ref T@Field_40448_40453 T@PolymorphicMapType_23316)) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| (Array T@Ref T@Field_11185_11294 T@FrameType)) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| (Array T@Ref T@Field_11185_29636 T@PolymorphicMapType_23316)) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| (Array T@Ref T@Field_11293_11186 T@Ref)) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| (Array T@Ref T@Field_11293_1249 Int)) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| (Array T@Ref T@Field_11293_53 Bool)) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| (Array T@Ref T@Field_11318_11186 T@Ref)) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| (Array T@Ref T@Field_11318_1249 Int)) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| (Array T@Ref T@Field_11318_53 Bool)) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| (Array T@Ref T@Field_11343_11186 T@Ref)) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| (Array T@Ref T@Field_11343_1249 Int)) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| (Array T@Ref T@Field_11343_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_22827_53)
(declare-fun Wand_readonly_for_writeonly__lemma () T@Field_26154_1189)
(declare-fun Wand_readonly_for_writeonly__in_1 () T@Field_22840_22841)
(declare-fun Wand_readonly_for_writeonly__out_1 () T@Field_22840_22841)
(declare-fun Wand_readonly_for_writeonly__this_1 () T@Field_22840_22841)
(declare-fun WandDemo__x () T@Field_26154_1189)
(declare-fun succHeap (T@PolymorphicMapType_22767 T@PolymorphicMapType_22767) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22767 T@PolymorphicMapType_22767) Bool)
(declare-fun state (T@PolymorphicMapType_22767 T@PolymorphicMapType_22788) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22788) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_23316)
(declare-fun Wand_readonly_for_writeonly__valid_wand (T@Ref) T@Field_26666_26667)
(declare-fun IsPredicateField_11293_11294 (T@Field_26666_26667) Bool)
(declare-fun WandDemo__readonly (T@Ref) T@Field_35526_35527)
(declare-fun IsPredicateField_11318_11319 (T@Field_35526_35527) Bool)
(declare-fun WandDemo__writeonly (T@Ref) T@Field_40435_40436)
(declare-fun IsPredicateField_11343_11344 (T@Field_40435_40436) Bool)
(declare-fun |Wand_readonly_for_writeonly__get_in_1'| (T@PolymorphicMapType_22767 T@Ref) T@Ref)
(declare-fun dummyFunction_11221 (T@Ref) Bool)
(declare-fun |Wand_readonly_for_writeonly__get_in_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_readonly_for_writeonly__get_out_1'| (T@PolymorphicMapType_22767 T@Ref) T@Ref)
(declare-fun |Wand_readonly_for_writeonly__get_out_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |WandDemo__get'| (T@PolymorphicMapType_22767 T@Ref) Int)
(declare-fun dummyFunction_3114 (Int) Bool)
(declare-fun |WandDemo__get#triggerStateless| (T@Ref) Int)
(declare-fun |Wand_readonly_for_writeonly__valid_wand#trigger_11293| (T@PolymorphicMapType_22767 T@Field_26666_26667) Bool)
(declare-fun |Wand_readonly_for_writeonly__valid_wand#everUsed_11293| (T@Field_26666_26667) Bool)
(declare-fun |WandDemo__readonly#trigger_11318| (T@PolymorphicMapType_22767 T@Field_35526_35527) Bool)
(declare-fun |WandDemo__readonly#everUsed_11318| (T@Field_35526_35527) Bool)
(declare-fun |WandDemo__writeonly#trigger_11343| (T@PolymorphicMapType_22767 T@Field_40435_40436) Bool)
(declare-fun |WandDemo__writeonly#everUsed_11343| (T@Field_40435_40436) Bool)
(declare-fun Wand_readonly_for_writeonly__get_in_1 (T@PolymorphicMapType_22767 T@Ref) T@Ref)
(declare-fun Wand_readonly_for_writeonly__get_out_1 (T@PolymorphicMapType_22767 T@Ref) T@Ref)
(declare-fun WandDemo__get (T@PolymorphicMapType_22767 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22767 T@PolymorphicMapType_22767 T@PolymorphicMapType_22788) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11343 (T@Field_40435_40436) T@Field_40448_40453)
(declare-fun HasDirectPerm_11343_11344 (T@PolymorphicMapType_22788 T@Ref T@Field_40435_40436) Bool)
(declare-fun PredicateMaskField_11318 (T@Field_35526_35527) T@Field_36825_36830)
(declare-fun HasDirectPerm_11318_11319 (T@PolymorphicMapType_22788 T@Ref T@Field_35526_35527) Bool)
(declare-fun PredicateMaskField_11293 (T@Field_26666_26667) T@Field_29631_29636)
(declare-fun HasDirectPerm_11293_11294 (T@PolymorphicMapType_22788 T@Ref T@Field_26666_26667) Bool)
(declare-fun IsPredicateField_11185_82416 (T@Field_11185_11294) Bool)
(declare-fun PredicateMaskField_11185 (T@Field_11185_11294) T@Field_11185_29636)
(declare-fun HasDirectPerm_11185_11294 (T@PolymorphicMapType_22788 T@Ref T@Field_11185_11294) Bool)
(declare-fun IsWandField_11343_90108 (T@Field_40435_40436) Bool)
(declare-fun WandMaskField_11343 (T@Field_40435_40436) T@Field_40448_40453)
(declare-fun IsWandField_11318_89751 (T@Field_35526_35527) Bool)
(declare-fun WandMaskField_11318 (T@Field_35526_35527) T@Field_36825_36830)
(declare-fun IsWandField_11293_89394 (T@Field_26666_26667) Bool)
(declare-fun WandMaskField_11293 (T@Field_26666_26667) T@Field_29631_29636)
(declare-fun IsWandField_11185_89037 (T@Field_11185_11294) Bool)
(declare-fun WandMaskField_11185 (T@Field_11185_11294) T@Field_11185_29636)
(declare-fun |Wand_readonly_for_writeonly__valid_wand#sm| (T@Ref) T@Field_29631_29636)
(declare-fun |WandDemo__readonly#sm| (T@Ref) T@Field_36825_36830)
(declare-fun |WandDemo__writeonly#sm| (T@Ref) T@Field_40448_40453)
(declare-fun dummyHeap () T@PolymorphicMapType_22767)
(declare-fun ZeroMask () T@PolymorphicMapType_22788)
(declare-fun InsidePredicate_40435_40435 (T@Field_40435_40436 T@FrameType T@Field_40435_40436 T@FrameType) Bool)
(declare-fun InsidePredicate_35526_35526 (T@Field_35526_35527 T@FrameType T@Field_35526_35527 T@FrameType) Bool)
(declare-fun InsidePredicate_26666_26666 (T@Field_26666_26667 T@FrameType T@Field_26666_26667 T@FrameType) Bool)
(declare-fun InsidePredicate_22827_22827 (T@Field_11185_11294 T@FrameType T@Field_11185_11294 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Wand_readonly_for_writeonly__get_in_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Wand_readonly_for_writeonly__get_out_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun IsPredicateField_11183_1189 (T@Field_26154_1189) Bool)
(declare-fun IsWandField_11183_1189 (T@Field_26154_1189) Bool)
(declare-fun IsPredicateField_11185_11186 (T@Field_22840_22841) Bool)
(declare-fun IsWandField_11185_11186 (T@Field_22840_22841) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11343_103783 (T@Field_40448_40453) Bool)
(declare-fun IsWandField_11343_103799 (T@Field_40448_40453) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11343_53 (T@Field_11343_53) Bool)
(declare-fun IsWandField_11343_53 (T@Field_11343_53) Bool)
(declare-fun IsPredicateField_11343_11186 (T@Field_11343_11186) Bool)
(declare-fun IsWandField_11343_11186 (T@Field_11343_11186) Bool)
(declare-fun IsPredicateField_11343_1189 (T@Field_11343_1249) Bool)
(declare-fun IsWandField_11343_1189 (T@Field_11343_1249) Bool)
(declare-fun IsPredicateField_11318_102952 (T@Field_36825_36830) Bool)
(declare-fun IsWandField_11318_102968 (T@Field_36825_36830) Bool)
(declare-fun IsPredicateField_11318_53 (T@Field_11318_53) Bool)
(declare-fun IsWandField_11318_53 (T@Field_11318_53) Bool)
(declare-fun IsPredicateField_11318_11186 (T@Field_11318_11186) Bool)
(declare-fun IsWandField_11318_11186 (T@Field_11318_11186) Bool)
(declare-fun IsPredicateField_11318_1189 (T@Field_11318_1249) Bool)
(declare-fun IsWandField_11318_1189 (T@Field_11318_1249) Bool)
(declare-fun IsPredicateField_11183_102121 (T@Field_11185_29636) Bool)
(declare-fun IsWandField_11183_102137 (T@Field_11185_29636) Bool)
(declare-fun IsPredicateField_11183_53 (T@Field_22827_53) Bool)
(declare-fun IsWandField_11183_53 (T@Field_22827_53) Bool)
(declare-fun IsPredicateField_11293_101318 (T@Field_29631_29636) Bool)
(declare-fun IsWandField_11293_101334 (T@Field_29631_29636) Bool)
(declare-fun IsPredicateField_11293_53 (T@Field_11293_53) Bool)
(declare-fun IsWandField_11293_53 (T@Field_11293_53) Bool)
(declare-fun IsPredicateField_11293_11186 (T@Field_11293_11186) Bool)
(declare-fun IsWandField_11293_11186 (T@Field_11293_11186) Bool)
(declare-fun IsPredicateField_11293_1189 (T@Field_11293_1249) Bool)
(declare-fun IsWandField_11293_1189 (T@Field_11293_1249) Bool)
(declare-fun HasDirectPerm_11343_82171 (T@PolymorphicMapType_22788 T@Ref T@Field_40448_40453) Bool)
(declare-fun HasDirectPerm_11343_53 (T@PolymorphicMapType_22788 T@Ref T@Field_11343_53) Bool)
(declare-fun HasDirectPerm_11343_1249 (T@PolymorphicMapType_22788 T@Ref T@Field_11343_1249) Bool)
(declare-fun HasDirectPerm_11343_11186 (T@PolymorphicMapType_22788 T@Ref T@Field_11343_11186) Bool)
(declare-fun HasDirectPerm_11318_81073 (T@PolymorphicMapType_22788 T@Ref T@Field_36825_36830) Bool)
(declare-fun HasDirectPerm_11318_53 (T@PolymorphicMapType_22788 T@Ref T@Field_11318_53) Bool)
(declare-fun HasDirectPerm_11318_1249 (T@PolymorphicMapType_22788 T@Ref T@Field_11318_1249) Bool)
(declare-fun HasDirectPerm_11318_11186 (T@PolymorphicMapType_22788 T@Ref T@Field_11318_11186) Bool)
(declare-fun HasDirectPerm_11293_79975 (T@PolymorphicMapType_22788 T@Ref T@Field_29631_29636) Bool)
(declare-fun HasDirectPerm_11293_53 (T@PolymorphicMapType_22788 T@Ref T@Field_11293_53) Bool)
(declare-fun HasDirectPerm_11293_1249 (T@PolymorphicMapType_22788 T@Ref T@Field_11293_1249) Bool)
(declare-fun HasDirectPerm_11293_11186 (T@PolymorphicMapType_22788 T@Ref T@Field_11293_11186) Bool)
(declare-fun HasDirectPerm_11185_78834 (T@PolymorphicMapType_22788 T@Ref T@Field_11185_29636) Bool)
(declare-fun HasDirectPerm_11185_53 (T@PolymorphicMapType_22788 T@Ref T@Field_22827_53) Bool)
(declare-fun HasDirectPerm_11194_1249 (T@PolymorphicMapType_22788 T@Ref T@Field_26154_1189) Bool)
(declare-fun HasDirectPerm_11185_11186 (T@PolymorphicMapType_22788 T@Ref T@Field_22840_22841) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_22788 T@PolymorphicMapType_22788 T@PolymorphicMapType_22788) Bool)
(declare-fun |Wand_readonly_for_writeonly__get_in_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_readonly_for_writeonly__get_out_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |WandDemo__get#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_11293_11294 (T@Field_26666_26667) Int)
(declare-fun getPredWandId_11318_11319 (T@Field_35526_35527) Int)
(declare-fun getPredWandId_11343_11344 (T@Field_40435_40436) Int)
(declare-fun InsidePredicate_40435_35526 (T@Field_40435_40436 T@FrameType T@Field_35526_35527 T@FrameType) Bool)
(declare-fun InsidePredicate_40435_26666 (T@Field_40435_40436 T@FrameType T@Field_26666_26667 T@FrameType) Bool)
(declare-fun InsidePredicate_40435_22827 (T@Field_40435_40436 T@FrameType T@Field_11185_11294 T@FrameType) Bool)
(declare-fun InsidePredicate_35526_40435 (T@Field_35526_35527 T@FrameType T@Field_40435_40436 T@FrameType) Bool)
(declare-fun InsidePredicate_35526_26666 (T@Field_35526_35527 T@FrameType T@Field_26666_26667 T@FrameType) Bool)
(declare-fun InsidePredicate_35526_22827 (T@Field_35526_35527 T@FrameType T@Field_11185_11294 T@FrameType) Bool)
(declare-fun InsidePredicate_26666_40435 (T@Field_26666_26667 T@FrameType T@Field_40435_40436 T@FrameType) Bool)
(declare-fun InsidePredicate_26666_35526 (T@Field_26666_26667 T@FrameType T@Field_35526_35527 T@FrameType) Bool)
(declare-fun InsidePredicate_26666_22827 (T@Field_26666_26667 T@FrameType T@Field_11185_11294 T@FrameType) Bool)
(declare-fun InsidePredicate_22827_40435 (T@Field_11185_11294 T@FrameType T@Field_40435_40436 T@FrameType) Bool)
(declare-fun InsidePredicate_22827_35526 (T@Field_11185_11294 T@FrameType T@Field_35526_35527 T@FrameType) Bool)
(declare-fun InsidePredicate_22827_26666 (T@Field_11185_11294 T@FrameType T@Field_26666_26667 T@FrameType) Bool)
(assert (and (distinct Wand_readonly_for_writeonly__lemma WandDemo__x)(distinct Wand_readonly_for_writeonly__in_1 Wand_readonly_for_writeonly__out_1 Wand_readonly_for_writeonly__this_1))
)
(assert (forall ((Heap0 T@PolymorphicMapType_22767) (Heap1 T@PolymorphicMapType_22767) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22767) (Mask T@PolymorphicMapType_22788) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22767) (Heap1@@0 T@PolymorphicMapType_22767) (Heap2 T@PolymorphicMapType_22767) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_40448_40453) ) (!  (not (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_40435_40436) ) (!  (not (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11343_53) ) (!  (not (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11343_11186) ) (!  (not (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11343_1249) ) (!  (not (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_36825_36830) ) (!  (not (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_35526_35527) ) (!  (not (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11318_53) ) (!  (not (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11318_11186) ) (!  (not (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11318_1249) ) (!  (not (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_29631_29636) ) (!  (not (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_26666_26667) ) (!  (not (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11293_53) ) (!  (not (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11293_11186) ) (!  (not (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11293_1249) ) (!  (not (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11185_29636) ) (!  (not (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11185_11294) ) (!  (not (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_22827_53) ) (!  (not (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22840_22841) ) (!  (not (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_26154_1189) ) (!  (not (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((diz T@Ref) ) (! (IsPredicateField_11293_11294 (Wand_readonly_for_writeonly__valid_wand diz))
 :qid |stdinbpl.578:15|
 :skolemid |37|
 :pattern ( (Wand_readonly_for_writeonly__valid_wand diz))
)))
(assert (forall ((diz@@0 T@Ref) ) (! (IsPredicateField_11318_11319 (WandDemo__readonly diz@@0))
 :qid |stdinbpl.705:15|
 :skolemid |43|
 :pattern ( (WandDemo__readonly diz@@0))
)))
(assert (forall ((diz@@1 T@Ref) ) (! (IsPredicateField_11343_11344 (WandDemo__writeonly diz@@1))
 :qid |stdinbpl.762:15|
 :skolemid |49|
 :pattern ( (WandDemo__writeonly diz@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22767) (diz@@2 T@Ref) ) (! (dummyFunction_11221 (|Wand_readonly_for_writeonly__get_in_1#triggerStateless| diz@@2))
 :qid |stdinbpl.212:15|
 :skolemid |23|
 :pattern ( (|Wand_readonly_for_writeonly__get_in_1'| Heap@@0 diz@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22767) (diz@@3 T@Ref) ) (! (dummyFunction_11221 (|Wand_readonly_for_writeonly__get_out_1#triggerStateless| diz@@3))
 :qid |stdinbpl.350:15|
 :skolemid |28|
 :pattern ( (|Wand_readonly_for_writeonly__get_out_1'| Heap@@1 diz@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22767) (diz@@4 T@Ref) ) (! (dummyFunction_3114 (|WandDemo__get#triggerStateless| diz@@4))
 :qid |stdinbpl.488:15|
 :skolemid |33|
 :pattern ( (|WandDemo__get'| Heap@@2 diz@@4))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22767) (diz@@5 T@Ref) ) (! (|Wand_readonly_for_writeonly__valid_wand#everUsed_11293| (Wand_readonly_for_writeonly__valid_wand diz@@5))
 :qid |stdinbpl.597:15|
 :skolemid |41|
 :pattern ( (|Wand_readonly_for_writeonly__valid_wand#trigger_11293| Heap@@3 (Wand_readonly_for_writeonly__valid_wand diz@@5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22767) (diz@@6 T@Ref) ) (! (|WandDemo__readonly#everUsed_11318| (WandDemo__readonly diz@@6))
 :qid |stdinbpl.724:15|
 :skolemid |47|
 :pattern ( (|WandDemo__readonly#trigger_11318| Heap@@4 (WandDemo__readonly diz@@6)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22767) (diz@@7 T@Ref) ) (! (|WandDemo__writeonly#everUsed_11343| (WandDemo__writeonly diz@@7))
 :qid |stdinbpl.781:15|
 :skolemid |53|
 :pattern ( (|WandDemo__writeonly#trigger_11343| Heap@@5 (WandDemo__writeonly diz@@7)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22767) (diz@@8 T@Ref) ) (!  (and (= (Wand_readonly_for_writeonly__get_in_1 Heap@@6 diz@@8) (|Wand_readonly_for_writeonly__get_in_1'| Heap@@6 diz@@8)) (dummyFunction_11221 (|Wand_readonly_for_writeonly__get_in_1#triggerStateless| diz@@8)))
 :qid |stdinbpl.208:15|
 :skolemid |22|
 :pattern ( (Wand_readonly_for_writeonly__get_in_1 Heap@@6 diz@@8))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22767) (diz@@9 T@Ref) ) (!  (and (= (Wand_readonly_for_writeonly__get_out_1 Heap@@7 diz@@9) (|Wand_readonly_for_writeonly__get_out_1'| Heap@@7 diz@@9)) (dummyFunction_11221 (|Wand_readonly_for_writeonly__get_out_1#triggerStateless| diz@@9)))
 :qid |stdinbpl.346:15|
 :skolemid |27|
 :pattern ( (Wand_readonly_for_writeonly__get_out_1 Heap@@7 diz@@9))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22767) (diz@@10 T@Ref) ) (!  (and (= (WandDemo__get Heap@@8 diz@@10) (|WandDemo__get'| Heap@@8 diz@@10)) (dummyFunction_3114 (|WandDemo__get#triggerStateless| diz@@10)))
 :qid |stdinbpl.484:15|
 :skolemid |32|
 :pattern ( (WandDemo__get Heap@@8 diz@@10))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22767) (ExhaleHeap T@PolymorphicMapType_22767) (Mask@@0 T@PolymorphicMapType_22788) (pm_f T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11343_11344 Mask@@0 null pm_f) (IsPredicateField_11343_11344 pm_f)) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@9) null (PredicateMaskField_11343 pm_f)) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap) null (PredicateMaskField_11343 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@0) (IsPredicateField_11343_11344 pm_f) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap) null (PredicateMaskField_11343 pm_f)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22767) (ExhaleHeap@@0 T@PolymorphicMapType_22767) (Mask@@1 T@PolymorphicMapType_22788) (pm_f@@0 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11318_11319 Mask@@1 null pm_f@@0) (IsPredicateField_11318_11319 pm_f@@0)) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@10) null (PredicateMaskField_11318 pm_f@@0)) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@0) null (PredicateMaskField_11318 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@1) (IsPredicateField_11318_11319 pm_f@@0) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@0) null (PredicateMaskField_11318 pm_f@@0)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22767) (ExhaleHeap@@1 T@PolymorphicMapType_22767) (Mask@@2 T@PolymorphicMapType_22788) (pm_f@@1 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11293_11294 Mask@@2 null pm_f@@1) (IsPredicateField_11293_11294 pm_f@@1)) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@11) null (PredicateMaskField_11293 pm_f@@1)) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@1) null (PredicateMaskField_11293 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11293_11294 pm_f@@1) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@1) null (PredicateMaskField_11293 pm_f@@1)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22767) (ExhaleHeap@@2 T@PolymorphicMapType_22767) (Mask@@3 T@PolymorphicMapType_22788) (pm_f@@2 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11185_11294 Mask@@3 null pm_f@@2) (IsPredicateField_11185_82416 pm_f@@2)) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@12) null (PredicateMaskField_11185 pm_f@@2)) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@2) null (PredicateMaskField_11185 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@3) (IsPredicateField_11185_82416 pm_f@@2) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@2) null (PredicateMaskField_11185 pm_f@@2)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22767) (ExhaleHeap@@3 T@PolymorphicMapType_22767) (Mask@@4 T@PolymorphicMapType_22788) (pm_f@@3 T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11343_11344 Mask@@4 null pm_f@@3) (IsWandField_11343_90108 pm_f@@3)) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@13) null (WandMaskField_11343 pm_f@@3)) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@3) null (WandMaskField_11343 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@4) (IsWandField_11343_90108 pm_f@@3) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@3) null (WandMaskField_11343 pm_f@@3)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22767) (ExhaleHeap@@4 T@PolymorphicMapType_22767) (Mask@@5 T@PolymorphicMapType_22788) (pm_f@@4 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_11318_11319 Mask@@5 null pm_f@@4) (IsWandField_11318_89751 pm_f@@4)) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@14) null (WandMaskField_11318 pm_f@@4)) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@4) null (WandMaskField_11318 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@5) (IsWandField_11318_89751 pm_f@@4) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@4) null (WandMaskField_11318 pm_f@@4)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22767) (ExhaleHeap@@5 T@PolymorphicMapType_22767) (Mask@@6 T@PolymorphicMapType_22788) (pm_f@@5 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11293_11294 Mask@@6 null pm_f@@5) (IsWandField_11293_89394 pm_f@@5)) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@15) null (WandMaskField_11293 pm_f@@5)) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@5) null (WandMaskField_11293 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@6) (IsWandField_11293_89394 pm_f@@5) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@5) null (WandMaskField_11293 pm_f@@5)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22767) (ExhaleHeap@@6 T@PolymorphicMapType_22767) (Mask@@7 T@PolymorphicMapType_22788) (pm_f@@6 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_11185_11294 Mask@@7 null pm_f@@6) (IsWandField_11185_89037 pm_f@@6)) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@16) null (WandMaskField_11185 pm_f@@6)) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@6) null (WandMaskField_11185 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@7) (IsWandField_11185_89037 pm_f@@6) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@6) null (WandMaskField_11185 pm_f@@6)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22767) (ExhaleHeap@@7 T@PolymorphicMapType_22767) (Mask@@8 T@PolymorphicMapType_22788) (pm_f@@7 T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_11343_11344 Mask@@8 null pm_f@@7) (IsPredicateField_11343_11344 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2 f_2) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@17) o2 f_2) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@7) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@7) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@17) o2@@0 f_2@@0) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@17) o2@@1 f_2@@1) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@17) o2@@2 f_2@@2) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@17) o2@@3 f_2@@3) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@17) o2@@4 f_2@@4) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@17) o2@@5 f_2@@5) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@17) o2@@6 f_2@@6) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@17) o2@@7 f_2@@7) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@17) o2@@8 f_2@@8) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@17) o2@@9 f_2@@9) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@17) o2@@10 f_2@@10) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@17) o2@@11 f_2@@11) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@17) o2@@12 f_2@@12) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@17) o2@@13 f_2@@13) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@17) o2@@14 f_2@@14) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@17) o2@@15 f_2@@15) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@17) o2@@16 f_2@@16) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@17) o2@@17 f_2@@17) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) o2@@18 f_2@@18) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@8) (IsPredicateField_11343_11344 pm_f@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22767) (ExhaleHeap@@8 T@PolymorphicMapType_22767) (Mask@@9 T@PolymorphicMapType_22788) (pm_f@@8 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11318_11319 Mask@@9 null pm_f@@8) (IsPredicateField_11318_11319 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@18) o2@@19 f_2@@19) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@18) o2@@20 f_2@@20) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@18) o2@@21 f_2@@21) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@18) o2@@22 f_2@@22) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@18) o2@@23 f_2@@23) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@23 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@18) o2@@24 f_2@@24) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@24 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@18) o2@@25 f_2@@25) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@25 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@18) o2@@26 f_2@@26) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@26 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@18) o2@@27 f_2@@27) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@27 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@18) o2@@28 f_2@@28) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@28 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@18) o2@@29 f_2@@29) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@29 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@18) o2@@30 f_2@@30) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@30 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@18) o2@@31 f_2@@31) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@31 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@18) o2@@32 f_2@@32) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@32 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) o2@@33 f_2@@33) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@33 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@18) o2@@34 f_2@@34) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@34 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@18) o2@@35 f_2@@35) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@35 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@18) o2@@36 f_2@@36) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@36 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@18) o2@@37 f_2@@37) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@37 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@18) o2@@38 f_2@@38) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@38 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@9) (IsPredicateField_11318_11319 pm_f@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22767) (ExhaleHeap@@9 T@PolymorphicMapType_22767) (Mask@@10 T@PolymorphicMapType_22788) (pm_f@@9 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_11293_11294 Mask@@10 null pm_f@@9) (IsPredicateField_11293_11294 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@19) o2@@39 f_2@@39) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@39 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@39 f_2@@39))
)) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@19) o2@@40 f_2@@40) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@40 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@19) o2@@41 f_2@@41) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@41 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@19) o2@@42 f_2@@42) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@42 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@19) o2@@43 f_2@@43) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@43 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@19) o2@@44 f_2@@44) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@44 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@19) o2@@45 f_2@@45) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@45 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@19) o2@@46 f_2@@46) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@46 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@46 f_2@@46))
))) (forall ((o2@@47 T@Ref) (f_2@@47 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@47 f_2@@47) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@19) o2@@47 f_2@@47) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@47 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@47 f_2@@47))
))) (forall ((o2@@48 T@Ref) (f_2@@48 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@48 f_2@@48) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) o2@@48 f_2@@48) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@48 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@48 f_2@@48))
))) (forall ((o2@@49 T@Ref) (f_2@@49 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@49 f_2@@49) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@19) o2@@49 f_2@@49) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@49 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@49 f_2@@49))
))) (forall ((o2@@50 T@Ref) (f_2@@50 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@50 f_2@@50) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@19) o2@@50 f_2@@50) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@50 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@50 f_2@@50))
))) (forall ((o2@@51 T@Ref) (f_2@@51 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@51 f_2@@51) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@19) o2@@51 f_2@@51) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@51 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@51 f_2@@51))
))) (forall ((o2@@52 T@Ref) (f_2@@52 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@52 f_2@@52) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@19) o2@@52 f_2@@52) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@52 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@52 f_2@@52))
))) (forall ((o2@@53 T@Ref) (f_2@@53 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@53 f_2@@53) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@19) o2@@53 f_2@@53) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@53 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@53 f_2@@53))
))) (forall ((o2@@54 T@Ref) (f_2@@54 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@54 f_2@@54) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@19) o2@@54 f_2@@54) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@54 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@54 f_2@@54))
))) (forall ((o2@@55 T@Ref) (f_2@@55 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@55 f_2@@55) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@19) o2@@55 f_2@@55) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@55 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@55 f_2@@55))
))) (forall ((o2@@56 T@Ref) (f_2@@56 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@56 f_2@@56) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@19) o2@@56 f_2@@56) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@56 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@56 f_2@@56))
))) (forall ((o2@@57 T@Ref) (f_2@@57 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@57 f_2@@57) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@19) o2@@57 f_2@@57) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@57 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@57 f_2@@57))
))) (forall ((o2@@58 T@Ref) (f_2@@58 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@58 f_2@@58) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@19) o2@@58 f_2@@58) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@58 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@58 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@10) (IsPredicateField_11293_11294 pm_f@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22767) (ExhaleHeap@@10 T@PolymorphicMapType_22767) (Mask@@11 T@PolymorphicMapType_22788) (pm_f@@10 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_11185_11294 Mask@@11 null pm_f@@10) (IsPredicateField_11185_82416 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@59 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@59 f_2@@59) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@20) o2@@59 f_2@@59) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@59 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@59 f_2@@59))
)) (forall ((o2@@60 T@Ref) (f_2@@60 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@60 f_2@@60) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@20) o2@@60 f_2@@60) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@60 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@60 f_2@@60))
))) (forall ((o2@@61 T@Ref) (f_2@@61 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@61 f_2@@61) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@20) o2@@61 f_2@@61) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@61 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@61 f_2@@61))
))) (forall ((o2@@62 T@Ref) (f_2@@62 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@62 f_2@@62) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@20) o2@@62 f_2@@62) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@62 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@62 f_2@@62))
))) (forall ((o2@@63 T@Ref) (f_2@@63 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@63 f_2@@63) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) o2@@63 f_2@@63) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@63 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@63 f_2@@63))
))) (forall ((o2@@64 T@Ref) (f_2@@64 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@64 f_2@@64) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@20) o2@@64 f_2@@64) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@64 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@64 f_2@@64))
))) (forall ((o2@@65 T@Ref) (f_2@@65 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@65 f_2@@65) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@20) o2@@65 f_2@@65) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@65 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@65 f_2@@65))
))) (forall ((o2@@66 T@Ref) (f_2@@66 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@66 f_2@@66) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@20) o2@@66 f_2@@66) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@66 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@66 f_2@@66))
))) (forall ((o2@@67 T@Ref) (f_2@@67 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@67 f_2@@67) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@20) o2@@67 f_2@@67) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@67 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@67 f_2@@67))
))) (forall ((o2@@68 T@Ref) (f_2@@68 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@68 f_2@@68) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@20) o2@@68 f_2@@68) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@68 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@68 f_2@@68))
))) (forall ((o2@@69 T@Ref) (f_2@@69 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@69 f_2@@69) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@20) o2@@69 f_2@@69) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@69 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@69 f_2@@69))
))) (forall ((o2@@70 T@Ref) (f_2@@70 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@70 f_2@@70) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@20) o2@@70 f_2@@70) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@70 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@70 f_2@@70))
))) (forall ((o2@@71 T@Ref) (f_2@@71 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@71 f_2@@71) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@20) o2@@71 f_2@@71) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@71 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@71 f_2@@71))
))) (forall ((o2@@72 T@Ref) (f_2@@72 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@72 f_2@@72) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@20) o2@@72 f_2@@72) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@72 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@72 f_2@@72))
))) (forall ((o2@@73 T@Ref) (f_2@@73 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@73 f_2@@73) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@20) o2@@73 f_2@@73) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@73 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@73 f_2@@73))
))) (forall ((o2@@74 T@Ref) (f_2@@74 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@74 f_2@@74) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@20) o2@@74 f_2@@74) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@74 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@74 f_2@@74))
))) (forall ((o2@@75 T@Ref) (f_2@@75 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@75 f_2@@75) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@20) o2@@75 f_2@@75) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@75 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@75 f_2@@75))
))) (forall ((o2@@76 T@Ref) (f_2@@76 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@76 f_2@@76) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@20) o2@@76 f_2@@76) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@76 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@76 f_2@@76))
))) (forall ((o2@@77 T@Ref) (f_2@@77 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@77 f_2@@77) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@20) o2@@77 f_2@@77) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@77 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@77 f_2@@77))
))) (forall ((o2@@78 T@Ref) (f_2@@78 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@78 f_2@@78) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@20) o2@@78 f_2@@78) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@78 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@78 f_2@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@11) (IsPredicateField_11185_82416 pm_f@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22767) (ExhaleHeap@@11 T@PolymorphicMapType_22767) (Mask@@12 T@PolymorphicMapType_22788) (pm_f@@11 T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_11343_11344 Mask@@12 null pm_f@@11) (IsWandField_11343_90108 pm_f@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@79 T@Ref) (f_2@@79 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@79 f_2@@79) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@21) o2@@79 f_2@@79) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@79 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@79 f_2@@79))
)) (forall ((o2@@80 T@Ref) (f_2@@80 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@80 f_2@@80) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@21) o2@@80 f_2@@80) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@80 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@80 f_2@@80))
))) (forall ((o2@@81 T@Ref) (f_2@@81 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@81 f_2@@81) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@21) o2@@81 f_2@@81) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@81 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@81 f_2@@81))
))) (forall ((o2@@82 T@Ref) (f_2@@82 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@82 f_2@@82) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@21) o2@@82 f_2@@82) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@82 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@82 f_2@@82))
))) (forall ((o2@@83 T@Ref) (f_2@@83 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@83 f_2@@83) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@21) o2@@83 f_2@@83) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@83 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@83 f_2@@83))
))) (forall ((o2@@84 T@Ref) (f_2@@84 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@84 f_2@@84) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@21) o2@@84 f_2@@84) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@84 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@84 f_2@@84))
))) (forall ((o2@@85 T@Ref) (f_2@@85 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@85 f_2@@85) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@21) o2@@85 f_2@@85) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@85 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@85 f_2@@85))
))) (forall ((o2@@86 T@Ref) (f_2@@86 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@86 f_2@@86) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@21) o2@@86 f_2@@86) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@86 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@86 f_2@@86))
))) (forall ((o2@@87 T@Ref) (f_2@@87 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@87 f_2@@87) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@21) o2@@87 f_2@@87) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@87 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@87 f_2@@87))
))) (forall ((o2@@88 T@Ref) (f_2@@88 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@88 f_2@@88) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@21) o2@@88 f_2@@88) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@88 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@88 f_2@@88))
))) (forall ((o2@@89 T@Ref) (f_2@@89 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@89 f_2@@89) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@21) o2@@89 f_2@@89) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@89 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@89 f_2@@89))
))) (forall ((o2@@90 T@Ref) (f_2@@90 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@90 f_2@@90) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@21) o2@@90 f_2@@90) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@90 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@90 f_2@@90))
))) (forall ((o2@@91 T@Ref) (f_2@@91 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@91 f_2@@91) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@21) o2@@91 f_2@@91) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@91 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@91 f_2@@91))
))) (forall ((o2@@92 T@Ref) (f_2@@92 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@92 f_2@@92) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@21) o2@@92 f_2@@92) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@92 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@92 f_2@@92))
))) (forall ((o2@@93 T@Ref) (f_2@@93 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@93 f_2@@93) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@21) o2@@93 f_2@@93) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@93 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@93 f_2@@93))
))) (forall ((o2@@94 T@Ref) (f_2@@94 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@94 f_2@@94) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@21) o2@@94 f_2@@94) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@94 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@94 f_2@@94))
))) (forall ((o2@@95 T@Ref) (f_2@@95 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@95 f_2@@95) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@21) o2@@95 f_2@@95) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@95 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@95 f_2@@95))
))) (forall ((o2@@96 T@Ref) (f_2@@96 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@96 f_2@@96) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@21) o2@@96 f_2@@96) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@96 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@96 f_2@@96))
))) (forall ((o2@@97 T@Ref) (f_2@@97 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@97 f_2@@97) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@21) o2@@97 f_2@@97) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@97 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@97 f_2@@97))
))) (forall ((o2@@98 T@Ref) (f_2@@98 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@98 f_2@@98) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) o2@@98 f_2@@98) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@98 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@98 f_2@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@12) (IsWandField_11343_90108 pm_f@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22767) (ExhaleHeap@@12 T@PolymorphicMapType_22767) (Mask@@13 T@PolymorphicMapType_22788) (pm_f@@12 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_11318_11319 Mask@@13 null pm_f@@12) (IsWandField_11318_89751 pm_f@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@99 T@Ref) (f_2@@99 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@99 f_2@@99) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@22) o2@@99 f_2@@99) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@99 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@99 f_2@@99))
)) (forall ((o2@@100 T@Ref) (f_2@@100 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@100 f_2@@100) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@22) o2@@100 f_2@@100) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@100 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@100 f_2@@100))
))) (forall ((o2@@101 T@Ref) (f_2@@101 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@101 f_2@@101) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@22) o2@@101 f_2@@101) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@101 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@101 f_2@@101))
))) (forall ((o2@@102 T@Ref) (f_2@@102 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@102 f_2@@102) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@22) o2@@102 f_2@@102) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@102 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@102 f_2@@102))
))) (forall ((o2@@103 T@Ref) (f_2@@103 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@103 f_2@@103) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@22) o2@@103 f_2@@103) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@103 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@103 f_2@@103))
))) (forall ((o2@@104 T@Ref) (f_2@@104 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@104 f_2@@104) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@22) o2@@104 f_2@@104) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@104 f_2@@104)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@104 f_2@@104))
))) (forall ((o2@@105 T@Ref) (f_2@@105 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@105 f_2@@105) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@22) o2@@105 f_2@@105) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@105 f_2@@105)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@105 f_2@@105))
))) (forall ((o2@@106 T@Ref) (f_2@@106 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@106 f_2@@106) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@22) o2@@106 f_2@@106) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@106 f_2@@106)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@106 f_2@@106))
))) (forall ((o2@@107 T@Ref) (f_2@@107 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@107 f_2@@107) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@22) o2@@107 f_2@@107) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@107 f_2@@107)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@107 f_2@@107))
))) (forall ((o2@@108 T@Ref) (f_2@@108 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@108 f_2@@108) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@22) o2@@108 f_2@@108) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@108 f_2@@108)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@108 f_2@@108))
))) (forall ((o2@@109 T@Ref) (f_2@@109 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@109 f_2@@109) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@22) o2@@109 f_2@@109) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@109 f_2@@109)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@109 f_2@@109))
))) (forall ((o2@@110 T@Ref) (f_2@@110 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@110 f_2@@110) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@22) o2@@110 f_2@@110) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@110 f_2@@110)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@110 f_2@@110))
))) (forall ((o2@@111 T@Ref) (f_2@@111 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@111 f_2@@111) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@22) o2@@111 f_2@@111) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@111 f_2@@111)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@111 f_2@@111))
))) (forall ((o2@@112 T@Ref) (f_2@@112 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@112 f_2@@112) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@22) o2@@112 f_2@@112) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@112 f_2@@112)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@112 f_2@@112))
))) (forall ((o2@@113 T@Ref) (f_2@@113 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@113 f_2@@113) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) o2@@113 f_2@@113) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@113 f_2@@113)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@113 f_2@@113))
))) (forall ((o2@@114 T@Ref) (f_2@@114 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@114 f_2@@114) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@22) o2@@114 f_2@@114) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@114 f_2@@114)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@114 f_2@@114))
))) (forall ((o2@@115 T@Ref) (f_2@@115 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@115 f_2@@115) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@22) o2@@115 f_2@@115) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@115 f_2@@115)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@115 f_2@@115))
))) (forall ((o2@@116 T@Ref) (f_2@@116 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@116 f_2@@116) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@22) o2@@116 f_2@@116) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@116 f_2@@116)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@116 f_2@@116))
))) (forall ((o2@@117 T@Ref) (f_2@@117 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@117 f_2@@117) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@22) o2@@117 f_2@@117) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@117 f_2@@117)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@117 f_2@@117))
))) (forall ((o2@@118 T@Ref) (f_2@@118 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@118 f_2@@118) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@22) o2@@118 f_2@@118) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@118 f_2@@118)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@118 f_2@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@13) (IsWandField_11318_89751 pm_f@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22767) (ExhaleHeap@@13 T@PolymorphicMapType_22767) (Mask@@14 T@PolymorphicMapType_22788) (pm_f@@13 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_11293_11294 Mask@@14 null pm_f@@13) (IsWandField_11293_89394 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@119 T@Ref) (f_2@@119 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@119 f_2@@119) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@23) o2@@119 f_2@@119) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@119 f_2@@119)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@119 f_2@@119))
)) (forall ((o2@@120 T@Ref) (f_2@@120 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@120 f_2@@120) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@23) o2@@120 f_2@@120) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@120 f_2@@120)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@120 f_2@@120))
))) (forall ((o2@@121 T@Ref) (f_2@@121 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@121 f_2@@121) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@23) o2@@121 f_2@@121) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@121 f_2@@121)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@121 f_2@@121))
))) (forall ((o2@@122 T@Ref) (f_2@@122 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@122 f_2@@122) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@23) o2@@122 f_2@@122) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@122 f_2@@122)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@122 f_2@@122))
))) (forall ((o2@@123 T@Ref) (f_2@@123 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@123 f_2@@123) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@23) o2@@123 f_2@@123) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@123 f_2@@123)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@123 f_2@@123))
))) (forall ((o2@@124 T@Ref) (f_2@@124 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@124 f_2@@124) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@23) o2@@124 f_2@@124) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@124 f_2@@124)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@124 f_2@@124))
))) (forall ((o2@@125 T@Ref) (f_2@@125 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@125 f_2@@125) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@23) o2@@125 f_2@@125) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@125 f_2@@125)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@125 f_2@@125))
))) (forall ((o2@@126 T@Ref) (f_2@@126 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@126 f_2@@126) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@23) o2@@126 f_2@@126) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@126 f_2@@126)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@126 f_2@@126))
))) (forall ((o2@@127 T@Ref) (f_2@@127 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@127 f_2@@127) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@23) o2@@127 f_2@@127) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@127 f_2@@127)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@127 f_2@@127))
))) (forall ((o2@@128 T@Ref) (f_2@@128 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@128 f_2@@128) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) o2@@128 f_2@@128) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@128 f_2@@128)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@128 f_2@@128))
))) (forall ((o2@@129 T@Ref) (f_2@@129 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@129 f_2@@129) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@23) o2@@129 f_2@@129) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@129 f_2@@129)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@129 f_2@@129))
))) (forall ((o2@@130 T@Ref) (f_2@@130 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@130 f_2@@130) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@23) o2@@130 f_2@@130) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@130 f_2@@130)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@130 f_2@@130))
))) (forall ((o2@@131 T@Ref) (f_2@@131 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@131 f_2@@131) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@23) o2@@131 f_2@@131) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@131 f_2@@131)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@131 f_2@@131))
))) (forall ((o2@@132 T@Ref) (f_2@@132 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@132 f_2@@132) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@23) o2@@132 f_2@@132) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@132 f_2@@132)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@132 f_2@@132))
))) (forall ((o2@@133 T@Ref) (f_2@@133 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@133 f_2@@133) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@23) o2@@133 f_2@@133) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@133 f_2@@133)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@133 f_2@@133))
))) (forall ((o2@@134 T@Ref) (f_2@@134 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@134 f_2@@134) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@23) o2@@134 f_2@@134) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@134 f_2@@134)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@134 f_2@@134))
))) (forall ((o2@@135 T@Ref) (f_2@@135 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@135 f_2@@135) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@23) o2@@135 f_2@@135) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@135 f_2@@135)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@135 f_2@@135))
))) (forall ((o2@@136 T@Ref) (f_2@@136 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@136 f_2@@136) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@23) o2@@136 f_2@@136) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@136 f_2@@136)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@136 f_2@@136))
))) (forall ((o2@@137 T@Ref) (f_2@@137 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@137 f_2@@137) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@23) o2@@137 f_2@@137) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@137 f_2@@137)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@137 f_2@@137))
))) (forall ((o2@@138 T@Ref) (f_2@@138 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@138 f_2@@138) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@23) o2@@138 f_2@@138) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@138 f_2@@138)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@138 f_2@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@14) (IsWandField_11293_89394 pm_f@@13))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22767) (ExhaleHeap@@14 T@PolymorphicMapType_22767) (Mask@@15 T@PolymorphicMapType_22788) (pm_f@@14 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_11185_11294 Mask@@15 null pm_f@@14) (IsWandField_11185_89037 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@139 T@Ref) (f_2@@139 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@139 f_2@@139) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@24) o2@@139 f_2@@139) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@139 f_2@@139)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@139 f_2@@139))
)) (forall ((o2@@140 T@Ref) (f_2@@140 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@140 f_2@@140) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@24) o2@@140 f_2@@140) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@140 f_2@@140)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@140 f_2@@140))
))) (forall ((o2@@141 T@Ref) (f_2@@141 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@141 f_2@@141) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@24) o2@@141 f_2@@141) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@141 f_2@@141)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@141 f_2@@141))
))) (forall ((o2@@142 T@Ref) (f_2@@142 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@142 f_2@@142) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@24) o2@@142 f_2@@142) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@142 f_2@@142)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@142 f_2@@142))
))) (forall ((o2@@143 T@Ref) (f_2@@143 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@143 f_2@@143) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) o2@@143 f_2@@143) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@143 f_2@@143)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@143 f_2@@143))
))) (forall ((o2@@144 T@Ref) (f_2@@144 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@144 f_2@@144) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@24) o2@@144 f_2@@144) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@144 f_2@@144)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@144 f_2@@144))
))) (forall ((o2@@145 T@Ref) (f_2@@145 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@145 f_2@@145) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@24) o2@@145 f_2@@145) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@145 f_2@@145)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@145 f_2@@145))
))) (forall ((o2@@146 T@Ref) (f_2@@146 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@146 f_2@@146) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@24) o2@@146 f_2@@146) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@146 f_2@@146)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@146 f_2@@146))
))) (forall ((o2@@147 T@Ref) (f_2@@147 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@147 f_2@@147) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@24) o2@@147 f_2@@147) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@147 f_2@@147)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@147 f_2@@147))
))) (forall ((o2@@148 T@Ref) (f_2@@148 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@148 f_2@@148) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@24) o2@@148 f_2@@148) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@148 f_2@@148)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@148 f_2@@148))
))) (forall ((o2@@149 T@Ref) (f_2@@149 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@149 f_2@@149) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@24) o2@@149 f_2@@149) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@149 f_2@@149)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@149 f_2@@149))
))) (forall ((o2@@150 T@Ref) (f_2@@150 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@150 f_2@@150) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@24) o2@@150 f_2@@150) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@150 f_2@@150)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@150 f_2@@150))
))) (forall ((o2@@151 T@Ref) (f_2@@151 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@151 f_2@@151) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@24) o2@@151 f_2@@151) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@151 f_2@@151)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@151 f_2@@151))
))) (forall ((o2@@152 T@Ref) (f_2@@152 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@152 f_2@@152) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@24) o2@@152 f_2@@152) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@152 f_2@@152)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@152 f_2@@152))
))) (forall ((o2@@153 T@Ref) (f_2@@153 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@153 f_2@@153) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@24) o2@@153 f_2@@153) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@153 f_2@@153)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@153 f_2@@153))
))) (forall ((o2@@154 T@Ref) (f_2@@154 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@154 f_2@@154) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@24) o2@@154 f_2@@154) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@154 f_2@@154)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@154 f_2@@154))
))) (forall ((o2@@155 T@Ref) (f_2@@155 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@155 f_2@@155) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@24) o2@@155 f_2@@155) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@155 f_2@@155)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@155 f_2@@155))
))) (forall ((o2@@156 T@Ref) (f_2@@156 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@156 f_2@@156) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@24) o2@@156 f_2@@156) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@156 f_2@@156)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@156 f_2@@156))
))) (forall ((o2@@157 T@Ref) (f_2@@157 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@157 f_2@@157) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@24) o2@@157 f_2@@157) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@157 f_2@@157)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@157 f_2@@157))
))) (forall ((o2@@158 T@Ref) (f_2@@158 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@158 f_2@@158) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@24) o2@@158 f_2@@158) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@158 f_2@@158)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@158 f_2@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@15) (IsWandField_11185_89037 pm_f@@14))
)))
(assert (forall ((diz@@11 T@Ref) (diz2 T@Ref) ) (!  (=> (= (Wand_readonly_for_writeonly__valid_wand diz@@11) (Wand_readonly_for_writeonly__valid_wand diz2)) (= diz@@11 diz2))
 :qid |stdinbpl.588:15|
 :skolemid |39|
 :pattern ( (Wand_readonly_for_writeonly__valid_wand diz@@11) (Wand_readonly_for_writeonly__valid_wand diz2))
)))
(assert (forall ((diz@@12 T@Ref) (diz2@@0 T@Ref) ) (!  (=> (= (|Wand_readonly_for_writeonly__valid_wand#sm| diz@@12) (|Wand_readonly_for_writeonly__valid_wand#sm| diz2@@0)) (= diz@@12 diz2@@0))
 :qid |stdinbpl.592:15|
 :skolemid |40|
 :pattern ( (|Wand_readonly_for_writeonly__valid_wand#sm| diz@@12) (|Wand_readonly_for_writeonly__valid_wand#sm| diz2@@0))
)))
(assert (forall ((diz@@13 T@Ref) (diz2@@1 T@Ref) ) (!  (=> (= (WandDemo__readonly diz@@13) (WandDemo__readonly diz2@@1)) (= diz@@13 diz2@@1))
 :qid |stdinbpl.715:15|
 :skolemid |45|
 :pattern ( (WandDemo__readonly diz@@13) (WandDemo__readonly diz2@@1))
)))
(assert (forall ((diz@@14 T@Ref) (diz2@@2 T@Ref) ) (!  (=> (= (|WandDemo__readonly#sm| diz@@14) (|WandDemo__readonly#sm| diz2@@2)) (= diz@@14 diz2@@2))
 :qid |stdinbpl.719:15|
 :skolemid |46|
 :pattern ( (|WandDemo__readonly#sm| diz@@14) (|WandDemo__readonly#sm| diz2@@2))
)))
(assert (forall ((diz@@15 T@Ref) (diz2@@3 T@Ref) ) (!  (=> (= (WandDemo__writeonly diz@@15) (WandDemo__writeonly diz2@@3)) (= diz@@15 diz2@@3))
 :qid |stdinbpl.772:15|
 :skolemid |51|
 :pattern ( (WandDemo__writeonly diz@@15) (WandDemo__writeonly diz2@@3))
)))
(assert (forall ((diz@@16 T@Ref) (diz2@@4 T@Ref) ) (!  (=> (= (|WandDemo__writeonly#sm| diz@@16) (|WandDemo__writeonly#sm| diz2@@4)) (= diz@@16 diz2@@4))
 :qid |stdinbpl.776:15|
 :skolemid |52|
 :pattern ( (|WandDemo__writeonly#sm| diz@@16) (|WandDemo__writeonly#sm| diz2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22767) (ExhaleHeap@@15 T@PolymorphicMapType_22767) (Mask@@16 T@PolymorphicMapType_22788) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@25) o_1 $allocated) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@15) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@15) o_1 $allocated))
)))
(assert (forall ((p T@Field_40435_40436) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_40435_40435 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_40435_40435 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_35526_35527) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_35526_35526 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35526_35526 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_26666_26667) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_26666_26666 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26666_26666 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_11185_11294) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_22827_22827 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22827_22827 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22767) (Mask@@17 T@PolymorphicMapType_22788) (diz@@17 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@17) (or (< AssumeFunctionsAbove 0) (|Wand_readonly_for_writeonly__get_in_1#trigger| (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@26) null (Wand_readonly_for_writeonly__valid_wand diz@@17)) diz@@17))) (=> (not (= diz@@17 null)) (not (= (|Wand_readonly_for_writeonly__get_in_1'| Heap@@26 diz@@17) null))))
 :qid |stdinbpl.231:15|
 :skolemid |26|
 :pattern ( (state Heap@@26 Mask@@17) (|Wand_readonly_for_writeonly__get_in_1'| Heap@@26 diz@@17))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22767) (Mask@@18 T@PolymorphicMapType_22788) (diz@@18 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@18) (or (< AssumeFunctionsAbove 1) (|Wand_readonly_for_writeonly__get_out_1#trigger| (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@27) null (Wand_readonly_for_writeonly__valid_wand diz@@18)) diz@@18))) (=> (not (= diz@@18 null)) (not (= (|Wand_readonly_for_writeonly__get_out_1'| Heap@@27 diz@@18) null))))
 :qid |stdinbpl.369:15|
 :skolemid |31|
 :pattern ( (state Heap@@27 Mask@@18) (|Wand_readonly_for_writeonly__get_out_1'| Heap@@27 diz@@18))
)))
(assert  (not (IsPredicateField_11183_1189 Wand_readonly_for_writeonly__lemma)))
(assert  (not (IsWandField_11183_1189 Wand_readonly_for_writeonly__lemma)))
(assert  (not (IsPredicateField_11185_11186 Wand_readonly_for_writeonly__in_1)))
(assert  (not (IsWandField_11185_11186 Wand_readonly_for_writeonly__in_1)))
(assert  (not (IsPredicateField_11185_11186 Wand_readonly_for_writeonly__out_1)))
(assert  (not (IsWandField_11185_11186 Wand_readonly_for_writeonly__out_1)))
(assert  (not (IsPredicateField_11185_11186 Wand_readonly_for_writeonly__this_1)))
(assert  (not (IsWandField_11185_11186 Wand_readonly_for_writeonly__this_1)))
(assert  (not (IsPredicateField_11183_1189 WandDemo__x)))
(assert  (not (IsWandField_11183_1189 WandDemo__x)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22767) (ExhaleHeap@@16 T@PolymorphicMapType_22767) (Mask@@19 T@PolymorphicMapType_22788) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@19) (succHeap Heap@@28 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@19))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22788) (o_2@@19 T@Ref) (f_4@@19 T@Field_40448_40453) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_11343_103783 f_4@@19))) (not (IsWandField_11343_103799 f_4@@19))) (<= (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22788) (o_2@@20 T@Ref) (f_4@@20 T@Field_11343_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11343_53 f_4@@20))) (not (IsWandField_11343_53 f_4@@20))) (<= (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22788) (o_2@@21 T@Ref) (f_4@@21 T@Field_11343_11186) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_11343_11186 f_4@@21))) (not (IsWandField_11343_11186 f_4@@21))) (<= (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22788) (o_2@@22 T@Ref) (f_4@@22 T@Field_11343_1249) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11343_1189 f_4@@22))) (not (IsWandField_11343_1189 f_4@@22))) (<= (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22788) (o_2@@23 T@Ref) (f_4@@23 T@Field_40435_40436) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@@24) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11343_11344 f_4@@23))) (not (IsWandField_11343_90108 f_4@@23))) (<= (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@@24) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@@24) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22788) (o_2@@24 T@Ref) (f_4@@24 T@Field_36825_36830) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@@25) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_11318_102952 f_4@@24))) (not (IsWandField_11318_102968 f_4@@24))) (<= (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@@25) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@@25) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22788) (o_2@@25 T@Ref) (f_4@@25 T@Field_11318_53) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@@26) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_11318_53 f_4@@25))) (not (IsWandField_11318_53 f_4@@25))) (<= (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@@26) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@@26) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22788) (o_2@@26 T@Ref) (f_4@@26 T@Field_11318_11186) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@@27) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_11318_11186 f_4@@26))) (not (IsWandField_11318_11186 f_4@@26))) (<= (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@@27) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@@27) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22788) (o_2@@27 T@Ref) (f_4@@27 T@Field_11318_1249) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@@28) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_11318_1189 f_4@@27))) (not (IsWandField_11318_1189 f_4@@27))) (<= (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@@28) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@@28) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22788) (o_2@@28 T@Ref) (f_4@@28 T@Field_35526_35527) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@@29) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_11318_11319 f_4@@28))) (not (IsWandField_11318_89751 f_4@@28))) (<= (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@@29) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@@29) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22788) (o_2@@29 T@Ref) (f_4@@29 T@Field_11185_29636) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@@30) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_11183_102121 f_4@@29))) (not (IsWandField_11183_102137 f_4@@29))) (<= (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@@30) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@@30) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22788) (o_2@@30 T@Ref) (f_4@@30 T@Field_22827_53) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@@31) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_11183_53 f_4@@30))) (not (IsWandField_11183_53 f_4@@30))) (<= (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@@31) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@@31) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_22788) (o_2@@31 T@Ref) (f_4@@31 T@Field_22840_22841) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@@32) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_11185_11186 f_4@@31))) (not (IsWandField_11185_11186 f_4@@31))) (<= (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@@32) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@@32) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_22788) (o_2@@32 T@Ref) (f_4@@32 T@Field_26154_1189) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@@33) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_11183_1189 f_4@@32))) (not (IsWandField_11183_1189 f_4@@32))) (<= (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@@33) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@@33) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_22788) (o_2@@33 T@Ref) (f_4@@33 T@Field_11185_11294) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@@34) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_11185_82416 f_4@@33))) (not (IsWandField_11185_89037 f_4@@33))) (<= (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@@34) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@@34) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_22788) (o_2@@34 T@Ref) (f_4@@34 T@Field_29631_29636) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@@35) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_11293_101318 f_4@@34))) (not (IsWandField_11293_101334 f_4@@34))) (<= (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@@35) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@@35) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_22788) (o_2@@35 T@Ref) (f_4@@35 T@Field_11293_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@@36) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_11293_53 f_4@@35))) (not (IsWandField_11293_53 f_4@@35))) (<= (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@@36) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@@36) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_22788) (o_2@@36 T@Ref) (f_4@@36 T@Field_11293_11186) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@@37) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_11293_11186 f_4@@36))) (not (IsWandField_11293_11186 f_4@@36))) (<= (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@@37) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@@37) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_22788) (o_2@@37 T@Ref) (f_4@@37 T@Field_11293_1249) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@@38) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_11293_1189 f_4@@37))) (not (IsWandField_11293_1189 f_4@@37))) (<= (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@@38) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@@38) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_22788) (o_2@@38 T@Ref) (f_4@@38 T@Field_26666_26667) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@@39) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_11293_11294 f_4@@38))) (not (IsWandField_11293_89394 f_4@@38))) (<= (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@@39) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@@39) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_22788) (o_2@@39 T@Ref) (f_4@@39 T@Field_40448_40453) ) (! (= (HasDirectPerm_11343_82171 Mask@@40 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@@40) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_82171 Mask@@40 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_22788) (o_2@@40 T@Ref) (f_4@@40 T@Field_11343_53) ) (! (= (HasDirectPerm_11343_53 Mask@@41 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@@41) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_53 Mask@@41 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_22788) (o_2@@41 T@Ref) (f_4@@41 T@Field_40435_40436) ) (! (= (HasDirectPerm_11343_11344 Mask@@42 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@@42) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_11344 Mask@@42 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_22788) (o_2@@42 T@Ref) (f_4@@42 T@Field_11343_1249) ) (! (= (HasDirectPerm_11343_1249 Mask@@43 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@@43) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_1249 Mask@@43 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_22788) (o_2@@43 T@Ref) (f_4@@43 T@Field_11343_11186) ) (! (= (HasDirectPerm_11343_11186 Mask@@44 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@@44) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_11186 Mask@@44 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_22788) (o_2@@44 T@Ref) (f_4@@44 T@Field_36825_36830) ) (! (= (HasDirectPerm_11318_81073 Mask@@45 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@@45) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_81073 Mask@@45 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_22788) (o_2@@45 T@Ref) (f_4@@45 T@Field_11318_53) ) (! (= (HasDirectPerm_11318_53 Mask@@46 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@@46) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_53 Mask@@46 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_22788) (o_2@@46 T@Ref) (f_4@@46 T@Field_35526_35527) ) (! (= (HasDirectPerm_11318_11319 Mask@@47 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@@47) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_11319 Mask@@47 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_22788) (o_2@@47 T@Ref) (f_4@@47 T@Field_11318_1249) ) (! (= (HasDirectPerm_11318_1249 Mask@@48 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@@48) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_1249 Mask@@48 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_22788) (o_2@@48 T@Ref) (f_4@@48 T@Field_11318_11186) ) (! (= (HasDirectPerm_11318_11186 Mask@@49 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@@49) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_11186 Mask@@49 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_22788) (o_2@@49 T@Ref) (f_4@@49 T@Field_29631_29636) ) (! (= (HasDirectPerm_11293_79975 Mask@@50 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@@50) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_79975 Mask@@50 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_22788) (o_2@@50 T@Ref) (f_4@@50 T@Field_11293_53) ) (! (= (HasDirectPerm_11293_53 Mask@@51 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@@51) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_53 Mask@@51 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_22788) (o_2@@51 T@Ref) (f_4@@51 T@Field_26666_26667) ) (! (= (HasDirectPerm_11293_11294 Mask@@52 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@@52) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_11294 Mask@@52 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_22788) (o_2@@52 T@Ref) (f_4@@52 T@Field_11293_1249) ) (! (= (HasDirectPerm_11293_1249 Mask@@53 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@@53) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_1249 Mask@@53 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_22788) (o_2@@53 T@Ref) (f_4@@53 T@Field_11293_11186) ) (! (= (HasDirectPerm_11293_11186 Mask@@54 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@@54) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_11186 Mask@@54 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_22788) (o_2@@54 T@Ref) (f_4@@54 T@Field_11185_29636) ) (! (= (HasDirectPerm_11185_78834 Mask@@55 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@@55) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11185_78834 Mask@@55 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_22788) (o_2@@55 T@Ref) (f_4@@55 T@Field_22827_53) ) (! (= (HasDirectPerm_11185_53 Mask@@56 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@@56) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11185_53 Mask@@56 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_22788) (o_2@@56 T@Ref) (f_4@@56 T@Field_11185_11294) ) (! (= (HasDirectPerm_11185_11294 Mask@@57 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@@57) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11185_11294 Mask@@57 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_22788) (o_2@@57 T@Ref) (f_4@@57 T@Field_26154_1189) ) (! (= (HasDirectPerm_11194_1249 Mask@@58 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@@58) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11194_1249 Mask@@58 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_22788) (o_2@@58 T@Ref) (f_4@@58 T@Field_22840_22841) ) (! (= (HasDirectPerm_11185_11186 Mask@@59 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@@59) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11185_11186 Mask@@59 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22767) (ExhaleHeap@@17 T@PolymorphicMapType_22767) (Mask@@60 T@PolymorphicMapType_22788) (o_1@@0 T@Ref) (f_2@@159 T@Field_40448_40453) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@60) (=> (HasDirectPerm_11343_82171 Mask@@60 o_1@@0 f_2@@159) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@29) o_1@@0 f_2@@159) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@17) o_1@@0 f_2@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@60) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@17) o_1@@0 f_2@@159))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22767) (ExhaleHeap@@18 T@PolymorphicMapType_22767) (Mask@@61 T@PolymorphicMapType_22788) (o_1@@1 T@Ref) (f_2@@160 T@Field_11343_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@61) (=> (HasDirectPerm_11343_53 Mask@@61 o_1@@1 f_2@@160) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@30) o_1@@1 f_2@@160) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@18) o_1@@1 f_2@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@61) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@18) o_1@@1 f_2@@160))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22767) (ExhaleHeap@@19 T@PolymorphicMapType_22767) (Mask@@62 T@PolymorphicMapType_22788) (o_1@@2 T@Ref) (f_2@@161 T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@62) (=> (HasDirectPerm_11343_11344 Mask@@62 o_1@@2 f_2@@161) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@31) o_1@@2 f_2@@161) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@19) o_1@@2 f_2@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@62) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@19) o_1@@2 f_2@@161))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22767) (ExhaleHeap@@20 T@PolymorphicMapType_22767) (Mask@@63 T@PolymorphicMapType_22788) (o_1@@3 T@Ref) (f_2@@162 T@Field_11343_1249) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@63) (=> (HasDirectPerm_11343_1249 Mask@@63 o_1@@3 f_2@@162) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@32) o_1@@3 f_2@@162) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@20) o_1@@3 f_2@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@63) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@20) o_1@@3 f_2@@162))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22767) (ExhaleHeap@@21 T@PolymorphicMapType_22767) (Mask@@64 T@PolymorphicMapType_22788) (o_1@@4 T@Ref) (f_2@@163 T@Field_11343_11186) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@64) (=> (HasDirectPerm_11343_11186 Mask@@64 o_1@@4 f_2@@163) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@33) o_1@@4 f_2@@163) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@21) o_1@@4 f_2@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@64) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@21) o_1@@4 f_2@@163))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22767) (ExhaleHeap@@22 T@PolymorphicMapType_22767) (Mask@@65 T@PolymorphicMapType_22788) (o_1@@5 T@Ref) (f_2@@164 T@Field_36825_36830) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@65) (=> (HasDirectPerm_11318_81073 Mask@@65 o_1@@5 f_2@@164) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@34) o_1@@5 f_2@@164) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@22) o_1@@5 f_2@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@65) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@22) o_1@@5 f_2@@164))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22767) (ExhaleHeap@@23 T@PolymorphicMapType_22767) (Mask@@66 T@PolymorphicMapType_22788) (o_1@@6 T@Ref) (f_2@@165 T@Field_11318_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@66) (=> (HasDirectPerm_11318_53 Mask@@66 o_1@@6 f_2@@165) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@35) o_1@@6 f_2@@165) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@23) o_1@@6 f_2@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@66) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@23) o_1@@6 f_2@@165))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22767) (ExhaleHeap@@24 T@PolymorphicMapType_22767) (Mask@@67 T@PolymorphicMapType_22788) (o_1@@7 T@Ref) (f_2@@166 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@67) (=> (HasDirectPerm_11318_11319 Mask@@67 o_1@@7 f_2@@166) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@36) o_1@@7 f_2@@166) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@24) o_1@@7 f_2@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@67) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@24) o_1@@7 f_2@@166))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22767) (ExhaleHeap@@25 T@PolymorphicMapType_22767) (Mask@@68 T@PolymorphicMapType_22788) (o_1@@8 T@Ref) (f_2@@167 T@Field_11318_1249) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@68) (=> (HasDirectPerm_11318_1249 Mask@@68 o_1@@8 f_2@@167) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@37) o_1@@8 f_2@@167) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@25) o_1@@8 f_2@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@68) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@25) o_1@@8 f_2@@167))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22767) (ExhaleHeap@@26 T@PolymorphicMapType_22767) (Mask@@69 T@PolymorphicMapType_22788) (o_1@@9 T@Ref) (f_2@@168 T@Field_11318_11186) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@69) (=> (HasDirectPerm_11318_11186 Mask@@69 o_1@@9 f_2@@168) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@38) o_1@@9 f_2@@168) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@26) o_1@@9 f_2@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@69) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@26) o_1@@9 f_2@@168))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_22767) (ExhaleHeap@@27 T@PolymorphicMapType_22767) (Mask@@70 T@PolymorphicMapType_22788) (o_1@@10 T@Ref) (f_2@@169 T@Field_29631_29636) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@70) (=> (HasDirectPerm_11293_79975 Mask@@70 o_1@@10 f_2@@169) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@39) o_1@@10 f_2@@169) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@27) o_1@@10 f_2@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@70) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@27) o_1@@10 f_2@@169))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_22767) (ExhaleHeap@@28 T@PolymorphicMapType_22767) (Mask@@71 T@PolymorphicMapType_22788) (o_1@@11 T@Ref) (f_2@@170 T@Field_11293_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@28 Mask@@71) (=> (HasDirectPerm_11293_53 Mask@@71 o_1@@11 f_2@@170) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@40) o_1@@11 f_2@@170) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@28) o_1@@11 f_2@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@28 Mask@@71) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@28) o_1@@11 f_2@@170))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_22767) (ExhaleHeap@@29 T@PolymorphicMapType_22767) (Mask@@72 T@PolymorphicMapType_22788) (o_1@@12 T@Ref) (f_2@@171 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@29 Mask@@72) (=> (HasDirectPerm_11293_11294 Mask@@72 o_1@@12 f_2@@171) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@41) o_1@@12 f_2@@171) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@29) o_1@@12 f_2@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@29 Mask@@72) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@29) o_1@@12 f_2@@171))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_22767) (ExhaleHeap@@30 T@PolymorphicMapType_22767) (Mask@@73 T@PolymorphicMapType_22788) (o_1@@13 T@Ref) (f_2@@172 T@Field_11293_1249) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@30 Mask@@73) (=> (HasDirectPerm_11293_1249 Mask@@73 o_1@@13 f_2@@172) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@42) o_1@@13 f_2@@172) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@30) o_1@@13 f_2@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@30 Mask@@73) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@30) o_1@@13 f_2@@172))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_22767) (ExhaleHeap@@31 T@PolymorphicMapType_22767) (Mask@@74 T@PolymorphicMapType_22788) (o_1@@14 T@Ref) (f_2@@173 T@Field_11293_11186) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@31 Mask@@74) (=> (HasDirectPerm_11293_11186 Mask@@74 o_1@@14 f_2@@173) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@43) o_1@@14 f_2@@173) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@31) o_1@@14 f_2@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@31 Mask@@74) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@31) o_1@@14 f_2@@173))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_22767) (ExhaleHeap@@32 T@PolymorphicMapType_22767) (Mask@@75 T@PolymorphicMapType_22788) (o_1@@15 T@Ref) (f_2@@174 T@Field_11185_29636) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@32 Mask@@75) (=> (HasDirectPerm_11185_78834 Mask@@75 o_1@@15 f_2@@174) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@44) o_1@@15 f_2@@174) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@32) o_1@@15 f_2@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@32 Mask@@75) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@32) o_1@@15 f_2@@174))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_22767) (ExhaleHeap@@33 T@PolymorphicMapType_22767) (Mask@@76 T@PolymorphicMapType_22788) (o_1@@16 T@Ref) (f_2@@175 T@Field_22827_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@33 Mask@@76) (=> (HasDirectPerm_11185_53 Mask@@76 o_1@@16 f_2@@175) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@45) o_1@@16 f_2@@175) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@33) o_1@@16 f_2@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@33 Mask@@76) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@33) o_1@@16 f_2@@175))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_22767) (ExhaleHeap@@34 T@PolymorphicMapType_22767) (Mask@@77 T@PolymorphicMapType_22788) (o_1@@17 T@Ref) (f_2@@176 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@34 Mask@@77) (=> (HasDirectPerm_11185_11294 Mask@@77 o_1@@17 f_2@@176) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@46) o_1@@17 f_2@@176) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@34) o_1@@17 f_2@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@34 Mask@@77) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@34) o_1@@17 f_2@@176))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_22767) (ExhaleHeap@@35 T@PolymorphicMapType_22767) (Mask@@78 T@PolymorphicMapType_22788) (o_1@@18 T@Ref) (f_2@@177 T@Field_26154_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@35 Mask@@78) (=> (HasDirectPerm_11194_1249 Mask@@78 o_1@@18 f_2@@177) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@47) o_1@@18 f_2@@177) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@35) o_1@@18 f_2@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@35 Mask@@78) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@35) o_1@@18 f_2@@177))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_22767) (ExhaleHeap@@36 T@PolymorphicMapType_22767) (Mask@@79 T@PolymorphicMapType_22788) (o_1@@19 T@Ref) (f_2@@178 T@Field_22840_22841) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@36 Mask@@79) (=> (HasDirectPerm_11185_11186 Mask@@79 o_1@@19 f_2@@178) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@48) o_1@@19 f_2@@178) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@36) o_1@@19 f_2@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@36 Mask@@79) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@36) o_1@@19 f_2@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_40448_40453) ) (! (= (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_11343_53) ) (! (= (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_11343_11186) ) (! (= (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_11343_1249) ) (! (= (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_40435_40436) ) (! (= (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_36825_36830) ) (! (= (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_11318_53) ) (! (= (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_11318_11186) ) (! (= (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_11318_1249) ) (! (= (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_35526_35527) ) (! (= (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_11185_29636) ) (! (= (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_22827_53) ) (! (= (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_22840_22841) ) (! (= (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_26154_1189) ) (! (= (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_11185_11294) ) (! (= (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_29631_29636) ) (! (= (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_11293_53) ) (! (= (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_11293_11186) ) (! (= (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_11293_1249) ) (! (= (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_26666_26667) ) (! (= (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22788) (SummandMask1 T@PolymorphicMapType_22788) (SummandMask2 T@PolymorphicMapType_22788) (o_2@@79 T@Ref) (f_4@@79 T@Field_40448_40453) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22788) (SummandMask1@@0 T@PolymorphicMapType_22788) (SummandMask2@@0 T@PolymorphicMapType_22788) (o_2@@80 T@Ref) (f_4@@80 T@Field_11343_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22788) (SummandMask1@@1 T@PolymorphicMapType_22788) (SummandMask2@@1 T@PolymorphicMapType_22788) (o_2@@81 T@Ref) (f_4@@81 T@Field_11343_11186) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22788) (SummandMask1@@2 T@PolymorphicMapType_22788) (SummandMask2@@2 T@PolymorphicMapType_22788) (o_2@@82 T@Ref) (f_4@@82 T@Field_11343_1249) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22788) (SummandMask1@@3 T@PolymorphicMapType_22788) (SummandMask2@@3 T@PolymorphicMapType_22788) (o_2@@83 T@Ref) (f_4@@83 T@Field_40435_40436) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22788) (SummandMask1@@4 T@PolymorphicMapType_22788) (SummandMask2@@4 T@PolymorphicMapType_22788) (o_2@@84 T@Ref) (f_4@@84 T@Field_36825_36830) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22788) (SummandMask1@@5 T@PolymorphicMapType_22788) (SummandMask2@@5 T@PolymorphicMapType_22788) (o_2@@85 T@Ref) (f_4@@85 T@Field_11318_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22788) (SummandMask1@@6 T@PolymorphicMapType_22788) (SummandMask2@@6 T@PolymorphicMapType_22788) (o_2@@86 T@Ref) (f_4@@86 T@Field_11318_11186) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22788) (SummandMask1@@7 T@PolymorphicMapType_22788) (SummandMask2@@7 T@PolymorphicMapType_22788) (o_2@@87 T@Ref) (f_4@@87 T@Field_11318_1249) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22788) (SummandMask1@@8 T@PolymorphicMapType_22788) (SummandMask2@@8 T@PolymorphicMapType_22788) (o_2@@88 T@Ref) (f_4@@88 T@Field_35526_35527) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_22788) (SummandMask1@@9 T@PolymorphicMapType_22788) (SummandMask2@@9 T@PolymorphicMapType_22788) (o_2@@89 T@Ref) (f_4@@89 T@Field_11185_29636) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_22788) (SummandMask1@@10 T@PolymorphicMapType_22788) (SummandMask2@@10 T@PolymorphicMapType_22788) (o_2@@90 T@Ref) (f_4@@90 T@Field_22827_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_22788) (SummandMask1@@11 T@PolymorphicMapType_22788) (SummandMask2@@11 T@PolymorphicMapType_22788) (o_2@@91 T@Ref) (f_4@@91 T@Field_22840_22841) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_22788) (SummandMask1@@12 T@PolymorphicMapType_22788) (SummandMask2@@12 T@PolymorphicMapType_22788) (o_2@@92 T@Ref) (f_4@@92 T@Field_26154_1189) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_22788) (SummandMask1@@13 T@PolymorphicMapType_22788) (SummandMask2@@13 T@PolymorphicMapType_22788) (o_2@@93 T@Ref) (f_4@@93 T@Field_11185_11294) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_22788) (SummandMask1@@14 T@PolymorphicMapType_22788) (SummandMask2@@14 T@PolymorphicMapType_22788) (o_2@@94 T@Ref) (f_4@@94 T@Field_29631_29636) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_22788) (SummandMask1@@15 T@PolymorphicMapType_22788) (SummandMask2@@15 T@PolymorphicMapType_22788) (o_2@@95 T@Ref) (f_4@@95 T@Field_11293_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_22788) (SummandMask1@@16 T@PolymorphicMapType_22788) (SummandMask2@@16 T@PolymorphicMapType_22788) (o_2@@96 T@Ref) (f_4@@96 T@Field_11293_11186) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_22788) (SummandMask1@@17 T@PolymorphicMapType_22788) (SummandMask2@@17 T@PolymorphicMapType_22788) (o_2@@97 T@Ref) (f_4@@97 T@Field_11293_1249) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_22788) (SummandMask1@@18 T@PolymorphicMapType_22788) (SummandMask2@@18 T@PolymorphicMapType_22788) (o_2@@98 T@Ref) (f_4@@98 T@Field_26666_26667) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_22767) (Mask@@80 T@PolymorphicMapType_22788) (diz@@19 T@Ref) ) (!  (=> (and (state Heap@@49 Mask@@80) (< AssumeFunctionsAbove 0)) (=> (not (= diz@@19 null)) (= (Wand_readonly_for_writeonly__get_in_1 Heap@@49 diz@@19) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@49) diz@@19 Wand_readonly_for_writeonly__in_1))))
 :qid |stdinbpl.218:15|
 :skolemid |24|
 :pattern ( (state Heap@@49 Mask@@80) (Wand_readonly_for_writeonly__get_in_1 Heap@@49 diz@@19))
 :pattern ( (state Heap@@49 Mask@@80) (|Wand_readonly_for_writeonly__get_in_1#triggerStateless| diz@@19) (|Wand_readonly_for_writeonly__valid_wand#trigger_11293| Heap@@49 (Wand_readonly_for_writeonly__valid_wand diz@@19)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_22767) (Mask@@81 T@PolymorphicMapType_22788) (diz@@20 T@Ref) ) (!  (=> (and (state Heap@@50 Mask@@81) (< AssumeFunctionsAbove 1)) (=> (not (= diz@@20 null)) (= (Wand_readonly_for_writeonly__get_out_1 Heap@@50 diz@@20) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@50) diz@@20 Wand_readonly_for_writeonly__out_1))))
 :qid |stdinbpl.356:15|
 :skolemid |29|
 :pattern ( (state Heap@@50 Mask@@81) (Wand_readonly_for_writeonly__get_out_1 Heap@@50 diz@@20))
 :pattern ( (state Heap@@50 Mask@@81) (|Wand_readonly_for_writeonly__get_out_1#triggerStateless| diz@@20) (|Wand_readonly_for_writeonly__valid_wand#trigger_11293| Heap@@50 (Wand_readonly_for_writeonly__valid_wand diz@@20)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_22767) (Mask@@82 T@PolymorphicMapType_22788) (diz@@21 T@Ref) ) (!  (=> (and (state Heap@@51 Mask@@82) (< AssumeFunctionsAbove 2)) (=> (not (= diz@@21 null)) (= (WandDemo__get Heap@@51 diz@@21) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@51) diz@@21 WandDemo__x))))
 :qid |stdinbpl.494:15|
 :skolemid |34|
 :pattern ( (state Heap@@51 Mask@@82) (WandDemo__get Heap@@51 diz@@21))
 :pattern ( (state Heap@@51 Mask@@82) (|WandDemo__get#triggerStateless| diz@@21) (|WandDemo__readonly#trigger_11318| Heap@@51 (WandDemo__readonly diz@@21)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_22767) (Mask@@83 T@PolymorphicMapType_22788) (diz@@22 T@Ref) ) (!  (=> (state Heap@@52 Mask@@83) (= (|Wand_readonly_for_writeonly__get_in_1'| Heap@@52 diz@@22) (|Wand_readonly_for_writeonly__get_in_1#frame| (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@52) null (Wand_readonly_for_writeonly__valid_wand diz@@22)) diz@@22)))
 :qid |stdinbpl.225:15|
 :skolemid |25|
 :pattern ( (state Heap@@52 Mask@@83) (|Wand_readonly_for_writeonly__get_in_1'| Heap@@52 diz@@22))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_22767) (Mask@@84 T@PolymorphicMapType_22788) (diz@@23 T@Ref) ) (!  (=> (state Heap@@53 Mask@@84) (= (|Wand_readonly_for_writeonly__get_out_1'| Heap@@53 diz@@23) (|Wand_readonly_for_writeonly__get_out_1#frame| (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@53) null (Wand_readonly_for_writeonly__valid_wand diz@@23)) diz@@23)))
 :qid |stdinbpl.363:15|
 :skolemid |30|
 :pattern ( (state Heap@@53 Mask@@84) (|Wand_readonly_for_writeonly__get_out_1'| Heap@@53 diz@@23))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_22767) (Mask@@85 T@PolymorphicMapType_22788) (diz@@24 T@Ref) ) (!  (=> (state Heap@@54 Mask@@85) (= (|WandDemo__get'| Heap@@54 diz@@24) (|WandDemo__get#frame| (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@54) null (WandDemo__readonly diz@@24)) diz@@24)))
 :qid |stdinbpl.501:15|
 :skolemid |35|
 :pattern ( (state Heap@@54 Mask@@85) (|WandDemo__get'| Heap@@54 diz@@24))
)))
(assert (forall ((diz@@25 T@Ref) ) (! (= (getPredWandId_11293_11294 (Wand_readonly_for_writeonly__valid_wand diz@@25)) 0)
 :qid |stdinbpl.582:15|
 :skolemid |38|
 :pattern ( (Wand_readonly_for_writeonly__valid_wand diz@@25))
)))
(assert (forall ((diz@@26 T@Ref) ) (! (= (getPredWandId_11318_11319 (WandDemo__readonly diz@@26)) 1)
 :qid |stdinbpl.709:15|
 :skolemid |44|
 :pattern ( (WandDemo__readonly diz@@26))
)))
(assert (forall ((diz@@27 T@Ref) ) (! (= (getPredWandId_11343_11344 (WandDemo__writeonly diz@@27)) 2)
 :qid |stdinbpl.766:15|
 :skolemid |50|
 :pattern ( (WandDemo__writeonly diz@@27))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_22767) (o T@Ref) (f_3 T@Field_40448_40453) (v T@PolymorphicMapType_23316) ) (! (succHeap Heap@@55 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@55) (store (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@55) o f_3 v) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@55) (store (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@55) o f_3 v) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_22767) (o@@0 T@Ref) (f_3@@0 T@Field_11343_1249) (v@@0 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@56) (store (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@56) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@56) (store (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@56) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_22767) (o@@1 T@Ref) (f_3@@1 T@Field_40435_40436) (v@@1 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@57) (store (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@57) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@57) (store (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@57) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_22767) (o@@2 T@Ref) (f_3@@2 T@Field_11343_11186) (v@@2 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@58) (store (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@58) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@58) (store (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@58) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_22767) (o@@3 T@Ref) (f_3@@3 T@Field_11343_53) (v@@3 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@59) (store (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@59) o@@3 f_3@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@59) (store (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@59) o@@3 f_3@@3 v@@3)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_22767) (o@@4 T@Ref) (f_3@@4 T@Field_36825_36830) (v@@4 T@PolymorphicMapType_23316) ) (! (succHeap Heap@@60 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@60) (store (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@60) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@60) (store (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@60) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_22767) (o@@5 T@Ref) (f_3@@5 T@Field_11318_1249) (v@@5 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@61) (store (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@61) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@61) (store (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@61) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_22767) (o@@6 T@Ref) (f_3@@6 T@Field_35526_35527) (v@@6 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@62) (store (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@62) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@62) (store (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@62) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_22767) (o@@7 T@Ref) (f_3@@7 T@Field_11318_11186) (v@@7 T@Ref) ) (! (succHeap Heap@@63 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@63) (store (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@63) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@63) (store (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@63) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_22767) (o@@8 T@Ref) (f_3@@8 T@Field_11318_53) (v@@8 Bool) ) (! (succHeap Heap@@64 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@64) (store (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@64) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@64) (store (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@64) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_22767) (o@@9 T@Ref) (f_3@@9 T@Field_29631_29636) (v@@9 T@PolymorphicMapType_23316) ) (! (succHeap Heap@@65 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@65) (store (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@65) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@65) (store (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@65) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_22767) (o@@10 T@Ref) (f_3@@10 T@Field_11293_1249) (v@@10 Int) ) (! (succHeap Heap@@66 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@66) (store (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@66) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@66) (store (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@66) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_22767) (o@@11 T@Ref) (f_3@@11 T@Field_26666_26667) (v@@11 T@FrameType) ) (! (succHeap Heap@@67 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@67) (store (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@67) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@67) (store (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@67) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_22767) (o@@12 T@Ref) (f_3@@12 T@Field_11293_11186) (v@@12 T@Ref) ) (! (succHeap Heap@@68 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@68) (store (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@68) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@68) (store (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@68) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_22767) (o@@13 T@Ref) (f_3@@13 T@Field_11293_53) (v@@13 Bool) ) (! (succHeap Heap@@69 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@69) (store (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@69) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@69) (store (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@69) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_22767) (o@@14 T@Ref) (f_3@@14 T@Field_11185_29636) (v@@14 T@PolymorphicMapType_23316) ) (! (succHeap Heap@@70 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@70) (store (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@70) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@70) (store (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@70) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_22767) (o@@15 T@Ref) (f_3@@15 T@Field_26154_1189) (v@@15 Int) ) (! (succHeap Heap@@71 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@71) (store (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@71) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@71) (store (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@71) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_22767) (o@@16 T@Ref) (f_3@@16 T@Field_11185_11294) (v@@16 T@FrameType) ) (! (succHeap Heap@@72 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@72) (store (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@72) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@72) (store (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@72) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_22767) (o@@17 T@Ref) (f_3@@17 T@Field_22840_22841) (v@@17 T@Ref) ) (! (succHeap Heap@@73 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@73) (store (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@73) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@73) (store (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@73) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_22767) (o@@18 T@Ref) (f_3@@18 T@Field_22827_53) (v@@18 Bool) ) (! (succHeap Heap@@74 (PolymorphicMapType_22767 (store (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@74) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (store (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@74) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@74)))
)))
(assert (forall ((diz@@28 T@Ref) ) (! (= (PredicateMaskField_11293 (Wand_readonly_for_writeonly__valid_wand diz@@28)) (|Wand_readonly_for_writeonly__valid_wand#sm| diz@@28))
 :qid |stdinbpl.574:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_11293 (Wand_readonly_for_writeonly__valid_wand diz@@28)))
)))
(assert (forall ((diz@@29 T@Ref) ) (! (= (PredicateMaskField_11318 (WandDemo__readonly diz@@29)) (|WandDemo__readonly#sm| diz@@29))
 :qid |stdinbpl.701:15|
 :skolemid |42|
 :pattern ( (PredicateMaskField_11318 (WandDemo__readonly diz@@29)))
)))
(assert (forall ((diz@@30 T@Ref) ) (! (= (PredicateMaskField_11343 (WandDemo__writeonly diz@@30)) (|WandDemo__writeonly#sm| diz@@30))
 :qid |stdinbpl.758:15|
 :skolemid |48|
 :pattern ( (PredicateMaskField_11343 (WandDemo__writeonly diz@@30)))
)))
(assert (forall ((o@@19 T@Ref) (f T@Field_22840_22841) (Heap@@75 T@PolymorphicMapType_22767) ) (!  (=> (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@75) o@@19 $allocated) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@75) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@75) o@@19 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@75) o@@19 f))
)))
(assert (forall ((p@@4 T@Field_40435_40436) (v_1@@3 T@FrameType) (q T@Field_40435_40436) (w@@3 T@FrameType) (r T@Field_40435_40436) (u T@FrameType) ) (!  (=> (and (InsidePredicate_40435_40435 p@@4 v_1@@3 q w@@3) (InsidePredicate_40435_40435 q w@@3 r u)) (InsidePredicate_40435_40435 p@@4 v_1@@3 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_40435 p@@4 v_1@@3 q w@@3) (InsidePredicate_40435_40435 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_40435_40436) (v_1@@4 T@FrameType) (q@@0 T@Field_40435_40436) (w@@4 T@FrameType) (r@@0 T@Field_35526_35527) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_40435 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_40435_35526 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_40435_35526 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_40435 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_40435_35526 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_40435_40436) (v_1@@5 T@FrameType) (q@@1 T@Field_40435_40436) (w@@5 T@FrameType) (r@@1 T@Field_26666_26667) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_40435 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_40435_26666 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_40435_26666 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_40435 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_40435_26666 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_40435_40436) (v_1@@6 T@FrameType) (q@@2 T@Field_40435_40436) (w@@6 T@FrameType) (r@@2 T@Field_11185_11294) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_40435 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_40435_22827 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_40435_22827 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_40435 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_40435_22827 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_40435_40436) (v_1@@7 T@FrameType) (q@@3 T@Field_35526_35527) (w@@7 T@FrameType) (r@@3 T@Field_40435_40436) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_35526 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_35526_40435 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_40435_40435 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_35526 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_35526_40435 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_40435_40436) (v_1@@8 T@FrameType) (q@@4 T@Field_35526_35527) (w@@8 T@FrameType) (r@@4 T@Field_35526_35527) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_35526 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_35526_35526 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_40435_35526 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_35526 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_35526_35526 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_40435_40436) (v_1@@9 T@FrameType) (q@@5 T@Field_35526_35527) (w@@9 T@FrameType) (r@@5 T@Field_26666_26667) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_35526 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_35526_26666 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_40435_26666 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_35526 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_35526_26666 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_40435_40436) (v_1@@10 T@FrameType) (q@@6 T@Field_35526_35527) (w@@10 T@FrameType) (r@@6 T@Field_11185_11294) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_35526 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_35526_22827 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_40435_22827 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_35526 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_35526_22827 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_40435_40436) (v_1@@11 T@FrameType) (q@@7 T@Field_26666_26667) (w@@11 T@FrameType) (r@@7 T@Field_40435_40436) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_26666 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_26666_40435 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_40435_40435 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_26666 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_26666_40435 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_40435_40436) (v_1@@12 T@FrameType) (q@@8 T@Field_26666_26667) (w@@12 T@FrameType) (r@@8 T@Field_35526_35527) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_26666 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_26666_35526 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_40435_35526 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_26666 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_26666_35526 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_40435_40436) (v_1@@13 T@FrameType) (q@@9 T@Field_26666_26667) (w@@13 T@FrameType) (r@@9 T@Field_26666_26667) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_26666 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_26666_26666 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_40435_26666 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_26666 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_26666_26666 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_40435_40436) (v_1@@14 T@FrameType) (q@@10 T@Field_26666_26667) (w@@14 T@FrameType) (r@@10 T@Field_11185_11294) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_26666 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_26666_22827 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_40435_22827 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_26666 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_26666_22827 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_40435_40436) (v_1@@15 T@FrameType) (q@@11 T@Field_11185_11294) (w@@15 T@FrameType) (r@@11 T@Field_40435_40436) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_22827 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_22827_40435 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_40435_40435 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_22827 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_22827_40435 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_40435_40436) (v_1@@16 T@FrameType) (q@@12 T@Field_11185_11294) (w@@16 T@FrameType) (r@@12 T@Field_35526_35527) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_22827 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_22827_35526 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_40435_35526 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_22827 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_22827_35526 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_40435_40436) (v_1@@17 T@FrameType) (q@@13 T@Field_11185_11294) (w@@17 T@FrameType) (r@@13 T@Field_26666_26667) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_22827 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_22827_26666 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_40435_26666 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_22827 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_22827_26666 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_40435_40436) (v_1@@18 T@FrameType) (q@@14 T@Field_11185_11294) (w@@18 T@FrameType) (r@@14 T@Field_11185_11294) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_22827 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_22827_22827 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_40435_22827 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_22827 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_22827_22827 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_35526_35527) (v_1@@19 T@FrameType) (q@@15 T@Field_40435_40436) (w@@19 T@FrameType) (r@@15 T@Field_40435_40436) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_40435 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_40435_40435 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_35526_40435 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_40435 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_40435_40435 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_35526_35527) (v_1@@20 T@FrameType) (q@@16 T@Field_40435_40436) (w@@20 T@FrameType) (r@@16 T@Field_35526_35527) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_40435 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_40435_35526 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_35526_35526 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_40435 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_40435_35526 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_35526_35527) (v_1@@21 T@FrameType) (q@@17 T@Field_40435_40436) (w@@21 T@FrameType) (r@@17 T@Field_26666_26667) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_40435 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_40435_26666 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_35526_26666 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_40435 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_40435_26666 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_35526_35527) (v_1@@22 T@FrameType) (q@@18 T@Field_40435_40436) (w@@22 T@FrameType) (r@@18 T@Field_11185_11294) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_40435 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_40435_22827 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_35526_22827 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_40435 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_40435_22827 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_35526_35527) (v_1@@23 T@FrameType) (q@@19 T@Field_35526_35527) (w@@23 T@FrameType) (r@@19 T@Field_40435_40436) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_35526 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_35526_40435 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_35526_40435 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_35526 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_35526_40435 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_35526_35527) (v_1@@24 T@FrameType) (q@@20 T@Field_35526_35527) (w@@24 T@FrameType) (r@@20 T@Field_35526_35527) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_35526 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_35526_35526 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_35526_35526 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_35526 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_35526_35526 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_35526_35527) (v_1@@25 T@FrameType) (q@@21 T@Field_35526_35527) (w@@25 T@FrameType) (r@@21 T@Field_26666_26667) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_35526 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_35526_26666 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_35526_26666 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_35526 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_35526_26666 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_35526_35527) (v_1@@26 T@FrameType) (q@@22 T@Field_35526_35527) (w@@26 T@FrameType) (r@@22 T@Field_11185_11294) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_35526 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_35526_22827 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_35526_22827 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_35526 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_35526_22827 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_35526_35527) (v_1@@27 T@FrameType) (q@@23 T@Field_26666_26667) (w@@27 T@FrameType) (r@@23 T@Field_40435_40436) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_26666 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_26666_40435 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_35526_40435 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_26666 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_26666_40435 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_35526_35527) (v_1@@28 T@FrameType) (q@@24 T@Field_26666_26667) (w@@28 T@FrameType) (r@@24 T@Field_35526_35527) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_26666 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_26666_35526 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_35526_35526 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_26666 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_26666_35526 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_35526_35527) (v_1@@29 T@FrameType) (q@@25 T@Field_26666_26667) (w@@29 T@FrameType) (r@@25 T@Field_26666_26667) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_26666 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_26666_26666 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_35526_26666 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_26666 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_26666_26666 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_35526_35527) (v_1@@30 T@FrameType) (q@@26 T@Field_26666_26667) (w@@30 T@FrameType) (r@@26 T@Field_11185_11294) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_26666 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_26666_22827 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_35526_22827 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_26666 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_26666_22827 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_35526_35527) (v_1@@31 T@FrameType) (q@@27 T@Field_11185_11294) (w@@31 T@FrameType) (r@@27 T@Field_40435_40436) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_22827 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_22827_40435 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_35526_40435 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_22827 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_22827_40435 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_35526_35527) (v_1@@32 T@FrameType) (q@@28 T@Field_11185_11294) (w@@32 T@FrameType) (r@@28 T@Field_35526_35527) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_22827 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_22827_35526 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_35526_35526 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_22827 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_22827_35526 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_35526_35527) (v_1@@33 T@FrameType) (q@@29 T@Field_11185_11294) (w@@33 T@FrameType) (r@@29 T@Field_26666_26667) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_22827 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_22827_26666 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_35526_26666 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_22827 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_22827_26666 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_35526_35527) (v_1@@34 T@FrameType) (q@@30 T@Field_11185_11294) (w@@34 T@FrameType) (r@@30 T@Field_11185_11294) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_22827 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_22827_22827 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_35526_22827 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_22827 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_22827_22827 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_26666_26667) (v_1@@35 T@FrameType) (q@@31 T@Field_40435_40436) (w@@35 T@FrameType) (r@@31 T@Field_40435_40436) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_40435 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_40435_40435 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_26666_40435 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_40435 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_40435_40435 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_26666_26667) (v_1@@36 T@FrameType) (q@@32 T@Field_40435_40436) (w@@36 T@FrameType) (r@@32 T@Field_35526_35527) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_40435 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_40435_35526 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_26666_35526 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_40435 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_40435_35526 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_26666_26667) (v_1@@37 T@FrameType) (q@@33 T@Field_40435_40436) (w@@37 T@FrameType) (r@@33 T@Field_26666_26667) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_40435 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_40435_26666 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_26666_26666 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_40435 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_40435_26666 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_26666_26667) (v_1@@38 T@FrameType) (q@@34 T@Field_40435_40436) (w@@38 T@FrameType) (r@@34 T@Field_11185_11294) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_40435 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_40435_22827 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_26666_22827 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_40435 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_40435_22827 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_26666_26667) (v_1@@39 T@FrameType) (q@@35 T@Field_35526_35527) (w@@39 T@FrameType) (r@@35 T@Field_40435_40436) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_35526 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_35526_40435 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_26666_40435 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_35526 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_35526_40435 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_26666_26667) (v_1@@40 T@FrameType) (q@@36 T@Field_35526_35527) (w@@40 T@FrameType) (r@@36 T@Field_35526_35527) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_35526 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_35526_35526 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_26666_35526 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_35526 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_35526_35526 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_26666_26667) (v_1@@41 T@FrameType) (q@@37 T@Field_35526_35527) (w@@41 T@FrameType) (r@@37 T@Field_26666_26667) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_35526 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_35526_26666 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_26666_26666 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_35526 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_35526_26666 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_26666_26667) (v_1@@42 T@FrameType) (q@@38 T@Field_35526_35527) (w@@42 T@FrameType) (r@@38 T@Field_11185_11294) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_35526 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_35526_22827 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_26666_22827 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_35526 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_35526_22827 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_26666_26667) (v_1@@43 T@FrameType) (q@@39 T@Field_26666_26667) (w@@43 T@FrameType) (r@@39 T@Field_40435_40436) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_26666 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_26666_40435 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_26666_40435 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_26666 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_26666_40435 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_26666_26667) (v_1@@44 T@FrameType) (q@@40 T@Field_26666_26667) (w@@44 T@FrameType) (r@@40 T@Field_35526_35527) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_26666 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_26666_35526 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_26666_35526 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_26666 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_26666_35526 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_26666_26667) (v_1@@45 T@FrameType) (q@@41 T@Field_26666_26667) (w@@45 T@FrameType) (r@@41 T@Field_26666_26667) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_26666 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_26666_26666 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_26666_26666 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_26666 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_26666_26666 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_26666_26667) (v_1@@46 T@FrameType) (q@@42 T@Field_26666_26667) (w@@46 T@FrameType) (r@@42 T@Field_11185_11294) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_26666 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_26666_22827 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_26666_22827 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_26666 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_26666_22827 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_26666_26667) (v_1@@47 T@FrameType) (q@@43 T@Field_11185_11294) (w@@47 T@FrameType) (r@@43 T@Field_40435_40436) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_22827 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_22827_40435 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_26666_40435 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_22827 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_22827_40435 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_26666_26667) (v_1@@48 T@FrameType) (q@@44 T@Field_11185_11294) (w@@48 T@FrameType) (r@@44 T@Field_35526_35527) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_22827 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_22827_35526 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_26666_35526 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_22827 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_22827_35526 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_26666_26667) (v_1@@49 T@FrameType) (q@@45 T@Field_11185_11294) (w@@49 T@FrameType) (r@@45 T@Field_26666_26667) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_22827 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_22827_26666 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_26666_26666 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_22827 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_22827_26666 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_26666_26667) (v_1@@50 T@FrameType) (q@@46 T@Field_11185_11294) (w@@50 T@FrameType) (r@@46 T@Field_11185_11294) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_22827 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_22827_22827 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_26666_22827 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_22827 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_22827_22827 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_11185_11294) (v_1@@51 T@FrameType) (q@@47 T@Field_40435_40436) (w@@51 T@FrameType) (r@@47 T@Field_40435_40436) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_40435 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_40435_40435 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_22827_40435 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_40435 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_40435_40435 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_11185_11294) (v_1@@52 T@FrameType) (q@@48 T@Field_40435_40436) (w@@52 T@FrameType) (r@@48 T@Field_35526_35527) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_40435 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_40435_35526 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_22827_35526 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_40435 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_40435_35526 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_11185_11294) (v_1@@53 T@FrameType) (q@@49 T@Field_40435_40436) (w@@53 T@FrameType) (r@@49 T@Field_26666_26667) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_40435 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_40435_26666 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_22827_26666 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_40435 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_40435_26666 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_11185_11294) (v_1@@54 T@FrameType) (q@@50 T@Field_40435_40436) (w@@54 T@FrameType) (r@@50 T@Field_11185_11294) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_40435 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_40435_22827 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_22827_22827 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_40435 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_40435_22827 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_11185_11294) (v_1@@55 T@FrameType) (q@@51 T@Field_35526_35527) (w@@55 T@FrameType) (r@@51 T@Field_40435_40436) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_35526 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_35526_40435 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_22827_40435 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_35526 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_35526_40435 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_11185_11294) (v_1@@56 T@FrameType) (q@@52 T@Field_35526_35527) (w@@56 T@FrameType) (r@@52 T@Field_35526_35527) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_35526 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_35526_35526 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_22827_35526 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_35526 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_35526_35526 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_11185_11294) (v_1@@57 T@FrameType) (q@@53 T@Field_35526_35527) (w@@57 T@FrameType) (r@@53 T@Field_26666_26667) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_35526 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_35526_26666 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_22827_26666 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_35526 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_35526_26666 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_11185_11294) (v_1@@58 T@FrameType) (q@@54 T@Field_35526_35527) (w@@58 T@FrameType) (r@@54 T@Field_11185_11294) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_35526 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_35526_22827 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_22827_22827 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_35526 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_35526_22827 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_11185_11294) (v_1@@59 T@FrameType) (q@@55 T@Field_26666_26667) (w@@59 T@FrameType) (r@@55 T@Field_40435_40436) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_26666 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_26666_40435 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_22827_40435 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_26666 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_26666_40435 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_11185_11294) (v_1@@60 T@FrameType) (q@@56 T@Field_26666_26667) (w@@60 T@FrameType) (r@@56 T@Field_35526_35527) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_26666 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_26666_35526 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_22827_35526 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_26666 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_26666_35526 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_11185_11294) (v_1@@61 T@FrameType) (q@@57 T@Field_26666_26667) (w@@61 T@FrameType) (r@@57 T@Field_26666_26667) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_26666 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_26666_26666 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_22827_26666 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_26666 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_26666_26666 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_11185_11294) (v_1@@62 T@FrameType) (q@@58 T@Field_26666_26667) (w@@62 T@FrameType) (r@@58 T@Field_11185_11294) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_26666 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_26666_22827 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_22827_22827 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_26666 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_26666_22827 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_11185_11294) (v_1@@63 T@FrameType) (q@@59 T@Field_11185_11294) (w@@63 T@FrameType) (r@@59 T@Field_40435_40436) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_22827 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_22827_40435 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_22827_40435 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_22827 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_22827_40435 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_11185_11294) (v_1@@64 T@FrameType) (q@@60 T@Field_11185_11294) (w@@64 T@FrameType) (r@@60 T@Field_35526_35527) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_22827 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_22827_35526 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_22827_35526 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_22827 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_22827_35526 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_11185_11294) (v_1@@65 T@FrameType) (q@@61 T@Field_11185_11294) (w@@65 T@FrameType) (r@@61 T@Field_26666_26667) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_22827 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_22827_26666 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_22827_26666 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_22827 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_22827_26666 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_11185_11294) (v_1@@66 T@FrameType) (q@@62 T@Field_11185_11294) (w@@66 T@FrameType) (r@@62 T@Field_11185_11294) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_22827 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_22827_22827 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_22827_22827 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_22827 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_22827_22827 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_22788)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@4 () T@PolymorphicMapType_22767)
(declare-fun Heap@3 () T@PolymorphicMapType_22767)
(declare-fun Heap@0 () T@PolymorphicMapType_22767)
(declare-fun Heap@1 () T@PolymorphicMapType_22767)
(declare-fun Heap@2 () T@PolymorphicMapType_22767)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@1 () T@PolymorphicMapType_22788)
(declare-fun Mask@0 () T@PolymorphicMapType_22788)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun Heap@@76 () T@PolymorphicMapType_22767)
(declare-fun diz@@31 () T@Ref)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id WandDemo__WandDemo)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon8_correct true))
(let ((anon14_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 6) 3)) anon8_correct)))
(let ((anon14_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= FullPerm (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@2) null (WandDemo__writeonly freshObj@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@2) null (WandDemo__writeonly freshObj@0))) (=> (= (ControlFlow 0 4) 3) anon8_correct))))))
(let ((anon6_correct  (=> (and (and (= Heap@4 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@3) (store (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0) (PolymorphicMapType_23316 (store (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) freshObj@0 WandDemo__x true) (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))) (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@3) null (|WandDemo__writeonly#sm| freshObj@0))))) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@3) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@3))) (state Heap@4 Mask@2)) (and (state Heap@4 Mask@2) (state Heap@4 Mask@2))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (not (= freshObj@0 null))) (=> (not (= freshObj@0 null)) (and (=> (= (ControlFlow 0 7) 4) anon14_Then_correct) (=> (= (ControlFlow 0 7) 6) anon14_Else_correct)))))))
(let ((anon13_Else_correct  (=> (HasDirectPerm_11343_11344 Mask@2 null (WandDemo__writeonly freshObj@0)) (=> (and (= Heap@3 Heap@0) (= (ControlFlow 0 10) 7)) anon6_correct))))
(let ((anon13_Then_correct  (=> (not (HasDirectPerm_11343_11344 Mask@2 null (WandDemo__writeonly freshObj@0))) (=> (and (and (= Heap@1 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@0) (store (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@0) null (|WandDemo__writeonly#sm| freshObj@0) ZeroPMask) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@0) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@0))) (= Heap@2 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@1) (store (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@1) null (WandDemo__writeonly freshObj@0) freshVersion@0) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@1) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 9) 7))) anon6_correct))))
(let ((anon4_correct  (=> (and (= Mask@1 (PolymorphicMapType_22788 (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@0) (store (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@0) freshObj@0 WandDemo__x (- (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@0) freshObj@0 WandDemo__x) FullPerm)) (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@0) (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@0))) (= Mask@2 (PolymorphicMapType_22788 (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@1) (store (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@1) null (WandDemo__writeonly freshObj@0) (+ (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@1) null (WandDemo__writeonly freshObj@0)) FullPerm)) (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@1) (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@1)))) (=> (and (and (state Heap@0 Mask@2) (state Heap@0 Mask@2)) (and (|WandDemo__writeonly#trigger_11343| Heap@0 (WandDemo__writeonly freshObj@0)) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@0) null (WandDemo__writeonly freshObj@0)) (FrameFragment_1189 (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@0) freshObj@0 WandDemo__x))))) (and (=> (= (ControlFlow 0 11) 9) anon13_Then_correct) (=> (= (ControlFlow 0 11) 10) anon13_Else_correct))))))
(let ((anon12_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 14) 11)) anon4_correct)))
(let ((anon12_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= FullPerm (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@0) freshObj@0 WandDemo__x))) (=> (<= FullPerm (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@0) freshObj@0 WandDemo__x)) (=> (= (ControlFlow 0 12) 11) anon4_correct))))))
(let ((anon11_Else_correct  (=> (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@76) diz@@31 $allocated) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@76) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_22767 (store (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@76) freshObj@0 $allocated true) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@76) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@76)))) (and (= Mask@0 (PolymorphicMapType_22788 (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| ZeroMask) (store (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ZeroMask) freshObj@0 WandDemo__x (+ (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ZeroMask) freshObj@0 WandDemo__x) FullPerm)) (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| ZeroMask) (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| ZeroMask))) (state Heap@0 Mask@0))) (and (=> (= (ControlFlow 0 15) 12) anon12_Then_correct) (=> (= (ControlFlow 0 15) 14) anon12_Else_correct))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@76 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (>= current_thread_id 0) (state Heap@@76 ZeroMask))) (and (=> (= (ControlFlow 0 16) 1) anon11_Then_correct) (=> (= (ControlFlow 0 16) 15) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 16) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
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
(declare-sort T@Field_22827_53 0)
(declare-sort T@Field_22840_22841 0)
(declare-sort T@Field_26666_26667 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_26154_1189 0)
(declare-sort T@Field_29631_29636 0)
(declare-sort T@Field_35526_35527 0)
(declare-sort T@Field_36825_36830 0)
(declare-sort T@Field_40435_40436 0)
(declare-sort T@Field_40448_40453 0)
(declare-sort T@Field_11185_11294 0)
(declare-sort T@Field_11185_29636 0)
(declare-sort T@Field_11293_11186 0)
(declare-sort T@Field_11293_1249 0)
(declare-sort T@Field_11293_53 0)
(declare-sort T@Field_11318_11186 0)
(declare-sort T@Field_11318_1249 0)
(declare-sort T@Field_11318_53 0)
(declare-sort T@Field_11343_11186 0)
(declare-sort T@Field_11343_1249 0)
(declare-sort T@Field_11343_53 0)
(declare-datatypes ((T@PolymorphicMapType_22788 0)) (((PolymorphicMapType_22788 (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| (Array T@Ref T@Field_26666_26667 Real)) (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| (Array T@Ref T@Field_26154_1189 Real)) (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| (Array T@Ref T@Field_22840_22841 Real)) (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| (Array T@Ref T@Field_35526_35527 Real)) (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| (Array T@Ref T@Field_40435_40436 Real)) (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| (Array T@Ref T@Field_11293_1249 Real)) (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| (Array T@Ref T@Field_11293_11186 Real)) (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| (Array T@Ref T@Field_11293_53 Real)) (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| (Array T@Ref T@Field_29631_29636 Real)) (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| (Array T@Ref T@Field_11185_11294 Real)) (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| (Array T@Ref T@Field_22827_53 Real)) (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| (Array T@Ref T@Field_11185_29636 Real)) (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| (Array T@Ref T@Field_11318_1249 Real)) (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| (Array T@Ref T@Field_11318_11186 Real)) (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| (Array T@Ref T@Field_11318_53 Real)) (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| (Array T@Ref T@Field_36825_36830 Real)) (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| (Array T@Ref T@Field_11343_1249 Real)) (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| (Array T@Ref T@Field_11343_11186 Real)) (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| (Array T@Ref T@Field_11343_53 Real)) (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| (Array T@Ref T@Field_40448_40453 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23316 0)) (((PolymorphicMapType_23316 (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (Array T@Ref T@Field_26154_1189 Bool)) (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (Array T@Ref T@Field_22840_22841 Bool)) (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (Array T@Ref T@Field_22827_53 Bool)) (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (Array T@Ref T@Field_11185_11294 Bool)) (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (Array T@Ref T@Field_11185_29636 Bool)) (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (Array T@Ref T@Field_11293_1249 Bool)) (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (Array T@Ref T@Field_11293_11186 Bool)) (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (Array T@Ref T@Field_11293_53 Bool)) (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (Array T@Ref T@Field_26666_26667 Bool)) (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (Array T@Ref T@Field_29631_29636 Bool)) (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (Array T@Ref T@Field_11318_1249 Bool)) (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (Array T@Ref T@Field_11318_11186 Bool)) (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (Array T@Ref T@Field_11318_53 Bool)) (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (Array T@Ref T@Field_35526_35527 Bool)) (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (Array T@Ref T@Field_36825_36830 Bool)) (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (Array T@Ref T@Field_11343_1249 Bool)) (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (Array T@Ref T@Field_11343_11186 Bool)) (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (Array T@Ref T@Field_11343_53 Bool)) (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (Array T@Ref T@Field_40435_40436 Bool)) (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (Array T@Ref T@Field_40448_40453 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22767 0)) (((PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| (Array T@Ref T@Field_22827_53 Bool)) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| (Array T@Ref T@Field_22840_22841 T@Ref)) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| (Array T@Ref T@Field_26666_26667 T@FrameType)) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| (Array T@Ref T@Field_26154_1189 Int)) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| (Array T@Ref T@Field_29631_29636 T@PolymorphicMapType_23316)) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| (Array T@Ref T@Field_35526_35527 T@FrameType)) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| (Array T@Ref T@Field_36825_36830 T@PolymorphicMapType_23316)) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| (Array T@Ref T@Field_40435_40436 T@FrameType)) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| (Array T@Ref T@Field_40448_40453 T@PolymorphicMapType_23316)) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| (Array T@Ref T@Field_11185_11294 T@FrameType)) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| (Array T@Ref T@Field_11185_29636 T@PolymorphicMapType_23316)) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| (Array T@Ref T@Field_11293_11186 T@Ref)) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| (Array T@Ref T@Field_11293_1249 Int)) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| (Array T@Ref T@Field_11293_53 Bool)) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| (Array T@Ref T@Field_11318_11186 T@Ref)) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| (Array T@Ref T@Field_11318_1249 Int)) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| (Array T@Ref T@Field_11318_53 Bool)) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| (Array T@Ref T@Field_11343_11186 T@Ref)) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| (Array T@Ref T@Field_11343_1249 Int)) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| (Array T@Ref T@Field_11343_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_22827_53)
(declare-fun Wand_readonly_for_writeonly__lemma () T@Field_26154_1189)
(declare-fun Wand_readonly_for_writeonly__in_1 () T@Field_22840_22841)
(declare-fun Wand_readonly_for_writeonly__out_1 () T@Field_22840_22841)
(declare-fun Wand_readonly_for_writeonly__this_1 () T@Field_22840_22841)
(declare-fun WandDemo__x () T@Field_26154_1189)
(declare-fun succHeap (T@PolymorphicMapType_22767 T@PolymorphicMapType_22767) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22767 T@PolymorphicMapType_22767) Bool)
(declare-fun state (T@PolymorphicMapType_22767 T@PolymorphicMapType_22788) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22788) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_23316)
(declare-fun Wand_readonly_for_writeonly__valid_wand (T@Ref) T@Field_26666_26667)
(declare-fun IsPredicateField_11293_11294 (T@Field_26666_26667) Bool)
(declare-fun WandDemo__readonly (T@Ref) T@Field_35526_35527)
(declare-fun IsPredicateField_11318_11319 (T@Field_35526_35527) Bool)
(declare-fun WandDemo__writeonly (T@Ref) T@Field_40435_40436)
(declare-fun IsPredicateField_11343_11344 (T@Field_40435_40436) Bool)
(declare-fun |Wand_readonly_for_writeonly__get_in_1'| (T@PolymorphicMapType_22767 T@Ref) T@Ref)
(declare-fun dummyFunction_11221 (T@Ref) Bool)
(declare-fun |Wand_readonly_for_writeonly__get_in_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_readonly_for_writeonly__get_out_1'| (T@PolymorphicMapType_22767 T@Ref) T@Ref)
(declare-fun |Wand_readonly_for_writeonly__get_out_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |WandDemo__get'| (T@PolymorphicMapType_22767 T@Ref) Int)
(declare-fun dummyFunction_3114 (Int) Bool)
(declare-fun |WandDemo__get#triggerStateless| (T@Ref) Int)
(declare-fun |Wand_readonly_for_writeonly__valid_wand#trigger_11293| (T@PolymorphicMapType_22767 T@Field_26666_26667) Bool)
(declare-fun |Wand_readonly_for_writeonly__valid_wand#everUsed_11293| (T@Field_26666_26667) Bool)
(declare-fun |WandDemo__readonly#trigger_11318| (T@PolymorphicMapType_22767 T@Field_35526_35527) Bool)
(declare-fun |WandDemo__readonly#everUsed_11318| (T@Field_35526_35527) Bool)
(declare-fun |WandDemo__writeonly#trigger_11343| (T@PolymorphicMapType_22767 T@Field_40435_40436) Bool)
(declare-fun |WandDemo__writeonly#everUsed_11343| (T@Field_40435_40436) Bool)
(declare-fun Wand_readonly_for_writeonly__get_in_1 (T@PolymorphicMapType_22767 T@Ref) T@Ref)
(declare-fun Wand_readonly_for_writeonly__get_out_1 (T@PolymorphicMapType_22767 T@Ref) T@Ref)
(declare-fun WandDemo__get (T@PolymorphicMapType_22767 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22767 T@PolymorphicMapType_22767 T@PolymorphicMapType_22788) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11343 (T@Field_40435_40436) T@Field_40448_40453)
(declare-fun HasDirectPerm_11343_11344 (T@PolymorphicMapType_22788 T@Ref T@Field_40435_40436) Bool)
(declare-fun PredicateMaskField_11318 (T@Field_35526_35527) T@Field_36825_36830)
(declare-fun HasDirectPerm_11318_11319 (T@PolymorphicMapType_22788 T@Ref T@Field_35526_35527) Bool)
(declare-fun PredicateMaskField_11293 (T@Field_26666_26667) T@Field_29631_29636)
(declare-fun HasDirectPerm_11293_11294 (T@PolymorphicMapType_22788 T@Ref T@Field_26666_26667) Bool)
(declare-fun IsPredicateField_11185_82416 (T@Field_11185_11294) Bool)
(declare-fun PredicateMaskField_11185 (T@Field_11185_11294) T@Field_11185_29636)
(declare-fun HasDirectPerm_11185_11294 (T@PolymorphicMapType_22788 T@Ref T@Field_11185_11294) Bool)
(declare-fun IsWandField_11343_90108 (T@Field_40435_40436) Bool)
(declare-fun WandMaskField_11343 (T@Field_40435_40436) T@Field_40448_40453)
(declare-fun IsWandField_11318_89751 (T@Field_35526_35527) Bool)
(declare-fun WandMaskField_11318 (T@Field_35526_35527) T@Field_36825_36830)
(declare-fun IsWandField_11293_89394 (T@Field_26666_26667) Bool)
(declare-fun WandMaskField_11293 (T@Field_26666_26667) T@Field_29631_29636)
(declare-fun IsWandField_11185_89037 (T@Field_11185_11294) Bool)
(declare-fun WandMaskField_11185 (T@Field_11185_11294) T@Field_11185_29636)
(declare-fun |Wand_readonly_for_writeonly__valid_wand#sm| (T@Ref) T@Field_29631_29636)
(declare-fun |WandDemo__readonly#sm| (T@Ref) T@Field_36825_36830)
(declare-fun |WandDemo__writeonly#sm| (T@Ref) T@Field_40448_40453)
(declare-fun dummyHeap () T@PolymorphicMapType_22767)
(declare-fun ZeroMask () T@PolymorphicMapType_22788)
(declare-fun InsidePredicate_40435_40435 (T@Field_40435_40436 T@FrameType T@Field_40435_40436 T@FrameType) Bool)
(declare-fun InsidePredicate_35526_35526 (T@Field_35526_35527 T@FrameType T@Field_35526_35527 T@FrameType) Bool)
(declare-fun InsidePredicate_26666_26666 (T@Field_26666_26667 T@FrameType T@Field_26666_26667 T@FrameType) Bool)
(declare-fun InsidePredicate_22827_22827 (T@Field_11185_11294 T@FrameType T@Field_11185_11294 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Wand_readonly_for_writeonly__get_in_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Wand_readonly_for_writeonly__get_out_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun IsPredicateField_11183_1189 (T@Field_26154_1189) Bool)
(declare-fun IsWandField_11183_1189 (T@Field_26154_1189) Bool)
(declare-fun IsPredicateField_11185_11186 (T@Field_22840_22841) Bool)
(declare-fun IsWandField_11185_11186 (T@Field_22840_22841) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11343_103783 (T@Field_40448_40453) Bool)
(declare-fun IsWandField_11343_103799 (T@Field_40448_40453) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11343_53 (T@Field_11343_53) Bool)
(declare-fun IsWandField_11343_53 (T@Field_11343_53) Bool)
(declare-fun IsPredicateField_11343_11186 (T@Field_11343_11186) Bool)
(declare-fun IsWandField_11343_11186 (T@Field_11343_11186) Bool)
(declare-fun IsPredicateField_11343_1189 (T@Field_11343_1249) Bool)
(declare-fun IsWandField_11343_1189 (T@Field_11343_1249) Bool)
(declare-fun IsPredicateField_11318_102952 (T@Field_36825_36830) Bool)
(declare-fun IsWandField_11318_102968 (T@Field_36825_36830) Bool)
(declare-fun IsPredicateField_11318_53 (T@Field_11318_53) Bool)
(declare-fun IsWandField_11318_53 (T@Field_11318_53) Bool)
(declare-fun IsPredicateField_11318_11186 (T@Field_11318_11186) Bool)
(declare-fun IsWandField_11318_11186 (T@Field_11318_11186) Bool)
(declare-fun IsPredicateField_11318_1189 (T@Field_11318_1249) Bool)
(declare-fun IsWandField_11318_1189 (T@Field_11318_1249) Bool)
(declare-fun IsPredicateField_11183_102121 (T@Field_11185_29636) Bool)
(declare-fun IsWandField_11183_102137 (T@Field_11185_29636) Bool)
(declare-fun IsPredicateField_11183_53 (T@Field_22827_53) Bool)
(declare-fun IsWandField_11183_53 (T@Field_22827_53) Bool)
(declare-fun IsPredicateField_11293_101318 (T@Field_29631_29636) Bool)
(declare-fun IsWandField_11293_101334 (T@Field_29631_29636) Bool)
(declare-fun IsPredicateField_11293_53 (T@Field_11293_53) Bool)
(declare-fun IsWandField_11293_53 (T@Field_11293_53) Bool)
(declare-fun IsPredicateField_11293_11186 (T@Field_11293_11186) Bool)
(declare-fun IsWandField_11293_11186 (T@Field_11293_11186) Bool)
(declare-fun IsPredicateField_11293_1189 (T@Field_11293_1249) Bool)
(declare-fun IsWandField_11293_1189 (T@Field_11293_1249) Bool)
(declare-fun HasDirectPerm_11343_82171 (T@PolymorphicMapType_22788 T@Ref T@Field_40448_40453) Bool)
(declare-fun HasDirectPerm_11343_53 (T@PolymorphicMapType_22788 T@Ref T@Field_11343_53) Bool)
(declare-fun HasDirectPerm_11343_1249 (T@PolymorphicMapType_22788 T@Ref T@Field_11343_1249) Bool)
(declare-fun HasDirectPerm_11343_11186 (T@PolymorphicMapType_22788 T@Ref T@Field_11343_11186) Bool)
(declare-fun HasDirectPerm_11318_81073 (T@PolymorphicMapType_22788 T@Ref T@Field_36825_36830) Bool)
(declare-fun HasDirectPerm_11318_53 (T@PolymorphicMapType_22788 T@Ref T@Field_11318_53) Bool)
(declare-fun HasDirectPerm_11318_1249 (T@PolymorphicMapType_22788 T@Ref T@Field_11318_1249) Bool)
(declare-fun HasDirectPerm_11318_11186 (T@PolymorphicMapType_22788 T@Ref T@Field_11318_11186) Bool)
(declare-fun HasDirectPerm_11293_79975 (T@PolymorphicMapType_22788 T@Ref T@Field_29631_29636) Bool)
(declare-fun HasDirectPerm_11293_53 (T@PolymorphicMapType_22788 T@Ref T@Field_11293_53) Bool)
(declare-fun HasDirectPerm_11293_1249 (T@PolymorphicMapType_22788 T@Ref T@Field_11293_1249) Bool)
(declare-fun HasDirectPerm_11293_11186 (T@PolymorphicMapType_22788 T@Ref T@Field_11293_11186) Bool)
(declare-fun HasDirectPerm_11185_78834 (T@PolymorphicMapType_22788 T@Ref T@Field_11185_29636) Bool)
(declare-fun HasDirectPerm_11185_53 (T@PolymorphicMapType_22788 T@Ref T@Field_22827_53) Bool)
(declare-fun HasDirectPerm_11194_1249 (T@PolymorphicMapType_22788 T@Ref T@Field_26154_1189) Bool)
(declare-fun HasDirectPerm_11185_11186 (T@PolymorphicMapType_22788 T@Ref T@Field_22840_22841) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_22788 T@PolymorphicMapType_22788 T@PolymorphicMapType_22788) Bool)
(declare-fun |Wand_readonly_for_writeonly__get_in_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_readonly_for_writeonly__get_out_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |WandDemo__get#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_11293_11294 (T@Field_26666_26667) Int)
(declare-fun getPredWandId_11318_11319 (T@Field_35526_35527) Int)
(declare-fun getPredWandId_11343_11344 (T@Field_40435_40436) Int)
(declare-fun InsidePredicate_40435_35526 (T@Field_40435_40436 T@FrameType T@Field_35526_35527 T@FrameType) Bool)
(declare-fun InsidePredicate_40435_26666 (T@Field_40435_40436 T@FrameType T@Field_26666_26667 T@FrameType) Bool)
(declare-fun InsidePredicate_40435_22827 (T@Field_40435_40436 T@FrameType T@Field_11185_11294 T@FrameType) Bool)
(declare-fun InsidePredicate_35526_40435 (T@Field_35526_35527 T@FrameType T@Field_40435_40436 T@FrameType) Bool)
(declare-fun InsidePredicate_35526_26666 (T@Field_35526_35527 T@FrameType T@Field_26666_26667 T@FrameType) Bool)
(declare-fun InsidePredicate_35526_22827 (T@Field_35526_35527 T@FrameType T@Field_11185_11294 T@FrameType) Bool)
(declare-fun InsidePredicate_26666_40435 (T@Field_26666_26667 T@FrameType T@Field_40435_40436 T@FrameType) Bool)
(declare-fun InsidePredicate_26666_35526 (T@Field_26666_26667 T@FrameType T@Field_35526_35527 T@FrameType) Bool)
(declare-fun InsidePredicate_26666_22827 (T@Field_26666_26667 T@FrameType T@Field_11185_11294 T@FrameType) Bool)
(declare-fun InsidePredicate_22827_40435 (T@Field_11185_11294 T@FrameType T@Field_40435_40436 T@FrameType) Bool)
(declare-fun InsidePredicate_22827_35526 (T@Field_11185_11294 T@FrameType T@Field_35526_35527 T@FrameType) Bool)
(declare-fun InsidePredicate_22827_26666 (T@Field_11185_11294 T@FrameType T@Field_26666_26667 T@FrameType) Bool)
(assert (and (distinct Wand_readonly_for_writeonly__lemma WandDemo__x)(distinct Wand_readonly_for_writeonly__in_1 Wand_readonly_for_writeonly__out_1 Wand_readonly_for_writeonly__this_1))
)
(assert (forall ((Heap0 T@PolymorphicMapType_22767) (Heap1 T@PolymorphicMapType_22767) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22767) (Mask T@PolymorphicMapType_22788) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22767) (Heap1@@0 T@PolymorphicMapType_22767) (Heap2 T@PolymorphicMapType_22767) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_40448_40453) ) (!  (not (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_40435_40436) ) (!  (not (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11343_53) ) (!  (not (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11343_11186) ) (!  (not (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11343_1249) ) (!  (not (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_36825_36830) ) (!  (not (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_35526_35527) ) (!  (not (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11318_53) ) (!  (not (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11318_11186) ) (!  (not (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11318_1249) ) (!  (not (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_29631_29636) ) (!  (not (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_26666_26667) ) (!  (not (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11293_53) ) (!  (not (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11293_11186) ) (!  (not (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11293_1249) ) (!  (not (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11185_29636) ) (!  (not (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11185_11294) ) (!  (not (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_22827_53) ) (!  (not (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22840_22841) ) (!  (not (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_26154_1189) ) (!  (not (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((diz T@Ref) ) (! (IsPredicateField_11293_11294 (Wand_readonly_for_writeonly__valid_wand diz))
 :qid |stdinbpl.578:15|
 :skolemid |37|
 :pattern ( (Wand_readonly_for_writeonly__valid_wand diz))
)))
(assert (forall ((diz@@0 T@Ref) ) (! (IsPredicateField_11318_11319 (WandDemo__readonly diz@@0))
 :qid |stdinbpl.705:15|
 :skolemid |43|
 :pattern ( (WandDemo__readonly diz@@0))
)))
(assert (forall ((diz@@1 T@Ref) ) (! (IsPredicateField_11343_11344 (WandDemo__writeonly diz@@1))
 :qid |stdinbpl.762:15|
 :skolemid |49|
 :pattern ( (WandDemo__writeonly diz@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22767) (diz@@2 T@Ref) ) (! (dummyFunction_11221 (|Wand_readonly_for_writeonly__get_in_1#triggerStateless| diz@@2))
 :qid |stdinbpl.212:15|
 :skolemid |23|
 :pattern ( (|Wand_readonly_for_writeonly__get_in_1'| Heap@@0 diz@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22767) (diz@@3 T@Ref) ) (! (dummyFunction_11221 (|Wand_readonly_for_writeonly__get_out_1#triggerStateless| diz@@3))
 :qid |stdinbpl.350:15|
 :skolemid |28|
 :pattern ( (|Wand_readonly_for_writeonly__get_out_1'| Heap@@1 diz@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22767) (diz@@4 T@Ref) ) (! (dummyFunction_3114 (|WandDemo__get#triggerStateless| diz@@4))
 :qid |stdinbpl.488:15|
 :skolemid |33|
 :pattern ( (|WandDemo__get'| Heap@@2 diz@@4))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22767) (diz@@5 T@Ref) ) (! (|Wand_readonly_for_writeonly__valid_wand#everUsed_11293| (Wand_readonly_for_writeonly__valid_wand diz@@5))
 :qid |stdinbpl.597:15|
 :skolemid |41|
 :pattern ( (|Wand_readonly_for_writeonly__valid_wand#trigger_11293| Heap@@3 (Wand_readonly_for_writeonly__valid_wand diz@@5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22767) (diz@@6 T@Ref) ) (! (|WandDemo__readonly#everUsed_11318| (WandDemo__readonly diz@@6))
 :qid |stdinbpl.724:15|
 :skolemid |47|
 :pattern ( (|WandDemo__readonly#trigger_11318| Heap@@4 (WandDemo__readonly diz@@6)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22767) (diz@@7 T@Ref) ) (! (|WandDemo__writeonly#everUsed_11343| (WandDemo__writeonly diz@@7))
 :qid |stdinbpl.781:15|
 :skolemid |53|
 :pattern ( (|WandDemo__writeonly#trigger_11343| Heap@@5 (WandDemo__writeonly diz@@7)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22767) (diz@@8 T@Ref) ) (!  (and (= (Wand_readonly_for_writeonly__get_in_1 Heap@@6 diz@@8) (|Wand_readonly_for_writeonly__get_in_1'| Heap@@6 diz@@8)) (dummyFunction_11221 (|Wand_readonly_for_writeonly__get_in_1#triggerStateless| diz@@8)))
 :qid |stdinbpl.208:15|
 :skolemid |22|
 :pattern ( (Wand_readonly_for_writeonly__get_in_1 Heap@@6 diz@@8))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22767) (diz@@9 T@Ref) ) (!  (and (= (Wand_readonly_for_writeonly__get_out_1 Heap@@7 diz@@9) (|Wand_readonly_for_writeonly__get_out_1'| Heap@@7 diz@@9)) (dummyFunction_11221 (|Wand_readonly_for_writeonly__get_out_1#triggerStateless| diz@@9)))
 :qid |stdinbpl.346:15|
 :skolemid |27|
 :pattern ( (Wand_readonly_for_writeonly__get_out_1 Heap@@7 diz@@9))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22767) (diz@@10 T@Ref) ) (!  (and (= (WandDemo__get Heap@@8 diz@@10) (|WandDemo__get'| Heap@@8 diz@@10)) (dummyFunction_3114 (|WandDemo__get#triggerStateless| diz@@10)))
 :qid |stdinbpl.484:15|
 :skolemid |32|
 :pattern ( (WandDemo__get Heap@@8 diz@@10))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22767) (ExhaleHeap T@PolymorphicMapType_22767) (Mask@@0 T@PolymorphicMapType_22788) (pm_f T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11343_11344 Mask@@0 null pm_f) (IsPredicateField_11343_11344 pm_f)) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@9) null (PredicateMaskField_11343 pm_f)) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap) null (PredicateMaskField_11343 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@0) (IsPredicateField_11343_11344 pm_f) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap) null (PredicateMaskField_11343 pm_f)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22767) (ExhaleHeap@@0 T@PolymorphicMapType_22767) (Mask@@1 T@PolymorphicMapType_22788) (pm_f@@0 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11318_11319 Mask@@1 null pm_f@@0) (IsPredicateField_11318_11319 pm_f@@0)) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@10) null (PredicateMaskField_11318 pm_f@@0)) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@0) null (PredicateMaskField_11318 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@1) (IsPredicateField_11318_11319 pm_f@@0) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@0) null (PredicateMaskField_11318 pm_f@@0)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22767) (ExhaleHeap@@1 T@PolymorphicMapType_22767) (Mask@@2 T@PolymorphicMapType_22788) (pm_f@@1 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11293_11294 Mask@@2 null pm_f@@1) (IsPredicateField_11293_11294 pm_f@@1)) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@11) null (PredicateMaskField_11293 pm_f@@1)) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@1) null (PredicateMaskField_11293 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11293_11294 pm_f@@1) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@1) null (PredicateMaskField_11293 pm_f@@1)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22767) (ExhaleHeap@@2 T@PolymorphicMapType_22767) (Mask@@3 T@PolymorphicMapType_22788) (pm_f@@2 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11185_11294 Mask@@3 null pm_f@@2) (IsPredicateField_11185_82416 pm_f@@2)) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@12) null (PredicateMaskField_11185 pm_f@@2)) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@2) null (PredicateMaskField_11185 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@3) (IsPredicateField_11185_82416 pm_f@@2) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@2) null (PredicateMaskField_11185 pm_f@@2)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22767) (ExhaleHeap@@3 T@PolymorphicMapType_22767) (Mask@@4 T@PolymorphicMapType_22788) (pm_f@@3 T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11343_11344 Mask@@4 null pm_f@@3) (IsWandField_11343_90108 pm_f@@3)) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@13) null (WandMaskField_11343 pm_f@@3)) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@3) null (WandMaskField_11343 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@4) (IsWandField_11343_90108 pm_f@@3) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@3) null (WandMaskField_11343 pm_f@@3)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22767) (ExhaleHeap@@4 T@PolymorphicMapType_22767) (Mask@@5 T@PolymorphicMapType_22788) (pm_f@@4 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_11318_11319 Mask@@5 null pm_f@@4) (IsWandField_11318_89751 pm_f@@4)) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@14) null (WandMaskField_11318 pm_f@@4)) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@4) null (WandMaskField_11318 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@5) (IsWandField_11318_89751 pm_f@@4) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@4) null (WandMaskField_11318 pm_f@@4)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22767) (ExhaleHeap@@5 T@PolymorphicMapType_22767) (Mask@@6 T@PolymorphicMapType_22788) (pm_f@@5 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11293_11294 Mask@@6 null pm_f@@5) (IsWandField_11293_89394 pm_f@@5)) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@15) null (WandMaskField_11293 pm_f@@5)) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@5) null (WandMaskField_11293 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@6) (IsWandField_11293_89394 pm_f@@5) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@5) null (WandMaskField_11293 pm_f@@5)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22767) (ExhaleHeap@@6 T@PolymorphicMapType_22767) (Mask@@7 T@PolymorphicMapType_22788) (pm_f@@6 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_11185_11294 Mask@@7 null pm_f@@6) (IsWandField_11185_89037 pm_f@@6)) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@16) null (WandMaskField_11185 pm_f@@6)) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@6) null (WandMaskField_11185 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@7) (IsWandField_11185_89037 pm_f@@6) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@6) null (WandMaskField_11185 pm_f@@6)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22767) (ExhaleHeap@@7 T@PolymorphicMapType_22767) (Mask@@8 T@PolymorphicMapType_22788) (pm_f@@7 T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_11343_11344 Mask@@8 null pm_f@@7) (IsPredicateField_11343_11344 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2 f_2) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@17) o2 f_2) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@7) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@7) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@17) o2@@0 f_2@@0) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@17) o2@@1 f_2@@1) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@17) o2@@2 f_2@@2) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@17) o2@@3 f_2@@3) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@17) o2@@4 f_2@@4) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@17) o2@@5 f_2@@5) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@17) o2@@6 f_2@@6) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@17) o2@@7 f_2@@7) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@17) o2@@8 f_2@@8) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@17) o2@@9 f_2@@9) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@17) o2@@10 f_2@@10) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@17) o2@@11 f_2@@11) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@17) o2@@12 f_2@@12) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@17) o2@@13 f_2@@13) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@17) o2@@14 f_2@@14) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@17) o2@@15 f_2@@15) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@17) o2@@16 f_2@@16) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@17) o2@@17 f_2@@17) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) null (PredicateMaskField_11343 pm_f@@7))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@17) o2@@18 f_2@@18) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@7) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@8) (IsPredicateField_11343_11344 pm_f@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22767) (ExhaleHeap@@8 T@PolymorphicMapType_22767) (Mask@@9 T@PolymorphicMapType_22788) (pm_f@@8 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11318_11319 Mask@@9 null pm_f@@8) (IsPredicateField_11318_11319 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@18) o2@@19 f_2@@19) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@18) o2@@20 f_2@@20) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@18) o2@@21 f_2@@21) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@18) o2@@22 f_2@@22) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@18) o2@@23 f_2@@23) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@23 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@18) o2@@24 f_2@@24) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@24 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@18) o2@@25 f_2@@25) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@25 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@18) o2@@26 f_2@@26) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@26 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@18) o2@@27 f_2@@27) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@27 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@18) o2@@28 f_2@@28) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@28 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@18) o2@@29 f_2@@29) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@29 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@18) o2@@30 f_2@@30) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@30 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@18) o2@@31 f_2@@31) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@31 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@18) o2@@32 f_2@@32) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@32 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) o2@@33 f_2@@33) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@33 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@18) o2@@34 f_2@@34) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@34 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@18) o2@@35 f_2@@35) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@35 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@18) o2@@36 f_2@@36) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@36 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@18) o2@@37 f_2@@37) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@37 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@18) null (PredicateMaskField_11318 pm_f@@8))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@18) o2@@38 f_2@@38) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@38 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@8) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@9) (IsPredicateField_11318_11319 pm_f@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22767) (ExhaleHeap@@9 T@PolymorphicMapType_22767) (Mask@@10 T@PolymorphicMapType_22788) (pm_f@@9 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_11293_11294 Mask@@10 null pm_f@@9) (IsPredicateField_11293_11294 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@19) o2@@39 f_2@@39) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@39 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@39 f_2@@39))
)) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@19) o2@@40 f_2@@40) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@40 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@19) o2@@41 f_2@@41) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@41 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@19) o2@@42 f_2@@42) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@42 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@19) o2@@43 f_2@@43) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@43 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@19) o2@@44 f_2@@44) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@44 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@19) o2@@45 f_2@@45) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@45 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@19) o2@@46 f_2@@46) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@46 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@46 f_2@@46))
))) (forall ((o2@@47 T@Ref) (f_2@@47 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@47 f_2@@47) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@19) o2@@47 f_2@@47) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@47 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@47 f_2@@47))
))) (forall ((o2@@48 T@Ref) (f_2@@48 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@48 f_2@@48) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) o2@@48 f_2@@48) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@48 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@48 f_2@@48))
))) (forall ((o2@@49 T@Ref) (f_2@@49 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@49 f_2@@49) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@19) o2@@49 f_2@@49) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@49 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@49 f_2@@49))
))) (forall ((o2@@50 T@Ref) (f_2@@50 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@50 f_2@@50) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@19) o2@@50 f_2@@50) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@50 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@50 f_2@@50))
))) (forall ((o2@@51 T@Ref) (f_2@@51 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@51 f_2@@51) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@19) o2@@51 f_2@@51) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@51 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@51 f_2@@51))
))) (forall ((o2@@52 T@Ref) (f_2@@52 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@52 f_2@@52) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@19) o2@@52 f_2@@52) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@52 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@52 f_2@@52))
))) (forall ((o2@@53 T@Ref) (f_2@@53 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@53 f_2@@53) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@19) o2@@53 f_2@@53) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@53 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@53 f_2@@53))
))) (forall ((o2@@54 T@Ref) (f_2@@54 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@54 f_2@@54) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@19) o2@@54 f_2@@54) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@54 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@54 f_2@@54))
))) (forall ((o2@@55 T@Ref) (f_2@@55 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@55 f_2@@55) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@19) o2@@55 f_2@@55) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@55 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@55 f_2@@55))
))) (forall ((o2@@56 T@Ref) (f_2@@56 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@56 f_2@@56) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@19) o2@@56 f_2@@56) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@56 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@56 f_2@@56))
))) (forall ((o2@@57 T@Ref) (f_2@@57 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@57 f_2@@57) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@19) o2@@57 f_2@@57) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@57 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@57 f_2@@57))
))) (forall ((o2@@58 T@Ref) (f_2@@58 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@19) null (PredicateMaskField_11293 pm_f@@9))) o2@@58 f_2@@58) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@19) o2@@58 f_2@@58) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@58 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@9) o2@@58 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@10) (IsPredicateField_11293_11294 pm_f@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22767) (ExhaleHeap@@10 T@PolymorphicMapType_22767) (Mask@@11 T@PolymorphicMapType_22788) (pm_f@@10 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_11185_11294 Mask@@11 null pm_f@@10) (IsPredicateField_11185_82416 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@59 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@59 f_2@@59) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@20) o2@@59 f_2@@59) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@59 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@59 f_2@@59))
)) (forall ((o2@@60 T@Ref) (f_2@@60 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@60 f_2@@60) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@20) o2@@60 f_2@@60) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@60 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@60 f_2@@60))
))) (forall ((o2@@61 T@Ref) (f_2@@61 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@61 f_2@@61) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@20) o2@@61 f_2@@61) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@61 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@61 f_2@@61))
))) (forall ((o2@@62 T@Ref) (f_2@@62 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@62 f_2@@62) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@20) o2@@62 f_2@@62) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@62 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@62 f_2@@62))
))) (forall ((o2@@63 T@Ref) (f_2@@63 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@63 f_2@@63) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) o2@@63 f_2@@63) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@63 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@63 f_2@@63))
))) (forall ((o2@@64 T@Ref) (f_2@@64 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@64 f_2@@64) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@20) o2@@64 f_2@@64) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@64 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@64 f_2@@64))
))) (forall ((o2@@65 T@Ref) (f_2@@65 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@65 f_2@@65) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@20) o2@@65 f_2@@65) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@65 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@65 f_2@@65))
))) (forall ((o2@@66 T@Ref) (f_2@@66 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@66 f_2@@66) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@20) o2@@66 f_2@@66) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@66 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@66 f_2@@66))
))) (forall ((o2@@67 T@Ref) (f_2@@67 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@67 f_2@@67) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@20) o2@@67 f_2@@67) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@67 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@67 f_2@@67))
))) (forall ((o2@@68 T@Ref) (f_2@@68 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@68 f_2@@68) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@20) o2@@68 f_2@@68) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@68 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@68 f_2@@68))
))) (forall ((o2@@69 T@Ref) (f_2@@69 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@69 f_2@@69) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@20) o2@@69 f_2@@69) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@69 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@69 f_2@@69))
))) (forall ((o2@@70 T@Ref) (f_2@@70 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@70 f_2@@70) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@20) o2@@70 f_2@@70) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@70 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@70 f_2@@70))
))) (forall ((o2@@71 T@Ref) (f_2@@71 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@71 f_2@@71) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@20) o2@@71 f_2@@71) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@71 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@71 f_2@@71))
))) (forall ((o2@@72 T@Ref) (f_2@@72 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@72 f_2@@72) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@20) o2@@72 f_2@@72) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@72 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@72 f_2@@72))
))) (forall ((o2@@73 T@Ref) (f_2@@73 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@73 f_2@@73) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@20) o2@@73 f_2@@73) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@73 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@73 f_2@@73))
))) (forall ((o2@@74 T@Ref) (f_2@@74 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@74 f_2@@74) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@20) o2@@74 f_2@@74) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@74 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@74 f_2@@74))
))) (forall ((o2@@75 T@Ref) (f_2@@75 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@75 f_2@@75) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@20) o2@@75 f_2@@75) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@75 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@75 f_2@@75))
))) (forall ((o2@@76 T@Ref) (f_2@@76 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@76 f_2@@76) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@20) o2@@76 f_2@@76) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@76 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@76 f_2@@76))
))) (forall ((o2@@77 T@Ref) (f_2@@77 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@77 f_2@@77) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@20) o2@@77 f_2@@77) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@77 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@77 f_2@@77))
))) (forall ((o2@@78 T@Ref) (f_2@@78 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@20) null (PredicateMaskField_11185 pm_f@@10))) o2@@78 f_2@@78) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@20) o2@@78 f_2@@78) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@78 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@10) o2@@78 f_2@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@11) (IsPredicateField_11185_82416 pm_f@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22767) (ExhaleHeap@@11 T@PolymorphicMapType_22767) (Mask@@12 T@PolymorphicMapType_22788) (pm_f@@11 T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_11343_11344 Mask@@12 null pm_f@@11) (IsWandField_11343_90108 pm_f@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@79 T@Ref) (f_2@@79 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@79 f_2@@79) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@21) o2@@79 f_2@@79) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@79 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@79 f_2@@79))
)) (forall ((o2@@80 T@Ref) (f_2@@80 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@80 f_2@@80) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@21) o2@@80 f_2@@80) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@80 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@80 f_2@@80))
))) (forall ((o2@@81 T@Ref) (f_2@@81 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@81 f_2@@81) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@21) o2@@81 f_2@@81) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@81 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@81 f_2@@81))
))) (forall ((o2@@82 T@Ref) (f_2@@82 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@82 f_2@@82) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@21) o2@@82 f_2@@82) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@82 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@82 f_2@@82))
))) (forall ((o2@@83 T@Ref) (f_2@@83 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@83 f_2@@83) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@21) o2@@83 f_2@@83) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@83 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@83 f_2@@83))
))) (forall ((o2@@84 T@Ref) (f_2@@84 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@84 f_2@@84) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@21) o2@@84 f_2@@84) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@84 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@84 f_2@@84))
))) (forall ((o2@@85 T@Ref) (f_2@@85 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@85 f_2@@85) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@21) o2@@85 f_2@@85) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@85 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@85 f_2@@85))
))) (forall ((o2@@86 T@Ref) (f_2@@86 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@86 f_2@@86) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@21) o2@@86 f_2@@86) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@86 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@86 f_2@@86))
))) (forall ((o2@@87 T@Ref) (f_2@@87 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@87 f_2@@87) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@21) o2@@87 f_2@@87) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@87 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@87 f_2@@87))
))) (forall ((o2@@88 T@Ref) (f_2@@88 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@88 f_2@@88) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@21) o2@@88 f_2@@88) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@88 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@88 f_2@@88))
))) (forall ((o2@@89 T@Ref) (f_2@@89 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@89 f_2@@89) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@21) o2@@89 f_2@@89) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@89 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@89 f_2@@89))
))) (forall ((o2@@90 T@Ref) (f_2@@90 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@90 f_2@@90) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@21) o2@@90 f_2@@90) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@90 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@90 f_2@@90))
))) (forall ((o2@@91 T@Ref) (f_2@@91 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@91 f_2@@91) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@21) o2@@91 f_2@@91) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@91 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@91 f_2@@91))
))) (forall ((o2@@92 T@Ref) (f_2@@92 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@92 f_2@@92) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@21) o2@@92 f_2@@92) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@92 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@92 f_2@@92))
))) (forall ((o2@@93 T@Ref) (f_2@@93 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@93 f_2@@93) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@21) o2@@93 f_2@@93) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@93 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@93 f_2@@93))
))) (forall ((o2@@94 T@Ref) (f_2@@94 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@94 f_2@@94) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@21) o2@@94 f_2@@94) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@94 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@94 f_2@@94))
))) (forall ((o2@@95 T@Ref) (f_2@@95 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@95 f_2@@95) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@21) o2@@95 f_2@@95) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@95 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@95 f_2@@95))
))) (forall ((o2@@96 T@Ref) (f_2@@96 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@96 f_2@@96) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@21) o2@@96 f_2@@96) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@96 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@96 f_2@@96))
))) (forall ((o2@@97 T@Ref) (f_2@@97 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@97 f_2@@97) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@21) o2@@97 f_2@@97) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@97 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@97 f_2@@97))
))) (forall ((o2@@98 T@Ref) (f_2@@98 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) null (WandMaskField_11343 pm_f@@11))) o2@@98 f_2@@98) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@21) o2@@98 f_2@@98) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@98 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@11) o2@@98 f_2@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@12) (IsWandField_11343_90108 pm_f@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22767) (ExhaleHeap@@12 T@PolymorphicMapType_22767) (Mask@@13 T@PolymorphicMapType_22788) (pm_f@@12 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_11318_11319 Mask@@13 null pm_f@@12) (IsWandField_11318_89751 pm_f@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@99 T@Ref) (f_2@@99 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@99 f_2@@99) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@22) o2@@99 f_2@@99) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@99 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@99 f_2@@99))
)) (forall ((o2@@100 T@Ref) (f_2@@100 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@100 f_2@@100) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@22) o2@@100 f_2@@100) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@100 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@100 f_2@@100))
))) (forall ((o2@@101 T@Ref) (f_2@@101 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@101 f_2@@101) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@22) o2@@101 f_2@@101) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@101 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@101 f_2@@101))
))) (forall ((o2@@102 T@Ref) (f_2@@102 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@102 f_2@@102) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@22) o2@@102 f_2@@102) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@102 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@102 f_2@@102))
))) (forall ((o2@@103 T@Ref) (f_2@@103 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@103 f_2@@103) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@22) o2@@103 f_2@@103) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@103 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@103 f_2@@103))
))) (forall ((o2@@104 T@Ref) (f_2@@104 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@104 f_2@@104) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@22) o2@@104 f_2@@104) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@104 f_2@@104)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@104 f_2@@104))
))) (forall ((o2@@105 T@Ref) (f_2@@105 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@105 f_2@@105) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@22) o2@@105 f_2@@105) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@105 f_2@@105)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@105 f_2@@105))
))) (forall ((o2@@106 T@Ref) (f_2@@106 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@106 f_2@@106) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@22) o2@@106 f_2@@106) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@106 f_2@@106)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@106 f_2@@106))
))) (forall ((o2@@107 T@Ref) (f_2@@107 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@107 f_2@@107) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@22) o2@@107 f_2@@107) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@107 f_2@@107)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@107 f_2@@107))
))) (forall ((o2@@108 T@Ref) (f_2@@108 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@108 f_2@@108) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@22) o2@@108 f_2@@108) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@108 f_2@@108)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@108 f_2@@108))
))) (forall ((o2@@109 T@Ref) (f_2@@109 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@109 f_2@@109) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@22) o2@@109 f_2@@109) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@109 f_2@@109)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@109 f_2@@109))
))) (forall ((o2@@110 T@Ref) (f_2@@110 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@110 f_2@@110) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@22) o2@@110 f_2@@110) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@110 f_2@@110)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@110 f_2@@110))
))) (forall ((o2@@111 T@Ref) (f_2@@111 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@111 f_2@@111) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@22) o2@@111 f_2@@111) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@111 f_2@@111)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@111 f_2@@111))
))) (forall ((o2@@112 T@Ref) (f_2@@112 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@112 f_2@@112) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@22) o2@@112 f_2@@112) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@112 f_2@@112)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@112 f_2@@112))
))) (forall ((o2@@113 T@Ref) (f_2@@113 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@113 f_2@@113) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) o2@@113 f_2@@113) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@113 f_2@@113)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@113 f_2@@113))
))) (forall ((o2@@114 T@Ref) (f_2@@114 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@114 f_2@@114) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@22) o2@@114 f_2@@114) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@114 f_2@@114)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@114 f_2@@114))
))) (forall ((o2@@115 T@Ref) (f_2@@115 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@115 f_2@@115) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@22) o2@@115 f_2@@115) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@115 f_2@@115)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@115 f_2@@115))
))) (forall ((o2@@116 T@Ref) (f_2@@116 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@116 f_2@@116) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@22) o2@@116 f_2@@116) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@116 f_2@@116)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@116 f_2@@116))
))) (forall ((o2@@117 T@Ref) (f_2@@117 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@117 f_2@@117) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@22) o2@@117 f_2@@117) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@117 f_2@@117)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@117 f_2@@117))
))) (forall ((o2@@118 T@Ref) (f_2@@118 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@22) null (WandMaskField_11318 pm_f@@12))) o2@@118 f_2@@118) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@22) o2@@118 f_2@@118) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@118 f_2@@118)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@12) o2@@118 f_2@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@13) (IsWandField_11318_89751 pm_f@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22767) (ExhaleHeap@@13 T@PolymorphicMapType_22767) (Mask@@14 T@PolymorphicMapType_22788) (pm_f@@13 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_11293_11294 Mask@@14 null pm_f@@13) (IsWandField_11293_89394 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@119 T@Ref) (f_2@@119 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@119 f_2@@119) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@23) o2@@119 f_2@@119) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@119 f_2@@119)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@119 f_2@@119))
)) (forall ((o2@@120 T@Ref) (f_2@@120 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@120 f_2@@120) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@23) o2@@120 f_2@@120) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@120 f_2@@120)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@120 f_2@@120))
))) (forall ((o2@@121 T@Ref) (f_2@@121 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@121 f_2@@121) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@23) o2@@121 f_2@@121) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@121 f_2@@121)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@121 f_2@@121))
))) (forall ((o2@@122 T@Ref) (f_2@@122 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@122 f_2@@122) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@23) o2@@122 f_2@@122) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@122 f_2@@122)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@122 f_2@@122))
))) (forall ((o2@@123 T@Ref) (f_2@@123 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@123 f_2@@123) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@23) o2@@123 f_2@@123) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@123 f_2@@123)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@123 f_2@@123))
))) (forall ((o2@@124 T@Ref) (f_2@@124 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@124 f_2@@124) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@23) o2@@124 f_2@@124) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@124 f_2@@124)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@124 f_2@@124))
))) (forall ((o2@@125 T@Ref) (f_2@@125 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@125 f_2@@125) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@23) o2@@125 f_2@@125) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@125 f_2@@125)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@125 f_2@@125))
))) (forall ((o2@@126 T@Ref) (f_2@@126 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@126 f_2@@126) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@23) o2@@126 f_2@@126) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@126 f_2@@126)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@126 f_2@@126))
))) (forall ((o2@@127 T@Ref) (f_2@@127 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@127 f_2@@127) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@23) o2@@127 f_2@@127) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@127 f_2@@127)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@127 f_2@@127))
))) (forall ((o2@@128 T@Ref) (f_2@@128 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@128 f_2@@128) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) o2@@128 f_2@@128) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@128 f_2@@128)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@128 f_2@@128))
))) (forall ((o2@@129 T@Ref) (f_2@@129 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@129 f_2@@129) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@23) o2@@129 f_2@@129) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@129 f_2@@129)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@129 f_2@@129))
))) (forall ((o2@@130 T@Ref) (f_2@@130 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@130 f_2@@130) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@23) o2@@130 f_2@@130) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@130 f_2@@130)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@130 f_2@@130))
))) (forall ((o2@@131 T@Ref) (f_2@@131 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@131 f_2@@131) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@23) o2@@131 f_2@@131) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@131 f_2@@131)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@131 f_2@@131))
))) (forall ((o2@@132 T@Ref) (f_2@@132 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@132 f_2@@132) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@23) o2@@132 f_2@@132) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@132 f_2@@132)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@132 f_2@@132))
))) (forall ((o2@@133 T@Ref) (f_2@@133 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@133 f_2@@133) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@23) o2@@133 f_2@@133) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@133 f_2@@133)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@133 f_2@@133))
))) (forall ((o2@@134 T@Ref) (f_2@@134 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@134 f_2@@134) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@23) o2@@134 f_2@@134) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@134 f_2@@134)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@134 f_2@@134))
))) (forall ((o2@@135 T@Ref) (f_2@@135 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@135 f_2@@135) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@23) o2@@135 f_2@@135) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@135 f_2@@135)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@135 f_2@@135))
))) (forall ((o2@@136 T@Ref) (f_2@@136 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@136 f_2@@136) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@23) o2@@136 f_2@@136) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@136 f_2@@136)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@136 f_2@@136))
))) (forall ((o2@@137 T@Ref) (f_2@@137 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@137 f_2@@137) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@23) o2@@137 f_2@@137) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@137 f_2@@137)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@137 f_2@@137))
))) (forall ((o2@@138 T@Ref) (f_2@@138 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@23) null (WandMaskField_11293 pm_f@@13))) o2@@138 f_2@@138) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@23) o2@@138 f_2@@138) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@138 f_2@@138)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@13) o2@@138 f_2@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@14) (IsWandField_11293_89394 pm_f@@13))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22767) (ExhaleHeap@@14 T@PolymorphicMapType_22767) (Mask@@15 T@PolymorphicMapType_22788) (pm_f@@14 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_11185_11294 Mask@@15 null pm_f@@14) (IsWandField_11185_89037 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@139 T@Ref) (f_2@@139 T@Field_26154_1189) ) (!  (=> (select (|PolymorphicMapType_23316_11183_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@139 f_2@@139) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@24) o2@@139 f_2@@139) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@139 f_2@@139)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@139 f_2@@139))
)) (forall ((o2@@140 T@Ref) (f_2@@140 T@Field_22840_22841) ) (!  (=> (select (|PolymorphicMapType_23316_11185_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@140 f_2@@140) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@24) o2@@140 f_2@@140) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@140 f_2@@140)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@140 f_2@@140))
))) (forall ((o2@@141 T@Ref) (f_2@@141 T@Field_22827_53) ) (!  (=> (select (|PolymorphicMapType_23316_11183_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@141 f_2@@141) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@24) o2@@141 f_2@@141) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@141 f_2@@141)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@141 f_2@@141))
))) (forall ((o2@@142 T@Ref) (f_2@@142 T@Field_11185_11294) ) (!  (=> (select (|PolymorphicMapType_23316_11183_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@142 f_2@@142) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@24) o2@@142 f_2@@142) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@142 f_2@@142)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@142 f_2@@142))
))) (forall ((o2@@143 T@Ref) (f_2@@143 T@Field_11185_29636) ) (!  (=> (select (|PolymorphicMapType_23316_11183_84523#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@143 f_2@@143) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) o2@@143 f_2@@143) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@143 f_2@@143)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@143 f_2@@143))
))) (forall ((o2@@144 T@Ref) (f_2@@144 T@Field_11293_1249) ) (!  (=> (select (|PolymorphicMapType_23316_26666_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@144 f_2@@144) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@24) o2@@144 f_2@@144) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@144 f_2@@144)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@144 f_2@@144))
))) (forall ((o2@@145 T@Ref) (f_2@@145 T@Field_11293_11186) ) (!  (=> (select (|PolymorphicMapType_23316_26666_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@145 f_2@@145) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@24) o2@@145 f_2@@145) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@145 f_2@@145)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@145 f_2@@145))
))) (forall ((o2@@146 T@Ref) (f_2@@146 T@Field_11293_53) ) (!  (=> (select (|PolymorphicMapType_23316_26666_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@146 f_2@@146) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@24) o2@@146 f_2@@146) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@146 f_2@@146)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@146 f_2@@146))
))) (forall ((o2@@147 T@Ref) (f_2@@147 T@Field_26666_26667) ) (!  (=> (select (|PolymorphicMapType_23316_26666_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@147 f_2@@147) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@24) o2@@147 f_2@@147) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@147 f_2@@147)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@147 f_2@@147))
))) (forall ((o2@@148 T@Ref) (f_2@@148 T@Field_29631_29636) ) (!  (=> (select (|PolymorphicMapType_23316_26666_85571#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@148 f_2@@148) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@24) o2@@148 f_2@@148) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@148 f_2@@148)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@148 f_2@@148))
))) (forall ((o2@@149 T@Ref) (f_2@@149 T@Field_11318_1249) ) (!  (=> (select (|PolymorphicMapType_23316_35526_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@149 f_2@@149) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@24) o2@@149 f_2@@149) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@149 f_2@@149)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@149 f_2@@149))
))) (forall ((o2@@150 T@Ref) (f_2@@150 T@Field_11318_11186) ) (!  (=> (select (|PolymorphicMapType_23316_35526_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@150 f_2@@150) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@24) o2@@150 f_2@@150) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@150 f_2@@150)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@150 f_2@@150))
))) (forall ((o2@@151 T@Ref) (f_2@@151 T@Field_11318_53) ) (!  (=> (select (|PolymorphicMapType_23316_35526_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@151 f_2@@151) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@24) o2@@151 f_2@@151) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@151 f_2@@151)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@151 f_2@@151))
))) (forall ((o2@@152 T@Ref) (f_2@@152 T@Field_35526_35527) ) (!  (=> (select (|PolymorphicMapType_23316_35526_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@152 f_2@@152) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@24) o2@@152 f_2@@152) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@152 f_2@@152)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@152 f_2@@152))
))) (forall ((o2@@153 T@Ref) (f_2@@153 T@Field_36825_36830) ) (!  (=> (select (|PolymorphicMapType_23316_35526_86619#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@153 f_2@@153) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@24) o2@@153 f_2@@153) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@153 f_2@@153)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@153 f_2@@153))
))) (forall ((o2@@154 T@Ref) (f_2@@154 T@Field_11343_1249) ) (!  (=> (select (|PolymorphicMapType_23316_40435_1189#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@154 f_2@@154) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@24) o2@@154 f_2@@154) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@154 f_2@@154)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@154 f_2@@154))
))) (forall ((o2@@155 T@Ref) (f_2@@155 T@Field_11343_11186) ) (!  (=> (select (|PolymorphicMapType_23316_40435_11186#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@155 f_2@@155) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@24) o2@@155 f_2@@155) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@155 f_2@@155)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@155 f_2@@155))
))) (forall ((o2@@156 T@Ref) (f_2@@156 T@Field_11343_53) ) (!  (=> (select (|PolymorphicMapType_23316_40435_53#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@156 f_2@@156) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@24) o2@@156 f_2@@156) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@156 f_2@@156)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@156 f_2@@156))
))) (forall ((o2@@157 T@Ref) (f_2@@157 T@Field_40435_40436) ) (!  (=> (select (|PolymorphicMapType_23316_40435_26667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@157 f_2@@157) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@24) o2@@157 f_2@@157) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@157 f_2@@157)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@157 f_2@@157))
))) (forall ((o2@@158 T@Ref) (f_2@@158 T@Field_40448_40453) ) (!  (=> (select (|PolymorphicMapType_23316_40435_87667#PolymorphicMapType_23316| (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@24) null (WandMaskField_11185 pm_f@@14))) o2@@158 f_2@@158) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@24) o2@@158 f_2@@158) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@158 f_2@@158)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@14) o2@@158 f_2@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@15) (IsWandField_11185_89037 pm_f@@14))
)))
(assert (forall ((diz@@11 T@Ref) (diz2 T@Ref) ) (!  (=> (= (Wand_readonly_for_writeonly__valid_wand diz@@11) (Wand_readonly_for_writeonly__valid_wand diz2)) (= diz@@11 diz2))
 :qid |stdinbpl.588:15|
 :skolemid |39|
 :pattern ( (Wand_readonly_for_writeonly__valid_wand diz@@11) (Wand_readonly_for_writeonly__valid_wand diz2))
)))
(assert (forall ((diz@@12 T@Ref) (diz2@@0 T@Ref) ) (!  (=> (= (|Wand_readonly_for_writeonly__valid_wand#sm| diz@@12) (|Wand_readonly_for_writeonly__valid_wand#sm| diz2@@0)) (= diz@@12 diz2@@0))
 :qid |stdinbpl.592:15|
 :skolemid |40|
 :pattern ( (|Wand_readonly_for_writeonly__valid_wand#sm| diz@@12) (|Wand_readonly_for_writeonly__valid_wand#sm| diz2@@0))
)))
(assert (forall ((diz@@13 T@Ref) (diz2@@1 T@Ref) ) (!  (=> (= (WandDemo__readonly diz@@13) (WandDemo__readonly diz2@@1)) (= diz@@13 diz2@@1))
 :qid |stdinbpl.715:15|
 :skolemid |45|
 :pattern ( (WandDemo__readonly diz@@13) (WandDemo__readonly diz2@@1))
)))
(assert (forall ((diz@@14 T@Ref) (diz2@@2 T@Ref) ) (!  (=> (= (|WandDemo__readonly#sm| diz@@14) (|WandDemo__readonly#sm| diz2@@2)) (= diz@@14 diz2@@2))
 :qid |stdinbpl.719:15|
 :skolemid |46|
 :pattern ( (|WandDemo__readonly#sm| diz@@14) (|WandDemo__readonly#sm| diz2@@2))
)))
(assert (forall ((diz@@15 T@Ref) (diz2@@3 T@Ref) ) (!  (=> (= (WandDemo__writeonly diz@@15) (WandDemo__writeonly diz2@@3)) (= diz@@15 diz2@@3))
 :qid |stdinbpl.772:15|
 :skolemid |51|
 :pattern ( (WandDemo__writeonly diz@@15) (WandDemo__writeonly diz2@@3))
)))
(assert (forall ((diz@@16 T@Ref) (diz2@@4 T@Ref) ) (!  (=> (= (|WandDemo__writeonly#sm| diz@@16) (|WandDemo__writeonly#sm| diz2@@4)) (= diz@@16 diz2@@4))
 :qid |stdinbpl.776:15|
 :skolemid |52|
 :pattern ( (|WandDemo__writeonly#sm| diz@@16) (|WandDemo__writeonly#sm| diz2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22767) (ExhaleHeap@@15 T@PolymorphicMapType_22767) (Mask@@16 T@PolymorphicMapType_22788) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@25) o_1 $allocated) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@15) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@15) o_1 $allocated))
)))
(assert (forall ((p T@Field_40435_40436) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_40435_40435 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_40435_40435 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_35526_35527) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_35526_35526 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35526_35526 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_26666_26667) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_26666_26666 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26666_26666 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_11185_11294) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_22827_22827 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22827_22827 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22767) (Mask@@17 T@PolymorphicMapType_22788) (diz@@17 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@17) (or (< AssumeFunctionsAbove 0) (|Wand_readonly_for_writeonly__get_in_1#trigger| (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@26) null (Wand_readonly_for_writeonly__valid_wand diz@@17)) diz@@17))) (=> (not (= diz@@17 null)) (not (= (|Wand_readonly_for_writeonly__get_in_1'| Heap@@26 diz@@17) null))))
 :qid |stdinbpl.231:15|
 :skolemid |26|
 :pattern ( (state Heap@@26 Mask@@17) (|Wand_readonly_for_writeonly__get_in_1'| Heap@@26 diz@@17))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22767) (Mask@@18 T@PolymorphicMapType_22788) (diz@@18 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@18) (or (< AssumeFunctionsAbove 1) (|Wand_readonly_for_writeonly__get_out_1#trigger| (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@27) null (Wand_readonly_for_writeonly__valid_wand diz@@18)) diz@@18))) (=> (not (= diz@@18 null)) (not (= (|Wand_readonly_for_writeonly__get_out_1'| Heap@@27 diz@@18) null))))
 :qid |stdinbpl.369:15|
 :skolemid |31|
 :pattern ( (state Heap@@27 Mask@@18) (|Wand_readonly_for_writeonly__get_out_1'| Heap@@27 diz@@18))
)))
(assert  (not (IsPredicateField_11183_1189 Wand_readonly_for_writeonly__lemma)))
(assert  (not (IsWandField_11183_1189 Wand_readonly_for_writeonly__lemma)))
(assert  (not (IsPredicateField_11185_11186 Wand_readonly_for_writeonly__in_1)))
(assert  (not (IsWandField_11185_11186 Wand_readonly_for_writeonly__in_1)))
(assert  (not (IsPredicateField_11185_11186 Wand_readonly_for_writeonly__out_1)))
(assert  (not (IsWandField_11185_11186 Wand_readonly_for_writeonly__out_1)))
(assert  (not (IsPredicateField_11185_11186 Wand_readonly_for_writeonly__this_1)))
(assert  (not (IsWandField_11185_11186 Wand_readonly_for_writeonly__this_1)))
(assert  (not (IsPredicateField_11183_1189 WandDemo__x)))
(assert  (not (IsWandField_11183_1189 WandDemo__x)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22767) (ExhaleHeap@@16 T@PolymorphicMapType_22767) (Mask@@19 T@PolymorphicMapType_22788) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@19) (succHeap Heap@@28 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@19))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22788) (o_2@@19 T@Ref) (f_4@@19 T@Field_40448_40453) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_11343_103783 f_4@@19))) (not (IsWandField_11343_103799 f_4@@19))) (<= (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22788) (o_2@@20 T@Ref) (f_4@@20 T@Field_11343_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11343_53 f_4@@20))) (not (IsWandField_11343_53 f_4@@20))) (<= (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22788) (o_2@@21 T@Ref) (f_4@@21 T@Field_11343_11186) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_11343_11186 f_4@@21))) (not (IsWandField_11343_11186 f_4@@21))) (<= (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22788) (o_2@@22 T@Ref) (f_4@@22 T@Field_11343_1249) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11343_1189 f_4@@22))) (not (IsWandField_11343_1189 f_4@@22))) (<= (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22788) (o_2@@23 T@Ref) (f_4@@23 T@Field_40435_40436) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@@24) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11343_11344 f_4@@23))) (not (IsWandField_11343_90108 f_4@@23))) (<= (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@@24) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@@24) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22788) (o_2@@24 T@Ref) (f_4@@24 T@Field_36825_36830) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@@25) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_11318_102952 f_4@@24))) (not (IsWandField_11318_102968 f_4@@24))) (<= (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@@25) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@@25) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22788) (o_2@@25 T@Ref) (f_4@@25 T@Field_11318_53) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@@26) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_11318_53 f_4@@25))) (not (IsWandField_11318_53 f_4@@25))) (<= (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@@26) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@@26) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22788) (o_2@@26 T@Ref) (f_4@@26 T@Field_11318_11186) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@@27) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_11318_11186 f_4@@26))) (not (IsWandField_11318_11186 f_4@@26))) (<= (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@@27) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@@27) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22788) (o_2@@27 T@Ref) (f_4@@27 T@Field_11318_1249) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@@28) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_11318_1189 f_4@@27))) (not (IsWandField_11318_1189 f_4@@27))) (<= (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@@28) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@@28) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22788) (o_2@@28 T@Ref) (f_4@@28 T@Field_35526_35527) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@@29) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_11318_11319 f_4@@28))) (not (IsWandField_11318_89751 f_4@@28))) (<= (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@@29) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@@29) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22788) (o_2@@29 T@Ref) (f_4@@29 T@Field_11185_29636) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@@30) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_11183_102121 f_4@@29))) (not (IsWandField_11183_102137 f_4@@29))) (<= (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@@30) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@@30) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22788) (o_2@@30 T@Ref) (f_4@@30 T@Field_22827_53) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@@31) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_11183_53 f_4@@30))) (not (IsWandField_11183_53 f_4@@30))) (<= (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@@31) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@@31) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_22788) (o_2@@31 T@Ref) (f_4@@31 T@Field_22840_22841) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@@32) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_11185_11186 f_4@@31))) (not (IsWandField_11185_11186 f_4@@31))) (<= (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@@32) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@@32) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_22788) (o_2@@32 T@Ref) (f_4@@32 T@Field_26154_1189) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@@33) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_11183_1189 f_4@@32))) (not (IsWandField_11183_1189 f_4@@32))) (<= (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@@33) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@@33) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_22788) (o_2@@33 T@Ref) (f_4@@33 T@Field_11185_11294) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@@34) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_11185_82416 f_4@@33))) (not (IsWandField_11185_89037 f_4@@33))) (<= (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@@34) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@@34) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_22788) (o_2@@34 T@Ref) (f_4@@34 T@Field_29631_29636) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@@35) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_11293_101318 f_4@@34))) (not (IsWandField_11293_101334 f_4@@34))) (<= (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@@35) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@@35) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_22788) (o_2@@35 T@Ref) (f_4@@35 T@Field_11293_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@@36) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_11293_53 f_4@@35))) (not (IsWandField_11293_53 f_4@@35))) (<= (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@@36) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@@36) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_22788) (o_2@@36 T@Ref) (f_4@@36 T@Field_11293_11186) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@@37) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_11293_11186 f_4@@36))) (not (IsWandField_11293_11186 f_4@@36))) (<= (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@@37) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@@37) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_22788) (o_2@@37 T@Ref) (f_4@@37 T@Field_11293_1249) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@@38) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_11293_1189 f_4@@37))) (not (IsWandField_11293_1189 f_4@@37))) (<= (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@@38) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@@38) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_22788) (o_2@@38 T@Ref) (f_4@@38 T@Field_26666_26667) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@@39) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_11293_11294 f_4@@38))) (not (IsWandField_11293_89394 f_4@@38))) (<= (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@@39) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@@39) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_22788) (o_2@@39 T@Ref) (f_4@@39 T@Field_40448_40453) ) (! (= (HasDirectPerm_11343_82171 Mask@@40 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| Mask@@40) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_82171 Mask@@40 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_22788) (o_2@@40 T@Ref) (f_4@@40 T@Field_11343_53) ) (! (= (HasDirectPerm_11343_53 Mask@@41 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| Mask@@41) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_53 Mask@@41 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_22788) (o_2@@41 T@Ref) (f_4@@41 T@Field_40435_40436) ) (! (= (HasDirectPerm_11343_11344 Mask@@42 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| Mask@@42) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_11344 Mask@@42 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_22788) (o_2@@42 T@Ref) (f_4@@42 T@Field_11343_1249) ) (! (= (HasDirectPerm_11343_1249 Mask@@43 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| Mask@@43) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_1249 Mask@@43 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_22788) (o_2@@43 T@Ref) (f_4@@43 T@Field_11343_11186) ) (! (= (HasDirectPerm_11343_11186 Mask@@44 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| Mask@@44) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11343_11186 Mask@@44 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_22788) (o_2@@44 T@Ref) (f_4@@44 T@Field_36825_36830) ) (! (= (HasDirectPerm_11318_81073 Mask@@45 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| Mask@@45) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_81073 Mask@@45 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_22788) (o_2@@45 T@Ref) (f_4@@45 T@Field_11318_53) ) (! (= (HasDirectPerm_11318_53 Mask@@46 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| Mask@@46) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_53 Mask@@46 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_22788) (o_2@@46 T@Ref) (f_4@@46 T@Field_35526_35527) ) (! (= (HasDirectPerm_11318_11319 Mask@@47 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| Mask@@47) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_11319 Mask@@47 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_22788) (o_2@@47 T@Ref) (f_4@@47 T@Field_11318_1249) ) (! (= (HasDirectPerm_11318_1249 Mask@@48 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| Mask@@48) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_1249 Mask@@48 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_22788) (o_2@@48 T@Ref) (f_4@@48 T@Field_11318_11186) ) (! (= (HasDirectPerm_11318_11186 Mask@@49 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| Mask@@49) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11318_11186 Mask@@49 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_22788) (o_2@@49 T@Ref) (f_4@@49 T@Field_29631_29636) ) (! (= (HasDirectPerm_11293_79975 Mask@@50 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| Mask@@50) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_79975 Mask@@50 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_22788) (o_2@@50 T@Ref) (f_4@@50 T@Field_11293_53) ) (! (= (HasDirectPerm_11293_53 Mask@@51 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| Mask@@51) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_53 Mask@@51 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_22788) (o_2@@51 T@Ref) (f_4@@51 T@Field_26666_26667) ) (! (= (HasDirectPerm_11293_11294 Mask@@52 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| Mask@@52) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_11294 Mask@@52 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_22788) (o_2@@52 T@Ref) (f_4@@52 T@Field_11293_1249) ) (! (= (HasDirectPerm_11293_1249 Mask@@53 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| Mask@@53) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_1249 Mask@@53 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_22788) (o_2@@53 T@Ref) (f_4@@53 T@Field_11293_11186) ) (! (= (HasDirectPerm_11293_11186 Mask@@54 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| Mask@@54) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11293_11186 Mask@@54 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_22788) (o_2@@54 T@Ref) (f_4@@54 T@Field_11185_29636) ) (! (= (HasDirectPerm_11185_78834 Mask@@55 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| Mask@@55) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11185_78834 Mask@@55 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_22788) (o_2@@55 T@Ref) (f_4@@55 T@Field_22827_53) ) (! (= (HasDirectPerm_11185_53 Mask@@56 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| Mask@@56) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11185_53 Mask@@56 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_22788) (o_2@@56 T@Ref) (f_4@@56 T@Field_11185_11294) ) (! (= (HasDirectPerm_11185_11294 Mask@@57 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| Mask@@57) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11185_11294 Mask@@57 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_22788) (o_2@@57 T@Ref) (f_4@@57 T@Field_26154_1189) ) (! (= (HasDirectPerm_11194_1249 Mask@@58 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| Mask@@58) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11194_1249 Mask@@58 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_22788) (o_2@@58 T@Ref) (f_4@@58 T@Field_22840_22841) ) (! (= (HasDirectPerm_11185_11186 Mask@@59 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| Mask@@59) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11185_11186 Mask@@59 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22767) (ExhaleHeap@@17 T@PolymorphicMapType_22767) (Mask@@60 T@PolymorphicMapType_22788) (o_1@@0 T@Ref) (f_2@@159 T@Field_40448_40453) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@60) (=> (HasDirectPerm_11343_82171 Mask@@60 o_1@@0 f_2@@159) (= (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@29) o_1@@0 f_2@@159) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@17) o_1@@0 f_2@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@60) (select (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| ExhaleHeap@@17) o_1@@0 f_2@@159))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22767) (ExhaleHeap@@18 T@PolymorphicMapType_22767) (Mask@@61 T@PolymorphicMapType_22788) (o_1@@1 T@Ref) (f_2@@160 T@Field_11343_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@61) (=> (HasDirectPerm_11343_53 Mask@@61 o_1@@1 f_2@@160) (= (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@30) o_1@@1 f_2@@160) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@18) o_1@@1 f_2@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@61) (select (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| ExhaleHeap@@18) o_1@@1 f_2@@160))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22767) (ExhaleHeap@@19 T@PolymorphicMapType_22767) (Mask@@62 T@PolymorphicMapType_22788) (o_1@@2 T@Ref) (f_2@@161 T@Field_40435_40436) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@62) (=> (HasDirectPerm_11343_11344 Mask@@62 o_1@@2 f_2@@161) (= (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@31) o_1@@2 f_2@@161) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@19) o_1@@2 f_2@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@62) (select (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| ExhaleHeap@@19) o_1@@2 f_2@@161))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22767) (ExhaleHeap@@20 T@PolymorphicMapType_22767) (Mask@@63 T@PolymorphicMapType_22788) (o_1@@3 T@Ref) (f_2@@162 T@Field_11343_1249) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@63) (=> (HasDirectPerm_11343_1249 Mask@@63 o_1@@3 f_2@@162) (= (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@32) o_1@@3 f_2@@162) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@20) o_1@@3 f_2@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@63) (select (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| ExhaleHeap@@20) o_1@@3 f_2@@162))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22767) (ExhaleHeap@@21 T@PolymorphicMapType_22767) (Mask@@64 T@PolymorphicMapType_22788) (o_1@@4 T@Ref) (f_2@@163 T@Field_11343_11186) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@64) (=> (HasDirectPerm_11343_11186 Mask@@64 o_1@@4 f_2@@163) (= (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@33) o_1@@4 f_2@@163) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@21) o_1@@4 f_2@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@64) (select (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| ExhaleHeap@@21) o_1@@4 f_2@@163))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22767) (ExhaleHeap@@22 T@PolymorphicMapType_22767) (Mask@@65 T@PolymorphicMapType_22788) (o_1@@5 T@Ref) (f_2@@164 T@Field_36825_36830) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@65) (=> (HasDirectPerm_11318_81073 Mask@@65 o_1@@5 f_2@@164) (= (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@34) o_1@@5 f_2@@164) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@22) o_1@@5 f_2@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@65) (select (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| ExhaleHeap@@22) o_1@@5 f_2@@164))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22767) (ExhaleHeap@@23 T@PolymorphicMapType_22767) (Mask@@66 T@PolymorphicMapType_22788) (o_1@@6 T@Ref) (f_2@@165 T@Field_11318_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@66) (=> (HasDirectPerm_11318_53 Mask@@66 o_1@@6 f_2@@165) (= (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@35) o_1@@6 f_2@@165) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@23) o_1@@6 f_2@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@66) (select (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| ExhaleHeap@@23) o_1@@6 f_2@@165))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22767) (ExhaleHeap@@24 T@PolymorphicMapType_22767) (Mask@@67 T@PolymorphicMapType_22788) (o_1@@7 T@Ref) (f_2@@166 T@Field_35526_35527) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@67) (=> (HasDirectPerm_11318_11319 Mask@@67 o_1@@7 f_2@@166) (= (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@36) o_1@@7 f_2@@166) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@24) o_1@@7 f_2@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@67) (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| ExhaleHeap@@24) o_1@@7 f_2@@166))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22767) (ExhaleHeap@@25 T@PolymorphicMapType_22767) (Mask@@68 T@PolymorphicMapType_22788) (o_1@@8 T@Ref) (f_2@@167 T@Field_11318_1249) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@68) (=> (HasDirectPerm_11318_1249 Mask@@68 o_1@@8 f_2@@167) (= (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@37) o_1@@8 f_2@@167) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@25) o_1@@8 f_2@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@68) (select (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| ExhaleHeap@@25) o_1@@8 f_2@@167))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22767) (ExhaleHeap@@26 T@PolymorphicMapType_22767) (Mask@@69 T@PolymorphicMapType_22788) (o_1@@9 T@Ref) (f_2@@168 T@Field_11318_11186) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@69) (=> (HasDirectPerm_11318_11186 Mask@@69 o_1@@9 f_2@@168) (= (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@38) o_1@@9 f_2@@168) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@26) o_1@@9 f_2@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@69) (select (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| ExhaleHeap@@26) o_1@@9 f_2@@168))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_22767) (ExhaleHeap@@27 T@PolymorphicMapType_22767) (Mask@@70 T@PolymorphicMapType_22788) (o_1@@10 T@Ref) (f_2@@169 T@Field_29631_29636) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@70) (=> (HasDirectPerm_11293_79975 Mask@@70 o_1@@10 f_2@@169) (= (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@39) o_1@@10 f_2@@169) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@27) o_1@@10 f_2@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@70) (select (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| ExhaleHeap@@27) o_1@@10 f_2@@169))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_22767) (ExhaleHeap@@28 T@PolymorphicMapType_22767) (Mask@@71 T@PolymorphicMapType_22788) (o_1@@11 T@Ref) (f_2@@170 T@Field_11293_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@28 Mask@@71) (=> (HasDirectPerm_11293_53 Mask@@71 o_1@@11 f_2@@170) (= (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@40) o_1@@11 f_2@@170) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@28) o_1@@11 f_2@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@28 Mask@@71) (select (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| ExhaleHeap@@28) o_1@@11 f_2@@170))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_22767) (ExhaleHeap@@29 T@PolymorphicMapType_22767) (Mask@@72 T@PolymorphicMapType_22788) (o_1@@12 T@Ref) (f_2@@171 T@Field_26666_26667) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@29 Mask@@72) (=> (HasDirectPerm_11293_11294 Mask@@72 o_1@@12 f_2@@171) (= (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@41) o_1@@12 f_2@@171) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@29) o_1@@12 f_2@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@29 Mask@@72) (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| ExhaleHeap@@29) o_1@@12 f_2@@171))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_22767) (ExhaleHeap@@30 T@PolymorphicMapType_22767) (Mask@@73 T@PolymorphicMapType_22788) (o_1@@13 T@Ref) (f_2@@172 T@Field_11293_1249) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@30 Mask@@73) (=> (HasDirectPerm_11293_1249 Mask@@73 o_1@@13 f_2@@172) (= (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@42) o_1@@13 f_2@@172) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@30) o_1@@13 f_2@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@30 Mask@@73) (select (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| ExhaleHeap@@30) o_1@@13 f_2@@172))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_22767) (ExhaleHeap@@31 T@PolymorphicMapType_22767) (Mask@@74 T@PolymorphicMapType_22788) (o_1@@14 T@Ref) (f_2@@173 T@Field_11293_11186) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@31 Mask@@74) (=> (HasDirectPerm_11293_11186 Mask@@74 o_1@@14 f_2@@173) (= (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@43) o_1@@14 f_2@@173) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@31) o_1@@14 f_2@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@31 Mask@@74) (select (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| ExhaleHeap@@31) o_1@@14 f_2@@173))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_22767) (ExhaleHeap@@32 T@PolymorphicMapType_22767) (Mask@@75 T@PolymorphicMapType_22788) (o_1@@15 T@Ref) (f_2@@174 T@Field_11185_29636) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@32 Mask@@75) (=> (HasDirectPerm_11185_78834 Mask@@75 o_1@@15 f_2@@174) (= (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@44) o_1@@15 f_2@@174) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@32) o_1@@15 f_2@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@32 Mask@@75) (select (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| ExhaleHeap@@32) o_1@@15 f_2@@174))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_22767) (ExhaleHeap@@33 T@PolymorphicMapType_22767) (Mask@@76 T@PolymorphicMapType_22788) (o_1@@16 T@Ref) (f_2@@175 T@Field_22827_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@33 Mask@@76) (=> (HasDirectPerm_11185_53 Mask@@76 o_1@@16 f_2@@175) (= (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@45) o_1@@16 f_2@@175) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@33) o_1@@16 f_2@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@33 Mask@@76) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| ExhaleHeap@@33) o_1@@16 f_2@@175))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_22767) (ExhaleHeap@@34 T@PolymorphicMapType_22767) (Mask@@77 T@PolymorphicMapType_22788) (o_1@@17 T@Ref) (f_2@@176 T@Field_11185_11294) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@34 Mask@@77) (=> (HasDirectPerm_11185_11294 Mask@@77 o_1@@17 f_2@@176) (= (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@46) o_1@@17 f_2@@176) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@34) o_1@@17 f_2@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@34 Mask@@77) (select (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| ExhaleHeap@@34) o_1@@17 f_2@@176))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_22767) (ExhaleHeap@@35 T@PolymorphicMapType_22767) (Mask@@78 T@PolymorphicMapType_22788) (o_1@@18 T@Ref) (f_2@@177 T@Field_26154_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@35 Mask@@78) (=> (HasDirectPerm_11194_1249 Mask@@78 o_1@@18 f_2@@177) (= (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@47) o_1@@18 f_2@@177) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@35) o_1@@18 f_2@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@35 Mask@@78) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| ExhaleHeap@@35) o_1@@18 f_2@@177))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_22767) (ExhaleHeap@@36 T@PolymorphicMapType_22767) (Mask@@79 T@PolymorphicMapType_22788) (o_1@@19 T@Ref) (f_2@@178 T@Field_22840_22841) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@36 Mask@@79) (=> (HasDirectPerm_11185_11186 Mask@@79 o_1@@19 f_2@@178) (= (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@48) o_1@@19 f_2@@178) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@36) o_1@@19 f_2@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@36 Mask@@79) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| ExhaleHeap@@36) o_1@@19 f_2@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_40448_40453) ) (! (= (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_11343_53) ) (! (= (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_11343_11186) ) (! (= (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_11343_1249) ) (! (= (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_40435_40436) ) (! (= (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_36825_36830) ) (! (= (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_11318_53) ) (! (= (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_11318_11186) ) (! (= (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_11318_1249) ) (! (= (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_35526_35527) ) (! (= (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_11185_29636) ) (! (= (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_22827_53) ) (! (= (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_22840_22841) ) (! (= (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_26154_1189) ) (! (= (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_11185_11294) ) (! (= (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_29631_29636) ) (! (= (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_11293_53) ) (! (= (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_11293_11186) ) (! (= (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_11293_1249) ) (! (= (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_26666_26667) ) (! (= (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22788) (SummandMask1 T@PolymorphicMapType_22788) (SummandMask2 T@PolymorphicMapType_22788) (o_2@@79 T@Ref) (f_4@@79 T@Field_40448_40453) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22788_11343_99179#PolymorphicMapType_22788| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22788) (SummandMask1@@0 T@PolymorphicMapType_22788) (SummandMask2@@0 T@PolymorphicMapType_22788) (o_2@@80 T@Ref) (f_4@@80 T@Field_11343_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22788_11343_53#PolymorphicMapType_22788| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22788) (SummandMask1@@1 T@PolymorphicMapType_22788) (SummandMask2@@1 T@PolymorphicMapType_22788) (o_2@@81 T@Ref) (f_4@@81 T@Field_11343_11186) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22788_11343_11186#PolymorphicMapType_22788| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22788) (SummandMask1@@2 T@PolymorphicMapType_22788) (SummandMask2@@2 T@PolymorphicMapType_22788) (o_2@@82 T@Ref) (f_4@@82 T@Field_11343_1249) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22788_11343_1189#PolymorphicMapType_22788| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22788) (SummandMask1@@3 T@PolymorphicMapType_22788) (SummandMask2@@3 T@PolymorphicMapType_22788) (o_2@@83 T@Ref) (f_4@@83 T@Field_40435_40436) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22788_11343_11344#PolymorphicMapType_22788| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22788) (SummandMask1@@4 T@PolymorphicMapType_22788) (SummandMask2@@4 T@PolymorphicMapType_22788) (o_2@@84 T@Ref) (f_4@@84 T@Field_36825_36830) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22788_11318_98768#PolymorphicMapType_22788| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22788) (SummandMask1@@5 T@PolymorphicMapType_22788) (SummandMask2@@5 T@PolymorphicMapType_22788) (o_2@@85 T@Ref) (f_4@@85 T@Field_11318_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22788_11318_53#PolymorphicMapType_22788| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22788) (SummandMask1@@6 T@PolymorphicMapType_22788) (SummandMask2@@6 T@PolymorphicMapType_22788) (o_2@@86 T@Ref) (f_4@@86 T@Field_11318_11186) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22788_11318_11186#PolymorphicMapType_22788| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22788) (SummandMask1@@7 T@PolymorphicMapType_22788) (SummandMask2@@7 T@PolymorphicMapType_22788) (o_2@@87 T@Ref) (f_4@@87 T@Field_11318_1249) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22788_11318_1189#PolymorphicMapType_22788| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22788) (SummandMask1@@8 T@PolymorphicMapType_22788) (SummandMask2@@8 T@PolymorphicMapType_22788) (o_2@@88 T@Ref) (f_4@@88 T@Field_35526_35527) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22788_11318_11319#PolymorphicMapType_22788| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_22788) (SummandMask1@@9 T@PolymorphicMapType_22788) (SummandMask2@@9 T@PolymorphicMapType_22788) (o_2@@89 T@Ref) (f_4@@89 T@Field_11185_29636) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22788_11183_98357#PolymorphicMapType_22788| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_22788) (SummandMask1@@10 T@PolymorphicMapType_22788) (SummandMask2@@10 T@PolymorphicMapType_22788) (o_2@@90 T@Ref) (f_4@@90 T@Field_22827_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22788_11183_53#PolymorphicMapType_22788| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_22788) (SummandMask1@@11 T@PolymorphicMapType_22788) (SummandMask2@@11 T@PolymorphicMapType_22788) (o_2@@91 T@Ref) (f_4@@91 T@Field_22840_22841) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22788_11185_11186#PolymorphicMapType_22788| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_22788) (SummandMask1@@12 T@PolymorphicMapType_22788) (SummandMask2@@12 T@PolymorphicMapType_22788) (o_2@@92 T@Ref) (f_4@@92 T@Field_26154_1189) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22788_11183_1189#PolymorphicMapType_22788| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_22788) (SummandMask1@@13 T@PolymorphicMapType_22788) (SummandMask2@@13 T@PolymorphicMapType_22788) (o_2@@93 T@Ref) (f_4@@93 T@Field_11185_11294) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22788_11183_11294#PolymorphicMapType_22788| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_22788) (SummandMask1@@14 T@PolymorphicMapType_22788) (SummandMask2@@14 T@PolymorphicMapType_22788) (o_2@@94 T@Ref) (f_4@@94 T@Field_29631_29636) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22788_11293_97958#PolymorphicMapType_22788| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_22788) (SummandMask1@@15 T@PolymorphicMapType_22788) (SummandMask2@@15 T@PolymorphicMapType_22788) (o_2@@95 T@Ref) (f_4@@95 T@Field_11293_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22788_11293_53#PolymorphicMapType_22788| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_22788) (SummandMask1@@16 T@PolymorphicMapType_22788) (SummandMask2@@16 T@PolymorphicMapType_22788) (o_2@@96 T@Ref) (f_4@@96 T@Field_11293_11186) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22788_11293_11186#PolymorphicMapType_22788| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_22788) (SummandMask1@@17 T@PolymorphicMapType_22788) (SummandMask2@@17 T@PolymorphicMapType_22788) (o_2@@97 T@Ref) (f_4@@97 T@Field_11293_1249) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_22788_11293_1189#PolymorphicMapType_22788| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_22788) (SummandMask1@@18 T@PolymorphicMapType_22788) (SummandMask2@@18 T@PolymorphicMapType_22788) (o_2@@98 T@Ref) (f_4@@98 T@Field_26666_26667) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_22788_11293_11294#PolymorphicMapType_22788| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_22767) (Mask@@80 T@PolymorphicMapType_22788) (diz@@19 T@Ref) ) (!  (=> (and (state Heap@@49 Mask@@80) (< AssumeFunctionsAbove 0)) (=> (not (= diz@@19 null)) (= (Wand_readonly_for_writeonly__get_in_1 Heap@@49 diz@@19) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@49) diz@@19 Wand_readonly_for_writeonly__in_1))))
 :qid |stdinbpl.218:15|
 :skolemid |24|
 :pattern ( (state Heap@@49 Mask@@80) (Wand_readonly_for_writeonly__get_in_1 Heap@@49 diz@@19))
 :pattern ( (state Heap@@49 Mask@@80) (|Wand_readonly_for_writeonly__get_in_1#triggerStateless| diz@@19) (|Wand_readonly_for_writeonly__valid_wand#trigger_11293| Heap@@49 (Wand_readonly_for_writeonly__valid_wand diz@@19)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_22767) (Mask@@81 T@PolymorphicMapType_22788) (diz@@20 T@Ref) ) (!  (=> (and (state Heap@@50 Mask@@81) (< AssumeFunctionsAbove 1)) (=> (not (= diz@@20 null)) (= (Wand_readonly_for_writeonly__get_out_1 Heap@@50 diz@@20) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@50) diz@@20 Wand_readonly_for_writeonly__out_1))))
 :qid |stdinbpl.356:15|
 :skolemid |29|
 :pattern ( (state Heap@@50 Mask@@81) (Wand_readonly_for_writeonly__get_out_1 Heap@@50 diz@@20))
 :pattern ( (state Heap@@50 Mask@@81) (|Wand_readonly_for_writeonly__get_out_1#triggerStateless| diz@@20) (|Wand_readonly_for_writeonly__valid_wand#trigger_11293| Heap@@50 (Wand_readonly_for_writeonly__valid_wand diz@@20)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_22767) (Mask@@82 T@PolymorphicMapType_22788) (diz@@21 T@Ref) ) (!  (=> (and (state Heap@@51 Mask@@82) (< AssumeFunctionsAbove 2)) (=> (not (= diz@@21 null)) (= (WandDemo__get Heap@@51 diz@@21) (select (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@51) diz@@21 WandDemo__x))))
 :qid |stdinbpl.494:15|
 :skolemid |34|
 :pattern ( (state Heap@@51 Mask@@82) (WandDemo__get Heap@@51 diz@@21))
 :pattern ( (state Heap@@51 Mask@@82) (|WandDemo__get#triggerStateless| diz@@21) (|WandDemo__readonly#trigger_11318| Heap@@51 (WandDemo__readonly diz@@21)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_22767) (Mask@@83 T@PolymorphicMapType_22788) (diz@@22 T@Ref) ) (!  (=> (state Heap@@52 Mask@@83) (= (|Wand_readonly_for_writeonly__get_in_1'| Heap@@52 diz@@22) (|Wand_readonly_for_writeonly__get_in_1#frame| (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@52) null (Wand_readonly_for_writeonly__valid_wand diz@@22)) diz@@22)))
 :qid |stdinbpl.225:15|
 :skolemid |25|
 :pattern ( (state Heap@@52 Mask@@83) (|Wand_readonly_for_writeonly__get_in_1'| Heap@@52 diz@@22))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_22767) (Mask@@84 T@PolymorphicMapType_22788) (diz@@23 T@Ref) ) (!  (=> (state Heap@@53 Mask@@84) (= (|Wand_readonly_for_writeonly__get_out_1'| Heap@@53 diz@@23) (|Wand_readonly_for_writeonly__get_out_1#frame| (select (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@53) null (Wand_readonly_for_writeonly__valid_wand diz@@23)) diz@@23)))
 :qid |stdinbpl.363:15|
 :skolemid |30|
 :pattern ( (state Heap@@53 Mask@@84) (|Wand_readonly_for_writeonly__get_out_1'| Heap@@53 diz@@23))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_22767) (Mask@@85 T@PolymorphicMapType_22788) (diz@@24 T@Ref) ) (!  (=> (state Heap@@54 Mask@@85) (= (|WandDemo__get'| Heap@@54 diz@@24) (|WandDemo__get#frame| (select (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@54) null (WandDemo__readonly diz@@24)) diz@@24)))
 :qid |stdinbpl.501:15|
 :skolemid |35|
 :pattern ( (state Heap@@54 Mask@@85) (|WandDemo__get'| Heap@@54 diz@@24))
)))
(assert (forall ((diz@@25 T@Ref) ) (! (= (getPredWandId_11293_11294 (Wand_readonly_for_writeonly__valid_wand diz@@25)) 0)
 :qid |stdinbpl.582:15|
 :skolemid |38|
 :pattern ( (Wand_readonly_for_writeonly__valid_wand diz@@25))
)))
(assert (forall ((diz@@26 T@Ref) ) (! (= (getPredWandId_11318_11319 (WandDemo__readonly diz@@26)) 1)
 :qid |stdinbpl.709:15|
 :skolemid |44|
 :pattern ( (WandDemo__readonly diz@@26))
)))
(assert (forall ((diz@@27 T@Ref) ) (! (= (getPredWandId_11343_11344 (WandDemo__writeonly diz@@27)) 2)
 :qid |stdinbpl.766:15|
 :skolemid |50|
 :pattern ( (WandDemo__writeonly diz@@27))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_22767) (o T@Ref) (f_3 T@Field_40448_40453) (v T@PolymorphicMapType_23316) ) (! (succHeap Heap@@55 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@55) (store (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@55) o f_3 v) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@55) (store (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@55) o f_3 v) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@55) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_22767) (o@@0 T@Ref) (f_3@@0 T@Field_11343_1249) (v@@0 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@56) (store (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@56) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@56) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@56) (store (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@56) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_22767) (o@@1 T@Ref) (f_3@@1 T@Field_40435_40436) (v@@1 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@57) (store (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@57) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@57) (store (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@57) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@57) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_22767) (o@@2 T@Ref) (f_3@@2 T@Field_11343_11186) (v@@2 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@58) (store (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@58) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@58) (store (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@58) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@58) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_22767) (o@@3 T@Ref) (f_3@@3 T@Field_11343_53) (v@@3 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@59) (store (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@59) o@@3 f_3@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@59) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@59) (store (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@59) o@@3 f_3@@3 v@@3)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_22767) (o@@4 T@Ref) (f_3@@4 T@Field_36825_36830) (v@@4 T@PolymorphicMapType_23316) ) (! (succHeap Heap@@60 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@60) (store (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@60) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@60) (store (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@60) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@60) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_22767) (o@@5 T@Ref) (f_3@@5 T@Field_11318_1249) (v@@5 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@61) (store (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@61) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@61) (store (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@61) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@61) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_22767) (o@@6 T@Ref) (f_3@@6 T@Field_35526_35527) (v@@6 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@62) (store (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@62) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@62) (store (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@62) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@62) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_22767) (o@@7 T@Ref) (f_3@@7 T@Field_11318_11186) (v@@7 T@Ref) ) (! (succHeap Heap@@63 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@63) (store (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@63) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@63) (store (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@63) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@63) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_22767) (o@@8 T@Ref) (f_3@@8 T@Field_11318_53) (v@@8 Bool) ) (! (succHeap Heap@@64 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@64) (store (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@64) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@64) (store (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@64) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@64) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_22767) (o@@9 T@Ref) (f_3@@9 T@Field_29631_29636) (v@@9 T@PolymorphicMapType_23316) ) (! (succHeap Heap@@65 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@65) (store (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@65) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@65) (store (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@65) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@65) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_22767) (o@@10 T@Ref) (f_3@@10 T@Field_11293_1249) (v@@10 Int) ) (! (succHeap Heap@@66 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@66) (store (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@66) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@66) (store (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@66) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@66) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_22767) (o@@11 T@Ref) (f_3@@11 T@Field_26666_26667) (v@@11 T@FrameType) ) (! (succHeap Heap@@67 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@67) (store (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@67) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@67) (store (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@67) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@67) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_22767) (o@@12 T@Ref) (f_3@@12 T@Field_11293_11186) (v@@12 T@Ref) ) (! (succHeap Heap@@68 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@68) (store (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@68) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@68) (store (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@68) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@68) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_22767) (o@@13 T@Ref) (f_3@@13 T@Field_11293_53) (v@@13 Bool) ) (! (succHeap Heap@@69 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@69) (store (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@69) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@69) (store (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@69) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@69) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_22767) (o@@14 T@Ref) (f_3@@14 T@Field_11185_29636) (v@@14 T@PolymorphicMapType_23316) ) (! (succHeap Heap@@70 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@70) (store (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@70) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@70) (store (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@70) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@70) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_22767) (o@@15 T@Ref) (f_3@@15 T@Field_26154_1189) (v@@15 Int) ) (! (succHeap Heap@@71 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@71) (store (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@71) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@71) (store (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@71) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@71) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_22767) (o@@16 T@Ref) (f_3@@16 T@Field_11185_11294) (v@@16 T@FrameType) ) (! (succHeap Heap@@72 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@72) (store (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@72) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@72) (store (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@72) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@72) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_22767) (o@@17 T@Ref) (f_3@@17 T@Field_22840_22841) (v@@17 T@Ref) ) (! (succHeap Heap@@73 (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@73) (store (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@73) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@73) (store (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@73) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@73) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_22767) (o@@18 T@Ref) (f_3@@18 T@Field_22827_53) (v@@18 Bool) ) (! (succHeap Heap@@74 (PolymorphicMapType_22767 (store (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@74) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22767 (store (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@74) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_11294#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11183_1189#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11297_29723#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_11319#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11322_36917#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_11344#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11347_47875#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11185_11294#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11185_78876#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11293_53#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11318_53#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_11186#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_1249#PolymorphicMapType_22767| Heap@@74) (|PolymorphicMapType_22767_11343_53#PolymorphicMapType_22767| Heap@@74)))
)))
(assert (forall ((diz@@28 T@Ref) ) (! (= (PredicateMaskField_11293 (Wand_readonly_for_writeonly__valid_wand diz@@28)) (|Wand_readonly_for_writeonly__valid_wand#sm| diz@@28))
 :qid |stdinbpl.574:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_11293 (Wand_readonly_for_writeonly__valid_wand diz@@28)))
)))
(assert (forall ((diz@@29 T@Ref) ) (! (= (PredicateMaskField_11318 (WandDemo__readonly diz@@29)) (|WandDemo__readonly#sm| diz@@29))
 :qid |stdinbpl.701:15|
 :skolemid |42|
 :pattern ( (PredicateMaskField_11318 (WandDemo__readonly diz@@29)))
)))
(assert (forall ((diz@@30 T@Ref) ) (! (= (PredicateMaskField_11343 (WandDemo__writeonly diz@@30)) (|WandDemo__writeonly#sm| diz@@30))
 :qid |stdinbpl.758:15|
 :skolemid |48|
 :pattern ( (PredicateMaskField_11343 (WandDemo__writeonly diz@@30)))
)))
(assert (forall ((o@@19 T@Ref) (f T@Field_22840_22841) (Heap@@75 T@PolymorphicMapType_22767) ) (!  (=> (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@75) o@@19 $allocated) (select (|PolymorphicMapType_22767_11055_53#PolymorphicMapType_22767| Heap@@75) (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@75) o@@19 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22767_11058_11059#PolymorphicMapType_22767| Heap@@75) o@@19 f))
)))
(assert (forall ((p@@4 T@Field_40435_40436) (v_1@@3 T@FrameType) (q T@Field_40435_40436) (w@@3 T@FrameType) (r T@Field_40435_40436) (u T@FrameType) ) (!  (=> (and (InsidePredicate_40435_40435 p@@4 v_1@@3 q w@@3) (InsidePredicate_40435_40435 q w@@3 r u)) (InsidePredicate_40435_40435 p@@4 v_1@@3 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_40435 p@@4 v_1@@3 q w@@3) (InsidePredicate_40435_40435 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_40435_40436) (v_1@@4 T@FrameType) (q@@0 T@Field_40435_40436) (w@@4 T@FrameType) (r@@0 T@Field_35526_35527) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_40435 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_40435_35526 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_40435_35526 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_40435 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_40435_35526 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_40435_40436) (v_1@@5 T@FrameType) (q@@1 T@Field_40435_40436) (w@@5 T@FrameType) (r@@1 T@Field_26666_26667) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_40435 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_40435_26666 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_40435_26666 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_40435 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_40435_26666 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_40435_40436) (v_1@@6 T@FrameType) (q@@2 T@Field_40435_40436) (w@@6 T@FrameType) (r@@2 T@Field_11185_11294) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_40435 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_40435_22827 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_40435_22827 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_40435 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_40435_22827 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_40435_40436) (v_1@@7 T@FrameType) (q@@3 T@Field_35526_35527) (w@@7 T@FrameType) (r@@3 T@Field_40435_40436) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_35526 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_35526_40435 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_40435_40435 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_35526 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_35526_40435 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_40435_40436) (v_1@@8 T@FrameType) (q@@4 T@Field_35526_35527) (w@@8 T@FrameType) (r@@4 T@Field_35526_35527) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_35526 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_35526_35526 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_40435_35526 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_35526 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_35526_35526 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_40435_40436) (v_1@@9 T@FrameType) (q@@5 T@Field_35526_35527) (w@@9 T@FrameType) (r@@5 T@Field_26666_26667) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_35526 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_35526_26666 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_40435_26666 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_35526 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_35526_26666 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_40435_40436) (v_1@@10 T@FrameType) (q@@6 T@Field_35526_35527) (w@@10 T@FrameType) (r@@6 T@Field_11185_11294) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_35526 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_35526_22827 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_40435_22827 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_35526 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_35526_22827 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_40435_40436) (v_1@@11 T@FrameType) (q@@7 T@Field_26666_26667) (w@@11 T@FrameType) (r@@7 T@Field_40435_40436) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_26666 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_26666_40435 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_40435_40435 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_26666 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_26666_40435 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_40435_40436) (v_1@@12 T@FrameType) (q@@8 T@Field_26666_26667) (w@@12 T@FrameType) (r@@8 T@Field_35526_35527) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_26666 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_26666_35526 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_40435_35526 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_26666 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_26666_35526 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_40435_40436) (v_1@@13 T@FrameType) (q@@9 T@Field_26666_26667) (w@@13 T@FrameType) (r@@9 T@Field_26666_26667) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_26666 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_26666_26666 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_40435_26666 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_26666 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_26666_26666 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_40435_40436) (v_1@@14 T@FrameType) (q@@10 T@Field_26666_26667) (w@@14 T@FrameType) (r@@10 T@Field_11185_11294) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_26666 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_26666_22827 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_40435_22827 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_26666 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_26666_22827 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_40435_40436) (v_1@@15 T@FrameType) (q@@11 T@Field_11185_11294) (w@@15 T@FrameType) (r@@11 T@Field_40435_40436) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_22827 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_22827_40435 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_40435_40435 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_22827 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_22827_40435 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_40435_40436) (v_1@@16 T@FrameType) (q@@12 T@Field_11185_11294) (w@@16 T@FrameType) (r@@12 T@Field_35526_35527) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_22827 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_22827_35526 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_40435_35526 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_22827 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_22827_35526 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_40435_40436) (v_1@@17 T@FrameType) (q@@13 T@Field_11185_11294) (w@@17 T@FrameType) (r@@13 T@Field_26666_26667) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_22827 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_22827_26666 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_40435_26666 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_22827 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_22827_26666 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_40435_40436) (v_1@@18 T@FrameType) (q@@14 T@Field_11185_11294) (w@@18 T@FrameType) (r@@14 T@Field_11185_11294) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_40435_22827 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_22827_22827 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_40435_22827 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40435_22827 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_22827_22827 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_35526_35527) (v_1@@19 T@FrameType) (q@@15 T@Field_40435_40436) (w@@19 T@FrameType) (r@@15 T@Field_40435_40436) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_40435 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_40435_40435 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_35526_40435 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_40435 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_40435_40435 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_35526_35527) (v_1@@20 T@FrameType) (q@@16 T@Field_40435_40436) (w@@20 T@FrameType) (r@@16 T@Field_35526_35527) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_40435 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_40435_35526 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_35526_35526 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_40435 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_40435_35526 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_35526_35527) (v_1@@21 T@FrameType) (q@@17 T@Field_40435_40436) (w@@21 T@FrameType) (r@@17 T@Field_26666_26667) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_40435 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_40435_26666 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_35526_26666 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_40435 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_40435_26666 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_35526_35527) (v_1@@22 T@FrameType) (q@@18 T@Field_40435_40436) (w@@22 T@FrameType) (r@@18 T@Field_11185_11294) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_40435 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_40435_22827 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_35526_22827 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_40435 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_40435_22827 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_35526_35527) (v_1@@23 T@FrameType) (q@@19 T@Field_35526_35527) (w@@23 T@FrameType) (r@@19 T@Field_40435_40436) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_35526 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_35526_40435 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_35526_40435 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_35526 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_35526_40435 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_35526_35527) (v_1@@24 T@FrameType) (q@@20 T@Field_35526_35527) (w@@24 T@FrameType) (r@@20 T@Field_35526_35527) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_35526 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_35526_35526 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_35526_35526 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_35526 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_35526_35526 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_35526_35527) (v_1@@25 T@FrameType) (q@@21 T@Field_35526_35527) (w@@25 T@FrameType) (r@@21 T@Field_26666_26667) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_35526 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_35526_26666 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_35526_26666 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_35526 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_35526_26666 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_35526_35527) (v_1@@26 T@FrameType) (q@@22 T@Field_35526_35527) (w@@26 T@FrameType) (r@@22 T@Field_11185_11294) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_35526 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_35526_22827 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_35526_22827 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_35526 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_35526_22827 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_35526_35527) (v_1@@27 T@FrameType) (q@@23 T@Field_26666_26667) (w@@27 T@FrameType) (r@@23 T@Field_40435_40436) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_26666 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_26666_40435 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_35526_40435 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_26666 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_26666_40435 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_35526_35527) (v_1@@28 T@FrameType) (q@@24 T@Field_26666_26667) (w@@28 T@FrameType) (r@@24 T@Field_35526_35527) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_26666 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_26666_35526 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_35526_35526 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_26666 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_26666_35526 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_35526_35527) (v_1@@29 T@FrameType) (q@@25 T@Field_26666_26667) (w@@29 T@FrameType) (r@@25 T@Field_26666_26667) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_26666 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_26666_26666 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_35526_26666 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_26666 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_26666_26666 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_35526_35527) (v_1@@30 T@FrameType) (q@@26 T@Field_26666_26667) (w@@30 T@FrameType) (r@@26 T@Field_11185_11294) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_26666 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_26666_22827 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_35526_22827 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_26666 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_26666_22827 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_35526_35527) (v_1@@31 T@FrameType) (q@@27 T@Field_11185_11294) (w@@31 T@FrameType) (r@@27 T@Field_40435_40436) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_22827 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_22827_40435 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_35526_40435 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_22827 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_22827_40435 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_35526_35527) (v_1@@32 T@FrameType) (q@@28 T@Field_11185_11294) (w@@32 T@FrameType) (r@@28 T@Field_35526_35527) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_22827 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_22827_35526 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_35526_35526 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_22827 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_22827_35526 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_35526_35527) (v_1@@33 T@FrameType) (q@@29 T@Field_11185_11294) (w@@33 T@FrameType) (r@@29 T@Field_26666_26667) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_22827 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_22827_26666 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_35526_26666 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_22827 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_22827_26666 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_35526_35527) (v_1@@34 T@FrameType) (q@@30 T@Field_11185_11294) (w@@34 T@FrameType) (r@@30 T@Field_11185_11294) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_35526_22827 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_22827_22827 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_35526_22827 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35526_22827 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_22827_22827 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_26666_26667) (v_1@@35 T@FrameType) (q@@31 T@Field_40435_40436) (w@@35 T@FrameType) (r@@31 T@Field_40435_40436) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_40435 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_40435_40435 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_26666_40435 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_40435 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_40435_40435 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_26666_26667) (v_1@@36 T@FrameType) (q@@32 T@Field_40435_40436) (w@@36 T@FrameType) (r@@32 T@Field_35526_35527) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_40435 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_40435_35526 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_26666_35526 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_40435 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_40435_35526 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_26666_26667) (v_1@@37 T@FrameType) (q@@33 T@Field_40435_40436) (w@@37 T@FrameType) (r@@33 T@Field_26666_26667) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_40435 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_40435_26666 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_26666_26666 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_40435 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_40435_26666 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_26666_26667) (v_1@@38 T@FrameType) (q@@34 T@Field_40435_40436) (w@@38 T@FrameType) (r@@34 T@Field_11185_11294) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_40435 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_40435_22827 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_26666_22827 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_40435 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_40435_22827 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_26666_26667) (v_1@@39 T@FrameType) (q@@35 T@Field_35526_35527) (w@@39 T@FrameType) (r@@35 T@Field_40435_40436) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_35526 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_35526_40435 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_26666_40435 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_35526 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_35526_40435 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_26666_26667) (v_1@@40 T@FrameType) (q@@36 T@Field_35526_35527) (w@@40 T@FrameType) (r@@36 T@Field_35526_35527) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_35526 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_35526_35526 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_26666_35526 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_35526 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_35526_35526 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_26666_26667) (v_1@@41 T@FrameType) (q@@37 T@Field_35526_35527) (w@@41 T@FrameType) (r@@37 T@Field_26666_26667) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_35526 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_35526_26666 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_26666_26666 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_35526 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_35526_26666 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_26666_26667) (v_1@@42 T@FrameType) (q@@38 T@Field_35526_35527) (w@@42 T@FrameType) (r@@38 T@Field_11185_11294) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_35526 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_35526_22827 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_26666_22827 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_35526 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_35526_22827 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_26666_26667) (v_1@@43 T@FrameType) (q@@39 T@Field_26666_26667) (w@@43 T@FrameType) (r@@39 T@Field_40435_40436) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_26666 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_26666_40435 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_26666_40435 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_26666 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_26666_40435 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_26666_26667) (v_1@@44 T@FrameType) (q@@40 T@Field_26666_26667) (w@@44 T@FrameType) (r@@40 T@Field_35526_35527) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_26666 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_26666_35526 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_26666_35526 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_26666 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_26666_35526 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_26666_26667) (v_1@@45 T@FrameType) (q@@41 T@Field_26666_26667) (w@@45 T@FrameType) (r@@41 T@Field_26666_26667) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_26666 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_26666_26666 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_26666_26666 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_26666 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_26666_26666 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_26666_26667) (v_1@@46 T@FrameType) (q@@42 T@Field_26666_26667) (w@@46 T@FrameType) (r@@42 T@Field_11185_11294) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_26666 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_26666_22827 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_26666_22827 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_26666 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_26666_22827 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_26666_26667) (v_1@@47 T@FrameType) (q@@43 T@Field_11185_11294) (w@@47 T@FrameType) (r@@43 T@Field_40435_40436) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_22827 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_22827_40435 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_26666_40435 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_22827 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_22827_40435 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_26666_26667) (v_1@@48 T@FrameType) (q@@44 T@Field_11185_11294) (w@@48 T@FrameType) (r@@44 T@Field_35526_35527) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_22827 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_22827_35526 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_26666_35526 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_22827 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_22827_35526 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_26666_26667) (v_1@@49 T@FrameType) (q@@45 T@Field_11185_11294) (w@@49 T@FrameType) (r@@45 T@Field_26666_26667) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_22827 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_22827_26666 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_26666_26666 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_22827 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_22827_26666 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_26666_26667) (v_1@@50 T@FrameType) (q@@46 T@Field_11185_11294) (w@@50 T@FrameType) (r@@46 T@Field_11185_11294) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_26666_22827 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_22827_22827 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_26666_22827 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26666_22827 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_22827_22827 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_11185_11294) (v_1@@51 T@FrameType) (q@@47 T@Field_40435_40436) (w@@51 T@FrameType) (r@@47 T@Field_40435_40436) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_40435 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_40435_40435 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_22827_40435 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_40435 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_40435_40435 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_11185_11294) (v_1@@52 T@FrameType) (q@@48 T@Field_40435_40436) (w@@52 T@FrameType) (r@@48 T@Field_35526_35527) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_40435 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_40435_35526 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_22827_35526 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_40435 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_40435_35526 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_11185_11294) (v_1@@53 T@FrameType) (q@@49 T@Field_40435_40436) (w@@53 T@FrameType) (r@@49 T@Field_26666_26667) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_40435 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_40435_26666 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_22827_26666 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_40435 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_40435_26666 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_11185_11294) (v_1@@54 T@FrameType) (q@@50 T@Field_40435_40436) (w@@54 T@FrameType) (r@@50 T@Field_11185_11294) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_40435 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_40435_22827 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_22827_22827 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_40435 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_40435_22827 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_11185_11294) (v_1@@55 T@FrameType) (q@@51 T@Field_35526_35527) (w@@55 T@FrameType) (r@@51 T@Field_40435_40436) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_35526 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_35526_40435 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_22827_40435 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_35526 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_35526_40435 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_11185_11294) (v_1@@56 T@FrameType) (q@@52 T@Field_35526_35527) (w@@56 T@FrameType) (r@@52 T@Field_35526_35527) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_35526 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_35526_35526 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_22827_35526 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_35526 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_35526_35526 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_11185_11294) (v_1@@57 T@FrameType) (q@@53 T@Field_35526_35527) (w@@57 T@FrameType) (r@@53 T@Field_26666_26667) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_35526 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_35526_26666 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_22827_26666 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_35526 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_35526_26666 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_11185_11294) (v_1@@58 T@FrameType) (q@@54 T@Field_35526_35527) (w@@58 T@FrameType) (r@@54 T@Field_11185_11294) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_35526 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_35526_22827 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_22827_22827 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_35526 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_35526_22827 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_11185_11294) (v_1@@59 T@FrameType) (q@@55 T@Field_26666_26667) (w@@59 T@FrameType) (r@@55 T@Field_40435_40436) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_26666 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_26666_40435 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_22827_40435 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_26666 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_26666_40435 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_11185_11294) (v_1@@60 T@FrameType) (q@@56 T@Field_26666_26667) (w@@60 T@FrameType) (r@@56 T@Field_35526_35527) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_26666 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_26666_35526 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_22827_35526 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_26666 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_26666_35526 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_11185_11294) (v_1@@61 T@FrameType) (q@@57 T@Field_26666_26667) (w@@61 T@FrameType) (r@@57 T@Field_26666_26667) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_26666 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_26666_26666 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_22827_26666 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_26666 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_26666_26666 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_11185_11294) (v_1@@62 T@FrameType) (q@@58 T@Field_26666_26667) (w@@62 T@FrameType) (r@@58 T@Field_11185_11294) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_26666 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_26666_22827 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_22827_22827 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_26666 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_26666_22827 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_11185_11294) (v_1@@63 T@FrameType) (q@@59 T@Field_11185_11294) (w@@63 T@FrameType) (r@@59 T@Field_40435_40436) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_22827 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_22827_40435 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_22827_40435 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_22827 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_22827_40435 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_11185_11294) (v_1@@64 T@FrameType) (q@@60 T@Field_11185_11294) (w@@64 T@FrameType) (r@@60 T@Field_35526_35527) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_22827 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_22827_35526 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_22827_35526 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_22827 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_22827_35526 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_11185_11294) (v_1@@65 T@FrameType) (q@@61 T@Field_11185_11294) (w@@65 T@FrameType) (r@@61 T@Field_26666_26667) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_22827 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_22827_26666 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_22827_26666 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_22827 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_22827_26666 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_11185_11294) (v_1@@66 T@FrameType) (q@@62 T@Field_11185_11294) (w@@66 T@FrameType) (r@@62 T@Field_11185_11294) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_22827_22827 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_22827_22827 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_22827_22827 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22827_22827 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_22827_22827 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

