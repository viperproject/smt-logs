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
(declare-sort T@Field_19545_53 0)
(declare-sort T@Field_19558_19559 0)
(declare-sort T@Field_24307_1887 0)
(declare-sort T@Field_22888_22893 0)
(declare-sort T@Field_24440_24441 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_24453_24458 0)
(declare-sort T@Field_25378_25379 0)
(declare-sort T@Field_25391_25396 0)
(declare-sort T@Field_23564_23569 0)
(declare-sort T@Field_11051_53 0)
(declare-sort T@Field_11051_19559 0)
(declare-sort T@Field_11051_1203 0)
(declare-sort T@Field_11076_53 0)
(declare-sort T@Field_11076_19559 0)
(declare-sort T@Field_11076_1203 0)
(declare-sort T@Field_19545_11052 0)
(declare-sort T@Field_19545_22893 0)
(declare-sort T@Field_22905_22906 0)
(declare-sort T@Field_22874_53 0)
(declare-sort T@Field_22874_19559 0)
(declare-sort T@Field_22874_1203 0)
(declare-sort T@Field_23582_23583 0)
(declare-sort T@Field_23549_53 0)
(declare-sort T@Field_23549_19559 0)
(declare-sort T@Field_23549_1529 0)
(declare-datatypes ((T@PolymorphicMapType_19506 0)) (((PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| (Array T@Ref T@Field_24307_1887 Real)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| (Array T@Ref T@Field_24440_24441 Real)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| (Array T@Ref T@Field_25378_25379 Real)) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| (Array T@Ref T@Field_22874_1203 Real)) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| (Array T@Ref T@Field_23549_1529 Real)) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| (Array T@Ref T@Field_19545_11052 Real)) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| (Array T@Ref T@Field_19545_53 Real)) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| (Array T@Ref T@Field_19558_19559 Real)) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| (Array T@Ref T@Field_19545_22893 Real)) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| (Array T@Ref T@Field_11051_1203 Real)) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| (Array T@Ref T@Field_11051_53 Real)) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| (Array T@Ref T@Field_11051_19559 Real)) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| (Array T@Ref T@Field_24453_24458 Real)) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| (Array T@Ref T@Field_11076_1203 Real)) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| (Array T@Ref T@Field_11076_53 Real)) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| (Array T@Ref T@Field_11076_19559 Real)) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| (Array T@Ref T@Field_25391_25396 Real)) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| (Array T@Ref T@Field_22905_22906 Real)) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| (Array T@Ref T@Field_22874_53 Real)) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| (Array T@Ref T@Field_22874_19559 Real)) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| (Array T@Ref T@Field_22888_22893 Real)) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| (Array T@Ref T@Field_23582_23583 Real)) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| (Array T@Ref T@Field_23549_53 Real)) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| (Array T@Ref T@Field_23549_19559 Real)) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| (Array T@Ref T@Field_23564_23569 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20034 0)) (((PolymorphicMapType_20034 (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (Array T@Ref T@Field_24307_1887 Bool)) (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (Array T@Ref T@Field_19545_53 Bool)) (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (Array T@Ref T@Field_19558_19559 Bool)) (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (Array T@Ref T@Field_19545_22893 Bool)) (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (Array T@Ref T@Field_19545_11052 Bool)) (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (Array T@Ref T@Field_22874_1203 Bool)) (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (Array T@Ref T@Field_22874_53 Bool)) (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (Array T@Ref T@Field_22874_19559 Bool)) (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (Array T@Ref T@Field_22888_22893 Bool)) (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (Array T@Ref T@Field_22905_22906 Bool)) (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (Array T@Ref T@Field_23549_1529 Bool)) (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (Array T@Ref T@Field_23549_53 Bool)) (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (Array T@Ref T@Field_23549_19559 Bool)) (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (Array T@Ref T@Field_23564_23569 Bool)) (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (Array T@Ref T@Field_23582_23583 Bool)) (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (Array T@Ref T@Field_11051_1203 Bool)) (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (Array T@Ref T@Field_11051_53 Bool)) (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (Array T@Ref T@Field_11051_19559 Bool)) (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (Array T@Ref T@Field_24453_24458 Bool)) (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (Array T@Ref T@Field_24440_24441 Bool)) (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (Array T@Ref T@Field_11076_1203 Bool)) (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (Array T@Ref T@Field_11076_53 Bool)) (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (Array T@Ref T@Field_11076_19559 Bool)) (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (Array T@Ref T@Field_25391_25396 Bool)) (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (Array T@Ref T@Field_25378_25379 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19485 0)) (((PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| (Array T@Ref T@Field_19545_53 Bool)) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| (Array T@Ref T@Field_19558_19559 T@Ref)) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| (Array T@Ref T@Field_24307_1887 Int)) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| (Array T@Ref T@Field_22888_22893 T@PolymorphicMapType_20034)) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| (Array T@Ref T@Field_24440_24441 T@FrameType)) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| (Array T@Ref T@Field_24453_24458 T@PolymorphicMapType_20034)) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| (Array T@Ref T@Field_25378_25379 T@FrameType)) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| (Array T@Ref T@Field_25391_25396 T@PolymorphicMapType_20034)) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| (Array T@Ref T@Field_23564_23569 T@PolymorphicMapType_20034)) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| (Array T@Ref T@Field_11051_53 Bool)) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| (Array T@Ref T@Field_11051_19559 T@Ref)) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| (Array T@Ref T@Field_11051_1203 Int)) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| (Array T@Ref T@Field_11076_53 Bool)) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| (Array T@Ref T@Field_11076_19559 T@Ref)) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| (Array T@Ref T@Field_11076_1203 Int)) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| (Array T@Ref T@Field_19545_11052 T@FrameType)) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| (Array T@Ref T@Field_19545_22893 T@PolymorphicMapType_20034)) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| (Array T@Ref T@Field_22905_22906 T@FrameType)) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| (Array T@Ref T@Field_22874_53 Bool)) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| (Array T@Ref T@Field_22874_19559 T@Ref)) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| (Array T@Ref T@Field_22874_1203 Int)) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| (Array T@Ref T@Field_23582_23583 T@FrameType)) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| (Array T@Ref T@Field_23549_53 Bool)) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| (Array T@Ref T@Field_23549_19559 T@Ref)) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| (Array T@Ref T@Field_23549_1529 Int)) ) ) ))
(declare-fun $allocated () T@Field_19545_53)
(declare-fun f_7 () T@Field_24307_1887)
(declare-fun g () T@Field_19558_19559)
(declare-fun h () T@Field_19558_19559)
(declare-fun succHeap (T@PolymorphicMapType_19485 T@PolymorphicMapType_19485) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_19485 T@PolymorphicMapType_19485) Bool)
(declare-fun wand (T@Ref Real T@Ref T@Ref) T@Field_22874_1203)
(declare-fun getPredWandId_10931_1203 (T@Field_22874_1203) Int)
(declare-fun state (T@PolymorphicMapType_19485 T@PolymorphicMapType_19506) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_19506) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_20034)
(declare-fun P (T@Ref) T@Field_24440_24441)
(declare-fun IsPredicateField_11051_11052 (T@Field_24440_24441) Bool)
(declare-fun Q (T@Ref) T@Field_25378_25379)
(declare-fun IsPredicateField_11076_11077 (T@Field_25378_25379) Bool)
(declare-fun |P#trigger_11051| (T@PolymorphicMapType_19485 T@Field_24440_24441) Bool)
(declare-fun |P#everUsed_11051| (T@Field_24440_24441) Bool)
(declare-fun |Q#trigger_11076| (T@PolymorphicMapType_19485 T@Field_25378_25379) Bool)
(declare-fun |Q#everUsed_11076| (T@Field_25378_25379) Bool)
(declare-fun wand_1 (T@Ref Real T@Ref T@Ref T@Ref) T@Field_23549_1529)
(declare-fun getPredWandId_10984_1529 (T@Field_23549_1529) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_19485 T@PolymorphicMapType_19485 T@PolymorphicMapType_19506) Bool)
(declare-fun IsPredicateField_10999_11000 (T@Field_23582_23583) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_23549 (T@Field_23582_23583) T@Field_23564_23569)
(declare-fun HasDirectPerm_23549_11052 (T@PolymorphicMapType_19506 T@Ref T@Field_23582_23583) Bool)
(declare-fun IsPredicateField_10944_10945 (T@Field_22905_22906) Bool)
(declare-fun PredicateMaskField_22874 (T@Field_22905_22906) T@Field_22888_22893)
(declare-fun HasDirectPerm_22874_11052 (T@PolymorphicMapType_19506 T@Ref T@Field_22905_22906) Bool)
(declare-fun IsPredicateField_19545_69776 (T@Field_19545_11052) Bool)
(declare-fun PredicateMaskField_19545 (T@Field_19545_11052) T@Field_19545_22893)
(declare-fun HasDirectPerm_19545_11052 (T@PolymorphicMapType_19506 T@Ref T@Field_19545_11052) Bool)
(declare-fun PredicateMaskField_11076 (T@Field_25378_25379) T@Field_25391_25396)
(declare-fun HasDirectPerm_11076_11077 (T@PolymorphicMapType_19506 T@Ref T@Field_25378_25379) Bool)
(declare-fun PredicateMaskField_11051 (T@Field_24440_24441) T@Field_24453_24458)
(declare-fun HasDirectPerm_11051_11052 (T@PolymorphicMapType_19506 T@Ref T@Field_24440_24441) Bool)
(declare-fun IsWandField_10999_11000 (T@Field_23582_23583) Bool)
(declare-fun WandMaskField_10999 (T@Field_23582_23583) T@Field_23564_23569)
(declare-fun IsWandField_10944_10945 (T@Field_22905_22906) Bool)
(declare-fun WandMaskField_10944 (T@Field_22905_22906) T@Field_22888_22893)
(declare-fun IsWandField_19545_78180 (T@Field_19545_11052) Bool)
(declare-fun WandMaskField_19545 (T@Field_19545_11052) T@Field_19545_22893)
(declare-fun IsWandField_11076_77823 (T@Field_25378_25379) Bool)
(declare-fun WandMaskField_11076 (T@Field_25378_25379) T@Field_25391_25396)
(declare-fun IsWandField_11051_77466 (T@Field_24440_24441) Bool)
(declare-fun WandMaskField_11051 (T@Field_24440_24441) T@Field_24453_24458)
(declare-fun |P#sm| (T@Ref) T@Field_24453_24458)
(declare-fun |Q#sm| (T@Ref) T@Field_25391_25396)
(declare-fun dummyHeap () T@PolymorphicMapType_19485)
(declare-fun ZeroMask () T@PolymorphicMapType_19506)
(declare-fun InsidePredicate_25378_25378 (T@Field_25378_25379 T@FrameType T@Field_25378_25379 T@FrameType) Bool)
(declare-fun InsidePredicate_24440_24440 (T@Field_24440_24441 T@FrameType T@Field_24440_24441 T@FrameType) Bool)
(declare-fun InsidePredicate_23549_23549 (T@Field_23582_23583 T@FrameType T@Field_23582_23583 T@FrameType) Bool)
(declare-fun InsidePredicate_22874_22874 (T@Field_22905_22906 T@FrameType T@Field_22905_22906 T@FrameType) Bool)
(declare-fun InsidePredicate_19545_19545 (T@Field_19545_11052 T@FrameType T@Field_19545_11052 T@FrameType) Bool)
(declare-fun IsWandField_10984_1529 (T@Field_23549_1529) Bool)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref T@Ref T@Ref) T@Field_23582_23583)
(declare-fun IsPredicateField_11042_1887 (T@Field_24307_1887) Bool)
(declare-fun IsWandField_11042_1887 (T@Field_24307_1887) Bool)
(declare-fun IsPredicateField_11044_11045 (T@Field_19558_19559) Bool)
(declare-fun IsWandField_11044_11045 (T@Field_19558_19559) Bool)
(declare-fun IsPredicateField_10984_1529 (T@Field_23549_1529) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10984_95884 (T@Field_23564_23569) Bool)
(declare-fun IsWandField_10984_95900 (T@Field_23564_23569) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10984_19559 (T@Field_23549_19559) Bool)
(declare-fun IsWandField_10984_19559 (T@Field_23549_19559) Bool)
(declare-fun IsPredicateField_10984_53 (T@Field_23549_53) Bool)
(declare-fun IsWandField_10984_53 (T@Field_23549_53) Bool)
(declare-fun IsPredicateField_10931_95067 (T@Field_22888_22893) Bool)
(declare-fun IsWandField_10931_95083 (T@Field_22888_22893) Bool)
(declare-fun IsPredicateField_10931_19559 (T@Field_22874_19559) Bool)
(declare-fun IsWandField_10931_19559 (T@Field_22874_19559) Bool)
(declare-fun IsPredicateField_10931_53 (T@Field_22874_53) Bool)
(declare-fun IsWandField_10931_53 (T@Field_22874_53) Bool)
(declare-fun IsPredicateField_10931_1203 (T@Field_22874_1203) Bool)
(declare-fun IsWandField_10931_1203 (T@Field_22874_1203) Bool)
(declare-fun IsPredicateField_11076_94250 (T@Field_25391_25396) Bool)
(declare-fun IsWandField_11076_94266 (T@Field_25391_25396) Bool)
(declare-fun IsPredicateField_11076_19559 (T@Field_11076_19559) Bool)
(declare-fun IsWandField_11076_19559 (T@Field_11076_19559) Bool)
(declare-fun IsPredicateField_11076_53 (T@Field_11076_53) Bool)
(declare-fun IsWandField_11076_53 (T@Field_11076_53) Bool)
(declare-fun IsPredicateField_11076_1887 (T@Field_11076_1203) Bool)
(declare-fun IsWandField_11076_1887 (T@Field_11076_1203) Bool)
(declare-fun IsPredicateField_11051_93419 (T@Field_24453_24458) Bool)
(declare-fun IsWandField_11051_93435 (T@Field_24453_24458) Bool)
(declare-fun IsPredicateField_11051_19559 (T@Field_11051_19559) Bool)
(declare-fun IsWandField_11051_19559 (T@Field_11051_19559) Bool)
(declare-fun IsPredicateField_11051_53 (T@Field_11051_53) Bool)
(declare-fun IsWandField_11051_53 (T@Field_11051_53) Bool)
(declare-fun IsPredicateField_11051_1887 (T@Field_11051_1203) Bool)
(declare-fun IsWandField_11051_1887 (T@Field_11051_1203) Bool)
(declare-fun IsPredicateField_11042_92588 (T@Field_19545_22893) Bool)
(declare-fun IsWandField_11042_92604 (T@Field_19545_22893) Bool)
(declare-fun IsPredicateField_11042_53 (T@Field_19545_53) Bool)
(declare-fun IsWandField_11042_53 (T@Field_19545_53) Bool)
(declare-fun HasDirectPerm_23549_68881 (T@PolymorphicMapType_19506 T@Ref T@Field_23564_23569) Bool)
(declare-fun HasDirectPerm_23549_1203 (T@PolymorphicMapType_19506 T@Ref T@Field_23549_1529) Bool)
(declare-fun HasDirectPerm_23549_19559 (T@PolymorphicMapType_19506 T@Ref T@Field_23549_19559) Bool)
(declare-fun HasDirectPerm_23549_53 (T@PolymorphicMapType_19506 T@Ref T@Field_23549_53) Bool)
(declare-fun HasDirectPerm_22874_67747 (T@PolymorphicMapType_19506 T@Ref T@Field_22888_22893) Bool)
(declare-fun HasDirectPerm_22874_1203 (T@PolymorphicMapType_19506 T@Ref T@Field_22874_1203) Bool)
(declare-fun HasDirectPerm_22874_19559 (T@PolymorphicMapType_19506 T@Ref T@Field_22874_19559) Bool)
(declare-fun HasDirectPerm_22874_53 (T@PolymorphicMapType_19506 T@Ref T@Field_22874_53) Bool)
(declare-fun HasDirectPerm_19545_66570 (T@PolymorphicMapType_19506 T@Ref T@Field_19545_22893) Bool)
(declare-fun HasDirectPerm_19545_1203 (T@PolymorphicMapType_19506 T@Ref T@Field_24307_1887) Bool)
(declare-fun HasDirectPerm_19545_19559 (T@PolymorphicMapType_19506 T@Ref T@Field_19558_19559) Bool)
(declare-fun HasDirectPerm_19545_53 (T@PolymorphicMapType_19506 T@Ref T@Field_19545_53) Bool)
(declare-fun HasDirectPerm_11076_65477 (T@PolymorphicMapType_19506 T@Ref T@Field_25391_25396) Bool)
(declare-fun HasDirectPerm_11076_1203 (T@PolymorphicMapType_19506 T@Ref T@Field_11076_1203) Bool)
(declare-fun HasDirectPerm_11076_19559 (T@PolymorphicMapType_19506 T@Ref T@Field_11076_19559) Bool)
(declare-fun HasDirectPerm_11076_53 (T@PolymorphicMapType_19506 T@Ref T@Field_11076_53) Bool)
(declare-fun HasDirectPerm_11051_64379 (T@PolymorphicMapType_19506 T@Ref T@Field_24453_24458) Bool)
(declare-fun HasDirectPerm_11051_1203 (T@PolymorphicMapType_19506 T@Ref T@Field_11051_1203) Bool)
(declare-fun HasDirectPerm_11051_19559 (T@PolymorphicMapType_19506 T@Ref T@Field_11051_19559) Bool)
(declare-fun HasDirectPerm_11051_53 (T@PolymorphicMapType_19506 T@Ref T@Field_11051_53) Bool)
(declare-fun |wand#ft| (T@Ref Real T@Ref T@Ref) T@Field_22905_22906)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (T@Ref Real T@Ref T@Ref) T@Field_22888_22893)
(declare-fun sumMask (T@PolymorphicMapType_19506 T@PolymorphicMapType_19506 T@PolymorphicMapType_19506) Bool)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref T@Ref T@Ref) T@Field_23564_23569)
(declare-fun getPredWandId_11051_11052 (T@Field_24440_24441) Int)
(declare-fun getPredWandId_11076_11077 (T@Field_25378_25379) Int)
(declare-fun InsidePredicate_25378_24440 (T@Field_25378_25379 T@FrameType T@Field_24440_24441 T@FrameType) Bool)
(declare-fun InsidePredicate_25378_23549 (T@Field_25378_25379 T@FrameType T@Field_23582_23583 T@FrameType) Bool)
(declare-fun InsidePredicate_25378_22874 (T@Field_25378_25379 T@FrameType T@Field_22905_22906 T@FrameType) Bool)
(declare-fun InsidePredicate_25378_19545 (T@Field_25378_25379 T@FrameType T@Field_19545_11052 T@FrameType) Bool)
(declare-fun InsidePredicate_24440_25378 (T@Field_24440_24441 T@FrameType T@Field_25378_25379 T@FrameType) Bool)
(declare-fun InsidePredicate_24440_23549 (T@Field_24440_24441 T@FrameType T@Field_23582_23583 T@FrameType) Bool)
(declare-fun InsidePredicate_24440_22874 (T@Field_24440_24441 T@FrameType T@Field_22905_22906 T@FrameType) Bool)
(declare-fun InsidePredicate_24440_19545 (T@Field_24440_24441 T@FrameType T@Field_19545_11052 T@FrameType) Bool)
(declare-fun InsidePredicate_23549_25378 (T@Field_23582_23583 T@FrameType T@Field_25378_25379 T@FrameType) Bool)
(declare-fun InsidePredicate_23549_24440 (T@Field_23582_23583 T@FrameType T@Field_24440_24441 T@FrameType) Bool)
(declare-fun InsidePredicate_23549_22874 (T@Field_23582_23583 T@FrameType T@Field_22905_22906 T@FrameType) Bool)
(declare-fun InsidePredicate_23549_19545 (T@Field_23582_23583 T@FrameType T@Field_19545_11052 T@FrameType) Bool)
(declare-fun InsidePredicate_22874_25378 (T@Field_22905_22906 T@FrameType T@Field_25378_25379 T@FrameType) Bool)
(declare-fun InsidePredicate_22874_24440 (T@Field_22905_22906 T@FrameType T@Field_24440_24441 T@FrameType) Bool)
(declare-fun InsidePredicate_22874_23549 (T@Field_22905_22906 T@FrameType T@Field_23582_23583 T@FrameType) Bool)
(declare-fun InsidePredicate_22874_19545 (T@Field_22905_22906 T@FrameType T@Field_19545_11052 T@FrameType) Bool)
(declare-fun InsidePredicate_19545_25378 (T@Field_19545_11052 T@FrameType T@Field_25378_25379 T@FrameType) Bool)
(declare-fun InsidePredicate_19545_24440 (T@Field_19545_11052 T@FrameType T@Field_24440_24441 T@FrameType) Bool)
(declare-fun InsidePredicate_19545_23549 (T@Field_19545_11052 T@FrameType T@Field_23582_23583 T@FrameType) Bool)
(declare-fun InsidePredicate_19545_22874 (T@Field_19545_11052 T@FrameType T@Field_22905_22906 T@FrameType) Bool)
(assert (distinct g h)
)
(assert (forall ((Heap0 T@PolymorphicMapType_19485) (Heap1 T@PolymorphicMapType_19485) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 T@Ref) ) (! (= (getPredWandId_10931_1203 (wand arg1 arg2 arg3 arg4)) 2)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_19485) (Mask T@PolymorphicMapType_19506) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_19485) (Heap1@@0 T@PolymorphicMapType_19485) (Heap2 T@PolymorphicMapType_19485) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_25378_25379) ) (!  (not (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_25391_25396) ) (!  (not (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11076_19559) ) (!  (not (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11076_53) ) (!  (not (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11076_1203) ) (!  (not (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_24440_24441) ) (!  (not (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_24453_24458) ) (!  (not (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11051_19559) ) (!  (not (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11051_53) ) (!  (not (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11051_1203) ) (!  (not (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_23582_23583) ) (!  (not (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_23564_23569) ) (!  (not (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_23549_19559) ) (!  (not (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_23549_53) ) (!  (not (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_23549_1529) ) (!  (not (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_22905_22906) ) (!  (not (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_22888_22893) ) (!  (not (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_22874_19559) ) (!  (not (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22874_53) ) (!  (not (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_22874_1203) ) (!  (not (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_19545_11052) ) (!  (not (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_19545_22893) ) (!  (not (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_19558_19559) ) (!  (not (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_19545_53) ) (!  (not (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_24307_1887) ) (!  (not (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_11051_11052 (P x))
 :qid |stdinbpl.270:15|
 :skolemid |37|
 :pattern ( (P x))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_11076_11077 (Q x@@0))
 :qid |stdinbpl.326:15|
 :skolemid |43|
 :pattern ( (Q x@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_19485) (x@@1 T@Ref) ) (! (|P#everUsed_11051| (P x@@1))
 :qid |stdinbpl.289:15|
 :skolemid |41|
 :pattern ( (|P#trigger_11051| Heap@@0 (P x@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_19485) (x@@2 T@Ref) ) (! (|Q#everUsed_11076| (Q x@@2))
 :qid |stdinbpl.345:15|
 :skolemid |47|
 :pattern ( (|Q#trigger_11076| Heap@@1 (Q x@@2)))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 T@Ref) (arg5 T@Ref) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 T@Ref) (arg5_2 T@Ref) ) (!  (=> (= (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2)) (and (= arg1@@0 arg1_2) (and (= arg2@@0 arg2_2) (and (= arg3@@0 arg3_2) (and (= arg4@@0 arg4_2) (= arg5 arg5_2))))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 T@Ref) (arg5@@0 T@Ref) ) (! (= (getPredWandId_10984_1529 (wand_1 arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@0)) 3)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19485) (ExhaleHeap T@PolymorphicMapType_19485) (Mask@@0 T@PolymorphicMapType_19506) (pm_f_48 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_23549_11052 Mask@@0 null pm_f_48) (IsPredicateField_10999_11000 pm_f_48)) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@2) null (PredicateMaskField_23549 pm_f_48)) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap) null (PredicateMaskField_23549 pm_f_48)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_10999_11000 pm_f_48) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap) null (PredicateMaskField_23549 pm_f_48)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19485) (ExhaleHeap@@0 T@PolymorphicMapType_19485) (Mask@@1 T@PolymorphicMapType_19506) (pm_f_48@@0 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_22874_11052 Mask@@1 null pm_f_48@@0) (IsPredicateField_10944_10945 pm_f_48@@0)) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@3) null (PredicateMaskField_22874 pm_f_48@@0)) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@0) null (PredicateMaskField_22874 pm_f_48@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_10944_10945 pm_f_48@@0) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@0) null (PredicateMaskField_22874 pm_f_48@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19485) (ExhaleHeap@@1 T@PolymorphicMapType_19485) (Mask@@2 T@PolymorphicMapType_19506) (pm_f_48@@1 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_19545_11052 Mask@@2 null pm_f_48@@1) (IsPredicateField_19545_69776 pm_f_48@@1)) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@4) null (PredicateMaskField_19545 pm_f_48@@1)) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@1) null (PredicateMaskField_19545 pm_f_48@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_19545_69776 pm_f_48@@1) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@1) null (PredicateMaskField_19545 pm_f_48@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19485) (ExhaleHeap@@2 T@PolymorphicMapType_19485) (Mask@@3 T@PolymorphicMapType_19506) (pm_f_48@@2 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11076_11077 Mask@@3 null pm_f_48@@2) (IsPredicateField_11076_11077 pm_f_48@@2)) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@5) null (PredicateMaskField_11076 pm_f_48@@2)) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@2) null (PredicateMaskField_11076 pm_f_48@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_11076_11077 pm_f_48@@2) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@2) null (PredicateMaskField_11076 pm_f_48@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19485) (ExhaleHeap@@3 T@PolymorphicMapType_19485) (Mask@@4 T@PolymorphicMapType_19506) (pm_f_48@@3 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11051_11052 Mask@@4 null pm_f_48@@3) (IsPredicateField_11051_11052 pm_f_48@@3)) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@6) null (PredicateMaskField_11051 pm_f_48@@3)) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@3) null (PredicateMaskField_11051 pm_f_48@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_11051_11052 pm_f_48@@3) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@3) null (PredicateMaskField_11051 pm_f_48@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19485) (ExhaleHeap@@4 T@PolymorphicMapType_19485) (Mask@@5 T@PolymorphicMapType_19506) (pm_f_48@@4 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_23549_11052 Mask@@5 null pm_f_48@@4) (IsWandField_10999_11000 pm_f_48@@4)) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@7) null (WandMaskField_10999 pm_f_48@@4)) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@4) null (WandMaskField_10999 pm_f_48@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_10999_11000 pm_f_48@@4) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@4) null (WandMaskField_10999 pm_f_48@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19485) (ExhaleHeap@@5 T@PolymorphicMapType_19485) (Mask@@6 T@PolymorphicMapType_19506) (pm_f_48@@5 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_22874_11052 Mask@@6 null pm_f_48@@5) (IsWandField_10944_10945 pm_f_48@@5)) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@8) null (WandMaskField_10944 pm_f_48@@5)) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@5) null (WandMaskField_10944 pm_f_48@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_10944_10945 pm_f_48@@5) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@5) null (WandMaskField_10944 pm_f_48@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19485) (ExhaleHeap@@6 T@PolymorphicMapType_19485) (Mask@@7 T@PolymorphicMapType_19506) (pm_f_48@@6 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_19545_11052 Mask@@7 null pm_f_48@@6) (IsWandField_19545_78180 pm_f_48@@6)) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@9) null (WandMaskField_19545 pm_f_48@@6)) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@6) null (WandMaskField_19545 pm_f_48@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_19545_78180 pm_f_48@@6) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@6) null (WandMaskField_19545 pm_f_48@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19485) (ExhaleHeap@@7 T@PolymorphicMapType_19485) (Mask@@8 T@PolymorphicMapType_19506) (pm_f_48@@7 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_11076_11077 Mask@@8 null pm_f_48@@7) (IsWandField_11076_77823 pm_f_48@@7)) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@10) null (WandMaskField_11076 pm_f_48@@7)) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@7) null (WandMaskField_11076 pm_f_48@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsWandField_11076_77823 pm_f_48@@7) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@7) null (WandMaskField_11076 pm_f_48@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19485) (ExhaleHeap@@8 T@PolymorphicMapType_19485) (Mask@@9 T@PolymorphicMapType_19506) (pm_f_48@@8 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11051_11052 Mask@@9 null pm_f_48@@8) (IsWandField_11051_77466 pm_f_48@@8)) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@11) null (WandMaskField_11051 pm_f_48@@8)) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@8) null (WandMaskField_11051 pm_f_48@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_11051_77466 pm_f_48@@8) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@8) null (WandMaskField_11051 pm_f_48@@8)))
)))
(assert (forall ((x@@3 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@3) (P x2)) (= x@@3 x2))
 :qid |stdinbpl.280:15|
 :skolemid |39|
 :pattern ( (P x@@3) (P x2))
)))
(assert (forall ((x@@4 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@4) (|P#sm| x2@@0)) (= x@@4 x2@@0))
 :qid |stdinbpl.284:15|
 :skolemid |40|
 :pattern ( (|P#sm| x@@4) (|P#sm| x2@@0))
)))
(assert (forall ((x@@5 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Q x@@5) (Q x2@@1)) (= x@@5 x2@@1))
 :qid |stdinbpl.336:15|
 :skolemid |45|
 :pattern ( (Q x@@5) (Q x2@@1))
)))
(assert (forall ((x@@6 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Q#sm| x@@6) (|Q#sm| x2@@2)) (= x@@6 x2@@2))
 :qid |stdinbpl.340:15|
 :skolemid |46|
 :pattern ( (|Q#sm| x@@6) (|Q#sm| x2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19485) (ExhaleHeap@@9 T@PolymorphicMapType_19485) (Mask@@10 T@PolymorphicMapType_19506) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@12) o_55 $allocated) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@9) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@9) o_55 $allocated))
)))
(assert (forall ((p T@Field_25378_25379) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25378_25378 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25378_25378 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24440_24441) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_24440_24440 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24440_24440 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_23582_23583) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_23549_23549 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23549_23549 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_22905_22906) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_22874_22874 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22874_22874 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_19545_11052) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_19545_19545 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19545_19545 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 T@Ref) (arg5@@1 T@Ref) ) (! (IsWandField_10984_1529 (wand_1 arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@1))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@1))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 T@Ref) (arg5@@2 T@Ref) ) (! (IsWandField_10999_11000 (|wand_1#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@2))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@2))
)))
(assert  (not (IsPredicateField_11042_1887 f_7)))
(assert  (not (IsWandField_11042_1887 f_7)))
(assert  (not (IsPredicateField_11044_11045 g)))
(assert  (not (IsWandField_11044_11045 g)))
(assert  (not (IsPredicateField_11044_11045 h)))
(assert  (not (IsWandField_11044_11045 h)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19485) (ExhaleHeap@@10 T@PolymorphicMapType_19485) (Mask@@11 T@PolymorphicMapType_19506) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (succHeap Heap@@13 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 T@Ref) (arg5@@3 T@Ref) ) (!  (not (IsPredicateField_10984_1529 (wand_1 arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@3)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@3))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 T@Ref) (arg5@@4 T@Ref) ) (!  (not (IsPredicateField_10999_11000 (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@4)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_19506) (o_2@@24 T@Ref) (f_4@@24 T@Field_23564_23569) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@@12) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_10984_95884 f_4@@24))) (not (IsWandField_10984_95900 f_4@@24))) (<= (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@@12) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@@12) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_19506) (o_2@@25 T@Ref) (f_4@@25 T@Field_23549_19559) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@@13) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_10984_19559 f_4@@25))) (not (IsWandField_10984_19559 f_4@@25))) (<= (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@@13) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@@13) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_19506) (o_2@@26 T@Ref) (f_4@@26 T@Field_23549_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@@14) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_10984_53 f_4@@26))) (not (IsWandField_10984_53 f_4@@26))) (<= (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@@14) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@@14) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_19506) (o_2@@27 T@Ref) (f_4@@27 T@Field_23582_23583) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@@15) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_10999_11000 f_4@@27))) (not (IsWandField_10999_11000 f_4@@27))) (<= (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@@15) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@@15) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_19506) (o_2@@28 T@Ref) (f_4@@28 T@Field_23549_1529) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@@16) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_10984_1529 f_4@@28))) (not (IsWandField_10984_1529 f_4@@28))) (<= (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@@16) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@@16) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_19506) (o_2@@29 T@Ref) (f_4@@29 T@Field_22888_22893) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@@17) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_10931_95067 f_4@@29))) (not (IsWandField_10931_95083 f_4@@29))) (<= (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@@17) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@@17) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_19506) (o_2@@30 T@Ref) (f_4@@30 T@Field_22874_19559) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@@18) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_10931_19559 f_4@@30))) (not (IsWandField_10931_19559 f_4@@30))) (<= (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@@18) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@@18) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_19506) (o_2@@31 T@Ref) (f_4@@31 T@Field_22874_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@@19) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_10931_53 f_4@@31))) (not (IsWandField_10931_53 f_4@@31))) (<= (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@@19) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@@19) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_19506) (o_2@@32 T@Ref) (f_4@@32 T@Field_22905_22906) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@@20) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_10944_10945 f_4@@32))) (not (IsWandField_10944_10945 f_4@@32))) (<= (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@@20) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@@20) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_19506) (o_2@@33 T@Ref) (f_4@@33 T@Field_22874_1203) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@@21) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_10931_1203 f_4@@33))) (not (IsWandField_10931_1203 f_4@@33))) (<= (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@@21) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@@21) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_19506) (o_2@@34 T@Ref) (f_4@@34 T@Field_25391_25396) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@@22) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_11076_94250 f_4@@34))) (not (IsWandField_11076_94266 f_4@@34))) (<= (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@@22) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@@22) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_19506) (o_2@@35 T@Ref) (f_4@@35 T@Field_11076_19559) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@@23) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11076_19559 f_4@@35))) (not (IsWandField_11076_19559 f_4@@35))) (<= (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@@23) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@@23) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_19506) (o_2@@36 T@Ref) (f_4@@36 T@Field_11076_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@@24) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11076_53 f_4@@36))) (not (IsWandField_11076_53 f_4@@36))) (<= (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@@24) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@@24) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_19506) (o_2@@37 T@Ref) (f_4@@37 T@Field_25378_25379) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@@25) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_11076_11077 f_4@@37))) (not (IsWandField_11076_77823 f_4@@37))) (<= (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@@25) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@@25) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_19506) (o_2@@38 T@Ref) (f_4@@38 T@Field_11076_1203) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@@26) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_11076_1887 f_4@@38))) (not (IsWandField_11076_1887 f_4@@38))) (<= (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@@26) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@@26) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_19506) (o_2@@39 T@Ref) (f_4@@39 T@Field_24453_24458) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@@27) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_11051_93419 f_4@@39))) (not (IsWandField_11051_93435 f_4@@39))) (<= (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@@27) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@@27) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_19506) (o_2@@40 T@Ref) (f_4@@40 T@Field_11051_19559) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@@28) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_11051_19559 f_4@@40))) (not (IsWandField_11051_19559 f_4@@40))) (<= (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@@28) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@@28) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_19506) (o_2@@41 T@Ref) (f_4@@41 T@Field_11051_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@@29) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_11051_53 f_4@@41))) (not (IsWandField_11051_53 f_4@@41))) (<= (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@@29) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@@29) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_19506) (o_2@@42 T@Ref) (f_4@@42 T@Field_24440_24441) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@@30) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_11051_11052 f_4@@42))) (not (IsWandField_11051_77466 f_4@@42))) (<= (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@@30) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@@30) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_19506) (o_2@@43 T@Ref) (f_4@@43 T@Field_11051_1203) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@@31) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_11051_1887 f_4@@43))) (not (IsWandField_11051_1887 f_4@@43))) (<= (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@@31) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@@31) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_19506) (o_2@@44 T@Ref) (f_4@@44 T@Field_19545_22893) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@@32) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_11042_92588 f_4@@44))) (not (IsWandField_11042_92604 f_4@@44))) (<= (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@@32) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@@32) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_19506) (o_2@@45 T@Ref) (f_4@@45 T@Field_19558_19559) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@@33) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_11044_11045 f_4@@45))) (not (IsWandField_11044_11045 f_4@@45))) (<= (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@@33) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@@33) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_19506) (o_2@@46 T@Ref) (f_4@@46 T@Field_19545_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@@34) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_11042_53 f_4@@46))) (not (IsWandField_11042_53 f_4@@46))) (<= (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@@34) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@@34) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_19506) (o_2@@47 T@Ref) (f_4@@47 T@Field_19545_11052) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@@35) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_19545_69776 f_4@@47))) (not (IsWandField_19545_78180 f_4@@47))) (<= (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@@35) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@@35) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_19506) (o_2@@48 T@Ref) (f_4@@48 T@Field_24307_1887) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@@36) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_11042_1887 f_4@@48))) (not (IsWandField_11042_1887 f_4@@48))) (<= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@@36) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@@36) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_19506) (o_2@@49 T@Ref) (f_4@@49 T@Field_23564_23569) ) (! (= (HasDirectPerm_23549_68881 Mask@@37 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@@37) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23549_68881 Mask@@37 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_19506) (o_2@@50 T@Ref) (f_4@@50 T@Field_23549_1529) ) (! (= (HasDirectPerm_23549_1203 Mask@@38 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@@38) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23549_1203 Mask@@38 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_19506) (o_2@@51 T@Ref) (f_4@@51 T@Field_23549_19559) ) (! (= (HasDirectPerm_23549_19559 Mask@@39 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@@39) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23549_19559 Mask@@39 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_19506) (o_2@@52 T@Ref) (f_4@@52 T@Field_23549_53) ) (! (= (HasDirectPerm_23549_53 Mask@@40 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@@40) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23549_53 Mask@@40 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_19506) (o_2@@53 T@Ref) (f_4@@53 T@Field_23582_23583) ) (! (= (HasDirectPerm_23549_11052 Mask@@41 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@@41) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23549_11052 Mask@@41 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_19506) (o_2@@54 T@Ref) (f_4@@54 T@Field_22888_22893) ) (! (= (HasDirectPerm_22874_67747 Mask@@42 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@@42) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22874_67747 Mask@@42 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_19506) (o_2@@55 T@Ref) (f_4@@55 T@Field_22874_1203) ) (! (= (HasDirectPerm_22874_1203 Mask@@43 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@@43) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22874_1203 Mask@@43 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_19506) (o_2@@56 T@Ref) (f_4@@56 T@Field_22874_19559) ) (! (= (HasDirectPerm_22874_19559 Mask@@44 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@@44) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22874_19559 Mask@@44 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_19506) (o_2@@57 T@Ref) (f_4@@57 T@Field_22874_53) ) (! (= (HasDirectPerm_22874_53 Mask@@45 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@@45) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22874_53 Mask@@45 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_19506) (o_2@@58 T@Ref) (f_4@@58 T@Field_22905_22906) ) (! (= (HasDirectPerm_22874_11052 Mask@@46 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@@46) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22874_11052 Mask@@46 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_19506) (o_2@@59 T@Ref) (f_4@@59 T@Field_19545_22893) ) (! (= (HasDirectPerm_19545_66570 Mask@@47 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@@47) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19545_66570 Mask@@47 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_19506) (o_2@@60 T@Ref) (f_4@@60 T@Field_24307_1887) ) (! (= (HasDirectPerm_19545_1203 Mask@@48 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@@48) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19545_1203 Mask@@48 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_19506) (o_2@@61 T@Ref) (f_4@@61 T@Field_19558_19559) ) (! (= (HasDirectPerm_19545_19559 Mask@@49 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@@49) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19545_19559 Mask@@49 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_19506) (o_2@@62 T@Ref) (f_4@@62 T@Field_19545_53) ) (! (= (HasDirectPerm_19545_53 Mask@@50 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@@50) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19545_53 Mask@@50 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_19506) (o_2@@63 T@Ref) (f_4@@63 T@Field_19545_11052) ) (! (= (HasDirectPerm_19545_11052 Mask@@51 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@@51) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19545_11052 Mask@@51 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_19506) (o_2@@64 T@Ref) (f_4@@64 T@Field_25391_25396) ) (! (= (HasDirectPerm_11076_65477 Mask@@52 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@@52) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11076_65477 Mask@@52 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_19506) (o_2@@65 T@Ref) (f_4@@65 T@Field_11076_1203) ) (! (= (HasDirectPerm_11076_1203 Mask@@53 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@@53) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11076_1203 Mask@@53 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_19506) (o_2@@66 T@Ref) (f_4@@66 T@Field_11076_19559) ) (! (= (HasDirectPerm_11076_19559 Mask@@54 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@@54) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11076_19559 Mask@@54 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_19506) (o_2@@67 T@Ref) (f_4@@67 T@Field_11076_53) ) (! (= (HasDirectPerm_11076_53 Mask@@55 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@@55) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11076_53 Mask@@55 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_19506) (o_2@@68 T@Ref) (f_4@@68 T@Field_25378_25379) ) (! (= (HasDirectPerm_11076_11077 Mask@@56 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@@56) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11076_11077 Mask@@56 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_19506) (o_2@@69 T@Ref) (f_4@@69 T@Field_24453_24458) ) (! (= (HasDirectPerm_11051_64379 Mask@@57 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@@57) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_64379 Mask@@57 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_19506) (o_2@@70 T@Ref) (f_4@@70 T@Field_11051_1203) ) (! (= (HasDirectPerm_11051_1203 Mask@@58 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@@58) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_1203 Mask@@58 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_19506) (o_2@@71 T@Ref) (f_4@@71 T@Field_11051_19559) ) (! (= (HasDirectPerm_11051_19559 Mask@@59 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@@59) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_19559 Mask@@59 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_19506) (o_2@@72 T@Ref) (f_4@@72 T@Field_11051_53) ) (! (= (HasDirectPerm_11051_53 Mask@@60 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@@60) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_53 Mask@@60 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_19506) (o_2@@73 T@Ref) (f_4@@73 T@Field_24440_24441) ) (! (= (HasDirectPerm_11051_11052 Mask@@61 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@@61) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11051_11052 Mask@@61 o_2@@73 f_4@@73))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 T@Ref) (arg4@@6 T@Ref) ) (! (IsWandField_10931_1203 (wand arg1@@6 arg2@@6 arg3@@6 arg4@@6))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@6 arg2@@6 arg3@@6 arg4@@6))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@7 T@Ref) (arg4@@7 T@Ref) ) (! (IsWandField_10944_10945 (|wand#ft| arg1@@7 arg2@@7 arg3@@7 arg4@@7))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@7 arg2@@7 arg3@@7 arg4@@7))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19485) (ExhaleHeap@@11 T@PolymorphicMapType_19485) (Mask@@62 T@PolymorphicMapType_19506) (o_55@@0 T@Ref) (f_54 T@Field_23564_23569) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_23549_68881 Mask@@62 o_55@@0 f_54) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@14) o_55@@0 f_54) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@11) o_55@@0 f_54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@11) o_55@@0 f_54))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19485) (ExhaleHeap@@12 T@PolymorphicMapType_19485) (Mask@@63 T@PolymorphicMapType_19506) (o_55@@1 T@Ref) (f_54@@0 T@Field_23549_1529) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_23549_1203 Mask@@63 o_55@@1 f_54@@0) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@15) o_55@@1 f_54@@0) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@12) o_55@@1 f_54@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@12) o_55@@1 f_54@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19485) (ExhaleHeap@@13 T@PolymorphicMapType_19485) (Mask@@64 T@PolymorphicMapType_19506) (o_55@@2 T@Ref) (f_54@@1 T@Field_23549_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_23549_19559 Mask@@64 o_55@@2 f_54@@1) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@16) o_55@@2 f_54@@1) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@13) o_55@@2 f_54@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@13) o_55@@2 f_54@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19485) (ExhaleHeap@@14 T@PolymorphicMapType_19485) (Mask@@65 T@PolymorphicMapType_19506) (o_55@@3 T@Ref) (f_54@@2 T@Field_23549_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_23549_53 Mask@@65 o_55@@3 f_54@@2) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@17) o_55@@3 f_54@@2) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@14) o_55@@3 f_54@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@14) o_55@@3 f_54@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19485) (ExhaleHeap@@15 T@PolymorphicMapType_19485) (Mask@@66 T@PolymorphicMapType_19506) (o_55@@4 T@Ref) (f_54@@3 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_23549_11052 Mask@@66 o_55@@4 f_54@@3) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@18) o_55@@4 f_54@@3) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@15) o_55@@4 f_54@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@15) o_55@@4 f_54@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19485) (ExhaleHeap@@16 T@PolymorphicMapType_19485) (Mask@@67 T@PolymorphicMapType_19506) (o_55@@5 T@Ref) (f_54@@4 T@Field_22888_22893) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_22874_67747 Mask@@67 o_55@@5 f_54@@4) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@19) o_55@@5 f_54@@4) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@16) o_55@@5 f_54@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@16) o_55@@5 f_54@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19485) (ExhaleHeap@@17 T@PolymorphicMapType_19485) (Mask@@68 T@PolymorphicMapType_19506) (o_55@@6 T@Ref) (f_54@@5 T@Field_22874_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_22874_1203 Mask@@68 o_55@@6 f_54@@5) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@20) o_55@@6 f_54@@5) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@17) o_55@@6 f_54@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@17) o_55@@6 f_54@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19485) (ExhaleHeap@@18 T@PolymorphicMapType_19485) (Mask@@69 T@PolymorphicMapType_19506) (o_55@@7 T@Ref) (f_54@@6 T@Field_22874_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_22874_19559 Mask@@69 o_55@@7 f_54@@6) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@21) o_55@@7 f_54@@6) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@18) o_55@@7 f_54@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@18) o_55@@7 f_54@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19485) (ExhaleHeap@@19 T@PolymorphicMapType_19485) (Mask@@70 T@PolymorphicMapType_19506) (o_55@@8 T@Ref) (f_54@@7 T@Field_22874_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_22874_53 Mask@@70 o_55@@8 f_54@@7) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@22) o_55@@8 f_54@@7) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@19) o_55@@8 f_54@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@19) o_55@@8 f_54@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19485) (ExhaleHeap@@20 T@PolymorphicMapType_19485) (Mask@@71 T@PolymorphicMapType_19506) (o_55@@9 T@Ref) (f_54@@8 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_22874_11052 Mask@@71 o_55@@9 f_54@@8) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@23) o_55@@9 f_54@@8) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@20) o_55@@9 f_54@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@20) o_55@@9 f_54@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19485) (ExhaleHeap@@21 T@PolymorphicMapType_19485) (Mask@@72 T@PolymorphicMapType_19506) (o_55@@10 T@Ref) (f_54@@9 T@Field_19545_22893) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_19545_66570 Mask@@72 o_55@@10 f_54@@9) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@24) o_55@@10 f_54@@9) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@21) o_55@@10 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@21) o_55@@10 f_54@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19485) (ExhaleHeap@@22 T@PolymorphicMapType_19485) (Mask@@73 T@PolymorphicMapType_19506) (o_55@@11 T@Ref) (f_54@@10 T@Field_24307_1887) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_19545_1203 Mask@@73 o_55@@11 f_54@@10) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@25) o_55@@11 f_54@@10) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@22) o_55@@11 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@22) o_55@@11 f_54@@10))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19485) (ExhaleHeap@@23 T@PolymorphicMapType_19485) (Mask@@74 T@PolymorphicMapType_19506) (o_55@@12 T@Ref) (f_54@@11 T@Field_19558_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_19545_19559 Mask@@74 o_55@@12 f_54@@11) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@26) o_55@@12 f_54@@11) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@23) o_55@@12 f_54@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@23) o_55@@12 f_54@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19485) (ExhaleHeap@@24 T@PolymorphicMapType_19485) (Mask@@75 T@PolymorphicMapType_19506) (o_55@@13 T@Ref) (f_54@@12 T@Field_19545_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_19545_53 Mask@@75 o_55@@13 f_54@@12) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@27) o_55@@13 f_54@@12) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@24) o_55@@13 f_54@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@24) o_55@@13 f_54@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19485) (ExhaleHeap@@25 T@PolymorphicMapType_19485) (Mask@@76 T@PolymorphicMapType_19506) (o_55@@14 T@Ref) (f_54@@13 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_19545_11052 Mask@@76 o_55@@14 f_54@@13) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@28) o_55@@14 f_54@@13) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@25) o_55@@14 f_54@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@25) o_55@@14 f_54@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19485) (ExhaleHeap@@26 T@PolymorphicMapType_19485) (Mask@@77 T@PolymorphicMapType_19506) (o_55@@15 T@Ref) (f_54@@14 T@Field_25391_25396) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_11076_65477 Mask@@77 o_55@@15 f_54@@14) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@29) o_55@@15 f_54@@14) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@26) o_55@@15 f_54@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@26) o_55@@15 f_54@@14))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19485) (ExhaleHeap@@27 T@PolymorphicMapType_19485) (Mask@@78 T@PolymorphicMapType_19506) (o_55@@16 T@Ref) (f_54@@15 T@Field_11076_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_11076_1203 Mask@@78 o_55@@16 f_54@@15) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@30) o_55@@16 f_54@@15) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@27) o_55@@16 f_54@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@27) o_55@@16 f_54@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_19485) (ExhaleHeap@@28 T@PolymorphicMapType_19485) (Mask@@79 T@PolymorphicMapType_19506) (o_55@@17 T@Ref) (f_54@@16 T@Field_11076_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_11076_19559 Mask@@79 o_55@@17 f_54@@16) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@31) o_55@@17 f_54@@16) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@28) o_55@@17 f_54@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@28) o_55@@17 f_54@@16))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_19485) (ExhaleHeap@@29 T@PolymorphicMapType_19485) (Mask@@80 T@PolymorphicMapType_19506) (o_55@@18 T@Ref) (f_54@@17 T@Field_11076_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_11076_53 Mask@@80 o_55@@18 f_54@@17) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@32) o_55@@18 f_54@@17) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@29) o_55@@18 f_54@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@29) o_55@@18 f_54@@17))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_19485) (ExhaleHeap@@30 T@PolymorphicMapType_19485) (Mask@@81 T@PolymorphicMapType_19506) (o_55@@19 T@Ref) (f_54@@18 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_11076_11077 Mask@@81 o_55@@19 f_54@@18) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@33) o_55@@19 f_54@@18) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@30) o_55@@19 f_54@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@30) o_55@@19 f_54@@18))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_19485) (ExhaleHeap@@31 T@PolymorphicMapType_19485) (Mask@@82 T@PolymorphicMapType_19506) (o_55@@20 T@Ref) (f_54@@19 T@Field_24453_24458) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_11051_64379 Mask@@82 o_55@@20 f_54@@19) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@34) o_55@@20 f_54@@19) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@31) o_55@@20 f_54@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@31) o_55@@20 f_54@@19))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_19485) (ExhaleHeap@@32 T@PolymorphicMapType_19485) (Mask@@83 T@PolymorphicMapType_19506) (o_55@@21 T@Ref) (f_54@@20 T@Field_11051_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_11051_1203 Mask@@83 o_55@@21 f_54@@20) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@35) o_55@@21 f_54@@20) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@32) o_55@@21 f_54@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@32) o_55@@21 f_54@@20))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_19485) (ExhaleHeap@@33 T@PolymorphicMapType_19485) (Mask@@84 T@PolymorphicMapType_19506) (o_55@@22 T@Ref) (f_54@@21 T@Field_11051_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_11051_19559 Mask@@84 o_55@@22 f_54@@21) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@36) o_55@@22 f_54@@21) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@33) o_55@@22 f_54@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@33) o_55@@22 f_54@@21))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_19485) (ExhaleHeap@@34 T@PolymorphicMapType_19485) (Mask@@85 T@PolymorphicMapType_19506) (o_55@@23 T@Ref) (f_54@@22 T@Field_11051_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_11051_53 Mask@@85 o_55@@23 f_54@@22) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@37) o_55@@23 f_54@@22) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@34) o_55@@23 f_54@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@34) o_55@@23 f_54@@22))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_19485) (ExhaleHeap@@35 T@PolymorphicMapType_19485) (Mask@@86 T@PolymorphicMapType_19506) (o_55@@24 T@Ref) (f_54@@23 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_11051_11052 Mask@@86 o_55@@24 f_54@@23) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@38) o_55@@24 f_54@@23) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@35) o_55@@24 f_54@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@35) o_55@@24 f_54@@23))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 T@Ref) (arg4@@8 T@Ref) ) (!  (not (IsPredicateField_10931_1203 (wand arg1@@8 arg2@@8 arg3@@8 arg4@@8)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@8 arg2@@8 arg3@@8 arg4@@8))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 T@Ref) (arg4@@9 T@Ref) ) (!  (not (IsPredicateField_10944_10945 (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 Real) (arg3@@10 T@Ref) (arg4@@10 T@Ref) ) (! (= (|wand#sm| arg1@@10 arg2@@10 arg3@@10 arg4@@10) (WandMaskField_10944 (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_10944 (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10)))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_23564_23569) ) (! (= (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_23549_19559) ) (! (= (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_23549_53) ) (! (= (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_23582_23583) ) (! (= (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_23549_1529) ) (! (= (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_22888_22893) ) (! (= (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_22874_19559) ) (! (= (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_22874_53) ) (! (= (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_22905_22906) ) (! (= (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_22874_1203) ) (! (= (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_25391_25396) ) (! (= (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_11076_19559) ) (! (= (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_11076_53) ) (! (= (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_25378_25379) ) (! (= (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_11076_1203) ) (! (= (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_24453_24458) ) (! (= (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_11051_19559) ) (! (= (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_11051_53) ) (! (= (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_24440_24441) ) (! (= (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_11051_1203) ) (! (= (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_19545_22893) ) (! (= (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_19558_19559) ) (! (= (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_19545_53) ) (! (= (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_19545_11052) ) (! (= (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_24307_1887) ) (! (= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_19506) (SummandMask1 T@PolymorphicMapType_19506) (SummandMask2 T@PolymorphicMapType_19506) (o_2@@99 T@Ref) (f_4@@99 T@Field_23564_23569) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_19506) (SummandMask1@@0 T@PolymorphicMapType_19506) (SummandMask2@@0 T@PolymorphicMapType_19506) (o_2@@100 T@Ref) (f_4@@100 T@Field_23549_19559) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_19506) (SummandMask1@@1 T@PolymorphicMapType_19506) (SummandMask2@@1 T@PolymorphicMapType_19506) (o_2@@101 T@Ref) (f_4@@101 T@Field_23549_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_19506) (SummandMask1@@2 T@PolymorphicMapType_19506) (SummandMask2@@2 T@PolymorphicMapType_19506) (o_2@@102 T@Ref) (f_4@@102 T@Field_23582_23583) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_19506) (SummandMask1@@3 T@PolymorphicMapType_19506) (SummandMask2@@3 T@PolymorphicMapType_19506) (o_2@@103 T@Ref) (f_4@@103 T@Field_23549_1529) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_19506) (SummandMask1@@4 T@PolymorphicMapType_19506) (SummandMask2@@4 T@PolymorphicMapType_19506) (o_2@@104 T@Ref) (f_4@@104 T@Field_22888_22893) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_19506) (SummandMask1@@5 T@PolymorphicMapType_19506) (SummandMask2@@5 T@PolymorphicMapType_19506) (o_2@@105 T@Ref) (f_4@@105 T@Field_22874_19559) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_19506) (SummandMask1@@6 T@PolymorphicMapType_19506) (SummandMask2@@6 T@PolymorphicMapType_19506) (o_2@@106 T@Ref) (f_4@@106 T@Field_22874_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_19506) (SummandMask1@@7 T@PolymorphicMapType_19506) (SummandMask2@@7 T@PolymorphicMapType_19506) (o_2@@107 T@Ref) (f_4@@107 T@Field_22905_22906) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_19506) (SummandMask1@@8 T@PolymorphicMapType_19506) (SummandMask2@@8 T@PolymorphicMapType_19506) (o_2@@108 T@Ref) (f_4@@108 T@Field_22874_1203) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_19506) (SummandMask1@@9 T@PolymorphicMapType_19506) (SummandMask2@@9 T@PolymorphicMapType_19506) (o_2@@109 T@Ref) (f_4@@109 T@Field_25391_25396) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_19506) (SummandMask1@@10 T@PolymorphicMapType_19506) (SummandMask2@@10 T@PolymorphicMapType_19506) (o_2@@110 T@Ref) (f_4@@110 T@Field_11076_19559) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_19506) (SummandMask1@@11 T@PolymorphicMapType_19506) (SummandMask2@@11 T@PolymorphicMapType_19506) (o_2@@111 T@Ref) (f_4@@111 T@Field_11076_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_19506) (SummandMask1@@12 T@PolymorphicMapType_19506) (SummandMask2@@12 T@PolymorphicMapType_19506) (o_2@@112 T@Ref) (f_4@@112 T@Field_25378_25379) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_19506) (SummandMask1@@13 T@PolymorphicMapType_19506) (SummandMask2@@13 T@PolymorphicMapType_19506) (o_2@@113 T@Ref) (f_4@@113 T@Field_11076_1203) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_19506) (SummandMask1@@14 T@PolymorphicMapType_19506) (SummandMask2@@14 T@PolymorphicMapType_19506) (o_2@@114 T@Ref) (f_4@@114 T@Field_24453_24458) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_19506) (SummandMask1@@15 T@PolymorphicMapType_19506) (SummandMask2@@15 T@PolymorphicMapType_19506) (o_2@@115 T@Ref) (f_4@@115 T@Field_11051_19559) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_19506) (SummandMask1@@16 T@PolymorphicMapType_19506) (SummandMask2@@16 T@PolymorphicMapType_19506) (o_2@@116 T@Ref) (f_4@@116 T@Field_11051_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_19506) (SummandMask1@@17 T@PolymorphicMapType_19506) (SummandMask2@@17 T@PolymorphicMapType_19506) (o_2@@117 T@Ref) (f_4@@117 T@Field_24440_24441) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_19506) (SummandMask1@@18 T@PolymorphicMapType_19506) (SummandMask2@@18 T@PolymorphicMapType_19506) (o_2@@118 T@Ref) (f_4@@118 T@Field_11051_1203) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_19506) (SummandMask1@@19 T@PolymorphicMapType_19506) (SummandMask2@@19 T@PolymorphicMapType_19506) (o_2@@119 T@Ref) (f_4@@119 T@Field_19545_22893) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_19506) (SummandMask1@@20 T@PolymorphicMapType_19506) (SummandMask2@@20 T@PolymorphicMapType_19506) (o_2@@120 T@Ref) (f_4@@120 T@Field_19558_19559) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_19506) (SummandMask1@@21 T@PolymorphicMapType_19506) (SummandMask2@@21 T@PolymorphicMapType_19506) (o_2@@121 T@Ref) (f_4@@121 T@Field_19545_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_19506) (SummandMask1@@22 T@PolymorphicMapType_19506) (SummandMask2@@22 T@PolymorphicMapType_19506) (o_2@@122 T@Ref) (f_4@@122 T@Field_19545_11052) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_19506) (SummandMask1@@23 T@PolymorphicMapType_19506) (SummandMask2@@23 T@PolymorphicMapType_19506) (o_2@@123 T@Ref) (f_4@@123 T@Field_24307_1887) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@11 T@Ref) (arg4@@11 T@Ref) (arg5@@5 T@Ref) ) (! (= (|wand_1#sm| arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@5) (WandMaskField_10999 (|wand_1#ft| arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@5)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_10999 (|wand_1#ft| arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@5)))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_11051_11052 (P x@@7)) 0)
 :qid |stdinbpl.274:15|
 :skolemid |38|
 :pattern ( (P x@@7))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (getPredWandId_11076_11077 (Q x@@8)) 1)
 :qid |stdinbpl.330:15|
 :skolemid |44|
 :pattern ( (Q x@@8))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_19485) (o_46 T@Ref) (f_25 T@Field_23582_23583) (v T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@39) (store (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@39) o_46 f_25 v) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@39) (store (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@39) o_46 f_25 v) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_19485) (o_46@@0 T@Ref) (f_25@@0 T@Field_23564_23569) (v@@0 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@40 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@40) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@40) o_46@@0 f_25@@0 v@@0) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@40) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@40) o_46@@0 f_25@@0 v@@0) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_19485) (o_46@@1 T@Ref) (f_25@@1 T@Field_23549_1529) (v@@1 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@41) (store (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@41) o_46@@1 f_25@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@41) (store (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@41) o_46@@1 f_25@@1 v@@1)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_19485) (o_46@@2 T@Ref) (f_25@@2 T@Field_23549_19559) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@42) (store (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@42) o_46@@2 f_25@@2 v@@2) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@42) (store (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@42) o_46@@2 f_25@@2 v@@2) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_19485) (o_46@@3 T@Ref) (f_25@@3 T@Field_23549_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@43) (store (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@43) o_46@@3 f_25@@3 v@@3) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@43) (store (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@43) o_46@@3 f_25@@3 v@@3) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_19485) (o_46@@4 T@Ref) (f_25@@4 T@Field_25378_25379) (v@@4 T@FrameType) ) (! (succHeap Heap@@44 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@44) (store (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@44) o_46@@4 f_25@@4 v@@4) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@44) (store (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@44) o_46@@4 f_25@@4 v@@4) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_19485) (o_46@@5 T@Ref) (f_25@@5 T@Field_25391_25396) (v@@5 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@45 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@45) (store (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@45) o_46@@5 f_25@@5 v@@5) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@45) (store (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@45) o_46@@5 f_25@@5 v@@5) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_19485) (o_46@@6 T@Ref) (f_25@@6 T@Field_11076_1203) (v@@6 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@46) (store (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@46) o_46@@6 f_25@@6 v@@6) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@46) (store (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@46) o_46@@6 f_25@@6 v@@6) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_19485) (o_46@@7 T@Ref) (f_25@@7 T@Field_11076_19559) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@47) (store (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@47) o_46@@7 f_25@@7 v@@7) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@47) (store (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@47) o_46@@7 f_25@@7 v@@7) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_19485) (o_46@@8 T@Ref) (f_25@@8 T@Field_11076_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@48) (store (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@48) o_46@@8 f_25@@8 v@@8) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@48) (store (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@48) o_46@@8 f_25@@8 v@@8) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_19485) (o_46@@9 T@Ref) (f_25@@9 T@Field_24440_24441) (v@@9 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@49) (store (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@49) o_46@@9 f_25@@9 v@@9) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@49) (store (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@49) o_46@@9 f_25@@9 v@@9) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_19485) (o_46@@10 T@Ref) (f_25@@10 T@Field_24453_24458) (v@@10 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@50 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@50) (store (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@50) o_46@@10 f_25@@10 v@@10) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@50) (store (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@50) o_46@@10 f_25@@10 v@@10) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_19485) (o_46@@11 T@Ref) (f_25@@11 T@Field_11051_1203) (v@@11 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@51) (store (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@51) o_46@@11 f_25@@11 v@@11) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@51) (store (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@51) o_46@@11 f_25@@11 v@@11) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_19485) (o_46@@12 T@Ref) (f_25@@12 T@Field_11051_19559) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@52) (store (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@52) o_46@@12 f_25@@12 v@@12) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@52) (store (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@52) o_46@@12 f_25@@12 v@@12) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_19485) (o_46@@13 T@Ref) (f_25@@13 T@Field_11051_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@53) (store (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@53) o_46@@13 f_25@@13 v@@13) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@53) (store (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@53) o_46@@13 f_25@@13 v@@13) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_19485) (o_46@@14 T@Ref) (f_25@@14 T@Field_22905_22906) (v@@14 T@FrameType) ) (! (succHeap Heap@@54 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@54) (store (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@54) o_46@@14 f_25@@14 v@@14) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@54) (store (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@54) o_46@@14 f_25@@14 v@@14) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_19485) (o_46@@15 T@Ref) (f_25@@15 T@Field_22888_22893) (v@@15 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@55 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@55) (store (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@55) o_46@@15 f_25@@15 v@@15) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@55) (store (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@55) o_46@@15 f_25@@15 v@@15) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_19485) (o_46@@16 T@Ref) (f_25@@16 T@Field_22874_1203) (v@@16 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@56) (store (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@56) o_46@@16 f_25@@16 v@@16) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@56) (store (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@56) o_46@@16 f_25@@16 v@@16) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_19485) (o_46@@17 T@Ref) (f_25@@17 T@Field_22874_19559) (v@@17 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@57) (store (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@57) o_46@@17 f_25@@17 v@@17) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@57) (store (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@57) o_46@@17 f_25@@17 v@@17) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_19485) (o_46@@18 T@Ref) (f_25@@18 T@Field_22874_53) (v@@18 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@58) (store (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@58) o_46@@18 f_25@@18 v@@18) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@58) (store (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@58) o_46@@18 f_25@@18 v@@18) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_19485) (o_46@@19 T@Ref) (f_25@@19 T@Field_19545_11052) (v@@19 T@FrameType) ) (! (succHeap Heap@@59 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@59) (store (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@59) o_46@@19 f_25@@19 v@@19) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@59) (store (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@59) o_46@@19 f_25@@19 v@@19) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_19485) (o_46@@20 T@Ref) (f_25@@20 T@Field_19545_22893) (v@@20 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@60 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@60) (store (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@60) o_46@@20 f_25@@20 v@@20) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@60) (store (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@60) o_46@@20 f_25@@20 v@@20) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_19485) (o_46@@21 T@Ref) (f_25@@21 T@Field_24307_1887) (v@@21 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@61) (store (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@61) o_46@@21 f_25@@21 v@@21) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@61) (store (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@61) o_46@@21 f_25@@21 v@@21) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_19485) (o_46@@22 T@Ref) (f_25@@22 T@Field_19558_19559) (v@@22 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@62) (store (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@62) o_46@@22 f_25@@22 v@@22) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@62) (store (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@62) o_46@@22 f_25@@22 v@@22) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_19485) (o_46@@23 T@Ref) (f_25@@23 T@Field_19545_53) (v@@23 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_19485 (store (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@63) o_46@@23 f_25@@23 v@@23) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (store (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@63) o_46@@23 f_25@@23 v@@23) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@63)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_11051 (P x@@9)) (|P#sm| x@@9))
 :qid |stdinbpl.266:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_11051 (P x@@9)))
)))
(assert (forall ((x@@10 T@Ref) ) (! (= (PredicateMaskField_11076 (Q x@@10)) (|Q#sm| x@@10))
 :qid |stdinbpl.322:15|
 :skolemid |42|
 :pattern ( (PredicateMaskField_11076 (Q x@@10)))
)))
(assert (forall ((o_46@@24 T@Ref) (f_37 T@Field_19558_19559) (Heap@@64 T@PolymorphicMapType_19485) ) (!  (=> (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@64) o_46@@24 $allocated) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@64) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@64) o_46@@24 f_37) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@64) o_46@@24 f_37))
)))
(assert (forall ((p@@5 T@Field_25378_25379) (v_1@@4 T@FrameType) (q T@Field_25378_25379) (w@@4 T@FrameType) (r T@Field_25378_25379) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25378_25378 p@@5 v_1@@4 q w@@4) (InsidePredicate_25378_25378 q w@@4 r u)) (InsidePredicate_25378_25378 p@@5 v_1@@4 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_25378 p@@5 v_1@@4 q w@@4) (InsidePredicate_25378_25378 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_25378_25379) (v_1@@5 T@FrameType) (q@@0 T@Field_25378_25379) (w@@5 T@FrameType) (r@@0 T@Field_24440_24441) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_25378 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_25378_24440 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_25378_24440 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_25378 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_25378_24440 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_25378_25379) (v_1@@6 T@FrameType) (q@@1 T@Field_25378_25379) (w@@6 T@FrameType) (r@@1 T@Field_23582_23583) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_25378 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_25378_23549 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_25378_23549 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_25378 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_25378_23549 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_25378_25379) (v_1@@7 T@FrameType) (q@@2 T@Field_25378_25379) (w@@7 T@FrameType) (r@@2 T@Field_22905_22906) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_25378 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_25378_22874 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_25378_22874 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_25378 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_25378_22874 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_25378_25379) (v_1@@8 T@FrameType) (q@@3 T@Field_25378_25379) (w@@8 T@FrameType) (r@@3 T@Field_19545_11052) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_25378 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_25378_19545 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_25378_19545 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_25378 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_25378_19545 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_25378_25379) (v_1@@9 T@FrameType) (q@@4 T@Field_24440_24441) (w@@9 T@FrameType) (r@@4 T@Field_25378_25379) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_24440 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_24440_25378 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_25378_25378 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_24440 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_24440_25378 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_25378_25379) (v_1@@10 T@FrameType) (q@@5 T@Field_24440_24441) (w@@10 T@FrameType) (r@@5 T@Field_24440_24441) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_24440 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_24440_24440 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_25378_24440 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_24440 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_24440_24440 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_25378_25379) (v_1@@11 T@FrameType) (q@@6 T@Field_24440_24441) (w@@11 T@FrameType) (r@@6 T@Field_23582_23583) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_24440 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_24440_23549 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_25378_23549 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_24440 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_24440_23549 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_25378_25379) (v_1@@12 T@FrameType) (q@@7 T@Field_24440_24441) (w@@12 T@FrameType) (r@@7 T@Field_22905_22906) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_24440 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_24440_22874 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_25378_22874 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_24440 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_24440_22874 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_25378_25379) (v_1@@13 T@FrameType) (q@@8 T@Field_24440_24441) (w@@13 T@FrameType) (r@@8 T@Field_19545_11052) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_24440 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_24440_19545 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_25378_19545 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_24440 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_24440_19545 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_25378_25379) (v_1@@14 T@FrameType) (q@@9 T@Field_23582_23583) (w@@14 T@FrameType) (r@@9 T@Field_25378_25379) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_23549 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_23549_25378 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_25378_25378 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_23549 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_23549_25378 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_25378_25379) (v_1@@15 T@FrameType) (q@@10 T@Field_23582_23583) (w@@15 T@FrameType) (r@@10 T@Field_24440_24441) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_23549 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_23549_24440 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_25378_24440 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_23549 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_23549_24440 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_25378_25379) (v_1@@16 T@FrameType) (q@@11 T@Field_23582_23583) (w@@16 T@FrameType) (r@@11 T@Field_23582_23583) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_23549 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_23549_23549 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_25378_23549 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_23549 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_23549_23549 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_25378_25379) (v_1@@17 T@FrameType) (q@@12 T@Field_23582_23583) (w@@17 T@FrameType) (r@@12 T@Field_22905_22906) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_23549 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_23549_22874 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_25378_22874 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_23549 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_23549_22874 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_25378_25379) (v_1@@18 T@FrameType) (q@@13 T@Field_23582_23583) (w@@18 T@FrameType) (r@@13 T@Field_19545_11052) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_23549 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_23549_19545 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_25378_19545 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_23549 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_23549_19545 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_25378_25379) (v_1@@19 T@FrameType) (q@@14 T@Field_22905_22906) (w@@19 T@FrameType) (r@@14 T@Field_25378_25379) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_22874 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_22874_25378 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_25378_25378 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_22874 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_22874_25378 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_25378_25379) (v_1@@20 T@FrameType) (q@@15 T@Field_22905_22906) (w@@20 T@FrameType) (r@@15 T@Field_24440_24441) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_22874 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_22874_24440 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_25378_24440 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_22874 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_22874_24440 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_25378_25379) (v_1@@21 T@FrameType) (q@@16 T@Field_22905_22906) (w@@21 T@FrameType) (r@@16 T@Field_23582_23583) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_22874 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_22874_23549 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_25378_23549 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_22874 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_22874_23549 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_25378_25379) (v_1@@22 T@FrameType) (q@@17 T@Field_22905_22906) (w@@22 T@FrameType) (r@@17 T@Field_22905_22906) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_22874 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_22874_22874 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_25378_22874 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_22874 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_22874_22874 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_25378_25379) (v_1@@23 T@FrameType) (q@@18 T@Field_22905_22906) (w@@23 T@FrameType) (r@@18 T@Field_19545_11052) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_22874 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_22874_19545 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_25378_19545 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_22874 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_22874_19545 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_25378_25379) (v_1@@24 T@FrameType) (q@@19 T@Field_19545_11052) (w@@24 T@FrameType) (r@@19 T@Field_25378_25379) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_19545 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_19545_25378 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_25378_25378 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_19545 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_19545_25378 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_25378_25379) (v_1@@25 T@FrameType) (q@@20 T@Field_19545_11052) (w@@25 T@FrameType) (r@@20 T@Field_24440_24441) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_19545 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_19545_24440 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_25378_24440 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_19545 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_19545_24440 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_25378_25379) (v_1@@26 T@FrameType) (q@@21 T@Field_19545_11052) (w@@26 T@FrameType) (r@@21 T@Field_23582_23583) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_19545 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_19545_23549 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_25378_23549 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_19545 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_19545_23549 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_25378_25379) (v_1@@27 T@FrameType) (q@@22 T@Field_19545_11052) (w@@27 T@FrameType) (r@@22 T@Field_22905_22906) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_19545 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_19545_22874 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_25378_22874 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_19545 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_19545_22874 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_25378_25379) (v_1@@28 T@FrameType) (q@@23 T@Field_19545_11052) (w@@28 T@FrameType) (r@@23 T@Field_19545_11052) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_25378_19545 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_19545_19545 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_25378_19545 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25378_19545 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_19545_19545 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_24440_24441) (v_1@@29 T@FrameType) (q@@24 T@Field_25378_25379) (w@@29 T@FrameType) (r@@24 T@Field_25378_25379) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_25378 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_25378_25378 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_24440_25378 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_25378 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_25378_25378 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_24440_24441) (v_1@@30 T@FrameType) (q@@25 T@Field_25378_25379) (w@@30 T@FrameType) (r@@25 T@Field_24440_24441) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_25378 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_25378_24440 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_24440_24440 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_25378 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_25378_24440 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_24440_24441) (v_1@@31 T@FrameType) (q@@26 T@Field_25378_25379) (w@@31 T@FrameType) (r@@26 T@Field_23582_23583) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_25378 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_25378_23549 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_24440_23549 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_25378 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_25378_23549 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_24440_24441) (v_1@@32 T@FrameType) (q@@27 T@Field_25378_25379) (w@@32 T@FrameType) (r@@27 T@Field_22905_22906) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_25378 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_25378_22874 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_24440_22874 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_25378 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_25378_22874 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_24440_24441) (v_1@@33 T@FrameType) (q@@28 T@Field_25378_25379) (w@@33 T@FrameType) (r@@28 T@Field_19545_11052) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_25378 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_25378_19545 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_24440_19545 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_25378 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_25378_19545 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_24440_24441) (v_1@@34 T@FrameType) (q@@29 T@Field_24440_24441) (w@@34 T@FrameType) (r@@29 T@Field_25378_25379) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_24440 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_24440_25378 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_24440_25378 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_24440 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_24440_25378 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_24440_24441) (v_1@@35 T@FrameType) (q@@30 T@Field_24440_24441) (w@@35 T@FrameType) (r@@30 T@Field_24440_24441) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_24440 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_24440_24440 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_24440_24440 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_24440 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_24440_24440 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_24440_24441) (v_1@@36 T@FrameType) (q@@31 T@Field_24440_24441) (w@@36 T@FrameType) (r@@31 T@Field_23582_23583) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_24440 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_24440_23549 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_24440_23549 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_24440 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_24440_23549 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_24440_24441) (v_1@@37 T@FrameType) (q@@32 T@Field_24440_24441) (w@@37 T@FrameType) (r@@32 T@Field_22905_22906) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_24440 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_24440_22874 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_24440_22874 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_24440 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_24440_22874 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_24440_24441) (v_1@@38 T@FrameType) (q@@33 T@Field_24440_24441) (w@@38 T@FrameType) (r@@33 T@Field_19545_11052) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_24440 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_24440_19545 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_24440_19545 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_24440 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_24440_19545 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_24440_24441) (v_1@@39 T@FrameType) (q@@34 T@Field_23582_23583) (w@@39 T@FrameType) (r@@34 T@Field_25378_25379) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_23549 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_23549_25378 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_24440_25378 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_23549 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_23549_25378 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_24440_24441) (v_1@@40 T@FrameType) (q@@35 T@Field_23582_23583) (w@@40 T@FrameType) (r@@35 T@Field_24440_24441) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_23549 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_23549_24440 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_24440_24440 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_23549 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_23549_24440 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_24440_24441) (v_1@@41 T@FrameType) (q@@36 T@Field_23582_23583) (w@@41 T@FrameType) (r@@36 T@Field_23582_23583) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_23549 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_23549_23549 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_24440_23549 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_23549 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_23549_23549 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_24440_24441) (v_1@@42 T@FrameType) (q@@37 T@Field_23582_23583) (w@@42 T@FrameType) (r@@37 T@Field_22905_22906) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_23549 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_23549_22874 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_24440_22874 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_23549 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_23549_22874 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_24440_24441) (v_1@@43 T@FrameType) (q@@38 T@Field_23582_23583) (w@@43 T@FrameType) (r@@38 T@Field_19545_11052) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_23549 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_23549_19545 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_24440_19545 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_23549 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_23549_19545 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_24440_24441) (v_1@@44 T@FrameType) (q@@39 T@Field_22905_22906) (w@@44 T@FrameType) (r@@39 T@Field_25378_25379) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_22874 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_22874_25378 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_24440_25378 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_22874 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_22874_25378 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_24440_24441) (v_1@@45 T@FrameType) (q@@40 T@Field_22905_22906) (w@@45 T@FrameType) (r@@40 T@Field_24440_24441) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_22874 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_22874_24440 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_24440_24440 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_22874 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_22874_24440 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_24440_24441) (v_1@@46 T@FrameType) (q@@41 T@Field_22905_22906) (w@@46 T@FrameType) (r@@41 T@Field_23582_23583) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_22874 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_22874_23549 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_24440_23549 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_22874 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_22874_23549 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_24440_24441) (v_1@@47 T@FrameType) (q@@42 T@Field_22905_22906) (w@@47 T@FrameType) (r@@42 T@Field_22905_22906) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_22874 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_22874_22874 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_24440_22874 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_22874 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_22874_22874 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_24440_24441) (v_1@@48 T@FrameType) (q@@43 T@Field_22905_22906) (w@@48 T@FrameType) (r@@43 T@Field_19545_11052) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_22874 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_22874_19545 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_24440_19545 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_22874 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_22874_19545 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_24440_24441) (v_1@@49 T@FrameType) (q@@44 T@Field_19545_11052) (w@@49 T@FrameType) (r@@44 T@Field_25378_25379) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_19545 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_19545_25378 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_24440_25378 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_19545 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_19545_25378 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_24440_24441) (v_1@@50 T@FrameType) (q@@45 T@Field_19545_11052) (w@@50 T@FrameType) (r@@45 T@Field_24440_24441) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_19545 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_19545_24440 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_24440_24440 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_19545 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_19545_24440 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_24440_24441) (v_1@@51 T@FrameType) (q@@46 T@Field_19545_11052) (w@@51 T@FrameType) (r@@46 T@Field_23582_23583) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_19545 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_19545_23549 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_24440_23549 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_19545 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_19545_23549 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_24440_24441) (v_1@@52 T@FrameType) (q@@47 T@Field_19545_11052) (w@@52 T@FrameType) (r@@47 T@Field_22905_22906) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_19545 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_19545_22874 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_24440_22874 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_19545 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_19545_22874 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_24440_24441) (v_1@@53 T@FrameType) (q@@48 T@Field_19545_11052) (w@@53 T@FrameType) (r@@48 T@Field_19545_11052) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_24440_19545 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_19545_19545 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_24440_19545 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24440_19545 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_19545_19545 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_23582_23583) (v_1@@54 T@FrameType) (q@@49 T@Field_25378_25379) (w@@54 T@FrameType) (r@@49 T@Field_25378_25379) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_25378 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_25378_25378 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_23549_25378 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_25378 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_25378_25378 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_23582_23583) (v_1@@55 T@FrameType) (q@@50 T@Field_25378_25379) (w@@55 T@FrameType) (r@@50 T@Field_24440_24441) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_25378 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_25378_24440 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_23549_24440 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_25378 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_25378_24440 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_23582_23583) (v_1@@56 T@FrameType) (q@@51 T@Field_25378_25379) (w@@56 T@FrameType) (r@@51 T@Field_23582_23583) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_25378 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_25378_23549 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_23549_23549 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_25378 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_25378_23549 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_23582_23583) (v_1@@57 T@FrameType) (q@@52 T@Field_25378_25379) (w@@57 T@FrameType) (r@@52 T@Field_22905_22906) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_25378 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_25378_22874 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_23549_22874 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_25378 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_25378_22874 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_23582_23583) (v_1@@58 T@FrameType) (q@@53 T@Field_25378_25379) (w@@58 T@FrameType) (r@@53 T@Field_19545_11052) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_25378 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_25378_19545 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_23549_19545 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_25378 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_25378_19545 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_23582_23583) (v_1@@59 T@FrameType) (q@@54 T@Field_24440_24441) (w@@59 T@FrameType) (r@@54 T@Field_25378_25379) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_24440 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_24440_25378 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_23549_25378 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_24440 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_24440_25378 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_23582_23583) (v_1@@60 T@FrameType) (q@@55 T@Field_24440_24441) (w@@60 T@FrameType) (r@@55 T@Field_24440_24441) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_24440 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_24440_24440 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_23549_24440 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_24440 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_24440_24440 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_23582_23583) (v_1@@61 T@FrameType) (q@@56 T@Field_24440_24441) (w@@61 T@FrameType) (r@@56 T@Field_23582_23583) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_24440 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_24440_23549 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_23549_23549 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_24440 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_24440_23549 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_23582_23583) (v_1@@62 T@FrameType) (q@@57 T@Field_24440_24441) (w@@62 T@FrameType) (r@@57 T@Field_22905_22906) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_24440 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_24440_22874 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_23549_22874 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_24440 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_24440_22874 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_23582_23583) (v_1@@63 T@FrameType) (q@@58 T@Field_24440_24441) (w@@63 T@FrameType) (r@@58 T@Field_19545_11052) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_24440 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_24440_19545 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_23549_19545 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_24440 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_24440_19545 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_23582_23583) (v_1@@64 T@FrameType) (q@@59 T@Field_23582_23583) (w@@64 T@FrameType) (r@@59 T@Field_25378_25379) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_23549 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_23549_25378 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_23549_25378 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_23549 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_23549_25378 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_23582_23583) (v_1@@65 T@FrameType) (q@@60 T@Field_23582_23583) (w@@65 T@FrameType) (r@@60 T@Field_24440_24441) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_23549 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_23549_24440 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_23549_24440 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_23549 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_23549_24440 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_23582_23583) (v_1@@66 T@FrameType) (q@@61 T@Field_23582_23583) (w@@66 T@FrameType) (r@@61 T@Field_23582_23583) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_23549 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_23549_23549 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_23549_23549 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_23549 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_23549_23549 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_23582_23583) (v_1@@67 T@FrameType) (q@@62 T@Field_23582_23583) (w@@67 T@FrameType) (r@@62 T@Field_22905_22906) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_23549 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_23549_22874 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_23549_22874 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_23549 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_23549_22874 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_23582_23583) (v_1@@68 T@FrameType) (q@@63 T@Field_23582_23583) (w@@68 T@FrameType) (r@@63 T@Field_19545_11052) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_23549 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_23549_19545 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_23549_19545 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_23549 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_23549_19545 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_23582_23583) (v_1@@69 T@FrameType) (q@@64 T@Field_22905_22906) (w@@69 T@FrameType) (r@@64 T@Field_25378_25379) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_22874 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_22874_25378 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_23549_25378 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_22874 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_22874_25378 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_23582_23583) (v_1@@70 T@FrameType) (q@@65 T@Field_22905_22906) (w@@70 T@FrameType) (r@@65 T@Field_24440_24441) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_22874 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_22874_24440 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_23549_24440 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_22874 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_22874_24440 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_23582_23583) (v_1@@71 T@FrameType) (q@@66 T@Field_22905_22906) (w@@71 T@FrameType) (r@@66 T@Field_23582_23583) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_22874 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_22874_23549 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_23549_23549 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_22874 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_22874_23549 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_23582_23583) (v_1@@72 T@FrameType) (q@@67 T@Field_22905_22906) (w@@72 T@FrameType) (r@@67 T@Field_22905_22906) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_22874 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_22874_22874 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_23549_22874 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_22874 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_22874_22874 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_23582_23583) (v_1@@73 T@FrameType) (q@@68 T@Field_22905_22906) (w@@73 T@FrameType) (r@@68 T@Field_19545_11052) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_22874 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_22874_19545 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_23549_19545 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_22874 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_22874_19545 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_23582_23583) (v_1@@74 T@FrameType) (q@@69 T@Field_19545_11052) (w@@74 T@FrameType) (r@@69 T@Field_25378_25379) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_19545 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_19545_25378 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_23549_25378 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_19545 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_19545_25378 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_23582_23583) (v_1@@75 T@FrameType) (q@@70 T@Field_19545_11052) (w@@75 T@FrameType) (r@@70 T@Field_24440_24441) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_19545 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_19545_24440 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_23549_24440 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_19545 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_19545_24440 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_23582_23583) (v_1@@76 T@FrameType) (q@@71 T@Field_19545_11052) (w@@76 T@FrameType) (r@@71 T@Field_23582_23583) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_19545 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_19545_23549 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_23549_23549 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_19545 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_19545_23549 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_23582_23583) (v_1@@77 T@FrameType) (q@@72 T@Field_19545_11052) (w@@77 T@FrameType) (r@@72 T@Field_22905_22906) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_19545 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_19545_22874 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_23549_22874 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_19545 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_19545_22874 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_23582_23583) (v_1@@78 T@FrameType) (q@@73 T@Field_19545_11052) (w@@78 T@FrameType) (r@@73 T@Field_19545_11052) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_23549_19545 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_19545_19545 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_23549_19545 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23549_19545 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_19545_19545 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_22905_22906) (v_1@@79 T@FrameType) (q@@74 T@Field_25378_25379) (w@@79 T@FrameType) (r@@74 T@Field_25378_25379) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_25378 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_25378_25378 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_22874_25378 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_25378 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_25378_25378 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_22905_22906) (v_1@@80 T@FrameType) (q@@75 T@Field_25378_25379) (w@@80 T@FrameType) (r@@75 T@Field_24440_24441) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_25378 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_25378_24440 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_22874_24440 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_25378 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_25378_24440 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_22905_22906) (v_1@@81 T@FrameType) (q@@76 T@Field_25378_25379) (w@@81 T@FrameType) (r@@76 T@Field_23582_23583) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_25378 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_25378_23549 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_22874_23549 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_25378 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_25378_23549 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_22905_22906) (v_1@@82 T@FrameType) (q@@77 T@Field_25378_25379) (w@@82 T@FrameType) (r@@77 T@Field_22905_22906) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_25378 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_25378_22874 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_22874_22874 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_25378 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_25378_22874 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_22905_22906) (v_1@@83 T@FrameType) (q@@78 T@Field_25378_25379) (w@@83 T@FrameType) (r@@78 T@Field_19545_11052) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_25378 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_25378_19545 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_22874_19545 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_25378 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_25378_19545 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_22905_22906) (v_1@@84 T@FrameType) (q@@79 T@Field_24440_24441) (w@@84 T@FrameType) (r@@79 T@Field_25378_25379) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_24440 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_24440_25378 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_22874_25378 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_24440 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_24440_25378 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_22905_22906) (v_1@@85 T@FrameType) (q@@80 T@Field_24440_24441) (w@@85 T@FrameType) (r@@80 T@Field_24440_24441) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_24440 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_24440_24440 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_22874_24440 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_24440 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_24440_24440 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_22905_22906) (v_1@@86 T@FrameType) (q@@81 T@Field_24440_24441) (w@@86 T@FrameType) (r@@81 T@Field_23582_23583) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_24440 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_24440_23549 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_22874_23549 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_24440 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_24440_23549 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_22905_22906) (v_1@@87 T@FrameType) (q@@82 T@Field_24440_24441) (w@@87 T@FrameType) (r@@82 T@Field_22905_22906) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_24440 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_24440_22874 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_22874_22874 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_24440 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_24440_22874 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_22905_22906) (v_1@@88 T@FrameType) (q@@83 T@Field_24440_24441) (w@@88 T@FrameType) (r@@83 T@Field_19545_11052) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_24440 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_24440_19545 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_22874_19545 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_24440 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_24440_19545 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_22905_22906) (v_1@@89 T@FrameType) (q@@84 T@Field_23582_23583) (w@@89 T@FrameType) (r@@84 T@Field_25378_25379) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_23549 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_23549_25378 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_22874_25378 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_23549 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_23549_25378 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_22905_22906) (v_1@@90 T@FrameType) (q@@85 T@Field_23582_23583) (w@@90 T@FrameType) (r@@85 T@Field_24440_24441) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_23549 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_23549_24440 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_22874_24440 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_23549 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_23549_24440 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_22905_22906) (v_1@@91 T@FrameType) (q@@86 T@Field_23582_23583) (w@@91 T@FrameType) (r@@86 T@Field_23582_23583) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_23549 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_23549_23549 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_22874_23549 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_23549 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_23549_23549 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_22905_22906) (v_1@@92 T@FrameType) (q@@87 T@Field_23582_23583) (w@@92 T@FrameType) (r@@87 T@Field_22905_22906) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_23549 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_23549_22874 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_22874_22874 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_23549 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_23549_22874 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_22905_22906) (v_1@@93 T@FrameType) (q@@88 T@Field_23582_23583) (w@@93 T@FrameType) (r@@88 T@Field_19545_11052) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_23549 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_23549_19545 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_22874_19545 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_23549 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_23549_19545 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_22905_22906) (v_1@@94 T@FrameType) (q@@89 T@Field_22905_22906) (w@@94 T@FrameType) (r@@89 T@Field_25378_25379) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_22874 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_22874_25378 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_22874_25378 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_22874 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_22874_25378 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_22905_22906) (v_1@@95 T@FrameType) (q@@90 T@Field_22905_22906) (w@@95 T@FrameType) (r@@90 T@Field_24440_24441) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_22874 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_22874_24440 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_22874_24440 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_22874 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_22874_24440 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_22905_22906) (v_1@@96 T@FrameType) (q@@91 T@Field_22905_22906) (w@@96 T@FrameType) (r@@91 T@Field_23582_23583) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_22874 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_22874_23549 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_22874_23549 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_22874 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_22874_23549 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_22905_22906) (v_1@@97 T@FrameType) (q@@92 T@Field_22905_22906) (w@@97 T@FrameType) (r@@92 T@Field_22905_22906) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_22874 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_22874_22874 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_22874_22874 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_22874 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_22874_22874 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_22905_22906) (v_1@@98 T@FrameType) (q@@93 T@Field_22905_22906) (w@@98 T@FrameType) (r@@93 T@Field_19545_11052) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_22874 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_22874_19545 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_22874_19545 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_22874 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_22874_19545 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_22905_22906) (v_1@@99 T@FrameType) (q@@94 T@Field_19545_11052) (w@@99 T@FrameType) (r@@94 T@Field_25378_25379) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_19545 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_19545_25378 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_22874_25378 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_19545 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_19545_25378 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_22905_22906) (v_1@@100 T@FrameType) (q@@95 T@Field_19545_11052) (w@@100 T@FrameType) (r@@95 T@Field_24440_24441) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_19545 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_19545_24440 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_22874_24440 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_19545 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_19545_24440 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_22905_22906) (v_1@@101 T@FrameType) (q@@96 T@Field_19545_11052) (w@@101 T@FrameType) (r@@96 T@Field_23582_23583) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_19545 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_19545_23549 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_22874_23549 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_19545 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_19545_23549 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_22905_22906) (v_1@@102 T@FrameType) (q@@97 T@Field_19545_11052) (w@@102 T@FrameType) (r@@97 T@Field_22905_22906) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_19545 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_19545_22874 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_22874_22874 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_19545 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_19545_22874 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_22905_22906) (v_1@@103 T@FrameType) (q@@98 T@Field_19545_11052) (w@@103 T@FrameType) (r@@98 T@Field_19545_11052) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_22874_19545 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_19545_19545 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_22874_19545 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22874_19545 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_19545_19545 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_19545_11052) (v_1@@104 T@FrameType) (q@@99 T@Field_25378_25379) (w@@104 T@FrameType) (r@@99 T@Field_25378_25379) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_25378 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_25378_25378 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_19545_25378 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_25378 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_25378_25378 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_19545_11052) (v_1@@105 T@FrameType) (q@@100 T@Field_25378_25379) (w@@105 T@FrameType) (r@@100 T@Field_24440_24441) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_25378 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_25378_24440 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_19545_24440 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_25378 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_25378_24440 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_19545_11052) (v_1@@106 T@FrameType) (q@@101 T@Field_25378_25379) (w@@106 T@FrameType) (r@@101 T@Field_23582_23583) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_25378 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_25378_23549 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_19545_23549 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_25378 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_25378_23549 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_19545_11052) (v_1@@107 T@FrameType) (q@@102 T@Field_25378_25379) (w@@107 T@FrameType) (r@@102 T@Field_22905_22906) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_25378 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_25378_22874 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_19545_22874 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_25378 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_25378_22874 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_19545_11052) (v_1@@108 T@FrameType) (q@@103 T@Field_25378_25379) (w@@108 T@FrameType) (r@@103 T@Field_19545_11052) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_25378 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_25378_19545 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_19545_19545 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_25378 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_25378_19545 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_19545_11052) (v_1@@109 T@FrameType) (q@@104 T@Field_24440_24441) (w@@109 T@FrameType) (r@@104 T@Field_25378_25379) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_24440 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_24440_25378 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_19545_25378 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_24440 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_24440_25378 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_19545_11052) (v_1@@110 T@FrameType) (q@@105 T@Field_24440_24441) (w@@110 T@FrameType) (r@@105 T@Field_24440_24441) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_24440 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_24440_24440 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_19545_24440 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_24440 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_24440_24440 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_19545_11052) (v_1@@111 T@FrameType) (q@@106 T@Field_24440_24441) (w@@111 T@FrameType) (r@@106 T@Field_23582_23583) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_24440 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_24440_23549 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_19545_23549 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_24440 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_24440_23549 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_19545_11052) (v_1@@112 T@FrameType) (q@@107 T@Field_24440_24441) (w@@112 T@FrameType) (r@@107 T@Field_22905_22906) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_24440 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_24440_22874 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_19545_22874 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_24440 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_24440_22874 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_19545_11052) (v_1@@113 T@FrameType) (q@@108 T@Field_24440_24441) (w@@113 T@FrameType) (r@@108 T@Field_19545_11052) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_24440 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_24440_19545 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_19545_19545 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_24440 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_24440_19545 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_19545_11052) (v_1@@114 T@FrameType) (q@@109 T@Field_23582_23583) (w@@114 T@FrameType) (r@@109 T@Field_25378_25379) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_23549 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_23549_25378 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_19545_25378 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_23549 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_23549_25378 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_19545_11052) (v_1@@115 T@FrameType) (q@@110 T@Field_23582_23583) (w@@115 T@FrameType) (r@@110 T@Field_24440_24441) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_23549 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_23549_24440 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_19545_24440 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_23549 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_23549_24440 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_19545_11052) (v_1@@116 T@FrameType) (q@@111 T@Field_23582_23583) (w@@116 T@FrameType) (r@@111 T@Field_23582_23583) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_23549 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_23549_23549 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_19545_23549 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_23549 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_23549_23549 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_19545_11052) (v_1@@117 T@FrameType) (q@@112 T@Field_23582_23583) (w@@117 T@FrameType) (r@@112 T@Field_22905_22906) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_23549 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_23549_22874 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_19545_22874 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_23549 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_23549_22874 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_19545_11052) (v_1@@118 T@FrameType) (q@@113 T@Field_23582_23583) (w@@118 T@FrameType) (r@@113 T@Field_19545_11052) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_23549 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_23549_19545 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_19545_19545 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_23549 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_23549_19545 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_19545_11052) (v_1@@119 T@FrameType) (q@@114 T@Field_22905_22906) (w@@119 T@FrameType) (r@@114 T@Field_25378_25379) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_22874 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_22874_25378 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_19545_25378 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_22874 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_22874_25378 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_19545_11052) (v_1@@120 T@FrameType) (q@@115 T@Field_22905_22906) (w@@120 T@FrameType) (r@@115 T@Field_24440_24441) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_22874 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_22874_24440 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_19545_24440 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_22874 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_22874_24440 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_19545_11052) (v_1@@121 T@FrameType) (q@@116 T@Field_22905_22906) (w@@121 T@FrameType) (r@@116 T@Field_23582_23583) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_22874 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_22874_23549 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_19545_23549 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_22874 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_22874_23549 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_19545_11052) (v_1@@122 T@FrameType) (q@@117 T@Field_22905_22906) (w@@122 T@FrameType) (r@@117 T@Field_22905_22906) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_22874 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_22874_22874 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_19545_22874 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_22874 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_22874_22874 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_19545_11052) (v_1@@123 T@FrameType) (q@@118 T@Field_22905_22906) (w@@123 T@FrameType) (r@@118 T@Field_19545_11052) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_22874 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_22874_19545 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_19545_19545 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_22874 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_22874_19545 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_19545_11052) (v_1@@124 T@FrameType) (q@@119 T@Field_19545_11052) (w@@124 T@FrameType) (r@@119 T@Field_25378_25379) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_19545 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_19545_25378 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_19545_25378 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_19545 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_19545_25378 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_19545_11052) (v_1@@125 T@FrameType) (q@@120 T@Field_19545_11052) (w@@125 T@FrameType) (r@@120 T@Field_24440_24441) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_19545 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_19545_24440 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_19545_24440 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_19545 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_19545_24440 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_19545_11052) (v_1@@126 T@FrameType) (q@@121 T@Field_19545_11052) (w@@126 T@FrameType) (r@@121 T@Field_23582_23583) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_19545 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_19545_23549 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_19545_23549 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_19545 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_19545_23549 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_19545_11052) (v_1@@127 T@FrameType) (q@@122 T@Field_19545_11052) (w@@127 T@FrameType) (r@@122 T@Field_22905_22906) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_19545 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_19545_22874 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_19545_22874 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_19545 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_19545_22874 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_19545_11052) (v_1@@128 T@FrameType) (q@@123 T@Field_19545_11052) (w@@128 T@FrameType) (r@@123 T@Field_19545_11052) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_19545_19545 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_19545_19545 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_19545_19545 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19545_19545 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_19545_19545 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_19485) (ExhaleHeap@@36 T@PolymorphicMapType_19485) (Mask@@87 T@PolymorphicMapType_19506) (pm_f_48@@9 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_23549_11052 Mask@@87 null pm_f_48@@9) (IsPredicateField_10999_11000 pm_f_48@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48 T@Ref) (f_54@@24 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48 f_54@@24) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@65) o2_48 f_54@@24) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48 f_54@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48 f_54@@24))
)) (forall ((o2_48@@0 T@Ref) (f_54@@25 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@0 f_54@@25) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@65) o2_48@@0 f_54@@25) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@0 f_54@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@0 f_54@@25))
))) (forall ((o2_48@@1 T@Ref) (f_54@@26 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@1 f_54@@26) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@65) o2_48@@1 f_54@@26) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@1 f_54@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@1 f_54@@26))
))) (forall ((o2_48@@2 T@Ref) (f_54@@27 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@2 f_54@@27) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@65) o2_48@@2 f_54@@27) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@2 f_54@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@2 f_54@@27))
))) (forall ((o2_48@@3 T@Ref) (f_54@@28 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@3 f_54@@28) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@65) o2_48@@3 f_54@@28) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@3 f_54@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@3 f_54@@28))
))) (forall ((o2_48@@4 T@Ref) (f_54@@29 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@4 f_54@@29) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@65) o2_48@@4 f_54@@29) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@4 f_54@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@4 f_54@@29))
))) (forall ((o2_48@@5 T@Ref) (f_54@@30 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@5 f_54@@30) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@65) o2_48@@5 f_54@@30) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@5 f_54@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@5 f_54@@30))
))) (forall ((o2_48@@6 T@Ref) (f_54@@31 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@6 f_54@@31) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@65) o2_48@@6 f_54@@31) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@6 f_54@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@6 f_54@@31))
))) (forall ((o2_48@@7 T@Ref) (f_54@@32 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@7 f_54@@32) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@65) o2_48@@7 f_54@@32) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@7 f_54@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@7 f_54@@32))
))) (forall ((o2_48@@8 T@Ref) (f_54@@33 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@8 f_54@@33) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@65) o2_48@@8 f_54@@33) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@8 f_54@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@8 f_54@@33))
))) (forall ((o2_48@@9 T@Ref) (f_54@@34 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@9 f_54@@34) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@65) o2_48@@9 f_54@@34) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@9 f_54@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@9 f_54@@34))
))) (forall ((o2_48@@10 T@Ref) (f_54@@35 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@10 f_54@@35) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@65) o2_48@@10 f_54@@35) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@10 f_54@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@10 f_54@@35))
))) (forall ((o2_48@@11 T@Ref) (f_54@@36 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@11 f_54@@36) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@65) o2_48@@11 f_54@@36) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@11 f_54@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@11 f_54@@36))
))) (forall ((o2_48@@12 T@Ref) (f_54@@37 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@12 f_54@@37) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) o2_48@@12 f_54@@37) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@12 f_54@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@12 f_54@@37))
))) (forall ((o2_48@@13 T@Ref) (f_54@@38 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@13 f_54@@38) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@65) o2_48@@13 f_54@@38) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@13 f_54@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@13 f_54@@38))
))) (forall ((o2_48@@14 T@Ref) (f_54@@39 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@14 f_54@@39) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@65) o2_48@@14 f_54@@39) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@14 f_54@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@14 f_54@@39))
))) (forall ((o2_48@@15 T@Ref) (f_54@@40 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@15 f_54@@40) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@65) o2_48@@15 f_54@@40) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@15 f_54@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@15 f_54@@40))
))) (forall ((o2_48@@16 T@Ref) (f_54@@41 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@16 f_54@@41) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@65) o2_48@@16 f_54@@41) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@16 f_54@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@16 f_54@@41))
))) (forall ((o2_48@@17 T@Ref) (f_54@@42 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@17 f_54@@42) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@65) o2_48@@17 f_54@@42) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@17 f_54@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@17 f_54@@42))
))) (forall ((o2_48@@18 T@Ref) (f_54@@43 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@18 f_54@@43) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@65) o2_48@@18 f_54@@43) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@18 f_54@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@18 f_54@@43))
))) (forall ((o2_48@@19 T@Ref) (f_54@@44 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@19 f_54@@44) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@65) o2_48@@19 f_54@@44) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@19 f_54@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@19 f_54@@44))
))) (forall ((o2_48@@20 T@Ref) (f_54@@45 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@20 f_54@@45) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@65) o2_48@@20 f_54@@45) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@20 f_54@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@20 f_54@@45))
))) (forall ((o2_48@@21 T@Ref) (f_54@@46 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@21 f_54@@46) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@65) o2_48@@21 f_54@@46) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@21 f_54@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@21 f_54@@46))
))) (forall ((o2_48@@22 T@Ref) (f_54@@47 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@22 f_54@@47) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@65) o2_48@@22 f_54@@47) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@22 f_54@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@22 f_54@@47))
))) (forall ((o2_48@@23 T@Ref) (f_54@@48 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_48@@9))) o2_48@@23 f_54@@48) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@65) o2_48@@23 f_54@@48) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@23 f_54@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@36) o2_48@@23 f_54@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@36 Mask@@87) (IsPredicateField_10999_11000 pm_f_48@@9))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_19485) (ExhaleHeap@@37 T@PolymorphicMapType_19485) (Mask@@88 T@PolymorphicMapType_19506) (pm_f_48@@10 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_22874_11052 Mask@@88 null pm_f_48@@10) (IsPredicateField_10944_10945 pm_f_48@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48@@24 T@Ref) (f_54@@49 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@24 f_54@@49) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@66) o2_48@@24 f_54@@49) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@24 f_54@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@24 f_54@@49))
)) (forall ((o2_48@@25 T@Ref) (f_54@@50 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@25 f_54@@50) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@66) o2_48@@25 f_54@@50) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@25 f_54@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@25 f_54@@50))
))) (forall ((o2_48@@26 T@Ref) (f_54@@51 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@26 f_54@@51) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@66) o2_48@@26 f_54@@51) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@26 f_54@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@26 f_54@@51))
))) (forall ((o2_48@@27 T@Ref) (f_54@@52 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@27 f_54@@52) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@66) o2_48@@27 f_54@@52) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@27 f_54@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@27 f_54@@52))
))) (forall ((o2_48@@28 T@Ref) (f_54@@53 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@28 f_54@@53) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@66) o2_48@@28 f_54@@53) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@28 f_54@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@28 f_54@@53))
))) (forall ((o2_48@@29 T@Ref) (f_54@@54 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@29 f_54@@54) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@66) o2_48@@29 f_54@@54) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@29 f_54@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@29 f_54@@54))
))) (forall ((o2_48@@30 T@Ref) (f_54@@55 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@30 f_54@@55) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@66) o2_48@@30 f_54@@55) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@30 f_54@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@30 f_54@@55))
))) (forall ((o2_48@@31 T@Ref) (f_54@@56 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@31 f_54@@56) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@66) o2_48@@31 f_54@@56) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@31 f_54@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@31 f_54@@56))
))) (forall ((o2_48@@32 T@Ref) (f_54@@57 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@32 f_54@@57) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) o2_48@@32 f_54@@57) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@32 f_54@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@32 f_54@@57))
))) (forall ((o2_48@@33 T@Ref) (f_54@@58 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@33 f_54@@58) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@66) o2_48@@33 f_54@@58) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@33 f_54@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@33 f_54@@58))
))) (forall ((o2_48@@34 T@Ref) (f_54@@59 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@34 f_54@@59) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@66) o2_48@@34 f_54@@59) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@34 f_54@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@34 f_54@@59))
))) (forall ((o2_48@@35 T@Ref) (f_54@@60 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@35 f_54@@60) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@66) o2_48@@35 f_54@@60) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@35 f_54@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@35 f_54@@60))
))) (forall ((o2_48@@36 T@Ref) (f_54@@61 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@36 f_54@@61) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@66) o2_48@@36 f_54@@61) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@36 f_54@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@36 f_54@@61))
))) (forall ((o2_48@@37 T@Ref) (f_54@@62 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@37 f_54@@62) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@66) o2_48@@37 f_54@@62) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@37 f_54@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@37 f_54@@62))
))) (forall ((o2_48@@38 T@Ref) (f_54@@63 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@38 f_54@@63) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@66) o2_48@@38 f_54@@63) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@38 f_54@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@38 f_54@@63))
))) (forall ((o2_48@@39 T@Ref) (f_54@@64 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@39 f_54@@64) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@66) o2_48@@39 f_54@@64) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@39 f_54@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@39 f_54@@64))
))) (forall ((o2_48@@40 T@Ref) (f_54@@65 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@40 f_54@@65) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@66) o2_48@@40 f_54@@65) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@40 f_54@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@40 f_54@@65))
))) (forall ((o2_48@@41 T@Ref) (f_54@@66 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@41 f_54@@66) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@66) o2_48@@41 f_54@@66) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@41 f_54@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@41 f_54@@66))
))) (forall ((o2_48@@42 T@Ref) (f_54@@67 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@42 f_54@@67) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@66) o2_48@@42 f_54@@67) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@42 f_54@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@42 f_54@@67))
))) (forall ((o2_48@@43 T@Ref) (f_54@@68 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@43 f_54@@68) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@66) o2_48@@43 f_54@@68) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@43 f_54@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@43 f_54@@68))
))) (forall ((o2_48@@44 T@Ref) (f_54@@69 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@44 f_54@@69) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@66) o2_48@@44 f_54@@69) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@44 f_54@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@44 f_54@@69))
))) (forall ((o2_48@@45 T@Ref) (f_54@@70 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@45 f_54@@70) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@66) o2_48@@45 f_54@@70) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@45 f_54@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@45 f_54@@70))
))) (forall ((o2_48@@46 T@Ref) (f_54@@71 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@46 f_54@@71) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@66) o2_48@@46 f_54@@71) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@46 f_54@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@46 f_54@@71))
))) (forall ((o2_48@@47 T@Ref) (f_54@@72 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@47 f_54@@72) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@66) o2_48@@47 f_54@@72) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@47 f_54@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@47 f_54@@72))
))) (forall ((o2_48@@48 T@Ref) (f_54@@73 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_48@@10))) o2_48@@48 f_54@@73) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@66) o2_48@@48 f_54@@73) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@48 f_54@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@37) o2_48@@48 f_54@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@37 Mask@@88) (IsPredicateField_10944_10945 pm_f_48@@10))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_19485) (ExhaleHeap@@38 T@PolymorphicMapType_19485) (Mask@@89 T@PolymorphicMapType_19506) (pm_f_48@@11 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_19545_11052 Mask@@89 null pm_f_48@@11) (IsPredicateField_19545_69776 pm_f_48@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48@@49 T@Ref) (f_54@@74 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@49 f_54@@74) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@67) o2_48@@49 f_54@@74) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@49 f_54@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@49 f_54@@74))
)) (forall ((o2_48@@50 T@Ref) (f_54@@75 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@50 f_54@@75) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@67) o2_48@@50 f_54@@75) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@50 f_54@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@50 f_54@@75))
))) (forall ((o2_48@@51 T@Ref) (f_54@@76 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@51 f_54@@76) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@67) o2_48@@51 f_54@@76) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@51 f_54@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@51 f_54@@76))
))) (forall ((o2_48@@52 T@Ref) (f_54@@77 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@52 f_54@@77) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) o2_48@@52 f_54@@77) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@52 f_54@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@52 f_54@@77))
))) (forall ((o2_48@@53 T@Ref) (f_54@@78 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@53 f_54@@78) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@67) o2_48@@53 f_54@@78) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@53 f_54@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@53 f_54@@78))
))) (forall ((o2_48@@54 T@Ref) (f_54@@79 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@54 f_54@@79) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@67) o2_48@@54 f_54@@79) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@54 f_54@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@54 f_54@@79))
))) (forall ((o2_48@@55 T@Ref) (f_54@@80 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@55 f_54@@80) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@67) o2_48@@55 f_54@@80) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@55 f_54@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@55 f_54@@80))
))) (forall ((o2_48@@56 T@Ref) (f_54@@81 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@56 f_54@@81) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@67) o2_48@@56 f_54@@81) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@56 f_54@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@56 f_54@@81))
))) (forall ((o2_48@@57 T@Ref) (f_54@@82 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@57 f_54@@82) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@67) o2_48@@57 f_54@@82) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@57 f_54@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@57 f_54@@82))
))) (forall ((o2_48@@58 T@Ref) (f_54@@83 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@58 f_54@@83) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@67) o2_48@@58 f_54@@83) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@58 f_54@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@58 f_54@@83))
))) (forall ((o2_48@@59 T@Ref) (f_54@@84 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@59 f_54@@84) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@67) o2_48@@59 f_54@@84) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@59 f_54@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@59 f_54@@84))
))) (forall ((o2_48@@60 T@Ref) (f_54@@85 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@60 f_54@@85) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@67) o2_48@@60 f_54@@85) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@60 f_54@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@60 f_54@@85))
))) (forall ((o2_48@@61 T@Ref) (f_54@@86 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@61 f_54@@86) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@67) o2_48@@61 f_54@@86) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@61 f_54@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@61 f_54@@86))
))) (forall ((o2_48@@62 T@Ref) (f_54@@87 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@62 f_54@@87) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@67) o2_48@@62 f_54@@87) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@62 f_54@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@62 f_54@@87))
))) (forall ((o2_48@@63 T@Ref) (f_54@@88 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@63 f_54@@88) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@67) o2_48@@63 f_54@@88) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@63 f_54@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@63 f_54@@88))
))) (forall ((o2_48@@64 T@Ref) (f_54@@89 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@64 f_54@@89) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@67) o2_48@@64 f_54@@89) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@64 f_54@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@64 f_54@@89))
))) (forall ((o2_48@@65 T@Ref) (f_54@@90 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@65 f_54@@90) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@67) o2_48@@65 f_54@@90) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@65 f_54@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@65 f_54@@90))
))) (forall ((o2_48@@66 T@Ref) (f_54@@91 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@66 f_54@@91) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@67) o2_48@@66 f_54@@91) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@66 f_54@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@66 f_54@@91))
))) (forall ((o2_48@@67 T@Ref) (f_54@@92 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@67 f_54@@92) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@67) o2_48@@67 f_54@@92) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@67 f_54@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@67 f_54@@92))
))) (forall ((o2_48@@68 T@Ref) (f_54@@93 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@68 f_54@@93) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@67) o2_48@@68 f_54@@93) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@68 f_54@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@68 f_54@@93))
))) (forall ((o2_48@@69 T@Ref) (f_54@@94 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@69 f_54@@94) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@67) o2_48@@69 f_54@@94) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@69 f_54@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@69 f_54@@94))
))) (forall ((o2_48@@70 T@Ref) (f_54@@95 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@70 f_54@@95) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@67) o2_48@@70 f_54@@95) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@70 f_54@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@70 f_54@@95))
))) (forall ((o2_48@@71 T@Ref) (f_54@@96 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@71 f_54@@96) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@67) o2_48@@71 f_54@@96) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@71 f_54@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@71 f_54@@96))
))) (forall ((o2_48@@72 T@Ref) (f_54@@97 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@72 f_54@@97) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@67) o2_48@@72 f_54@@97) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@72 f_54@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@72 f_54@@97))
))) (forall ((o2_48@@73 T@Ref) (f_54@@98 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_48@@11))) o2_48@@73 f_54@@98) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@67) o2_48@@73 f_54@@98) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@73 f_54@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@38) o2_48@@73 f_54@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@38 Mask@@89) (IsPredicateField_19545_69776 pm_f_48@@11))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_19485) (ExhaleHeap@@39 T@PolymorphicMapType_19485) (Mask@@90 T@PolymorphicMapType_19506) (pm_f_48@@12 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_11076_11077 Mask@@90 null pm_f_48@@12) (IsPredicateField_11076_11077 pm_f_48@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48@@74 T@Ref) (f_54@@99 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@74 f_54@@99) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@68) o2_48@@74 f_54@@99) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@74 f_54@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@74 f_54@@99))
)) (forall ((o2_48@@75 T@Ref) (f_54@@100 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@75 f_54@@100) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@68) o2_48@@75 f_54@@100) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@75 f_54@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@75 f_54@@100))
))) (forall ((o2_48@@76 T@Ref) (f_54@@101 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@76 f_54@@101) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@68) o2_48@@76 f_54@@101) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@76 f_54@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@76 f_54@@101))
))) (forall ((o2_48@@77 T@Ref) (f_54@@102 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@77 f_54@@102) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@68) o2_48@@77 f_54@@102) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@77 f_54@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@77 f_54@@102))
))) (forall ((o2_48@@78 T@Ref) (f_54@@103 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@78 f_54@@103) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@68) o2_48@@78 f_54@@103) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@78 f_54@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@78 f_54@@103))
))) (forall ((o2_48@@79 T@Ref) (f_54@@104 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@79 f_54@@104) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@68) o2_48@@79 f_54@@104) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@79 f_54@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@79 f_54@@104))
))) (forall ((o2_48@@80 T@Ref) (f_54@@105 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@80 f_54@@105) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@68) o2_48@@80 f_54@@105) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@80 f_54@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@80 f_54@@105))
))) (forall ((o2_48@@81 T@Ref) (f_54@@106 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@81 f_54@@106) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@68) o2_48@@81 f_54@@106) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@81 f_54@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@81 f_54@@106))
))) (forall ((o2_48@@82 T@Ref) (f_54@@107 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@82 f_54@@107) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@68) o2_48@@82 f_54@@107) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@82 f_54@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@82 f_54@@107))
))) (forall ((o2_48@@83 T@Ref) (f_54@@108 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@83 f_54@@108) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@68) o2_48@@83 f_54@@108) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@83 f_54@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@83 f_54@@108))
))) (forall ((o2_48@@84 T@Ref) (f_54@@109 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@84 f_54@@109) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@68) o2_48@@84 f_54@@109) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@84 f_54@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@84 f_54@@109))
))) (forall ((o2_48@@85 T@Ref) (f_54@@110 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@85 f_54@@110) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@68) o2_48@@85 f_54@@110) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@85 f_54@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@85 f_54@@110))
))) (forall ((o2_48@@86 T@Ref) (f_54@@111 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@86 f_54@@111) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@68) o2_48@@86 f_54@@111) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@86 f_54@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@86 f_54@@111))
))) (forall ((o2_48@@87 T@Ref) (f_54@@112 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@87 f_54@@112) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@68) o2_48@@87 f_54@@112) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@87 f_54@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@87 f_54@@112))
))) (forall ((o2_48@@88 T@Ref) (f_54@@113 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@88 f_54@@113) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@68) o2_48@@88 f_54@@113) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@88 f_54@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@88 f_54@@113))
))) (forall ((o2_48@@89 T@Ref) (f_54@@114 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@89 f_54@@114) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@68) o2_48@@89 f_54@@114) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@89 f_54@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@89 f_54@@114))
))) (forall ((o2_48@@90 T@Ref) (f_54@@115 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@90 f_54@@115) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@68) o2_48@@90 f_54@@115) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@90 f_54@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@90 f_54@@115))
))) (forall ((o2_48@@91 T@Ref) (f_54@@116 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@91 f_54@@116) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@68) o2_48@@91 f_54@@116) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@91 f_54@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@91 f_54@@116))
))) (forall ((o2_48@@92 T@Ref) (f_54@@117 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@92 f_54@@117) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@68) o2_48@@92 f_54@@117) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@92 f_54@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@92 f_54@@117))
))) (forall ((o2_48@@93 T@Ref) (f_54@@118 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@93 f_54@@118) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@68) o2_48@@93 f_54@@118) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@93 f_54@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@93 f_54@@118))
))) (forall ((o2_48@@94 T@Ref) (f_54@@119 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@94 f_54@@119) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@68) o2_48@@94 f_54@@119) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@94 f_54@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@94 f_54@@119))
))) (forall ((o2_48@@95 T@Ref) (f_54@@120 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@95 f_54@@120) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@68) o2_48@@95 f_54@@120) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@95 f_54@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@95 f_54@@120))
))) (forall ((o2_48@@96 T@Ref) (f_54@@121 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@96 f_54@@121) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@68) o2_48@@96 f_54@@121) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@96 f_54@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@96 f_54@@121))
))) (forall ((o2_48@@97 T@Ref) (f_54@@122 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@97 f_54@@122) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) o2_48@@97 f_54@@122) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@97 f_54@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@97 f_54@@122))
))) (forall ((o2_48@@98 T@Ref) (f_54@@123 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_48@@12))) o2_48@@98 f_54@@123) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@68) o2_48@@98 f_54@@123) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@98 f_54@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@39) o2_48@@98 f_54@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@39 Mask@@90) (IsPredicateField_11076_11077 pm_f_48@@12))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_19485) (ExhaleHeap@@40 T@PolymorphicMapType_19485) (Mask@@91 T@PolymorphicMapType_19506) (pm_f_48@@13 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_11051_11052 Mask@@91 null pm_f_48@@13) (IsPredicateField_11051_11052 pm_f_48@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48@@99 T@Ref) (f_54@@124 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@99 f_54@@124) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@69) o2_48@@99 f_54@@124) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@99 f_54@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@99 f_54@@124))
)) (forall ((o2_48@@100 T@Ref) (f_54@@125 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@100 f_54@@125) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@69) o2_48@@100 f_54@@125) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@100 f_54@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@100 f_54@@125))
))) (forall ((o2_48@@101 T@Ref) (f_54@@126 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@101 f_54@@126) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@69) o2_48@@101 f_54@@126) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@101 f_54@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@101 f_54@@126))
))) (forall ((o2_48@@102 T@Ref) (f_54@@127 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@102 f_54@@127) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@69) o2_48@@102 f_54@@127) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@102 f_54@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@102 f_54@@127))
))) (forall ((o2_48@@103 T@Ref) (f_54@@128 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@103 f_54@@128) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@69) o2_48@@103 f_54@@128) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@103 f_54@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@103 f_54@@128))
))) (forall ((o2_48@@104 T@Ref) (f_54@@129 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@104 f_54@@129) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@69) o2_48@@104 f_54@@129) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@104 f_54@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@104 f_54@@129))
))) (forall ((o2_48@@105 T@Ref) (f_54@@130 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@105 f_54@@130) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@69) o2_48@@105 f_54@@130) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@105 f_54@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@105 f_54@@130))
))) (forall ((o2_48@@106 T@Ref) (f_54@@131 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@106 f_54@@131) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@69) o2_48@@106 f_54@@131) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@106 f_54@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@106 f_54@@131))
))) (forall ((o2_48@@107 T@Ref) (f_54@@132 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@107 f_54@@132) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@69) o2_48@@107 f_54@@132) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@107 f_54@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@107 f_54@@132))
))) (forall ((o2_48@@108 T@Ref) (f_54@@133 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@108 f_54@@133) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@69) o2_48@@108 f_54@@133) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@108 f_54@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@108 f_54@@133))
))) (forall ((o2_48@@109 T@Ref) (f_54@@134 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@109 f_54@@134) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@69) o2_48@@109 f_54@@134) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@109 f_54@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@109 f_54@@134))
))) (forall ((o2_48@@110 T@Ref) (f_54@@135 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@110 f_54@@135) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@69) o2_48@@110 f_54@@135) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@110 f_54@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@110 f_54@@135))
))) (forall ((o2_48@@111 T@Ref) (f_54@@136 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@111 f_54@@136) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@69) o2_48@@111 f_54@@136) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@111 f_54@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@111 f_54@@136))
))) (forall ((o2_48@@112 T@Ref) (f_54@@137 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@112 f_54@@137) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@69) o2_48@@112 f_54@@137) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@112 f_54@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@112 f_54@@137))
))) (forall ((o2_48@@113 T@Ref) (f_54@@138 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@113 f_54@@138) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@69) o2_48@@113 f_54@@138) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@113 f_54@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@113 f_54@@138))
))) (forall ((o2_48@@114 T@Ref) (f_54@@139 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@114 f_54@@139) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@69) o2_48@@114 f_54@@139) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@114 f_54@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@114 f_54@@139))
))) (forall ((o2_48@@115 T@Ref) (f_54@@140 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@115 f_54@@140) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@69) o2_48@@115 f_54@@140) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@115 f_54@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@115 f_54@@140))
))) (forall ((o2_48@@116 T@Ref) (f_54@@141 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@116 f_54@@141) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@69) o2_48@@116 f_54@@141) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@116 f_54@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@116 f_54@@141))
))) (forall ((o2_48@@117 T@Ref) (f_54@@142 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@117 f_54@@142) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) o2_48@@117 f_54@@142) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@117 f_54@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@117 f_54@@142))
))) (forall ((o2_48@@118 T@Ref) (f_54@@143 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@118 f_54@@143) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@69) o2_48@@118 f_54@@143) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@118 f_54@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@118 f_54@@143))
))) (forall ((o2_48@@119 T@Ref) (f_54@@144 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@119 f_54@@144) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@69) o2_48@@119 f_54@@144) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@119 f_54@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@119 f_54@@144))
))) (forall ((o2_48@@120 T@Ref) (f_54@@145 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@120 f_54@@145) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@69) o2_48@@120 f_54@@145) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@120 f_54@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@120 f_54@@145))
))) (forall ((o2_48@@121 T@Ref) (f_54@@146 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@121 f_54@@146) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@69) o2_48@@121 f_54@@146) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@121 f_54@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@121 f_54@@146))
))) (forall ((o2_48@@122 T@Ref) (f_54@@147 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@122 f_54@@147) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@69) o2_48@@122 f_54@@147) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@122 f_54@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@122 f_54@@147))
))) (forall ((o2_48@@123 T@Ref) (f_54@@148 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_48@@13))) o2_48@@123 f_54@@148) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@69) o2_48@@123 f_54@@148) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@123 f_54@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@40) o2_48@@123 f_54@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@40 Mask@@91) (IsPredicateField_11051_11052 pm_f_48@@13))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_19485) (ExhaleHeap@@41 T@PolymorphicMapType_19485) (Mask@@92 T@PolymorphicMapType_19506) (pm_f_48@@14 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_23549_11052 Mask@@92 null pm_f_48@@14) (IsWandField_10999_11000 pm_f_48@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48@@124 T@Ref) (f_54@@149 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@124 f_54@@149) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@70) o2_48@@124 f_54@@149) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@124 f_54@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@124 f_54@@149))
)) (forall ((o2_48@@125 T@Ref) (f_54@@150 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@125 f_54@@150) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@70) o2_48@@125 f_54@@150) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@125 f_54@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@125 f_54@@150))
))) (forall ((o2_48@@126 T@Ref) (f_54@@151 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@126 f_54@@151) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@70) o2_48@@126 f_54@@151) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@126 f_54@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@126 f_54@@151))
))) (forall ((o2_48@@127 T@Ref) (f_54@@152 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@127 f_54@@152) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@70) o2_48@@127 f_54@@152) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@127 f_54@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@127 f_54@@152))
))) (forall ((o2_48@@128 T@Ref) (f_54@@153 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@128 f_54@@153) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@70) o2_48@@128 f_54@@153) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@128 f_54@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@128 f_54@@153))
))) (forall ((o2_48@@129 T@Ref) (f_54@@154 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@129 f_54@@154) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@70) o2_48@@129 f_54@@154) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@129 f_54@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@129 f_54@@154))
))) (forall ((o2_48@@130 T@Ref) (f_54@@155 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@130 f_54@@155) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@70) o2_48@@130 f_54@@155) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@130 f_54@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@130 f_54@@155))
))) (forall ((o2_48@@131 T@Ref) (f_54@@156 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@131 f_54@@156) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@70) o2_48@@131 f_54@@156) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@131 f_54@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@131 f_54@@156))
))) (forall ((o2_48@@132 T@Ref) (f_54@@157 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@132 f_54@@157) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@70) o2_48@@132 f_54@@157) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@132 f_54@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@132 f_54@@157))
))) (forall ((o2_48@@133 T@Ref) (f_54@@158 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@133 f_54@@158) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@70) o2_48@@133 f_54@@158) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@133 f_54@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@133 f_54@@158))
))) (forall ((o2_48@@134 T@Ref) (f_54@@159 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@134 f_54@@159) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@70) o2_48@@134 f_54@@159) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@134 f_54@@159)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@134 f_54@@159))
))) (forall ((o2_48@@135 T@Ref) (f_54@@160 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@135 f_54@@160) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@70) o2_48@@135 f_54@@160) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@135 f_54@@160)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@135 f_54@@160))
))) (forall ((o2_48@@136 T@Ref) (f_54@@161 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@136 f_54@@161) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@70) o2_48@@136 f_54@@161) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@136 f_54@@161)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@136 f_54@@161))
))) (forall ((o2_48@@137 T@Ref) (f_54@@162 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@137 f_54@@162) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) o2_48@@137 f_54@@162) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@137 f_54@@162)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@137 f_54@@162))
))) (forall ((o2_48@@138 T@Ref) (f_54@@163 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@138 f_54@@163) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@70) o2_48@@138 f_54@@163) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@138 f_54@@163)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@138 f_54@@163))
))) (forall ((o2_48@@139 T@Ref) (f_54@@164 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@139 f_54@@164) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@70) o2_48@@139 f_54@@164) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@139 f_54@@164)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@139 f_54@@164))
))) (forall ((o2_48@@140 T@Ref) (f_54@@165 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@140 f_54@@165) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@70) o2_48@@140 f_54@@165) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@140 f_54@@165)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@140 f_54@@165))
))) (forall ((o2_48@@141 T@Ref) (f_54@@166 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@141 f_54@@166) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@70) o2_48@@141 f_54@@166) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@141 f_54@@166)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@141 f_54@@166))
))) (forall ((o2_48@@142 T@Ref) (f_54@@167 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@142 f_54@@167) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@70) o2_48@@142 f_54@@167) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@142 f_54@@167)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@142 f_54@@167))
))) (forall ((o2_48@@143 T@Ref) (f_54@@168 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@143 f_54@@168) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@70) o2_48@@143 f_54@@168) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@143 f_54@@168)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@143 f_54@@168))
))) (forall ((o2_48@@144 T@Ref) (f_54@@169 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@144 f_54@@169) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@70) o2_48@@144 f_54@@169) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@144 f_54@@169)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@144 f_54@@169))
))) (forall ((o2_48@@145 T@Ref) (f_54@@170 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@145 f_54@@170) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@70) o2_48@@145 f_54@@170) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@145 f_54@@170)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@145 f_54@@170))
))) (forall ((o2_48@@146 T@Ref) (f_54@@171 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@146 f_54@@171) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@70) o2_48@@146 f_54@@171) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@146 f_54@@171)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@146 f_54@@171))
))) (forall ((o2_48@@147 T@Ref) (f_54@@172 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@147 f_54@@172) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@70) o2_48@@147 f_54@@172) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@147 f_54@@172)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@147 f_54@@172))
))) (forall ((o2_48@@148 T@Ref) (f_54@@173 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_48@@14))) o2_48@@148 f_54@@173) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@70) o2_48@@148 f_54@@173) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@148 f_54@@173)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@41) o2_48@@148 f_54@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@41 Mask@@92) (IsWandField_10999_11000 pm_f_48@@14))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_19485) (ExhaleHeap@@42 T@PolymorphicMapType_19485) (Mask@@93 T@PolymorphicMapType_19506) (pm_f_48@@15 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_22874_11052 Mask@@93 null pm_f_48@@15) (IsWandField_10944_10945 pm_f_48@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48@@149 T@Ref) (f_54@@174 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@149 f_54@@174) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@71) o2_48@@149 f_54@@174) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@149 f_54@@174)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@149 f_54@@174))
)) (forall ((o2_48@@150 T@Ref) (f_54@@175 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@150 f_54@@175) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@71) o2_48@@150 f_54@@175) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@150 f_54@@175)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@150 f_54@@175))
))) (forall ((o2_48@@151 T@Ref) (f_54@@176 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@151 f_54@@176) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@71) o2_48@@151 f_54@@176) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@151 f_54@@176)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@151 f_54@@176))
))) (forall ((o2_48@@152 T@Ref) (f_54@@177 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@152 f_54@@177) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@71) o2_48@@152 f_54@@177) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@152 f_54@@177)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@152 f_54@@177))
))) (forall ((o2_48@@153 T@Ref) (f_54@@178 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@153 f_54@@178) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@71) o2_48@@153 f_54@@178) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@153 f_54@@178)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@153 f_54@@178))
))) (forall ((o2_48@@154 T@Ref) (f_54@@179 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@154 f_54@@179) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@71) o2_48@@154 f_54@@179) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@154 f_54@@179)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@154 f_54@@179))
))) (forall ((o2_48@@155 T@Ref) (f_54@@180 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@155 f_54@@180) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@71) o2_48@@155 f_54@@180) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@155 f_54@@180)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@155 f_54@@180))
))) (forall ((o2_48@@156 T@Ref) (f_54@@181 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@156 f_54@@181) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@71) o2_48@@156 f_54@@181) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@156 f_54@@181)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@156 f_54@@181))
))) (forall ((o2_48@@157 T@Ref) (f_54@@182 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@157 f_54@@182) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) o2_48@@157 f_54@@182) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@157 f_54@@182)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@157 f_54@@182))
))) (forall ((o2_48@@158 T@Ref) (f_54@@183 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@158 f_54@@183) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@71) o2_48@@158 f_54@@183) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@158 f_54@@183)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@158 f_54@@183))
))) (forall ((o2_48@@159 T@Ref) (f_54@@184 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@159 f_54@@184) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@71) o2_48@@159 f_54@@184) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@159 f_54@@184)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@159 f_54@@184))
))) (forall ((o2_48@@160 T@Ref) (f_54@@185 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@160 f_54@@185) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@71) o2_48@@160 f_54@@185) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@160 f_54@@185)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@160 f_54@@185))
))) (forall ((o2_48@@161 T@Ref) (f_54@@186 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@161 f_54@@186) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@71) o2_48@@161 f_54@@186) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@161 f_54@@186)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@161 f_54@@186))
))) (forall ((o2_48@@162 T@Ref) (f_54@@187 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@162 f_54@@187) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@71) o2_48@@162 f_54@@187) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@162 f_54@@187)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@162 f_54@@187))
))) (forall ((o2_48@@163 T@Ref) (f_54@@188 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@163 f_54@@188) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@71) o2_48@@163 f_54@@188) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@163 f_54@@188)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@163 f_54@@188))
))) (forall ((o2_48@@164 T@Ref) (f_54@@189 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@164 f_54@@189) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@71) o2_48@@164 f_54@@189) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@164 f_54@@189)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@164 f_54@@189))
))) (forall ((o2_48@@165 T@Ref) (f_54@@190 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@165 f_54@@190) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@71) o2_48@@165 f_54@@190) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@165 f_54@@190)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@165 f_54@@190))
))) (forall ((o2_48@@166 T@Ref) (f_54@@191 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@166 f_54@@191) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@71) o2_48@@166 f_54@@191) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@166 f_54@@191)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@166 f_54@@191))
))) (forall ((o2_48@@167 T@Ref) (f_54@@192 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@167 f_54@@192) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@71) o2_48@@167 f_54@@192) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@167 f_54@@192)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@167 f_54@@192))
))) (forall ((o2_48@@168 T@Ref) (f_54@@193 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@168 f_54@@193) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@71) o2_48@@168 f_54@@193) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@168 f_54@@193)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@168 f_54@@193))
))) (forall ((o2_48@@169 T@Ref) (f_54@@194 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@169 f_54@@194) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@71) o2_48@@169 f_54@@194) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@169 f_54@@194)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@169 f_54@@194))
))) (forall ((o2_48@@170 T@Ref) (f_54@@195 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@170 f_54@@195) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@71) o2_48@@170 f_54@@195) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@170 f_54@@195)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@170 f_54@@195))
))) (forall ((o2_48@@171 T@Ref) (f_54@@196 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@171 f_54@@196) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@71) o2_48@@171 f_54@@196) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@171 f_54@@196)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@171 f_54@@196))
))) (forall ((o2_48@@172 T@Ref) (f_54@@197 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@172 f_54@@197) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@71) o2_48@@172 f_54@@197) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@172 f_54@@197)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@172 f_54@@197))
))) (forall ((o2_48@@173 T@Ref) (f_54@@198 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_48@@15))) o2_48@@173 f_54@@198) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@71) o2_48@@173 f_54@@198) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@173 f_54@@198)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@42) o2_48@@173 f_54@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@42 Mask@@93) (IsWandField_10944_10945 pm_f_48@@15))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_19485) (ExhaleHeap@@43 T@PolymorphicMapType_19485) (Mask@@94 T@PolymorphicMapType_19506) (pm_f_48@@16 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_19545_11052 Mask@@94 null pm_f_48@@16) (IsWandField_19545_78180 pm_f_48@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48@@174 T@Ref) (f_54@@199 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@174 f_54@@199) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@72) o2_48@@174 f_54@@199) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@174 f_54@@199)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@174 f_54@@199))
)) (forall ((o2_48@@175 T@Ref) (f_54@@200 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@175 f_54@@200) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@72) o2_48@@175 f_54@@200) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@175 f_54@@200)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@175 f_54@@200))
))) (forall ((o2_48@@176 T@Ref) (f_54@@201 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@176 f_54@@201) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@72) o2_48@@176 f_54@@201) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@176 f_54@@201)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@176 f_54@@201))
))) (forall ((o2_48@@177 T@Ref) (f_54@@202 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@177 f_54@@202) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) o2_48@@177 f_54@@202) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@177 f_54@@202)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@177 f_54@@202))
))) (forall ((o2_48@@178 T@Ref) (f_54@@203 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@178 f_54@@203) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@72) o2_48@@178 f_54@@203) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@178 f_54@@203)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@178 f_54@@203))
))) (forall ((o2_48@@179 T@Ref) (f_54@@204 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@179 f_54@@204) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@72) o2_48@@179 f_54@@204) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@179 f_54@@204)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@179 f_54@@204))
))) (forall ((o2_48@@180 T@Ref) (f_54@@205 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@180 f_54@@205) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@72) o2_48@@180 f_54@@205) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@180 f_54@@205)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@180 f_54@@205))
))) (forall ((o2_48@@181 T@Ref) (f_54@@206 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@181 f_54@@206) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@72) o2_48@@181 f_54@@206) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@181 f_54@@206)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@181 f_54@@206))
))) (forall ((o2_48@@182 T@Ref) (f_54@@207 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@182 f_54@@207) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@72) o2_48@@182 f_54@@207) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@182 f_54@@207)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@182 f_54@@207))
))) (forall ((o2_48@@183 T@Ref) (f_54@@208 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@183 f_54@@208) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@72) o2_48@@183 f_54@@208) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@183 f_54@@208)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@183 f_54@@208))
))) (forall ((o2_48@@184 T@Ref) (f_54@@209 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@184 f_54@@209) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@72) o2_48@@184 f_54@@209) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@184 f_54@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@184 f_54@@209))
))) (forall ((o2_48@@185 T@Ref) (f_54@@210 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@185 f_54@@210) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@72) o2_48@@185 f_54@@210) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@185 f_54@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@185 f_54@@210))
))) (forall ((o2_48@@186 T@Ref) (f_54@@211 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@186 f_54@@211) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@72) o2_48@@186 f_54@@211) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@186 f_54@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@186 f_54@@211))
))) (forall ((o2_48@@187 T@Ref) (f_54@@212 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@187 f_54@@212) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@72) o2_48@@187 f_54@@212) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@187 f_54@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@187 f_54@@212))
))) (forall ((o2_48@@188 T@Ref) (f_54@@213 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@188 f_54@@213) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@72) o2_48@@188 f_54@@213) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@188 f_54@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@188 f_54@@213))
))) (forall ((o2_48@@189 T@Ref) (f_54@@214 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@189 f_54@@214) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@72) o2_48@@189 f_54@@214) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@189 f_54@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@189 f_54@@214))
))) (forall ((o2_48@@190 T@Ref) (f_54@@215 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@190 f_54@@215) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@72) o2_48@@190 f_54@@215) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@190 f_54@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@190 f_54@@215))
))) (forall ((o2_48@@191 T@Ref) (f_54@@216 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@191 f_54@@216) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@72) o2_48@@191 f_54@@216) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@191 f_54@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@191 f_54@@216))
))) (forall ((o2_48@@192 T@Ref) (f_54@@217 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@192 f_54@@217) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@72) o2_48@@192 f_54@@217) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@192 f_54@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@192 f_54@@217))
))) (forall ((o2_48@@193 T@Ref) (f_54@@218 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@193 f_54@@218) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@72) o2_48@@193 f_54@@218) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@193 f_54@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@193 f_54@@218))
))) (forall ((o2_48@@194 T@Ref) (f_54@@219 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@194 f_54@@219) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@72) o2_48@@194 f_54@@219) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@194 f_54@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@194 f_54@@219))
))) (forall ((o2_48@@195 T@Ref) (f_54@@220 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@195 f_54@@220) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@72) o2_48@@195 f_54@@220) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@195 f_54@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@195 f_54@@220))
))) (forall ((o2_48@@196 T@Ref) (f_54@@221 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@196 f_54@@221) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@72) o2_48@@196 f_54@@221) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@196 f_54@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@196 f_54@@221))
))) (forall ((o2_48@@197 T@Ref) (f_54@@222 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@197 f_54@@222) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@72) o2_48@@197 f_54@@222) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@197 f_54@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@197 f_54@@222))
))) (forall ((o2_48@@198 T@Ref) (f_54@@223 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_48@@16))) o2_48@@198 f_54@@223) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@72) o2_48@@198 f_54@@223) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@198 f_54@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@43) o2_48@@198 f_54@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@43 Mask@@94) (IsWandField_19545_78180 pm_f_48@@16))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_19485) (ExhaleHeap@@44 T@PolymorphicMapType_19485) (Mask@@95 T@PolymorphicMapType_19506) (pm_f_48@@17 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_11076_11077 Mask@@95 null pm_f_48@@17) (IsWandField_11076_77823 pm_f_48@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48@@199 T@Ref) (f_54@@224 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@199 f_54@@224) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@73) o2_48@@199 f_54@@224) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@199 f_54@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@199 f_54@@224))
)) (forall ((o2_48@@200 T@Ref) (f_54@@225 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@200 f_54@@225) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@73) o2_48@@200 f_54@@225) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@200 f_54@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@200 f_54@@225))
))) (forall ((o2_48@@201 T@Ref) (f_54@@226 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@201 f_54@@226) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@73) o2_48@@201 f_54@@226) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@201 f_54@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@201 f_54@@226))
))) (forall ((o2_48@@202 T@Ref) (f_54@@227 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@202 f_54@@227) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@73) o2_48@@202 f_54@@227) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@202 f_54@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@202 f_54@@227))
))) (forall ((o2_48@@203 T@Ref) (f_54@@228 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@203 f_54@@228) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@73) o2_48@@203 f_54@@228) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@203 f_54@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@203 f_54@@228))
))) (forall ((o2_48@@204 T@Ref) (f_54@@229 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@204 f_54@@229) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@73) o2_48@@204 f_54@@229) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@204 f_54@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@204 f_54@@229))
))) (forall ((o2_48@@205 T@Ref) (f_54@@230 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@205 f_54@@230) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@73) o2_48@@205 f_54@@230) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@205 f_54@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@205 f_54@@230))
))) (forall ((o2_48@@206 T@Ref) (f_54@@231 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@206 f_54@@231) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@73) o2_48@@206 f_54@@231) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@206 f_54@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@206 f_54@@231))
))) (forall ((o2_48@@207 T@Ref) (f_54@@232 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@207 f_54@@232) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@73) o2_48@@207 f_54@@232) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@207 f_54@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@207 f_54@@232))
))) (forall ((o2_48@@208 T@Ref) (f_54@@233 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@208 f_54@@233) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@73) o2_48@@208 f_54@@233) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@208 f_54@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@208 f_54@@233))
))) (forall ((o2_48@@209 T@Ref) (f_54@@234 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@209 f_54@@234) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@73) o2_48@@209 f_54@@234) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@209 f_54@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@209 f_54@@234))
))) (forall ((o2_48@@210 T@Ref) (f_54@@235 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@210 f_54@@235) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@73) o2_48@@210 f_54@@235) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@210 f_54@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@210 f_54@@235))
))) (forall ((o2_48@@211 T@Ref) (f_54@@236 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@211 f_54@@236) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@73) o2_48@@211 f_54@@236) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@211 f_54@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@211 f_54@@236))
))) (forall ((o2_48@@212 T@Ref) (f_54@@237 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@212 f_54@@237) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@73) o2_48@@212 f_54@@237) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@212 f_54@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@212 f_54@@237))
))) (forall ((o2_48@@213 T@Ref) (f_54@@238 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@213 f_54@@238) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@73) o2_48@@213 f_54@@238) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@213 f_54@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@213 f_54@@238))
))) (forall ((o2_48@@214 T@Ref) (f_54@@239 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@214 f_54@@239) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@73) o2_48@@214 f_54@@239) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@214 f_54@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@214 f_54@@239))
))) (forall ((o2_48@@215 T@Ref) (f_54@@240 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@215 f_54@@240) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@73) o2_48@@215 f_54@@240) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@215 f_54@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@215 f_54@@240))
))) (forall ((o2_48@@216 T@Ref) (f_54@@241 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@216 f_54@@241) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@73) o2_48@@216 f_54@@241) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@216 f_54@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@216 f_54@@241))
))) (forall ((o2_48@@217 T@Ref) (f_54@@242 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@217 f_54@@242) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@73) o2_48@@217 f_54@@242) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@217 f_54@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@217 f_54@@242))
))) (forall ((o2_48@@218 T@Ref) (f_54@@243 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@218 f_54@@243) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@73) o2_48@@218 f_54@@243) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@218 f_54@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@218 f_54@@243))
))) (forall ((o2_48@@219 T@Ref) (f_54@@244 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@219 f_54@@244) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@73) o2_48@@219 f_54@@244) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@219 f_54@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@219 f_54@@244))
))) (forall ((o2_48@@220 T@Ref) (f_54@@245 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@220 f_54@@245) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@73) o2_48@@220 f_54@@245) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@220 f_54@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@220 f_54@@245))
))) (forall ((o2_48@@221 T@Ref) (f_54@@246 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@221 f_54@@246) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@73) o2_48@@221 f_54@@246) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@221 f_54@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@221 f_54@@246))
))) (forall ((o2_48@@222 T@Ref) (f_54@@247 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@222 f_54@@247) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) o2_48@@222 f_54@@247) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@222 f_54@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@222 f_54@@247))
))) (forall ((o2_48@@223 T@Ref) (f_54@@248 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_48@@17))) o2_48@@223 f_54@@248) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@73) o2_48@@223 f_54@@248) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@223 f_54@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@44) o2_48@@223 f_54@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@44 Mask@@95) (IsWandField_11076_77823 pm_f_48@@17))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_19485) (ExhaleHeap@@45 T@PolymorphicMapType_19485) (Mask@@96 T@PolymorphicMapType_19506) (pm_f_48@@18 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_11051_11052 Mask@@96 null pm_f_48@@18) (IsWandField_11051_77466 pm_f_48@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_48@@224 T@Ref) (f_54@@249 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@224 f_54@@249) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@74) o2_48@@224 f_54@@249) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@224 f_54@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@224 f_54@@249))
)) (forall ((o2_48@@225 T@Ref) (f_54@@250 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@225 f_54@@250) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@74) o2_48@@225 f_54@@250) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@225 f_54@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@225 f_54@@250))
))) (forall ((o2_48@@226 T@Ref) (f_54@@251 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@226 f_54@@251) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@74) o2_48@@226 f_54@@251) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@226 f_54@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@226 f_54@@251))
))) (forall ((o2_48@@227 T@Ref) (f_54@@252 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@227 f_54@@252) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@74) o2_48@@227 f_54@@252) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@227 f_54@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@227 f_54@@252))
))) (forall ((o2_48@@228 T@Ref) (f_54@@253 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@228 f_54@@253) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@74) o2_48@@228 f_54@@253) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@228 f_54@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@228 f_54@@253))
))) (forall ((o2_48@@229 T@Ref) (f_54@@254 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@229 f_54@@254) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@74) o2_48@@229 f_54@@254) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@229 f_54@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@229 f_54@@254))
))) (forall ((o2_48@@230 T@Ref) (f_54@@255 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@230 f_54@@255) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@74) o2_48@@230 f_54@@255) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@230 f_54@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@230 f_54@@255))
))) (forall ((o2_48@@231 T@Ref) (f_54@@256 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@231 f_54@@256) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@74) o2_48@@231 f_54@@256) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@231 f_54@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@231 f_54@@256))
))) (forall ((o2_48@@232 T@Ref) (f_54@@257 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@232 f_54@@257) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@74) o2_48@@232 f_54@@257) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@232 f_54@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@232 f_54@@257))
))) (forall ((o2_48@@233 T@Ref) (f_54@@258 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@233 f_54@@258) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@74) o2_48@@233 f_54@@258) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@233 f_54@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@233 f_54@@258))
))) (forall ((o2_48@@234 T@Ref) (f_54@@259 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@234 f_54@@259) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@74) o2_48@@234 f_54@@259) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@234 f_54@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@234 f_54@@259))
))) (forall ((o2_48@@235 T@Ref) (f_54@@260 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@235 f_54@@260) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@74) o2_48@@235 f_54@@260) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@235 f_54@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@235 f_54@@260))
))) (forall ((o2_48@@236 T@Ref) (f_54@@261 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@236 f_54@@261) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@74) o2_48@@236 f_54@@261) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@236 f_54@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@236 f_54@@261))
))) (forall ((o2_48@@237 T@Ref) (f_54@@262 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@237 f_54@@262) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@74) o2_48@@237 f_54@@262) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@237 f_54@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@237 f_54@@262))
))) (forall ((o2_48@@238 T@Ref) (f_54@@263 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@238 f_54@@263) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@74) o2_48@@238 f_54@@263) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@238 f_54@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@238 f_54@@263))
))) (forall ((o2_48@@239 T@Ref) (f_54@@264 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@239 f_54@@264) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@74) o2_48@@239 f_54@@264) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@239 f_54@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@239 f_54@@264))
))) (forall ((o2_48@@240 T@Ref) (f_54@@265 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@240 f_54@@265) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@74) o2_48@@240 f_54@@265) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@240 f_54@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@240 f_54@@265))
))) (forall ((o2_48@@241 T@Ref) (f_54@@266 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@241 f_54@@266) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@74) o2_48@@241 f_54@@266) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@241 f_54@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@241 f_54@@266))
))) (forall ((o2_48@@242 T@Ref) (f_54@@267 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@242 f_54@@267) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) o2_48@@242 f_54@@267) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@242 f_54@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@242 f_54@@267))
))) (forall ((o2_48@@243 T@Ref) (f_54@@268 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@243 f_54@@268) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@74) o2_48@@243 f_54@@268) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@243 f_54@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@243 f_54@@268))
))) (forall ((o2_48@@244 T@Ref) (f_54@@269 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@244 f_54@@269) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@74) o2_48@@244 f_54@@269) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@244 f_54@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@244 f_54@@269))
))) (forall ((o2_48@@245 T@Ref) (f_54@@270 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@245 f_54@@270) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@74) o2_48@@245 f_54@@270) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@245 f_54@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@245 f_54@@270))
))) (forall ((o2_48@@246 T@Ref) (f_54@@271 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@246 f_54@@271) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@74) o2_48@@246 f_54@@271) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@246 f_54@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@246 f_54@@271))
))) (forall ((o2_48@@247 T@Ref) (f_54@@272 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@247 f_54@@272) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@74) o2_48@@247 f_54@@272) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@247 f_54@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@247 f_54@@272))
))) (forall ((o2_48@@248 T@Ref) (f_54@@273 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_48@@18))) o2_48@@248 f_54@@273) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@74) o2_48@@248 f_54@@273) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@248 f_54@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@45) o2_48@@248 f_54@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@45 Mask@@96) (IsWandField_11051_77466 pm_f_48@@18))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@12 T@Ref) (arg4@@12 T@Ref) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) (arg4_2@@0 T@Ref) ) (!  (=> (= (wand arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0)) (and (= arg1@@12 arg1_2@@0) (and (= arg2@@12 arg2_2@@0) (and (= arg3@@12 arg3_2@@0) (= arg4@@12 arg4_2@@0)))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@75 () T@PolymorphicMapType_19485)
(declare-fun x@@11 () T@Ref)
(declare-fun perm@0 () Real)
(set-info :boogie-vc-id |Q#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@75 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@75) x@@11 $allocated)) (and (= perm@0 (/ (to_real 1) (to_real 2))) (= (ControlFlow 0 2) (- 0 1)))) (>= perm@0 NoPerm)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
