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
(assert (forall ((Heap@@2 T@PolymorphicMapType_19485) (ExhaleHeap T@PolymorphicMapType_19485) (Mask@@0 T@PolymorphicMapType_19506) (pm_f_27 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_23549_11052 Mask@@0 null pm_f_27) (IsPredicateField_10999_11000 pm_f_27)) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@2) null (PredicateMaskField_23549 pm_f_27)) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap) null (PredicateMaskField_23549 pm_f_27)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_10999_11000 pm_f_27) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap) null (PredicateMaskField_23549 pm_f_27)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19485) (ExhaleHeap@@0 T@PolymorphicMapType_19485) (Mask@@1 T@PolymorphicMapType_19506) (pm_f_27@@0 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_22874_11052 Mask@@1 null pm_f_27@@0) (IsPredicateField_10944_10945 pm_f_27@@0)) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@3) null (PredicateMaskField_22874 pm_f_27@@0)) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@0) null (PredicateMaskField_22874 pm_f_27@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_10944_10945 pm_f_27@@0) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@0) null (PredicateMaskField_22874 pm_f_27@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19485) (ExhaleHeap@@1 T@PolymorphicMapType_19485) (Mask@@2 T@PolymorphicMapType_19506) (pm_f_27@@1 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_19545_11052 Mask@@2 null pm_f_27@@1) (IsPredicateField_19545_69776 pm_f_27@@1)) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@4) null (PredicateMaskField_19545 pm_f_27@@1)) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@1) null (PredicateMaskField_19545 pm_f_27@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_19545_69776 pm_f_27@@1) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@1) null (PredicateMaskField_19545 pm_f_27@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19485) (ExhaleHeap@@2 T@PolymorphicMapType_19485) (Mask@@3 T@PolymorphicMapType_19506) (pm_f_27@@2 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11076_11077 Mask@@3 null pm_f_27@@2) (IsPredicateField_11076_11077 pm_f_27@@2)) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@5) null (PredicateMaskField_11076 pm_f_27@@2)) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@2) null (PredicateMaskField_11076 pm_f_27@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_11076_11077 pm_f_27@@2) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@2) null (PredicateMaskField_11076 pm_f_27@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19485) (ExhaleHeap@@3 T@PolymorphicMapType_19485) (Mask@@4 T@PolymorphicMapType_19506) (pm_f_27@@3 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11051_11052 Mask@@4 null pm_f_27@@3) (IsPredicateField_11051_11052 pm_f_27@@3)) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@6) null (PredicateMaskField_11051 pm_f_27@@3)) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@3) null (PredicateMaskField_11051 pm_f_27@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_11051_11052 pm_f_27@@3) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@3) null (PredicateMaskField_11051 pm_f_27@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19485) (ExhaleHeap@@4 T@PolymorphicMapType_19485) (Mask@@5 T@PolymorphicMapType_19506) (pm_f_27@@4 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_23549_11052 Mask@@5 null pm_f_27@@4) (IsWandField_10999_11000 pm_f_27@@4)) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@7) null (WandMaskField_10999 pm_f_27@@4)) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@4) null (WandMaskField_10999 pm_f_27@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_10999_11000 pm_f_27@@4) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@4) null (WandMaskField_10999 pm_f_27@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19485) (ExhaleHeap@@5 T@PolymorphicMapType_19485) (Mask@@6 T@PolymorphicMapType_19506) (pm_f_27@@5 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_22874_11052 Mask@@6 null pm_f_27@@5) (IsWandField_10944_10945 pm_f_27@@5)) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@8) null (WandMaskField_10944 pm_f_27@@5)) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@5) null (WandMaskField_10944 pm_f_27@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_10944_10945 pm_f_27@@5) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@5) null (WandMaskField_10944 pm_f_27@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19485) (ExhaleHeap@@6 T@PolymorphicMapType_19485) (Mask@@7 T@PolymorphicMapType_19506) (pm_f_27@@6 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_19545_11052 Mask@@7 null pm_f_27@@6) (IsWandField_19545_78180 pm_f_27@@6)) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@9) null (WandMaskField_19545 pm_f_27@@6)) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@6) null (WandMaskField_19545 pm_f_27@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_19545_78180 pm_f_27@@6) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@6) null (WandMaskField_19545 pm_f_27@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19485) (ExhaleHeap@@7 T@PolymorphicMapType_19485) (Mask@@8 T@PolymorphicMapType_19506) (pm_f_27@@7 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_11076_11077 Mask@@8 null pm_f_27@@7) (IsWandField_11076_77823 pm_f_27@@7)) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@10) null (WandMaskField_11076 pm_f_27@@7)) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@7) null (WandMaskField_11076 pm_f_27@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsWandField_11076_77823 pm_f_27@@7) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@7) null (WandMaskField_11076 pm_f_27@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19485) (ExhaleHeap@@8 T@PolymorphicMapType_19485) (Mask@@9 T@PolymorphicMapType_19506) (pm_f_27@@8 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11051_11052 Mask@@9 null pm_f_27@@8) (IsWandField_11051_77466 pm_f_27@@8)) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@11) null (WandMaskField_11051 pm_f_27@@8)) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@8) null (WandMaskField_11051 pm_f_27@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_11051_77466 pm_f_27@@8) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@8) null (WandMaskField_11051 pm_f_27@@8)))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_19485) (ExhaleHeap@@9 T@PolymorphicMapType_19485) (Mask@@10 T@PolymorphicMapType_19506) (o_51 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@12) o_51 $allocated) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@9) o_51 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@9) o_51 $allocated))
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
(assert (forall ((Heap@@14 T@PolymorphicMapType_19485) (ExhaleHeap@@11 T@PolymorphicMapType_19485) (Mask@@62 T@PolymorphicMapType_19506) (o_51@@0 T@Ref) (f_62 T@Field_23564_23569) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_23549_68881 Mask@@62 o_51@@0 f_62) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@14) o_51@@0 f_62) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@11) o_51@@0 f_62))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@11) o_51@@0 f_62))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19485) (ExhaleHeap@@12 T@PolymorphicMapType_19485) (Mask@@63 T@PolymorphicMapType_19506) (o_51@@1 T@Ref) (f_62@@0 T@Field_23549_1529) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_23549_1203 Mask@@63 o_51@@1 f_62@@0) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@15) o_51@@1 f_62@@0) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@12) o_51@@1 f_62@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@12) o_51@@1 f_62@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19485) (ExhaleHeap@@13 T@PolymorphicMapType_19485) (Mask@@64 T@PolymorphicMapType_19506) (o_51@@2 T@Ref) (f_62@@1 T@Field_23549_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_23549_19559 Mask@@64 o_51@@2 f_62@@1) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@16) o_51@@2 f_62@@1) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@13) o_51@@2 f_62@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@13) o_51@@2 f_62@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19485) (ExhaleHeap@@14 T@PolymorphicMapType_19485) (Mask@@65 T@PolymorphicMapType_19506) (o_51@@3 T@Ref) (f_62@@2 T@Field_23549_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_23549_53 Mask@@65 o_51@@3 f_62@@2) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@17) o_51@@3 f_62@@2) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@14) o_51@@3 f_62@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@14) o_51@@3 f_62@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19485) (ExhaleHeap@@15 T@PolymorphicMapType_19485) (Mask@@66 T@PolymorphicMapType_19506) (o_51@@4 T@Ref) (f_62@@3 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_23549_11052 Mask@@66 o_51@@4 f_62@@3) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@18) o_51@@4 f_62@@3) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@15) o_51@@4 f_62@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@15) o_51@@4 f_62@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19485) (ExhaleHeap@@16 T@PolymorphicMapType_19485) (Mask@@67 T@PolymorphicMapType_19506) (o_51@@5 T@Ref) (f_62@@4 T@Field_22888_22893) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_22874_67747 Mask@@67 o_51@@5 f_62@@4) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@19) o_51@@5 f_62@@4) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@16) o_51@@5 f_62@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@16) o_51@@5 f_62@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19485) (ExhaleHeap@@17 T@PolymorphicMapType_19485) (Mask@@68 T@PolymorphicMapType_19506) (o_51@@6 T@Ref) (f_62@@5 T@Field_22874_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_22874_1203 Mask@@68 o_51@@6 f_62@@5) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@20) o_51@@6 f_62@@5) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@17) o_51@@6 f_62@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@17) o_51@@6 f_62@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19485) (ExhaleHeap@@18 T@PolymorphicMapType_19485) (Mask@@69 T@PolymorphicMapType_19506) (o_51@@7 T@Ref) (f_62@@6 T@Field_22874_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_22874_19559 Mask@@69 o_51@@7 f_62@@6) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@21) o_51@@7 f_62@@6) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@18) o_51@@7 f_62@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@18) o_51@@7 f_62@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19485) (ExhaleHeap@@19 T@PolymorphicMapType_19485) (Mask@@70 T@PolymorphicMapType_19506) (o_51@@8 T@Ref) (f_62@@7 T@Field_22874_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_22874_53 Mask@@70 o_51@@8 f_62@@7) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@22) o_51@@8 f_62@@7) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@19) o_51@@8 f_62@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@19) o_51@@8 f_62@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19485) (ExhaleHeap@@20 T@PolymorphicMapType_19485) (Mask@@71 T@PolymorphicMapType_19506) (o_51@@9 T@Ref) (f_62@@8 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_22874_11052 Mask@@71 o_51@@9 f_62@@8) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@23) o_51@@9 f_62@@8) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@20) o_51@@9 f_62@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@20) o_51@@9 f_62@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19485) (ExhaleHeap@@21 T@PolymorphicMapType_19485) (Mask@@72 T@PolymorphicMapType_19506) (o_51@@10 T@Ref) (f_62@@9 T@Field_19545_22893) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_19545_66570 Mask@@72 o_51@@10 f_62@@9) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@24) o_51@@10 f_62@@9) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@21) o_51@@10 f_62@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@21) o_51@@10 f_62@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19485) (ExhaleHeap@@22 T@PolymorphicMapType_19485) (Mask@@73 T@PolymorphicMapType_19506) (o_51@@11 T@Ref) (f_62@@10 T@Field_24307_1887) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_19545_1203 Mask@@73 o_51@@11 f_62@@10) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@25) o_51@@11 f_62@@10) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@22) o_51@@11 f_62@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@22) o_51@@11 f_62@@10))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19485) (ExhaleHeap@@23 T@PolymorphicMapType_19485) (Mask@@74 T@PolymorphicMapType_19506) (o_51@@12 T@Ref) (f_62@@11 T@Field_19558_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_19545_19559 Mask@@74 o_51@@12 f_62@@11) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@26) o_51@@12 f_62@@11) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@23) o_51@@12 f_62@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@23) o_51@@12 f_62@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19485) (ExhaleHeap@@24 T@PolymorphicMapType_19485) (Mask@@75 T@PolymorphicMapType_19506) (o_51@@13 T@Ref) (f_62@@12 T@Field_19545_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_19545_53 Mask@@75 o_51@@13 f_62@@12) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@27) o_51@@13 f_62@@12) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@24) o_51@@13 f_62@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@24) o_51@@13 f_62@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19485) (ExhaleHeap@@25 T@PolymorphicMapType_19485) (Mask@@76 T@PolymorphicMapType_19506) (o_51@@14 T@Ref) (f_62@@13 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_19545_11052 Mask@@76 o_51@@14 f_62@@13) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@28) o_51@@14 f_62@@13) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@25) o_51@@14 f_62@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@25) o_51@@14 f_62@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19485) (ExhaleHeap@@26 T@PolymorphicMapType_19485) (Mask@@77 T@PolymorphicMapType_19506) (o_51@@15 T@Ref) (f_62@@14 T@Field_25391_25396) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_11076_65477 Mask@@77 o_51@@15 f_62@@14) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@29) o_51@@15 f_62@@14) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@26) o_51@@15 f_62@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@26) o_51@@15 f_62@@14))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19485) (ExhaleHeap@@27 T@PolymorphicMapType_19485) (Mask@@78 T@PolymorphicMapType_19506) (o_51@@16 T@Ref) (f_62@@15 T@Field_11076_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_11076_1203 Mask@@78 o_51@@16 f_62@@15) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@30) o_51@@16 f_62@@15) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@27) o_51@@16 f_62@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@27) o_51@@16 f_62@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_19485) (ExhaleHeap@@28 T@PolymorphicMapType_19485) (Mask@@79 T@PolymorphicMapType_19506) (o_51@@17 T@Ref) (f_62@@16 T@Field_11076_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_11076_19559 Mask@@79 o_51@@17 f_62@@16) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@31) o_51@@17 f_62@@16) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@28) o_51@@17 f_62@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@28) o_51@@17 f_62@@16))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_19485) (ExhaleHeap@@29 T@PolymorphicMapType_19485) (Mask@@80 T@PolymorphicMapType_19506) (o_51@@18 T@Ref) (f_62@@17 T@Field_11076_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_11076_53 Mask@@80 o_51@@18 f_62@@17) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@32) o_51@@18 f_62@@17) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@29) o_51@@18 f_62@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@29) o_51@@18 f_62@@17))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_19485) (ExhaleHeap@@30 T@PolymorphicMapType_19485) (Mask@@81 T@PolymorphicMapType_19506) (o_51@@19 T@Ref) (f_62@@18 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_11076_11077 Mask@@81 o_51@@19 f_62@@18) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@33) o_51@@19 f_62@@18) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@30) o_51@@19 f_62@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@30) o_51@@19 f_62@@18))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_19485) (ExhaleHeap@@31 T@PolymorphicMapType_19485) (Mask@@82 T@PolymorphicMapType_19506) (o_51@@20 T@Ref) (f_62@@19 T@Field_24453_24458) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_11051_64379 Mask@@82 o_51@@20 f_62@@19) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@34) o_51@@20 f_62@@19) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@31) o_51@@20 f_62@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@31) o_51@@20 f_62@@19))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_19485) (ExhaleHeap@@32 T@PolymorphicMapType_19485) (Mask@@83 T@PolymorphicMapType_19506) (o_51@@21 T@Ref) (f_62@@20 T@Field_11051_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_11051_1203 Mask@@83 o_51@@21 f_62@@20) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@35) o_51@@21 f_62@@20) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@32) o_51@@21 f_62@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@32) o_51@@21 f_62@@20))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_19485) (ExhaleHeap@@33 T@PolymorphicMapType_19485) (Mask@@84 T@PolymorphicMapType_19506) (o_51@@22 T@Ref) (f_62@@21 T@Field_11051_19559) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_11051_19559 Mask@@84 o_51@@22 f_62@@21) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@36) o_51@@22 f_62@@21) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@33) o_51@@22 f_62@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@33) o_51@@22 f_62@@21))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_19485) (ExhaleHeap@@34 T@PolymorphicMapType_19485) (Mask@@85 T@PolymorphicMapType_19506) (o_51@@23 T@Ref) (f_62@@22 T@Field_11051_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_11051_53 Mask@@85 o_51@@23 f_62@@22) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@37) o_51@@23 f_62@@22) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@34) o_51@@23 f_62@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@34) o_51@@23 f_62@@22))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_19485) (ExhaleHeap@@35 T@PolymorphicMapType_19485) (Mask@@86 T@PolymorphicMapType_19506) (o_51@@24 T@Ref) (f_62@@23 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_11051_11052 Mask@@86 o_51@@24 f_62@@23) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@38) o_51@@24 f_62@@23) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@35) o_51@@24 f_62@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@35) o_51@@24 f_62@@23))
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
(assert (forall ((Heap@@39 T@PolymorphicMapType_19485) (o_41 T@Ref) (f_13 T@Field_23582_23583) (v T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@39) (store (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@39) o_41 f_13 v) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@39) (store (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@39) o_41 f_13 v) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@39) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_19485) (o_41@@0 T@Ref) (f_13@@0 T@Field_23564_23569) (v@@0 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@40 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@40) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@40) o_41@@0 f_13@@0 v@@0) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@40) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@40) o_41@@0 f_13@@0 v@@0) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@40) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_19485) (o_41@@1 T@Ref) (f_13@@1 T@Field_23549_1529) (v@@1 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@41) (store (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@41) o_41@@1 f_13@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@41) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@41) (store (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@41) o_41@@1 f_13@@1 v@@1)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_19485) (o_41@@2 T@Ref) (f_13@@2 T@Field_23549_19559) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@42) (store (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@42) o_41@@2 f_13@@2 v@@2) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@42) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@42) (store (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@42) o_41@@2 f_13@@2 v@@2) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_19485) (o_41@@3 T@Ref) (f_13@@3 T@Field_23549_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@43) (store (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@43) o_41@@3 f_13@@3 v@@3) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@43) (store (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@43) o_41@@3 f_13@@3 v@@3) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@43) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_19485) (o_41@@4 T@Ref) (f_13@@4 T@Field_25378_25379) (v@@4 T@FrameType) ) (! (succHeap Heap@@44 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@44) (store (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@44) o_41@@4 f_13@@4 v@@4) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@44) (store (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@44) o_41@@4 f_13@@4 v@@4) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@44) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_19485) (o_41@@5 T@Ref) (f_13@@5 T@Field_25391_25396) (v@@5 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@45 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@45) (store (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@45) o_41@@5 f_13@@5 v@@5) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@45) (store (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@45) o_41@@5 f_13@@5 v@@5) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@45) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_19485) (o_41@@6 T@Ref) (f_13@@6 T@Field_11076_1203) (v@@6 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@46) (store (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@46) o_41@@6 f_13@@6 v@@6) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@46) (store (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@46) o_41@@6 f_13@@6 v@@6) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@46) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_19485) (o_41@@7 T@Ref) (f_13@@7 T@Field_11076_19559) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@47) (store (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@47) o_41@@7 f_13@@7 v@@7) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@47) (store (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@47) o_41@@7 f_13@@7 v@@7) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@47) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_19485) (o_41@@8 T@Ref) (f_13@@8 T@Field_11076_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@48) (store (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@48) o_41@@8 f_13@@8 v@@8) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@48) (store (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@48) o_41@@8 f_13@@8 v@@8) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@48) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_19485) (o_41@@9 T@Ref) (f_13@@9 T@Field_24440_24441) (v@@9 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@49) (store (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@49) o_41@@9 f_13@@9 v@@9) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@49) (store (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@49) o_41@@9 f_13@@9 v@@9) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@49) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_19485) (o_41@@10 T@Ref) (f_13@@10 T@Field_24453_24458) (v@@10 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@50 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@50) (store (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@50) o_41@@10 f_13@@10 v@@10) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@50) (store (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@50) o_41@@10 f_13@@10 v@@10) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@50) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_19485) (o_41@@11 T@Ref) (f_13@@11 T@Field_11051_1203) (v@@11 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@51) (store (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@51) o_41@@11 f_13@@11 v@@11) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@51) (store (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@51) o_41@@11 f_13@@11 v@@11) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@51) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_19485) (o_41@@12 T@Ref) (f_13@@12 T@Field_11051_19559) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@52) (store (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@52) o_41@@12 f_13@@12 v@@12) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@52) (store (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@52) o_41@@12 f_13@@12 v@@12) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@52) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_19485) (o_41@@13 T@Ref) (f_13@@13 T@Field_11051_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@53) (store (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@53) o_41@@13 f_13@@13 v@@13) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@53) (store (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@53) o_41@@13 f_13@@13 v@@13) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@53) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_19485) (o_41@@14 T@Ref) (f_13@@14 T@Field_22905_22906) (v@@14 T@FrameType) ) (! (succHeap Heap@@54 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@54) (store (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@54) o_41@@14 f_13@@14 v@@14) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@54) (store (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@54) o_41@@14 f_13@@14 v@@14) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@54) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_19485) (o_41@@15 T@Ref) (f_13@@15 T@Field_22888_22893) (v@@15 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@55 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@55) (store (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@55) o_41@@15 f_13@@15 v@@15) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@55) (store (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@55) o_41@@15 f_13@@15 v@@15) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@55) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_19485) (o_41@@16 T@Ref) (f_13@@16 T@Field_22874_1203) (v@@16 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@56) (store (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@56) o_41@@16 f_13@@16 v@@16) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@56) (store (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@56) o_41@@16 f_13@@16 v@@16) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@56) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_19485) (o_41@@17 T@Ref) (f_13@@17 T@Field_22874_19559) (v@@17 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@57) (store (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@57) o_41@@17 f_13@@17 v@@17) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@57) (store (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@57) o_41@@17 f_13@@17 v@@17) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@57) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_19485) (o_41@@18 T@Ref) (f_13@@18 T@Field_22874_53) (v@@18 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@58) (store (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@58) o_41@@18 f_13@@18 v@@18) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@58) (store (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@58) o_41@@18 f_13@@18 v@@18) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@58) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_19485) (o_41@@19 T@Ref) (f_13@@19 T@Field_19545_11052) (v@@19 T@FrameType) ) (! (succHeap Heap@@59 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@59) (store (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@59) o_41@@19 f_13@@19 v@@19) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@59) (store (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@59) o_41@@19 f_13@@19 v@@19) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@59) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_19485) (o_41@@20 T@Ref) (f_13@@20 T@Field_19545_22893) (v@@20 T@PolymorphicMapType_20034) ) (! (succHeap Heap@@60 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@60) (store (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@60) o_41@@20 f_13@@20 v@@20) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@60) (store (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@60) o_41@@20 f_13@@20 v@@20) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@60) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_19485) (o_41@@21 T@Ref) (f_13@@21 T@Field_24307_1887) (v@@21 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@61) (store (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@61) o_41@@21 f_13@@21 v@@21) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@61) (store (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@61) o_41@@21 f_13@@21 v@@21) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@61) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_19485) (o_41@@22 T@Ref) (f_13@@22 T@Field_19558_19559) (v@@22 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@62) (store (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@62) o_41@@22 f_13@@22 v@@22) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@62) (store (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@62) o_41@@22 f_13@@22 v@@22) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@62) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_19485) (o_41@@23 T@Ref) (f_13@@23 T@Field_19545_53) (v@@23 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_19485 (store (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@63) o_41@@23 f_13@@23 v@@23) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19485 (store (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@63) o_41@@23 f_13@@23 v@@23) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@63) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@63)))
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
(assert (forall ((o_41@@24 T@Ref) (f_53 T@Field_19558_19559) (Heap@@64 T@PolymorphicMapType_19485) ) (!  (=> (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@64) o_41@@24 $allocated) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@64) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@64) o_41@@24 f_53) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@64) o_41@@24 f_53))
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
(assert (forall ((Heap@@65 T@PolymorphicMapType_19485) (ExhaleHeap@@36 T@PolymorphicMapType_19485) (Mask@@87 T@PolymorphicMapType_19506) (pm_f_27@@9 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_23549_11052 Mask@@87 null pm_f_27@@9) (IsPredicateField_10999_11000 pm_f_27@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27 T@Ref) (f_62@@24 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27 f_62@@24) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@65) o2_27 f_62@@24) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27 f_62@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27 f_62@@24))
)) (forall ((o2_27@@0 T@Ref) (f_62@@25 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@0 f_62@@25) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@65) o2_27@@0 f_62@@25) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@0 f_62@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@0 f_62@@25))
))) (forall ((o2_27@@1 T@Ref) (f_62@@26 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@1 f_62@@26) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@65) o2_27@@1 f_62@@26) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@1 f_62@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@1 f_62@@26))
))) (forall ((o2_27@@2 T@Ref) (f_62@@27 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@2 f_62@@27) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@65) o2_27@@2 f_62@@27) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@2 f_62@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@2 f_62@@27))
))) (forall ((o2_27@@3 T@Ref) (f_62@@28 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@3 f_62@@28) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@65) o2_27@@3 f_62@@28) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@3 f_62@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@3 f_62@@28))
))) (forall ((o2_27@@4 T@Ref) (f_62@@29 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@4 f_62@@29) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@65) o2_27@@4 f_62@@29) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@4 f_62@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@4 f_62@@29))
))) (forall ((o2_27@@5 T@Ref) (f_62@@30 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@5 f_62@@30) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@65) o2_27@@5 f_62@@30) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@5 f_62@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@5 f_62@@30))
))) (forall ((o2_27@@6 T@Ref) (f_62@@31 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@6 f_62@@31) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@65) o2_27@@6 f_62@@31) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@6 f_62@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@6 f_62@@31))
))) (forall ((o2_27@@7 T@Ref) (f_62@@32 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@7 f_62@@32) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@65) o2_27@@7 f_62@@32) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@7 f_62@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@7 f_62@@32))
))) (forall ((o2_27@@8 T@Ref) (f_62@@33 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@8 f_62@@33) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@65) o2_27@@8 f_62@@33) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@8 f_62@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@8 f_62@@33))
))) (forall ((o2_27@@9 T@Ref) (f_62@@34 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@9 f_62@@34) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@65) o2_27@@9 f_62@@34) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@9 f_62@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@9 f_62@@34))
))) (forall ((o2_27@@10 T@Ref) (f_62@@35 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@10 f_62@@35) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@65) o2_27@@10 f_62@@35) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@10 f_62@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@10 f_62@@35))
))) (forall ((o2_27@@11 T@Ref) (f_62@@36 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@11 f_62@@36) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@65) o2_27@@11 f_62@@36) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@11 f_62@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@11 f_62@@36))
))) (forall ((o2_27@@12 T@Ref) (f_62@@37 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@12 f_62@@37) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) o2_27@@12 f_62@@37) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@12 f_62@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@12 f_62@@37))
))) (forall ((o2_27@@13 T@Ref) (f_62@@38 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@13 f_62@@38) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@65) o2_27@@13 f_62@@38) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@13 f_62@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@13 f_62@@38))
))) (forall ((o2_27@@14 T@Ref) (f_62@@39 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@14 f_62@@39) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@65) o2_27@@14 f_62@@39) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@14 f_62@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@14 f_62@@39))
))) (forall ((o2_27@@15 T@Ref) (f_62@@40 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@15 f_62@@40) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@65) o2_27@@15 f_62@@40) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@15 f_62@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@15 f_62@@40))
))) (forall ((o2_27@@16 T@Ref) (f_62@@41 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@16 f_62@@41) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@65) o2_27@@16 f_62@@41) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@16 f_62@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@16 f_62@@41))
))) (forall ((o2_27@@17 T@Ref) (f_62@@42 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@17 f_62@@42) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@65) o2_27@@17 f_62@@42) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@17 f_62@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@17 f_62@@42))
))) (forall ((o2_27@@18 T@Ref) (f_62@@43 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@18 f_62@@43) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@65) o2_27@@18 f_62@@43) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@18 f_62@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@18 f_62@@43))
))) (forall ((o2_27@@19 T@Ref) (f_62@@44 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@19 f_62@@44) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@65) o2_27@@19 f_62@@44) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@19 f_62@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@19 f_62@@44))
))) (forall ((o2_27@@20 T@Ref) (f_62@@45 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@20 f_62@@45) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@65) o2_27@@20 f_62@@45) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@20 f_62@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@20 f_62@@45))
))) (forall ((o2_27@@21 T@Ref) (f_62@@46 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@21 f_62@@46) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@65) o2_27@@21 f_62@@46) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@21 f_62@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@21 f_62@@46))
))) (forall ((o2_27@@22 T@Ref) (f_62@@47 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@22 f_62@@47) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@65) o2_27@@22 f_62@@47) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@22 f_62@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@22 f_62@@47))
))) (forall ((o2_27@@23 T@Ref) (f_62@@48 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@65) null (PredicateMaskField_23549 pm_f_27@@9))) o2_27@@23 f_62@@48) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@65) o2_27@@23 f_62@@48) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@23 f_62@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@36) o2_27@@23 f_62@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@36 Mask@@87) (IsPredicateField_10999_11000 pm_f_27@@9))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_19485) (ExhaleHeap@@37 T@PolymorphicMapType_19485) (Mask@@88 T@PolymorphicMapType_19506) (pm_f_27@@10 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_22874_11052 Mask@@88 null pm_f_27@@10) (IsPredicateField_10944_10945 pm_f_27@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27@@24 T@Ref) (f_62@@49 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@24 f_62@@49) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@66) o2_27@@24 f_62@@49) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@24 f_62@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@24 f_62@@49))
)) (forall ((o2_27@@25 T@Ref) (f_62@@50 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@25 f_62@@50) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@66) o2_27@@25 f_62@@50) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@25 f_62@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@25 f_62@@50))
))) (forall ((o2_27@@26 T@Ref) (f_62@@51 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@26 f_62@@51) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@66) o2_27@@26 f_62@@51) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@26 f_62@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@26 f_62@@51))
))) (forall ((o2_27@@27 T@Ref) (f_62@@52 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@27 f_62@@52) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@66) o2_27@@27 f_62@@52) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@27 f_62@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@27 f_62@@52))
))) (forall ((o2_27@@28 T@Ref) (f_62@@53 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@28 f_62@@53) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@66) o2_27@@28 f_62@@53) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@28 f_62@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@28 f_62@@53))
))) (forall ((o2_27@@29 T@Ref) (f_62@@54 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@29 f_62@@54) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@66) o2_27@@29 f_62@@54) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@29 f_62@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@29 f_62@@54))
))) (forall ((o2_27@@30 T@Ref) (f_62@@55 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@30 f_62@@55) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@66) o2_27@@30 f_62@@55) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@30 f_62@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@30 f_62@@55))
))) (forall ((o2_27@@31 T@Ref) (f_62@@56 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@31 f_62@@56) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@66) o2_27@@31 f_62@@56) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@31 f_62@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@31 f_62@@56))
))) (forall ((o2_27@@32 T@Ref) (f_62@@57 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@32 f_62@@57) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) o2_27@@32 f_62@@57) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@32 f_62@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@32 f_62@@57))
))) (forall ((o2_27@@33 T@Ref) (f_62@@58 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@33 f_62@@58) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@66) o2_27@@33 f_62@@58) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@33 f_62@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@33 f_62@@58))
))) (forall ((o2_27@@34 T@Ref) (f_62@@59 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@34 f_62@@59) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@66) o2_27@@34 f_62@@59) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@34 f_62@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@34 f_62@@59))
))) (forall ((o2_27@@35 T@Ref) (f_62@@60 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@35 f_62@@60) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@66) o2_27@@35 f_62@@60) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@35 f_62@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@35 f_62@@60))
))) (forall ((o2_27@@36 T@Ref) (f_62@@61 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@36 f_62@@61) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@66) o2_27@@36 f_62@@61) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@36 f_62@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@36 f_62@@61))
))) (forall ((o2_27@@37 T@Ref) (f_62@@62 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@37 f_62@@62) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@66) o2_27@@37 f_62@@62) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@37 f_62@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@37 f_62@@62))
))) (forall ((o2_27@@38 T@Ref) (f_62@@63 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@38 f_62@@63) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@66) o2_27@@38 f_62@@63) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@38 f_62@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@38 f_62@@63))
))) (forall ((o2_27@@39 T@Ref) (f_62@@64 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@39 f_62@@64) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@66) o2_27@@39 f_62@@64) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@39 f_62@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@39 f_62@@64))
))) (forall ((o2_27@@40 T@Ref) (f_62@@65 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@40 f_62@@65) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@66) o2_27@@40 f_62@@65) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@40 f_62@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@40 f_62@@65))
))) (forall ((o2_27@@41 T@Ref) (f_62@@66 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@41 f_62@@66) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@66) o2_27@@41 f_62@@66) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@41 f_62@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@41 f_62@@66))
))) (forall ((o2_27@@42 T@Ref) (f_62@@67 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@42 f_62@@67) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@66) o2_27@@42 f_62@@67) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@42 f_62@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@42 f_62@@67))
))) (forall ((o2_27@@43 T@Ref) (f_62@@68 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@43 f_62@@68) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@66) o2_27@@43 f_62@@68) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@43 f_62@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@43 f_62@@68))
))) (forall ((o2_27@@44 T@Ref) (f_62@@69 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@44 f_62@@69) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@66) o2_27@@44 f_62@@69) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@44 f_62@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@44 f_62@@69))
))) (forall ((o2_27@@45 T@Ref) (f_62@@70 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@45 f_62@@70) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@66) o2_27@@45 f_62@@70) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@45 f_62@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@45 f_62@@70))
))) (forall ((o2_27@@46 T@Ref) (f_62@@71 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@46 f_62@@71) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@66) o2_27@@46 f_62@@71) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@46 f_62@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@46 f_62@@71))
))) (forall ((o2_27@@47 T@Ref) (f_62@@72 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@47 f_62@@72) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@66) o2_27@@47 f_62@@72) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@47 f_62@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@47 f_62@@72))
))) (forall ((o2_27@@48 T@Ref) (f_62@@73 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@66) null (PredicateMaskField_22874 pm_f_27@@10))) o2_27@@48 f_62@@73) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@66) o2_27@@48 f_62@@73) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@48 f_62@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@37) o2_27@@48 f_62@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@37 Mask@@88) (IsPredicateField_10944_10945 pm_f_27@@10))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_19485) (ExhaleHeap@@38 T@PolymorphicMapType_19485) (Mask@@89 T@PolymorphicMapType_19506) (pm_f_27@@11 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_19545_11052 Mask@@89 null pm_f_27@@11) (IsPredicateField_19545_69776 pm_f_27@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27@@49 T@Ref) (f_62@@74 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@49 f_62@@74) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@67) o2_27@@49 f_62@@74) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@49 f_62@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@49 f_62@@74))
)) (forall ((o2_27@@50 T@Ref) (f_62@@75 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@50 f_62@@75) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@67) o2_27@@50 f_62@@75) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@50 f_62@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@50 f_62@@75))
))) (forall ((o2_27@@51 T@Ref) (f_62@@76 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@51 f_62@@76) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@67) o2_27@@51 f_62@@76) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@51 f_62@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@51 f_62@@76))
))) (forall ((o2_27@@52 T@Ref) (f_62@@77 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@52 f_62@@77) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) o2_27@@52 f_62@@77) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@52 f_62@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@52 f_62@@77))
))) (forall ((o2_27@@53 T@Ref) (f_62@@78 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@53 f_62@@78) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@67) o2_27@@53 f_62@@78) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@53 f_62@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@53 f_62@@78))
))) (forall ((o2_27@@54 T@Ref) (f_62@@79 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@54 f_62@@79) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@67) o2_27@@54 f_62@@79) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@54 f_62@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@54 f_62@@79))
))) (forall ((o2_27@@55 T@Ref) (f_62@@80 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@55 f_62@@80) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@67) o2_27@@55 f_62@@80) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@55 f_62@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@55 f_62@@80))
))) (forall ((o2_27@@56 T@Ref) (f_62@@81 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@56 f_62@@81) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@67) o2_27@@56 f_62@@81) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@56 f_62@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@56 f_62@@81))
))) (forall ((o2_27@@57 T@Ref) (f_62@@82 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@57 f_62@@82) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@67) o2_27@@57 f_62@@82) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@57 f_62@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@57 f_62@@82))
))) (forall ((o2_27@@58 T@Ref) (f_62@@83 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@58 f_62@@83) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@67) o2_27@@58 f_62@@83) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@58 f_62@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@58 f_62@@83))
))) (forall ((o2_27@@59 T@Ref) (f_62@@84 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@59 f_62@@84) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@67) o2_27@@59 f_62@@84) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@59 f_62@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@59 f_62@@84))
))) (forall ((o2_27@@60 T@Ref) (f_62@@85 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@60 f_62@@85) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@67) o2_27@@60 f_62@@85) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@60 f_62@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@60 f_62@@85))
))) (forall ((o2_27@@61 T@Ref) (f_62@@86 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@61 f_62@@86) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@67) o2_27@@61 f_62@@86) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@61 f_62@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@61 f_62@@86))
))) (forall ((o2_27@@62 T@Ref) (f_62@@87 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@62 f_62@@87) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@67) o2_27@@62 f_62@@87) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@62 f_62@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@62 f_62@@87))
))) (forall ((o2_27@@63 T@Ref) (f_62@@88 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@63 f_62@@88) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@67) o2_27@@63 f_62@@88) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@63 f_62@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@63 f_62@@88))
))) (forall ((o2_27@@64 T@Ref) (f_62@@89 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@64 f_62@@89) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@67) o2_27@@64 f_62@@89) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@64 f_62@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@64 f_62@@89))
))) (forall ((o2_27@@65 T@Ref) (f_62@@90 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@65 f_62@@90) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@67) o2_27@@65 f_62@@90) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@65 f_62@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@65 f_62@@90))
))) (forall ((o2_27@@66 T@Ref) (f_62@@91 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@66 f_62@@91) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@67) o2_27@@66 f_62@@91) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@66 f_62@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@66 f_62@@91))
))) (forall ((o2_27@@67 T@Ref) (f_62@@92 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@67 f_62@@92) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@67) o2_27@@67 f_62@@92) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@67 f_62@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@67 f_62@@92))
))) (forall ((o2_27@@68 T@Ref) (f_62@@93 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@68 f_62@@93) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@67) o2_27@@68 f_62@@93) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@68 f_62@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@68 f_62@@93))
))) (forall ((o2_27@@69 T@Ref) (f_62@@94 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@69 f_62@@94) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@67) o2_27@@69 f_62@@94) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@69 f_62@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@69 f_62@@94))
))) (forall ((o2_27@@70 T@Ref) (f_62@@95 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@70 f_62@@95) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@67) o2_27@@70 f_62@@95) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@70 f_62@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@70 f_62@@95))
))) (forall ((o2_27@@71 T@Ref) (f_62@@96 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@71 f_62@@96) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@67) o2_27@@71 f_62@@96) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@71 f_62@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@71 f_62@@96))
))) (forall ((o2_27@@72 T@Ref) (f_62@@97 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@72 f_62@@97) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@67) o2_27@@72 f_62@@97) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@72 f_62@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@72 f_62@@97))
))) (forall ((o2_27@@73 T@Ref) (f_62@@98 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@67) null (PredicateMaskField_19545 pm_f_27@@11))) o2_27@@73 f_62@@98) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@67) o2_27@@73 f_62@@98) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@73 f_62@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@38) o2_27@@73 f_62@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@38 Mask@@89) (IsPredicateField_19545_69776 pm_f_27@@11))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_19485) (ExhaleHeap@@39 T@PolymorphicMapType_19485) (Mask@@90 T@PolymorphicMapType_19506) (pm_f_27@@12 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_11076_11077 Mask@@90 null pm_f_27@@12) (IsPredicateField_11076_11077 pm_f_27@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27@@74 T@Ref) (f_62@@99 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@74 f_62@@99) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@68) o2_27@@74 f_62@@99) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@74 f_62@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@74 f_62@@99))
)) (forall ((o2_27@@75 T@Ref) (f_62@@100 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@75 f_62@@100) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@68) o2_27@@75 f_62@@100) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@75 f_62@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@75 f_62@@100))
))) (forall ((o2_27@@76 T@Ref) (f_62@@101 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@76 f_62@@101) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@68) o2_27@@76 f_62@@101) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@76 f_62@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@76 f_62@@101))
))) (forall ((o2_27@@77 T@Ref) (f_62@@102 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@77 f_62@@102) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@68) o2_27@@77 f_62@@102) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@77 f_62@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@77 f_62@@102))
))) (forall ((o2_27@@78 T@Ref) (f_62@@103 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@78 f_62@@103) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@68) o2_27@@78 f_62@@103) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@78 f_62@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@78 f_62@@103))
))) (forall ((o2_27@@79 T@Ref) (f_62@@104 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@79 f_62@@104) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@68) o2_27@@79 f_62@@104) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@79 f_62@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@79 f_62@@104))
))) (forall ((o2_27@@80 T@Ref) (f_62@@105 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@80 f_62@@105) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@68) o2_27@@80 f_62@@105) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@80 f_62@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@80 f_62@@105))
))) (forall ((o2_27@@81 T@Ref) (f_62@@106 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@81 f_62@@106) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@68) o2_27@@81 f_62@@106) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@81 f_62@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@81 f_62@@106))
))) (forall ((o2_27@@82 T@Ref) (f_62@@107 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@82 f_62@@107) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@68) o2_27@@82 f_62@@107) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@82 f_62@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@82 f_62@@107))
))) (forall ((o2_27@@83 T@Ref) (f_62@@108 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@83 f_62@@108) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@68) o2_27@@83 f_62@@108) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@83 f_62@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@83 f_62@@108))
))) (forall ((o2_27@@84 T@Ref) (f_62@@109 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@84 f_62@@109) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@68) o2_27@@84 f_62@@109) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@84 f_62@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@84 f_62@@109))
))) (forall ((o2_27@@85 T@Ref) (f_62@@110 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@85 f_62@@110) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@68) o2_27@@85 f_62@@110) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@85 f_62@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@85 f_62@@110))
))) (forall ((o2_27@@86 T@Ref) (f_62@@111 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@86 f_62@@111) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@68) o2_27@@86 f_62@@111) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@86 f_62@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@86 f_62@@111))
))) (forall ((o2_27@@87 T@Ref) (f_62@@112 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@87 f_62@@112) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@68) o2_27@@87 f_62@@112) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@87 f_62@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@87 f_62@@112))
))) (forall ((o2_27@@88 T@Ref) (f_62@@113 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@88 f_62@@113) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@68) o2_27@@88 f_62@@113) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@88 f_62@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@88 f_62@@113))
))) (forall ((o2_27@@89 T@Ref) (f_62@@114 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@89 f_62@@114) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@68) o2_27@@89 f_62@@114) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@89 f_62@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@89 f_62@@114))
))) (forall ((o2_27@@90 T@Ref) (f_62@@115 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@90 f_62@@115) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@68) o2_27@@90 f_62@@115) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@90 f_62@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@90 f_62@@115))
))) (forall ((o2_27@@91 T@Ref) (f_62@@116 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@91 f_62@@116) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@68) o2_27@@91 f_62@@116) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@91 f_62@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@91 f_62@@116))
))) (forall ((o2_27@@92 T@Ref) (f_62@@117 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@92 f_62@@117) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@68) o2_27@@92 f_62@@117) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@92 f_62@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@92 f_62@@117))
))) (forall ((o2_27@@93 T@Ref) (f_62@@118 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@93 f_62@@118) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@68) o2_27@@93 f_62@@118) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@93 f_62@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@93 f_62@@118))
))) (forall ((o2_27@@94 T@Ref) (f_62@@119 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@94 f_62@@119) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@68) o2_27@@94 f_62@@119) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@94 f_62@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@94 f_62@@119))
))) (forall ((o2_27@@95 T@Ref) (f_62@@120 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@95 f_62@@120) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@68) o2_27@@95 f_62@@120) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@95 f_62@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@95 f_62@@120))
))) (forall ((o2_27@@96 T@Ref) (f_62@@121 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@96 f_62@@121) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@68) o2_27@@96 f_62@@121) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@96 f_62@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@96 f_62@@121))
))) (forall ((o2_27@@97 T@Ref) (f_62@@122 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@97 f_62@@122) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) o2_27@@97 f_62@@122) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@97 f_62@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@97 f_62@@122))
))) (forall ((o2_27@@98 T@Ref) (f_62@@123 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@68) null (PredicateMaskField_11076 pm_f_27@@12))) o2_27@@98 f_62@@123) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@68) o2_27@@98 f_62@@123) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@98 f_62@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@39) o2_27@@98 f_62@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@39 Mask@@90) (IsPredicateField_11076_11077 pm_f_27@@12))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_19485) (ExhaleHeap@@40 T@PolymorphicMapType_19485) (Mask@@91 T@PolymorphicMapType_19506) (pm_f_27@@13 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_11051_11052 Mask@@91 null pm_f_27@@13) (IsPredicateField_11051_11052 pm_f_27@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27@@99 T@Ref) (f_62@@124 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@99 f_62@@124) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@69) o2_27@@99 f_62@@124) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@99 f_62@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@99 f_62@@124))
)) (forall ((o2_27@@100 T@Ref) (f_62@@125 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@100 f_62@@125) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@69) o2_27@@100 f_62@@125) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@100 f_62@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@100 f_62@@125))
))) (forall ((o2_27@@101 T@Ref) (f_62@@126 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@101 f_62@@126) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@69) o2_27@@101 f_62@@126) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@101 f_62@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@101 f_62@@126))
))) (forall ((o2_27@@102 T@Ref) (f_62@@127 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@102 f_62@@127) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@69) o2_27@@102 f_62@@127) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@102 f_62@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@102 f_62@@127))
))) (forall ((o2_27@@103 T@Ref) (f_62@@128 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@103 f_62@@128) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@69) o2_27@@103 f_62@@128) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@103 f_62@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@103 f_62@@128))
))) (forall ((o2_27@@104 T@Ref) (f_62@@129 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@104 f_62@@129) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@69) o2_27@@104 f_62@@129) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@104 f_62@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@104 f_62@@129))
))) (forall ((o2_27@@105 T@Ref) (f_62@@130 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@105 f_62@@130) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@69) o2_27@@105 f_62@@130) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@105 f_62@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@105 f_62@@130))
))) (forall ((o2_27@@106 T@Ref) (f_62@@131 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@106 f_62@@131) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@69) o2_27@@106 f_62@@131) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@106 f_62@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@106 f_62@@131))
))) (forall ((o2_27@@107 T@Ref) (f_62@@132 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@107 f_62@@132) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@69) o2_27@@107 f_62@@132) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@107 f_62@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@107 f_62@@132))
))) (forall ((o2_27@@108 T@Ref) (f_62@@133 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@108 f_62@@133) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@69) o2_27@@108 f_62@@133) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@108 f_62@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@108 f_62@@133))
))) (forall ((o2_27@@109 T@Ref) (f_62@@134 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@109 f_62@@134) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@69) o2_27@@109 f_62@@134) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@109 f_62@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@109 f_62@@134))
))) (forall ((o2_27@@110 T@Ref) (f_62@@135 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@110 f_62@@135) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@69) o2_27@@110 f_62@@135) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@110 f_62@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@110 f_62@@135))
))) (forall ((o2_27@@111 T@Ref) (f_62@@136 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@111 f_62@@136) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@69) o2_27@@111 f_62@@136) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@111 f_62@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@111 f_62@@136))
))) (forall ((o2_27@@112 T@Ref) (f_62@@137 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@112 f_62@@137) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@69) o2_27@@112 f_62@@137) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@112 f_62@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@112 f_62@@137))
))) (forall ((o2_27@@113 T@Ref) (f_62@@138 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@113 f_62@@138) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@69) o2_27@@113 f_62@@138) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@113 f_62@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@113 f_62@@138))
))) (forall ((o2_27@@114 T@Ref) (f_62@@139 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@114 f_62@@139) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@69) o2_27@@114 f_62@@139) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@114 f_62@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@114 f_62@@139))
))) (forall ((o2_27@@115 T@Ref) (f_62@@140 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@115 f_62@@140) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@69) o2_27@@115 f_62@@140) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@115 f_62@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@115 f_62@@140))
))) (forall ((o2_27@@116 T@Ref) (f_62@@141 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@116 f_62@@141) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@69) o2_27@@116 f_62@@141) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@116 f_62@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@116 f_62@@141))
))) (forall ((o2_27@@117 T@Ref) (f_62@@142 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@117 f_62@@142) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) o2_27@@117 f_62@@142) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@117 f_62@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@117 f_62@@142))
))) (forall ((o2_27@@118 T@Ref) (f_62@@143 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@118 f_62@@143) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@69) o2_27@@118 f_62@@143) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@118 f_62@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@118 f_62@@143))
))) (forall ((o2_27@@119 T@Ref) (f_62@@144 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@119 f_62@@144) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@69) o2_27@@119 f_62@@144) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@119 f_62@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@119 f_62@@144))
))) (forall ((o2_27@@120 T@Ref) (f_62@@145 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@120 f_62@@145) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@69) o2_27@@120 f_62@@145) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@120 f_62@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@120 f_62@@145))
))) (forall ((o2_27@@121 T@Ref) (f_62@@146 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@121 f_62@@146) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@69) o2_27@@121 f_62@@146) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@121 f_62@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@121 f_62@@146))
))) (forall ((o2_27@@122 T@Ref) (f_62@@147 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@122 f_62@@147) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@69) o2_27@@122 f_62@@147) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@122 f_62@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@122 f_62@@147))
))) (forall ((o2_27@@123 T@Ref) (f_62@@148 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@69) null (PredicateMaskField_11051 pm_f_27@@13))) o2_27@@123 f_62@@148) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@69) o2_27@@123 f_62@@148) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@123 f_62@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@40) o2_27@@123 f_62@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@40 Mask@@91) (IsPredicateField_11051_11052 pm_f_27@@13))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_19485) (ExhaleHeap@@41 T@PolymorphicMapType_19485) (Mask@@92 T@PolymorphicMapType_19506) (pm_f_27@@14 T@Field_23582_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_23549_11052 Mask@@92 null pm_f_27@@14) (IsWandField_10999_11000 pm_f_27@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27@@124 T@Ref) (f_62@@149 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@124 f_62@@149) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@70) o2_27@@124 f_62@@149) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@124 f_62@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@124 f_62@@149))
)) (forall ((o2_27@@125 T@Ref) (f_62@@150 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@125 f_62@@150) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@70) o2_27@@125 f_62@@150) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@125 f_62@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@125 f_62@@150))
))) (forall ((o2_27@@126 T@Ref) (f_62@@151 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@126 f_62@@151) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@70) o2_27@@126 f_62@@151) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@126 f_62@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@126 f_62@@151))
))) (forall ((o2_27@@127 T@Ref) (f_62@@152 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@127 f_62@@152) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@70) o2_27@@127 f_62@@152) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@127 f_62@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@127 f_62@@152))
))) (forall ((o2_27@@128 T@Ref) (f_62@@153 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@128 f_62@@153) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@70) o2_27@@128 f_62@@153) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@128 f_62@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@128 f_62@@153))
))) (forall ((o2_27@@129 T@Ref) (f_62@@154 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@129 f_62@@154) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@70) o2_27@@129 f_62@@154) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@129 f_62@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@129 f_62@@154))
))) (forall ((o2_27@@130 T@Ref) (f_62@@155 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@130 f_62@@155) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@70) o2_27@@130 f_62@@155) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@130 f_62@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@130 f_62@@155))
))) (forall ((o2_27@@131 T@Ref) (f_62@@156 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@131 f_62@@156) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@70) o2_27@@131 f_62@@156) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@131 f_62@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@131 f_62@@156))
))) (forall ((o2_27@@132 T@Ref) (f_62@@157 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@132 f_62@@157) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@70) o2_27@@132 f_62@@157) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@132 f_62@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@132 f_62@@157))
))) (forall ((o2_27@@133 T@Ref) (f_62@@158 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@133 f_62@@158) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@70) o2_27@@133 f_62@@158) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@133 f_62@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@133 f_62@@158))
))) (forall ((o2_27@@134 T@Ref) (f_62@@159 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@134 f_62@@159) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@70) o2_27@@134 f_62@@159) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@134 f_62@@159)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@134 f_62@@159))
))) (forall ((o2_27@@135 T@Ref) (f_62@@160 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@135 f_62@@160) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@70) o2_27@@135 f_62@@160) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@135 f_62@@160)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@135 f_62@@160))
))) (forall ((o2_27@@136 T@Ref) (f_62@@161 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@136 f_62@@161) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@70) o2_27@@136 f_62@@161) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@136 f_62@@161)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@136 f_62@@161))
))) (forall ((o2_27@@137 T@Ref) (f_62@@162 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@137 f_62@@162) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) o2_27@@137 f_62@@162) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@137 f_62@@162)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@137 f_62@@162))
))) (forall ((o2_27@@138 T@Ref) (f_62@@163 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@138 f_62@@163) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@70) o2_27@@138 f_62@@163) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@138 f_62@@163)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@138 f_62@@163))
))) (forall ((o2_27@@139 T@Ref) (f_62@@164 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@139 f_62@@164) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@70) o2_27@@139 f_62@@164) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@139 f_62@@164)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@139 f_62@@164))
))) (forall ((o2_27@@140 T@Ref) (f_62@@165 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@140 f_62@@165) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@70) o2_27@@140 f_62@@165) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@140 f_62@@165)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@140 f_62@@165))
))) (forall ((o2_27@@141 T@Ref) (f_62@@166 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@141 f_62@@166) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@70) o2_27@@141 f_62@@166) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@141 f_62@@166)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@141 f_62@@166))
))) (forall ((o2_27@@142 T@Ref) (f_62@@167 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@142 f_62@@167) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@70) o2_27@@142 f_62@@167) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@142 f_62@@167)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@142 f_62@@167))
))) (forall ((o2_27@@143 T@Ref) (f_62@@168 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@143 f_62@@168) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@70) o2_27@@143 f_62@@168) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@143 f_62@@168)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@143 f_62@@168))
))) (forall ((o2_27@@144 T@Ref) (f_62@@169 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@144 f_62@@169) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@70) o2_27@@144 f_62@@169) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@144 f_62@@169)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@144 f_62@@169))
))) (forall ((o2_27@@145 T@Ref) (f_62@@170 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@145 f_62@@170) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@70) o2_27@@145 f_62@@170) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@145 f_62@@170)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@145 f_62@@170))
))) (forall ((o2_27@@146 T@Ref) (f_62@@171 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@146 f_62@@171) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@70) o2_27@@146 f_62@@171) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@146 f_62@@171)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@146 f_62@@171))
))) (forall ((o2_27@@147 T@Ref) (f_62@@172 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@147 f_62@@172) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@70) o2_27@@147 f_62@@172) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@147 f_62@@172)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@147 f_62@@172))
))) (forall ((o2_27@@148 T@Ref) (f_62@@173 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@70) null (WandMaskField_10999 pm_f_27@@14))) o2_27@@148 f_62@@173) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@70) o2_27@@148 f_62@@173) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@148 f_62@@173)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@41) o2_27@@148 f_62@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@41 Mask@@92) (IsWandField_10999_11000 pm_f_27@@14))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_19485) (ExhaleHeap@@42 T@PolymorphicMapType_19485) (Mask@@93 T@PolymorphicMapType_19506) (pm_f_27@@15 T@Field_22905_22906) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_22874_11052 Mask@@93 null pm_f_27@@15) (IsWandField_10944_10945 pm_f_27@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27@@149 T@Ref) (f_62@@174 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@149 f_62@@174) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@71) o2_27@@149 f_62@@174) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@149 f_62@@174)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@149 f_62@@174))
)) (forall ((o2_27@@150 T@Ref) (f_62@@175 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@150 f_62@@175) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@71) o2_27@@150 f_62@@175) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@150 f_62@@175)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@150 f_62@@175))
))) (forall ((o2_27@@151 T@Ref) (f_62@@176 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@151 f_62@@176) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@71) o2_27@@151 f_62@@176) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@151 f_62@@176)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@151 f_62@@176))
))) (forall ((o2_27@@152 T@Ref) (f_62@@177 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@152 f_62@@177) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@71) o2_27@@152 f_62@@177) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@152 f_62@@177)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@152 f_62@@177))
))) (forall ((o2_27@@153 T@Ref) (f_62@@178 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@153 f_62@@178) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@71) o2_27@@153 f_62@@178) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@153 f_62@@178)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@153 f_62@@178))
))) (forall ((o2_27@@154 T@Ref) (f_62@@179 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@154 f_62@@179) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@71) o2_27@@154 f_62@@179) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@154 f_62@@179)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@154 f_62@@179))
))) (forall ((o2_27@@155 T@Ref) (f_62@@180 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@155 f_62@@180) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@71) o2_27@@155 f_62@@180) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@155 f_62@@180)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@155 f_62@@180))
))) (forall ((o2_27@@156 T@Ref) (f_62@@181 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@156 f_62@@181) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@71) o2_27@@156 f_62@@181) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@156 f_62@@181)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@156 f_62@@181))
))) (forall ((o2_27@@157 T@Ref) (f_62@@182 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@157 f_62@@182) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) o2_27@@157 f_62@@182) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@157 f_62@@182)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@157 f_62@@182))
))) (forall ((o2_27@@158 T@Ref) (f_62@@183 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@158 f_62@@183) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@71) o2_27@@158 f_62@@183) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@158 f_62@@183)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@158 f_62@@183))
))) (forall ((o2_27@@159 T@Ref) (f_62@@184 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@159 f_62@@184) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@71) o2_27@@159 f_62@@184) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@159 f_62@@184)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@159 f_62@@184))
))) (forall ((o2_27@@160 T@Ref) (f_62@@185 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@160 f_62@@185) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@71) o2_27@@160 f_62@@185) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@160 f_62@@185)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@160 f_62@@185))
))) (forall ((o2_27@@161 T@Ref) (f_62@@186 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@161 f_62@@186) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@71) o2_27@@161 f_62@@186) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@161 f_62@@186)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@161 f_62@@186))
))) (forall ((o2_27@@162 T@Ref) (f_62@@187 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@162 f_62@@187) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@71) o2_27@@162 f_62@@187) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@162 f_62@@187)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@162 f_62@@187))
))) (forall ((o2_27@@163 T@Ref) (f_62@@188 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@163 f_62@@188) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@71) o2_27@@163 f_62@@188) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@163 f_62@@188)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@163 f_62@@188))
))) (forall ((o2_27@@164 T@Ref) (f_62@@189 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@164 f_62@@189) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@71) o2_27@@164 f_62@@189) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@164 f_62@@189)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@164 f_62@@189))
))) (forall ((o2_27@@165 T@Ref) (f_62@@190 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@165 f_62@@190) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@71) o2_27@@165 f_62@@190) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@165 f_62@@190)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@165 f_62@@190))
))) (forall ((o2_27@@166 T@Ref) (f_62@@191 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@166 f_62@@191) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@71) o2_27@@166 f_62@@191) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@166 f_62@@191)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@166 f_62@@191))
))) (forall ((o2_27@@167 T@Ref) (f_62@@192 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@167 f_62@@192) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@71) o2_27@@167 f_62@@192) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@167 f_62@@192)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@167 f_62@@192))
))) (forall ((o2_27@@168 T@Ref) (f_62@@193 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@168 f_62@@193) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@71) o2_27@@168 f_62@@193) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@168 f_62@@193)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@168 f_62@@193))
))) (forall ((o2_27@@169 T@Ref) (f_62@@194 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@169 f_62@@194) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@71) o2_27@@169 f_62@@194) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@169 f_62@@194)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@169 f_62@@194))
))) (forall ((o2_27@@170 T@Ref) (f_62@@195 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@170 f_62@@195) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@71) o2_27@@170 f_62@@195) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@170 f_62@@195)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@170 f_62@@195))
))) (forall ((o2_27@@171 T@Ref) (f_62@@196 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@171 f_62@@196) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@71) o2_27@@171 f_62@@196) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@171 f_62@@196)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@171 f_62@@196))
))) (forall ((o2_27@@172 T@Ref) (f_62@@197 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@172 f_62@@197) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@71) o2_27@@172 f_62@@197) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@172 f_62@@197)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@172 f_62@@197))
))) (forall ((o2_27@@173 T@Ref) (f_62@@198 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@71) null (WandMaskField_10944 pm_f_27@@15))) o2_27@@173 f_62@@198) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@71) o2_27@@173 f_62@@198) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@173 f_62@@198)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@42) o2_27@@173 f_62@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@42 Mask@@93) (IsWandField_10944_10945 pm_f_27@@15))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_19485) (ExhaleHeap@@43 T@PolymorphicMapType_19485) (Mask@@94 T@PolymorphicMapType_19506) (pm_f_27@@16 T@Field_19545_11052) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_19545_11052 Mask@@94 null pm_f_27@@16) (IsWandField_19545_78180 pm_f_27@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27@@174 T@Ref) (f_62@@199 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@174 f_62@@199) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@72) o2_27@@174 f_62@@199) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@174 f_62@@199)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@174 f_62@@199))
)) (forall ((o2_27@@175 T@Ref) (f_62@@200 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@175 f_62@@200) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@72) o2_27@@175 f_62@@200) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@175 f_62@@200)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@175 f_62@@200))
))) (forall ((o2_27@@176 T@Ref) (f_62@@201 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@176 f_62@@201) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@72) o2_27@@176 f_62@@201) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@176 f_62@@201)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@176 f_62@@201))
))) (forall ((o2_27@@177 T@Ref) (f_62@@202 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@177 f_62@@202) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) o2_27@@177 f_62@@202) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@177 f_62@@202)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@177 f_62@@202))
))) (forall ((o2_27@@178 T@Ref) (f_62@@203 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@178 f_62@@203) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@72) o2_27@@178 f_62@@203) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@178 f_62@@203)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@178 f_62@@203))
))) (forall ((o2_27@@179 T@Ref) (f_62@@204 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@179 f_62@@204) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@72) o2_27@@179 f_62@@204) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@179 f_62@@204)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@179 f_62@@204))
))) (forall ((o2_27@@180 T@Ref) (f_62@@205 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@180 f_62@@205) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@72) o2_27@@180 f_62@@205) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@180 f_62@@205)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@180 f_62@@205))
))) (forall ((o2_27@@181 T@Ref) (f_62@@206 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@181 f_62@@206) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@72) o2_27@@181 f_62@@206) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@181 f_62@@206)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@181 f_62@@206))
))) (forall ((o2_27@@182 T@Ref) (f_62@@207 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@182 f_62@@207) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@72) o2_27@@182 f_62@@207) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@182 f_62@@207)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@182 f_62@@207))
))) (forall ((o2_27@@183 T@Ref) (f_62@@208 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@183 f_62@@208) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@72) o2_27@@183 f_62@@208) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@183 f_62@@208)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@183 f_62@@208))
))) (forall ((o2_27@@184 T@Ref) (f_62@@209 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@184 f_62@@209) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@72) o2_27@@184 f_62@@209) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@184 f_62@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@184 f_62@@209))
))) (forall ((o2_27@@185 T@Ref) (f_62@@210 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@185 f_62@@210) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@72) o2_27@@185 f_62@@210) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@185 f_62@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@185 f_62@@210))
))) (forall ((o2_27@@186 T@Ref) (f_62@@211 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@186 f_62@@211) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@72) o2_27@@186 f_62@@211) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@186 f_62@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@186 f_62@@211))
))) (forall ((o2_27@@187 T@Ref) (f_62@@212 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@187 f_62@@212) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@72) o2_27@@187 f_62@@212) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@187 f_62@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@187 f_62@@212))
))) (forall ((o2_27@@188 T@Ref) (f_62@@213 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@188 f_62@@213) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@72) o2_27@@188 f_62@@213) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@188 f_62@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@188 f_62@@213))
))) (forall ((o2_27@@189 T@Ref) (f_62@@214 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@189 f_62@@214) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@72) o2_27@@189 f_62@@214) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@189 f_62@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@189 f_62@@214))
))) (forall ((o2_27@@190 T@Ref) (f_62@@215 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@190 f_62@@215) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@72) o2_27@@190 f_62@@215) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@190 f_62@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@190 f_62@@215))
))) (forall ((o2_27@@191 T@Ref) (f_62@@216 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@191 f_62@@216) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@72) o2_27@@191 f_62@@216) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@191 f_62@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@191 f_62@@216))
))) (forall ((o2_27@@192 T@Ref) (f_62@@217 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@192 f_62@@217) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@72) o2_27@@192 f_62@@217) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@192 f_62@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@192 f_62@@217))
))) (forall ((o2_27@@193 T@Ref) (f_62@@218 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@193 f_62@@218) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@72) o2_27@@193 f_62@@218) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@193 f_62@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@193 f_62@@218))
))) (forall ((o2_27@@194 T@Ref) (f_62@@219 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@194 f_62@@219) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@72) o2_27@@194 f_62@@219) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@194 f_62@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@194 f_62@@219))
))) (forall ((o2_27@@195 T@Ref) (f_62@@220 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@195 f_62@@220) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@72) o2_27@@195 f_62@@220) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@195 f_62@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@195 f_62@@220))
))) (forall ((o2_27@@196 T@Ref) (f_62@@221 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@196 f_62@@221) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@72) o2_27@@196 f_62@@221) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@196 f_62@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@196 f_62@@221))
))) (forall ((o2_27@@197 T@Ref) (f_62@@222 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@197 f_62@@222) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@72) o2_27@@197 f_62@@222) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@197 f_62@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@197 f_62@@222))
))) (forall ((o2_27@@198 T@Ref) (f_62@@223 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@72) null (WandMaskField_19545 pm_f_27@@16))) o2_27@@198 f_62@@223) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@72) o2_27@@198 f_62@@223) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@198 f_62@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@43) o2_27@@198 f_62@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@43 Mask@@94) (IsWandField_19545_78180 pm_f_27@@16))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_19485) (ExhaleHeap@@44 T@PolymorphicMapType_19485) (Mask@@95 T@PolymorphicMapType_19506) (pm_f_27@@17 T@Field_25378_25379) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_11076_11077 Mask@@95 null pm_f_27@@17) (IsWandField_11076_77823 pm_f_27@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27@@199 T@Ref) (f_62@@224 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@199 f_62@@224) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@73) o2_27@@199 f_62@@224) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@199 f_62@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@199 f_62@@224))
)) (forall ((o2_27@@200 T@Ref) (f_62@@225 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@200 f_62@@225) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@73) o2_27@@200 f_62@@225) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@200 f_62@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@200 f_62@@225))
))) (forall ((o2_27@@201 T@Ref) (f_62@@226 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@201 f_62@@226) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@73) o2_27@@201 f_62@@226) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@201 f_62@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@201 f_62@@226))
))) (forall ((o2_27@@202 T@Ref) (f_62@@227 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@202 f_62@@227) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@73) o2_27@@202 f_62@@227) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@202 f_62@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@202 f_62@@227))
))) (forall ((o2_27@@203 T@Ref) (f_62@@228 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@203 f_62@@228) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@73) o2_27@@203 f_62@@228) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@203 f_62@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@203 f_62@@228))
))) (forall ((o2_27@@204 T@Ref) (f_62@@229 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@204 f_62@@229) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@73) o2_27@@204 f_62@@229) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@204 f_62@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@204 f_62@@229))
))) (forall ((o2_27@@205 T@Ref) (f_62@@230 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@205 f_62@@230) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@73) o2_27@@205 f_62@@230) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@205 f_62@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@205 f_62@@230))
))) (forall ((o2_27@@206 T@Ref) (f_62@@231 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@206 f_62@@231) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@73) o2_27@@206 f_62@@231) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@206 f_62@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@206 f_62@@231))
))) (forall ((o2_27@@207 T@Ref) (f_62@@232 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@207 f_62@@232) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@73) o2_27@@207 f_62@@232) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@207 f_62@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@207 f_62@@232))
))) (forall ((o2_27@@208 T@Ref) (f_62@@233 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@208 f_62@@233) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@73) o2_27@@208 f_62@@233) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@208 f_62@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@208 f_62@@233))
))) (forall ((o2_27@@209 T@Ref) (f_62@@234 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@209 f_62@@234) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@73) o2_27@@209 f_62@@234) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@209 f_62@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@209 f_62@@234))
))) (forall ((o2_27@@210 T@Ref) (f_62@@235 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@210 f_62@@235) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@73) o2_27@@210 f_62@@235) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@210 f_62@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@210 f_62@@235))
))) (forall ((o2_27@@211 T@Ref) (f_62@@236 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@211 f_62@@236) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@73) o2_27@@211 f_62@@236) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@211 f_62@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@211 f_62@@236))
))) (forall ((o2_27@@212 T@Ref) (f_62@@237 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@212 f_62@@237) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@73) o2_27@@212 f_62@@237) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@212 f_62@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@212 f_62@@237))
))) (forall ((o2_27@@213 T@Ref) (f_62@@238 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@213 f_62@@238) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@73) o2_27@@213 f_62@@238) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@213 f_62@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@213 f_62@@238))
))) (forall ((o2_27@@214 T@Ref) (f_62@@239 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@214 f_62@@239) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@73) o2_27@@214 f_62@@239) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@214 f_62@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@214 f_62@@239))
))) (forall ((o2_27@@215 T@Ref) (f_62@@240 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@215 f_62@@240) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@73) o2_27@@215 f_62@@240) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@215 f_62@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@215 f_62@@240))
))) (forall ((o2_27@@216 T@Ref) (f_62@@241 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@216 f_62@@241) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@73) o2_27@@216 f_62@@241) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@216 f_62@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@216 f_62@@241))
))) (forall ((o2_27@@217 T@Ref) (f_62@@242 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@217 f_62@@242) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@73) o2_27@@217 f_62@@242) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@217 f_62@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@217 f_62@@242))
))) (forall ((o2_27@@218 T@Ref) (f_62@@243 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@218 f_62@@243) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@73) o2_27@@218 f_62@@243) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@218 f_62@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@218 f_62@@243))
))) (forall ((o2_27@@219 T@Ref) (f_62@@244 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@219 f_62@@244) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@73) o2_27@@219 f_62@@244) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@219 f_62@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@219 f_62@@244))
))) (forall ((o2_27@@220 T@Ref) (f_62@@245 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@220 f_62@@245) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@73) o2_27@@220 f_62@@245) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@220 f_62@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@220 f_62@@245))
))) (forall ((o2_27@@221 T@Ref) (f_62@@246 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@221 f_62@@246) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@73) o2_27@@221 f_62@@246) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@221 f_62@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@221 f_62@@246))
))) (forall ((o2_27@@222 T@Ref) (f_62@@247 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@222 f_62@@247) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) o2_27@@222 f_62@@247) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@222 f_62@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@222 f_62@@247))
))) (forall ((o2_27@@223 T@Ref) (f_62@@248 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@73) null (WandMaskField_11076 pm_f_27@@17))) o2_27@@223 f_62@@248) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@73) o2_27@@223 f_62@@248) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@223 f_62@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@44) o2_27@@223 f_62@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@44 Mask@@95) (IsWandField_11076_77823 pm_f_27@@17))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_19485) (ExhaleHeap@@45 T@PolymorphicMapType_19485) (Mask@@96 T@PolymorphicMapType_19506) (pm_f_27@@18 T@Field_24440_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_11051_11052 Mask@@96 null pm_f_27@@18) (IsWandField_11051_77466 pm_f_27@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_27@@224 T@Ref) (f_62@@249 T@Field_24307_1887) ) (!  (=> (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@224 f_62@@249) (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@74) o2_27@@224 f_62@@249) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@224 f_62@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@224 f_62@@249))
)) (forall ((o2_27@@225 T@Ref) (f_62@@250 T@Field_19545_53) ) (!  (=> (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@225 f_62@@250) (= (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@74) o2_27@@225 f_62@@250) (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@225 f_62@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@225 f_62@@250))
))) (forall ((o2_27@@226 T@Ref) (f_62@@251 T@Field_19558_19559) ) (!  (=> (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@226 f_62@@251) (= (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@74) o2_27@@226 f_62@@251) (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@226 f_62@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@226 f_62@@251))
))) (forall ((o2_27@@227 T@Ref) (f_62@@252 T@Field_19545_22893) ) (!  (=> (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@227 f_62@@252) (= (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@74) o2_27@@227 f_62@@252) (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@227 f_62@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@227 f_62@@252))
))) (forall ((o2_27@@228 T@Ref) (f_62@@253 T@Field_19545_11052) ) (!  (=> (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@228 f_62@@253) (= (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@74) o2_27@@228 f_62@@253) (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@228 f_62@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@228 f_62@@253))
))) (forall ((o2_27@@229 T@Ref) (f_62@@254 T@Field_22874_1203) ) (!  (=> (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@229 f_62@@254) (= (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@74) o2_27@@229 f_62@@254) (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@229 f_62@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@229 f_62@@254))
))) (forall ((o2_27@@230 T@Ref) (f_62@@255 T@Field_22874_53) ) (!  (=> (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@230 f_62@@255) (= (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@74) o2_27@@230 f_62@@255) (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@230 f_62@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@230 f_62@@255))
))) (forall ((o2_27@@231 T@Ref) (f_62@@256 T@Field_22874_19559) ) (!  (=> (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@231 f_62@@256) (= (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@74) o2_27@@231 f_62@@256) (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@231 f_62@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@231 f_62@@256))
))) (forall ((o2_27@@232 T@Ref) (f_62@@257 T@Field_22888_22893) ) (!  (=> (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@232 f_62@@257) (= (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@74) o2_27@@232 f_62@@257) (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@232 f_62@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@232 f_62@@257))
))) (forall ((o2_27@@233 T@Ref) (f_62@@258 T@Field_22905_22906) ) (!  (=> (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@233 f_62@@258) (= (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@74) o2_27@@233 f_62@@258) (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@233 f_62@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@233 f_62@@258))
))) (forall ((o2_27@@234 T@Ref) (f_62@@259 T@Field_23549_1529) ) (!  (=> (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@234 f_62@@259) (= (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@74) o2_27@@234 f_62@@259) (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@234 f_62@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@234 f_62@@259))
))) (forall ((o2_27@@235 T@Ref) (f_62@@260 T@Field_23549_53) ) (!  (=> (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@235 f_62@@260) (= (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@74) o2_27@@235 f_62@@260) (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@235 f_62@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@235 f_62@@260))
))) (forall ((o2_27@@236 T@Ref) (f_62@@261 T@Field_23549_19559) ) (!  (=> (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@236 f_62@@261) (= (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@74) o2_27@@236 f_62@@261) (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@236 f_62@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@236 f_62@@261))
))) (forall ((o2_27@@237 T@Ref) (f_62@@262 T@Field_23564_23569) ) (!  (=> (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@237 f_62@@262) (= (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@74) o2_27@@237 f_62@@262) (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@237 f_62@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@237 f_62@@262))
))) (forall ((o2_27@@238 T@Ref) (f_62@@263 T@Field_23582_23583) ) (!  (=> (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@238 f_62@@263) (= (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@74) o2_27@@238 f_62@@263) (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@238 f_62@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@238 f_62@@263))
))) (forall ((o2_27@@239 T@Ref) (f_62@@264 T@Field_11051_1203) ) (!  (=> (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@239 f_62@@264) (= (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@74) o2_27@@239 f_62@@264) (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@239 f_62@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@239 f_62@@264))
))) (forall ((o2_27@@240 T@Ref) (f_62@@265 T@Field_11051_53) ) (!  (=> (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@240 f_62@@265) (= (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@74) o2_27@@240 f_62@@265) (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@240 f_62@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@240 f_62@@265))
))) (forall ((o2_27@@241 T@Ref) (f_62@@266 T@Field_11051_19559) ) (!  (=> (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@241 f_62@@266) (= (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@74) o2_27@@241 f_62@@266) (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@241 f_62@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@241 f_62@@266))
))) (forall ((o2_27@@242 T@Ref) (f_62@@267 T@Field_24453_24458) ) (!  (=> (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@242 f_62@@267) (= (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) o2_27@@242 f_62@@267) (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@242 f_62@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@242 f_62@@267))
))) (forall ((o2_27@@243 T@Ref) (f_62@@268 T@Field_24440_24441) ) (!  (=> (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@243 f_62@@268) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@74) o2_27@@243 f_62@@268) (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@243 f_62@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@243 f_62@@268))
))) (forall ((o2_27@@244 T@Ref) (f_62@@269 T@Field_11076_1203) ) (!  (=> (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@244 f_62@@269) (= (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@74) o2_27@@244 f_62@@269) (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@244 f_62@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@244 f_62@@269))
))) (forall ((o2_27@@245 T@Ref) (f_62@@270 T@Field_11076_53) ) (!  (=> (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@245 f_62@@270) (= (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@74) o2_27@@245 f_62@@270) (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@245 f_62@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@245 f_62@@270))
))) (forall ((o2_27@@246 T@Ref) (f_62@@271 T@Field_11076_19559) ) (!  (=> (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@246 f_62@@271) (= (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@74) o2_27@@246 f_62@@271) (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@246 f_62@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@246 f_62@@271))
))) (forall ((o2_27@@247 T@Ref) (f_62@@272 T@Field_25391_25396) ) (!  (=> (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@247 f_62@@272) (= (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@74) o2_27@@247 f_62@@272) (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@247 f_62@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@247 f_62@@272))
))) (forall ((o2_27@@248 T@Ref) (f_62@@273 T@Field_25378_25379) ) (!  (=> (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@74) null (WandMaskField_11051 pm_f_27@@18))) o2_27@@248 f_62@@273) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@74) o2_27@@248 f_62@@273) (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@248 f_62@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| ExhaleHeap@@45) o2_27@@248 f_62@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@45 Mask@@96) (IsWandField_11051_77466 pm_f_27@@18))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@12 T@Ref) (arg4@@12 T@Ref) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) (arg4_2@@0 T@Ref) ) (!  (=> (= (wand arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0)) (and (= arg1@@12 arg1_2@@0) (and (= arg2@@12 arg2_2@@0) (and (= arg3@@12 arg3_2@@0) (= arg4@@12 arg4_2@@0)))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_19@28 () Bool)
(declare-fun b_26_1@18 () Bool)
(declare-fun neededTransfer@26 () Real)
(declare-fun Used_12Mask@11 () T@PolymorphicMapType_19506)
(declare-fun y () T@Ref)
(declare-fun initNeededTransfer@5 () Real)
(declare-fun b_29_1@0 () Bool)
(declare-fun b_29_1@1 () Bool)
(declare-fun Result_13Heap () T@PolymorphicMapType_19485)
(declare-fun Result_13Mask () T@PolymorphicMapType_19506)
(declare-fun b_29_1@2 () Bool)
(declare-fun Ops_5Mask () T@PolymorphicMapType_19506)
(declare-fun b_29_1@3 () Bool)
(declare-fun Ops_5Heap@15 () T@PolymorphicMapType_19485)
(declare-fun Used_12Heap@0 () T@PolymorphicMapType_19485)
(declare-fun b_29_1@4 () Bool)
(declare-fun b_19@29 () Bool)
(declare-fun Mask@17 () T@PolymorphicMapType_19506)
(declare-fun Mask@16 () T@PolymorphicMapType_19506)
(declare-fun x@@11 () T@Ref)
(declare-fun Heap@14 () T@PolymorphicMapType_19485)
(declare-fun takeTransfer@11 () Real)
(declare-fun neededTransfer@24 () Real)
(declare-fun b_26_1@15 () Bool)
(declare-fun Mask@14 () T@PolymorphicMapType_19506)
(declare-fun Heap@12 () T@PolymorphicMapType_19485)
(declare-fun Used_12Mask@9 () T@PolymorphicMapType_19506)
(declare-fun neededTransfer@25 () Real)
(declare-fun Used_12Mask@10 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@16 () Bool)
(declare-fun TempMask@5 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@17 () Bool)
(declare-fun Mask@15 () T@PolymorphicMapType_19506)
(declare-fun newPMask@2 () T@PolymorphicMapType_20034)
(declare-fun Heap@13 () T@PolymorphicMapType_19485)
(declare-fun maskTransfer@11 () Real)
(declare-fun takeTransfer@10 () Real)
(declare-fun Used_12Mask@7 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@12 () Bool)
(declare-fun neededTransfer@23 () Real)
(declare-fun Used_12Mask@8 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@13 () Bool)
(declare-fun TempMask@4 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@14 () Bool)
(declare-fun Ops_5Mask@18 () T@PolymorphicMapType_19506)
(declare-fun Ops_5Mask@17 () T@PolymorphicMapType_19506)
(declare-fun maskTransfer@10 () Real)
(declare-fun b_19@27 () Bool)
(declare-fun neededTransfer@22 () Real)
(declare-fun initNeededTransfer@4 () Real)
(declare-fun b_28_1@0 () Bool)
(declare-fun b_28_1@1 () Bool)
(declare-fun Result_12Heap () T@PolymorphicMapType_19485)
(declare-fun Result_12Mask () T@PolymorphicMapType_19506)
(declare-fun b_28_1@2 () Bool)
(declare-fun b_28_1@3 () Bool)
(declare-fun b_28_1@4 () Bool)
(declare-fun takeTransfer@9 () Real)
(declare-fun neededTransfer@20 () Real)
(declare-fun Heap@10 () T@PolymorphicMapType_19485)
(declare-fun Mask@12 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@9 () Bool)
(declare-fun Used_12Mask@5 () T@PolymorphicMapType_19506)
(declare-fun neededTransfer@21 () Real)
(declare-fun Used_12Mask@6 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@10 () Bool)
(declare-fun TempMask@3 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@11 () Bool)
(declare-fun Mask@13 () T@PolymorphicMapType_19506)
(declare-fun newPMask@1 () T@PolymorphicMapType_20034)
(declare-fun Heap@11 () T@PolymorphicMapType_19485)
(declare-fun maskTransfer@9 () Real)
(declare-fun takeTransfer@8 () Real)
(declare-fun Used_12Mask@3 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@6 () Bool)
(declare-fun Ops_5Mask@15 () T@PolymorphicMapType_19506)
(declare-fun neededTransfer@19 () Real)
(declare-fun Used_12Mask@4 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@7 () Bool)
(declare-fun TempMask@2 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@8 () Bool)
(declare-fun Ops_5Mask@16 () T@PolymorphicMapType_19506)
(declare-fun maskTransfer@8 () Real)
(declare-fun b_19@26 () Bool)
(declare-fun neededTransfer@18 () Real)
(declare-fun initNeededTransfer@3 () Real)
(declare-fun b_27_1@0 () Bool)
(declare-fun b_27_1@1 () Bool)
(declare-fun Result_11Heap () T@PolymorphicMapType_19485)
(declare-fun Result_11Mask () T@PolymorphicMapType_19506)
(declare-fun b_27_1@2 () Bool)
(declare-fun b_27_1@3 () Bool)
(declare-fun b_27_1@4 () Bool)
(declare-fun takeTransfer@7 () Real)
(declare-fun neededTransfer@16 () Real)
(declare-fun Mask@10 () T@PolymorphicMapType_19506)
(declare-fun Heap@8 () T@PolymorphicMapType_19485)
(declare-fun b_26_1@3 () Bool)
(declare-fun Used_12Mask@1 () T@PolymorphicMapType_19506)
(declare-fun neededTransfer@17 () Real)
(declare-fun Used_12Mask@2 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@5 () Bool)
(declare-fun Mask@11 () T@PolymorphicMapType_19506)
(declare-fun newPMask@0 () T@PolymorphicMapType_20034)
(declare-fun Heap@9 () T@PolymorphicMapType_19485)
(declare-fun maskTransfer@7 () Real)
(declare-fun takeTransfer@6 () Real)
(declare-fun Ops_5Mask@13 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@0 () Bool)
(declare-fun neededTransfer@15 () Real)
(declare-fun Used_12Mask@0 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_19506)
(declare-fun b_26_1@2 () Bool)
(declare-fun Ops_5Mask@14 () T@PolymorphicMapType_19506)
(declare-fun maskTransfer@6 () Real)
(declare-fun b_26_1 () Bool)
(declare-fun Ops_5Heap@14 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@13 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Mask@12 () T@PolymorphicMapType_19506)
(declare-fun b_19@25 () Bool)
(declare-fun b_19@24 () Bool)
(declare-fun Heap@7 () T@PolymorphicMapType_19485)
(declare-fun Mask@9 () T@PolymorphicMapType_19506)
(declare-fun Ops_5Heap@10 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@11 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@12 () T@PolymorphicMapType_19485)
(declare-fun freshVersion@2 () T@FrameType)
(declare-fun b_19@19 () Bool)
(declare-fun b_24_1@6 () Bool)
(declare-fun neededTransfer@14 () Real)
(declare-fun Used_11Mask@3 () T@PolymorphicMapType_19506)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun b_25_1@0 () Bool)
(declare-fun b_25_1@1 () Bool)
(declare-fun Result_10Heap () T@PolymorphicMapType_19485)
(declare-fun Result_10Mask () T@PolymorphicMapType_19506)
(declare-fun b_25_1@2 () Bool)
(declare-fun Ops_5Mask@11 () T@PolymorphicMapType_19506)
(declare-fun b_25_1@3 () Bool)
(declare-fun Used_11Heap@0 () T@PolymorphicMapType_19485)
(declare-fun b_25_1@4 () Bool)
(declare-fun b_19@20 () Bool)
(declare-fun b_19@21 () Bool)
(declare-fun b_19@22 () Bool)
(declare-fun b_19@23 () Bool)
(declare-fun FrameFragment_1887 (Int) T@FrameType)
(declare-fun takeTransfer@5 () Real)
(declare-fun neededTransfer@12 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_19506)
(declare-fun Heap@5 () T@PolymorphicMapType_19485)
(declare-fun b_24_1@3 () Bool)
(declare-fun Used_11Mask@1 () T@PolymorphicMapType_19506)
(declare-fun neededTransfer@13 () Real)
(declare-fun Used_11Mask@2 () T@PolymorphicMapType_19506)
(declare-fun b_24_1@4 () Bool)
(declare-fun b_24_1@5 () Bool)
(declare-fun Mask@8 () T@PolymorphicMapType_19506)
(declare-fun Heap@6 () T@PolymorphicMapType_19485)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun Ops_5Mask@9 () T@PolymorphicMapType_19506)
(declare-fun b_24_1@0 () Bool)
(declare-fun neededTransfer@10 () Real)
(declare-fun neededTransfer@11 () Real)
(declare-fun Used_11Mask@0 () T@PolymorphicMapType_19506)
(declare-fun b_24_1@1 () Bool)
(declare-fun b_24_1@2 () Bool)
(declare-fun Ops_5Mask@10 () T@PolymorphicMapType_19506)
(declare-fun maskTransfer@4 () Real)
(declare-fun b_24_1 () Bool)
(declare-fun Ops_5Heap@9 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@8 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Mask@8 () T@PolymorphicMapType_19506)
(declare-fun b_19@18 () Bool)
(declare-fun b_19@17 () Bool)
(declare-fun Heap@4 () T@PolymorphicMapType_19485)
(declare-fun Mask@6 () T@PolymorphicMapType_19506)
(declare-fun Ops_5Heap@5 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@6 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@7 () T@PolymorphicMapType_19485)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun b_19@12 () Bool)
(declare-fun b_22@6 () Bool)
(declare-fun neededTransfer@9 () Real)
(declare-fun Used_10Mask@3 () T@PolymorphicMapType_19506)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_23@0 () Bool)
(declare-fun b_23@1 () Bool)
(declare-fun Result_9Heap () T@PolymorphicMapType_19485)
(declare-fun Result_9Mask () T@PolymorphicMapType_19506)
(declare-fun b_23@2 () Bool)
(declare-fun Ops_5Mask@7 () T@PolymorphicMapType_19506)
(declare-fun b_23@3 () Bool)
(declare-fun Used_10Heap@0 () T@PolymorphicMapType_19485)
(declare-fun b_23@4 () Bool)
(declare-fun b_19@13 () Bool)
(declare-fun b_19@14 () Bool)
(declare-fun b_19@15 () Bool)
(declare-fun b_19@16 () Bool)
(declare-fun takeTransfer@3 () Real)
(declare-fun neededTransfer@7 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_19506)
(declare-fun Heap@2 () T@PolymorphicMapType_19485)
(declare-fun b_22@3 () Bool)
(declare-fun Used_10Mask@1 () T@PolymorphicMapType_19506)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_10Mask@2 () T@PolymorphicMapType_19506)
(declare-fun b_22@4 () Bool)
(declare-fun b_22@5 () Bool)
(declare-fun Mask@5 () T@PolymorphicMapType_19506)
(declare-fun Heap@3 () T@PolymorphicMapType_19485)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Ops_5Mask@5 () T@PolymorphicMapType_19506)
(declare-fun b_22@0 () Bool)
(declare-fun neededTransfer@5 () Real)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_10Mask@0 () T@PolymorphicMapType_19506)
(declare-fun b_22@1 () Bool)
(declare-fun b_22@2 () Bool)
(declare-fun Ops_5Mask@6 () T@PolymorphicMapType_19506)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_22 () Bool)
(declare-fun Ops_5Heap@4 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@3 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Mask@4 () T@PolymorphicMapType_19506)
(declare-fun b_19@11 () Bool)
(declare-fun b_19@10 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_19506)
(declare-fun Heap@1 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@0 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@1 () T@PolymorphicMapType_19485)
(declare-fun Ops_5Heap@2 () T@PolymorphicMapType_19485)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun b_19@5 () Bool)
(declare-fun b_20@6 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_9Mask@3 () T@PolymorphicMapType_19506)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_21@0 () Bool)
(declare-fun b_21@1 () Bool)
(declare-fun Result_8Heap () T@PolymorphicMapType_19485)
(declare-fun Result_8Mask () T@PolymorphicMapType_19506)
(declare-fun b_21@2 () Bool)
(declare-fun Ops_5Mask@3 () T@PolymorphicMapType_19506)
(declare-fun b_21@3 () Bool)
(declare-fun Used_9Heap@0 () T@PolymorphicMapType_19485)
(declare-fun b_21@4 () Bool)
(declare-fun b_19@6 () Bool)
(declare-fun b_19@7 () Bool)
(declare-fun b_19@8 () Bool)
(declare-fun b_19@9 () Bool)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_19506)
(declare-fun neededTransfer@2 () Real)
(declare-fun b_20@3 () Bool)
(declare-fun Used_9Mask@1 () T@PolymorphicMapType_19506)
(declare-fun Heap@@75 () T@PolymorphicMapType_19485)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_9Mask@2 () T@PolymorphicMapType_19506)
(declare-fun b_20@4 () Bool)
(declare-fun b_20@5 () Bool)
(declare-fun Mask@2 () T@PolymorphicMapType_19506)
(declare-fun Heap@0 () T@PolymorphicMapType_19485)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_5Mask@1 () T@PolymorphicMapType_19506)
(declare-fun b_20@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun neededTransfer@1 () Real)
(declare-fun Used_9Mask@0 () T@PolymorphicMapType_19506)
(declare-fun b_20@1 () Bool)
(declare-fun b_20@2 () Bool)
(declare-fun Ops_5Mask@2 () T@PolymorphicMapType_19506)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_20 () Bool)
(declare-fun b_19@4 () Bool)
(declare-fun b_19@3 () Bool)
(declare-fun b_19@0 () Bool)
(declare-fun perm@2 () Real)
(declare-fun b_19@1 () Bool)
(declare-fun Ops_5Mask@0 () T@PolymorphicMapType_19506)
(declare-fun b_19@2 () Bool)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_19506)
(declare-fun perm@1 () Real)
(declare-fun b_19 () Bool)
(declare-fun b_18@0 () Bool)
(declare-fun b_18 () Bool)
(declare-fun Used_8Heap@0 () T@PolymorphicMapType_19485)
(set-info :boogie-vc-id test03)
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
 (=> (= (ControlFlow 0 0) 115) (let ((anon86_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (and (and b_19@28 b_19@28) b_26_1@18) (and (= neededTransfer@26 0.0) (= (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@11) null (P y)) initNeededTransfer@5)))) (=> (=> (and (and b_19@28 b_19@28) b_26_1@18) (and (= neededTransfer@26 0.0) (= (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@11) null (P y)) initNeededTransfer@5))) (=> (= b_29_1@0  (and b_19@28 b_26_1@18)) (=> (and (= b_29_1@1  (and b_29_1@0 (state Result_13Heap Result_13Mask))) (= b_29_1@2  (and b_29_1@1 (sumMask Result_13Mask Ops_5Mask Used_12Mask@11)))) (=> (and (and (and (= b_29_1@3  (and (and b_29_1@2 (IdenticalOnKnownLocations Ops_5Heap@15 Result_13Heap Ops_5Mask)) (IdenticalOnKnownLocations Used_12Heap@0 Result_13Heap Used_12Mask@11))) (= b_29_1@4  (and b_29_1@3 (state Result_13Heap Result_13Mask)))) (and (= b_19@29  (and b_19@28 b_29_1@4)) (= Mask@17 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@16) (store (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@16) null (wand_1 x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y) (+ (select (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@16) null (wand_1 x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y)) FullPerm)) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@16) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@16))))) (and (and (state Heap@14 Mask@17) (state Heap@14 Mask@17)) (and (state Heap@14 Mask@17) (= (ControlFlow 0 2) (- 0 1))))) false)))))))
(let ((anon129_Else_correct  (=> (>= 0.0 takeTransfer@11) (=> (and (= neededTransfer@26 neededTransfer@24) (= b_26_1@18 b_26_1@15)) (=> (and (and (= Mask@16 Mask@14) (= Heap@14 Heap@12)) (and (= Used_12Mask@11 Used_12Mask@9) (= (ControlFlow 0 6) 2))) anon86_correct)))))
(let ((anon129_Then_correct  (=> (> takeTransfer@11 0.0) (=> (and (= neededTransfer@25 (- neededTransfer@24 takeTransfer@11)) (= Used_12Mask@10 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_12Mask@9) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@9) null (P y) (+ (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@9) null (P y)) takeTransfer@11)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Used_12Mask@9) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Used_12Mask@9)))) (=> (and (and (= b_26_1@16  (and b_26_1@15 (state Used_12Heap@0 Used_12Mask@10))) (= TempMask@5 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) null (P y) FullPerm) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask)))) (and (= b_26_1@17  (and b_26_1@16 (IdenticalOnKnownLocations Heap@12 Used_12Heap@0 TempMask@5))) (= Mask@15 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@14) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@14) null (P y) (- (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@14) null (P y)) takeTransfer@11)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@14) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@14))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_14 T@Ref) (f_3 T@Field_24307_1887) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14 f_3) (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14 f_3)) (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| newPMask@2) o_14 f_3))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| newPMask@2) o_14 f_3))
)) (forall ((o_14@@0 T@Ref) (f_3@@0 T@Field_19545_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@0 f_3@@0) (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@0 f_3@@0)) (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| newPMask@2) o_14@@0 f_3@@0))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| newPMask@2) o_14@@0 f_3@@0))
))) (forall ((o_14@@1 T@Ref) (f_3@@1 T@Field_19558_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@1 f_3@@1) (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@1 f_3@@1)) (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| newPMask@2) o_14@@1 f_3@@1))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| newPMask@2) o_14@@1 f_3@@1))
))) (forall ((o_14@@2 T@Ref) (f_3@@2 T@Field_19545_22893) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@2 f_3@@2) (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@2 f_3@@2)) (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| newPMask@2) o_14@@2 f_3@@2))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| newPMask@2) o_14@@2 f_3@@2))
))) (forall ((o_14@@3 T@Ref) (f_3@@3 T@Field_19545_11052) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@3 f_3@@3) (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@3 f_3@@3)) (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| newPMask@2) o_14@@3 f_3@@3))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| newPMask@2) o_14@@3 f_3@@3))
))) (forall ((o_14@@4 T@Ref) (f_3@@4 T@Field_22874_1203) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@4 f_3@@4) (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@4 f_3@@4)) (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| newPMask@2) o_14@@4 f_3@@4))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| newPMask@2) o_14@@4 f_3@@4))
))) (forall ((o_14@@5 T@Ref) (f_3@@5 T@Field_22874_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@5 f_3@@5) (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@5 f_3@@5)) (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| newPMask@2) o_14@@5 f_3@@5))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| newPMask@2) o_14@@5 f_3@@5))
))) (forall ((o_14@@6 T@Ref) (f_3@@6 T@Field_22874_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@6 f_3@@6) (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@6 f_3@@6)) (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| newPMask@2) o_14@@6 f_3@@6))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| newPMask@2) o_14@@6 f_3@@6))
))) (forall ((o_14@@7 T@Ref) (f_3@@7 T@Field_22888_22893) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@7 f_3@@7) (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@7 f_3@@7)) (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| newPMask@2) o_14@@7 f_3@@7))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| newPMask@2) o_14@@7 f_3@@7))
))) (forall ((o_14@@8 T@Ref) (f_3@@8 T@Field_22905_22906) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@8 f_3@@8) (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@8 f_3@@8)) (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| newPMask@2) o_14@@8 f_3@@8))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| newPMask@2) o_14@@8 f_3@@8))
))) (forall ((o_14@@9 T@Ref) (f_3@@9 T@Field_23549_1529) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@9 f_3@@9) (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@9 f_3@@9)) (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| newPMask@2) o_14@@9 f_3@@9))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| newPMask@2) o_14@@9 f_3@@9))
))) (forall ((o_14@@10 T@Ref) (f_3@@10 T@Field_23549_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@10 f_3@@10) (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@10 f_3@@10)) (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| newPMask@2) o_14@@10 f_3@@10))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| newPMask@2) o_14@@10 f_3@@10))
))) (forall ((o_14@@11 T@Ref) (f_3@@11 T@Field_23549_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@11 f_3@@11) (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@11 f_3@@11)) (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| newPMask@2) o_14@@11 f_3@@11))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| newPMask@2) o_14@@11 f_3@@11))
))) (forall ((o_14@@12 T@Ref) (f_3@@12 T@Field_23564_23569) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@12 f_3@@12) (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@12 f_3@@12)) (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| newPMask@2) o_14@@12 f_3@@12))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| newPMask@2) o_14@@12 f_3@@12))
))) (forall ((o_14@@13 T@Ref) (f_3@@13 T@Field_23582_23583) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@13 f_3@@13) (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@13 f_3@@13)) (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| newPMask@2) o_14@@13 f_3@@13))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| newPMask@2) o_14@@13 f_3@@13))
))) (forall ((o_14@@14 T@Ref) (f_3@@14 T@Field_11051_1203) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@14 f_3@@14) (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@14 f_3@@14)) (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| newPMask@2) o_14@@14 f_3@@14))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| newPMask@2) o_14@@14 f_3@@14))
))) (forall ((o_14@@15 T@Ref) (f_3@@15 T@Field_11051_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@15 f_3@@15) (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@15 f_3@@15)) (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| newPMask@2) o_14@@15 f_3@@15))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| newPMask@2) o_14@@15 f_3@@15))
))) (forall ((o_14@@16 T@Ref) (f_3@@16 T@Field_11051_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@16 f_3@@16) (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@16 f_3@@16)) (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| newPMask@2) o_14@@16 f_3@@16))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| newPMask@2) o_14@@16 f_3@@16))
))) (forall ((o_14@@17 T@Ref) (f_3@@17 T@Field_24453_24458) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@17 f_3@@17) (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@17 f_3@@17)) (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| newPMask@2) o_14@@17 f_3@@17))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| newPMask@2) o_14@@17 f_3@@17))
))) (forall ((o_14@@18 T@Ref) (f_3@@18 T@Field_24440_24441) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@18 f_3@@18) (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@18 f_3@@18)) (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| newPMask@2) o_14@@18 f_3@@18))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| newPMask@2) o_14@@18 f_3@@18))
))) (forall ((o_14@@19 T@Ref) (f_3@@19 T@Field_11076_1203) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@19 f_3@@19) (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@19 f_3@@19)) (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| newPMask@2) o_14@@19 f_3@@19))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| newPMask@2) o_14@@19 f_3@@19))
))) (forall ((o_14@@20 T@Ref) (f_3@@20 T@Field_11076_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@20 f_3@@20) (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@20 f_3@@20)) (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| newPMask@2) o_14@@20 f_3@@20))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| newPMask@2) o_14@@20 f_3@@20))
))) (forall ((o_14@@21 T@Ref) (f_3@@21 T@Field_11076_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@21 f_3@@21) (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@21 f_3@@21)) (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| newPMask@2) o_14@@21 f_3@@21))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| newPMask@2) o_14@@21 f_3@@21))
))) (forall ((o_14@@22 T@Ref) (f_3@@22 T@Field_25391_25396) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@22 f_3@@22) (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@22 f_3@@22)) (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| newPMask@2) o_14@@22 f_3@@22))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| newPMask@2) o_14@@22 f_3@@22))
))) (forall ((o_14@@23 T@Ref) (f_3@@23 T@Field_25378_25379) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_14@@23 f_3@@23) (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) null (|P#sm| y))) o_14@@23 f_3@@23)) (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| newPMask@2) o_14@@23 f_3@@23))
 :qid |stdinbpl.1793:35|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| newPMask@2) o_14@@23 f_3@@23))
))) (= Heap@13 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@12) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@12) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y) newPMask@2) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@12) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@12)))) (and (= neededTransfer@26 neededTransfer@25) (= b_26_1@18 b_26_1@17))) (and (and (= Mask@16 Mask@15) (= Heap@14 Heap@13)) (and (= Used_12Mask@11 Used_12Mask@10) (= (ControlFlow 0 5) 2)))) anon86_correct))))))
(let ((anon128_Else_correct  (=> (and (< maskTransfer@11 neededTransfer@24) (= takeTransfer@11 maskTransfer@11)) (and (=> (= (ControlFlow 0 8) 5) anon129_Then_correct) (=> (= (ControlFlow 0 8) 6) anon129_Else_correct)))))
(let ((anon128_Then_correct  (=> (and (<= neededTransfer@24 maskTransfer@11) (= takeTransfer@11 neededTransfer@24)) (and (=> (= (ControlFlow 0 7) 5) anon129_Then_correct) (=> (= (ControlFlow 0 7) 6) anon129_Else_correct)))))
(let ((anon127_Then_correct  (=> (and (and (and (and (and b_19@28 b_19@28) b_26_1@15) true) (> neededTransfer@24 0.0)) (= maskTransfer@11 (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@14) null (P y)))) (and (=> (= (ControlFlow 0 9) 7) anon128_Then_correct) (=> (= (ControlFlow 0 9) 8) anon128_Else_correct)))))
(let ((anon127_Else_correct  (=> (not (and (and (and (and b_19@28 b_19@28) b_26_1@15) true) (> neededTransfer@24 0.0))) (=> (and (= neededTransfer@26 neededTransfer@24) (= b_26_1@18 b_26_1@15)) (=> (and (and (= Mask@16 Mask@14) (= Heap@14 Heap@12)) (and (= Used_12Mask@11 Used_12Mask@9) (= (ControlFlow 0 4) 2))) anon86_correct)))))
(let ((anon126_Else_correct  (=> (and (and (>= 0.0 takeTransfer@10) (= Used_12Mask@9 Used_12Mask@7)) (and (= b_26_1@15 b_26_1@12) (= neededTransfer@24 FullPerm))) (and (=> (= (ControlFlow 0 12) 9) anon127_Then_correct) (=> (= (ControlFlow 0 12) 4) anon127_Else_correct)))))
(let ((anon126_Then_correct  (=> (and (> takeTransfer@10 0.0) (= neededTransfer@23 (- FullPerm takeTransfer@10))) (=> (and (and (and (= Used_12Mask@8 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_12Mask@7) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@7) null (P y) (+ (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@7) null (P y)) takeTransfer@10)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Used_12Mask@7) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Used_12Mask@7))) (= b_26_1@13  (and b_26_1@12 (state Used_12Heap@0 Used_12Mask@8)))) (and (= TempMask@4 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) null (P y) FullPerm) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask))) (= b_26_1@14  (and b_26_1@13 (IdenticalOnKnownLocations Ops_5Heap@15 Used_12Heap@0 TempMask@4))))) (and (and (= Ops_5Mask@18 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@17) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@17) null (P y) (- (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@17) null (P y)) takeTransfer@10)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Ops_5Mask@17) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Ops_5Mask@17))) (= Used_12Mask@9 Used_12Mask@8)) (and (= b_26_1@15 b_26_1@14) (= neededTransfer@24 neededTransfer@23)))) (and (=> (= (ControlFlow 0 11) 9) anon127_Then_correct) (=> (= (ControlFlow 0 11) 4) anon127_Else_correct))))))
(let ((anon125_Else_correct  (=> (and (< maskTransfer@10 FullPerm) (= takeTransfer@10 maskTransfer@10)) (and (=> (= (ControlFlow 0 14) 11) anon126_Then_correct) (=> (= (ControlFlow 0 14) 12) anon126_Else_correct)))))
(let ((anon125_Then_correct  (=> (and (<= FullPerm maskTransfer@10) (= takeTransfer@10 FullPerm)) (and (=> (= (ControlFlow 0 13) 11) anon126_Then_correct) (=> (= (ControlFlow 0 13) 12) anon126_Else_correct)))))
(let ((anon124_Then_correct  (=> (and (and (and (and (and b_19@28 b_19@28) b_26_1@12) true) (> FullPerm 0.0)) (= maskTransfer@10 (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@17) null (P y)))) (and (=> (= (ControlFlow 0 15) 13) anon125_Then_correct) (=> (= (ControlFlow 0 15) 14) anon125_Else_correct)))))
(let ((anon124_Else_correct  (=> (and (and (not (and (and (and (and b_19@28 b_19@28) b_26_1@12) true) (> FullPerm 0.0))) (= Used_12Mask@9 Used_12Mask@7)) (and (= b_26_1@15 b_26_1@12) (= neededTransfer@24 FullPerm))) (and (=> (= (ControlFlow 0 10) 9) anon127_Then_correct) (=> (= (ControlFlow 0 10) 4) anon127_Else_correct)))))
(let ((anon74_correct  (and (=> (= (ControlFlow 0 16) (- 0 18)) (=> (and (and b_19@27 b_19@27) b_26_1@12) (and (= neededTransfer@22 0.0) (= (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@7) null (Q x@@11)) initNeededTransfer@4)))) (=> (=> (and (and b_19@27 b_19@27) b_26_1@12) (and (= neededTransfer@22 0.0) (= (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@7) null (Q x@@11)) initNeededTransfer@4))) (=> (= b_28_1@0  (and b_19@27 b_26_1@12)) (=> (and (= b_28_1@1  (and b_28_1@0 (state Result_12Heap Result_12Mask))) (= b_28_1@2  (and b_28_1@1 (sumMask Result_12Mask Ops_5Mask@17 Used_12Mask@7)))) (=> (and (and (= b_28_1@3  (and (and b_28_1@2 (IdenticalOnKnownLocations Ops_5Heap@15 Result_12Heap Ops_5Mask@17)) (IdenticalOnKnownLocations Used_12Heap@0 Result_12Heap Used_12Mask@7))) (= b_28_1@4  (and b_28_1@3 (state Result_12Heap Result_12Mask)))) (and (= b_19@28  (and b_19@27 b_28_1@4)) (= initNeededTransfer@5 (+ (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@7) null (P y)) FullPerm)))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 16) 15) anon124_Then_correct) (=> (= (ControlFlow 0 16) 10) anon124_Else_correct)))))))))))
(let ((anon123_Else_correct  (=> (>= 0.0 takeTransfer@9) (=> (and (= neededTransfer@22 neededTransfer@20) (= Heap@12 Heap@10)) (=> (and (and (= Mask@14 Mask@12) (= b_26_1@12 b_26_1@9)) (and (= Used_12Mask@7 Used_12Mask@5) (= (ControlFlow 0 21) 16))) anon74_correct)))))
(let ((anon123_Then_correct  (=> (> takeTransfer@9 0.0) (=> (and (= neededTransfer@21 (- neededTransfer@20 takeTransfer@9)) (= Used_12Mask@6 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@5) (store (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@5) null (Q x@@11) (+ (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@5) null (Q x@@11)) takeTransfer@9)) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Used_12Mask@5) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Used_12Mask@5)))) (=> (and (and (= b_26_1@10  (and b_26_1@9 (state Used_12Heap@0 Used_12Mask@6))) (= TempMask@3 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) (store (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) null (Q x@@11) FullPerm) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask)))) (and (= b_26_1@11  (and b_26_1@10 (IdenticalOnKnownLocations Heap@10 Used_12Heap@0 TempMask@3))) (= Mask@13 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@12) (store (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@12) null (Q x@@11) (- (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@12) null (Q x@@11)) takeTransfer@9)) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@12) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@12))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o T@Ref) (f_61 T@Field_24307_1887) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o f_61) (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o f_61)) (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| newPMask@1) o f_61))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| newPMask@1) o f_61))
)) (forall ((o@@0 T@Ref) (f_61@@0 T@Field_19545_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@0 f_61@@0) (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@0 f_61@@0)) (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| newPMask@1) o@@0 f_61@@0))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| newPMask@1) o@@0 f_61@@0))
))) (forall ((o@@1 T@Ref) (f_61@@1 T@Field_19558_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@1 f_61@@1) (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@1 f_61@@1)) (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| newPMask@1) o@@1 f_61@@1))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| newPMask@1) o@@1 f_61@@1))
))) (forall ((o@@2 T@Ref) (f_61@@2 T@Field_19545_22893) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@2 f_61@@2) (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@2 f_61@@2)) (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| newPMask@1) o@@2 f_61@@2))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| newPMask@1) o@@2 f_61@@2))
))) (forall ((o@@3 T@Ref) (f_61@@3 T@Field_19545_11052) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@3 f_61@@3) (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@3 f_61@@3)) (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| newPMask@1) o@@3 f_61@@3))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| newPMask@1) o@@3 f_61@@3))
))) (forall ((o@@4 T@Ref) (f_61@@4 T@Field_22874_1203) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@4 f_61@@4) (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@4 f_61@@4)) (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| newPMask@1) o@@4 f_61@@4))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| newPMask@1) o@@4 f_61@@4))
))) (forall ((o@@5 T@Ref) (f_61@@5 T@Field_22874_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@5 f_61@@5) (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@5 f_61@@5)) (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| newPMask@1) o@@5 f_61@@5))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| newPMask@1) o@@5 f_61@@5))
))) (forall ((o@@6 T@Ref) (f_61@@6 T@Field_22874_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@6 f_61@@6) (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@6 f_61@@6)) (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| newPMask@1) o@@6 f_61@@6))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| newPMask@1) o@@6 f_61@@6))
))) (forall ((o@@7 T@Ref) (f_61@@7 T@Field_22888_22893) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@7 f_61@@7) (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@7 f_61@@7)) (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| newPMask@1) o@@7 f_61@@7))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| newPMask@1) o@@7 f_61@@7))
))) (forall ((o@@8 T@Ref) (f_61@@8 T@Field_22905_22906) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@8 f_61@@8) (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@8 f_61@@8)) (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| newPMask@1) o@@8 f_61@@8))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| newPMask@1) o@@8 f_61@@8))
))) (forall ((o@@9 T@Ref) (f_61@@9 T@Field_23549_1529) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@9 f_61@@9) (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@9 f_61@@9)) (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| newPMask@1) o@@9 f_61@@9))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| newPMask@1) o@@9 f_61@@9))
))) (forall ((o@@10 T@Ref) (f_61@@10 T@Field_23549_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@10 f_61@@10) (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@10 f_61@@10)) (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| newPMask@1) o@@10 f_61@@10))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| newPMask@1) o@@10 f_61@@10))
))) (forall ((o@@11 T@Ref) (f_61@@11 T@Field_23549_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@11 f_61@@11) (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@11 f_61@@11)) (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| newPMask@1) o@@11 f_61@@11))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| newPMask@1) o@@11 f_61@@11))
))) (forall ((o@@12 T@Ref) (f_61@@12 T@Field_23564_23569) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@12 f_61@@12) (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@12 f_61@@12)) (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| newPMask@1) o@@12 f_61@@12))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| newPMask@1) o@@12 f_61@@12))
))) (forall ((o@@13 T@Ref) (f_61@@13 T@Field_23582_23583) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@13 f_61@@13) (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@13 f_61@@13)) (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| newPMask@1) o@@13 f_61@@13))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| newPMask@1) o@@13 f_61@@13))
))) (forall ((o@@14 T@Ref) (f_61@@14 T@Field_11051_1203) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@14 f_61@@14) (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@14 f_61@@14)) (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| newPMask@1) o@@14 f_61@@14))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| newPMask@1) o@@14 f_61@@14))
))) (forall ((o@@15 T@Ref) (f_61@@15 T@Field_11051_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@15 f_61@@15) (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@15 f_61@@15)) (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| newPMask@1) o@@15 f_61@@15))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| newPMask@1) o@@15 f_61@@15))
))) (forall ((o@@16 T@Ref) (f_61@@16 T@Field_11051_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@16 f_61@@16) (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@16 f_61@@16)) (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| newPMask@1) o@@16 f_61@@16))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| newPMask@1) o@@16 f_61@@16))
))) (forall ((o@@17 T@Ref) (f_61@@17 T@Field_24453_24458) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@17 f_61@@17) (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@17 f_61@@17)) (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| newPMask@1) o@@17 f_61@@17))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| newPMask@1) o@@17 f_61@@17))
))) (forall ((o@@18 T@Ref) (f_61@@18 T@Field_24440_24441) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@18 f_61@@18) (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@18 f_61@@18)) (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| newPMask@1) o@@18 f_61@@18))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| newPMask@1) o@@18 f_61@@18))
))) (forall ((o@@19 T@Ref) (f_61@@19 T@Field_11076_1203) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@19 f_61@@19) (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@19 f_61@@19)) (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| newPMask@1) o@@19 f_61@@19))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| newPMask@1) o@@19 f_61@@19))
))) (forall ((o@@20 T@Ref) (f_61@@20 T@Field_11076_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@20 f_61@@20) (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@20 f_61@@20)) (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| newPMask@1) o@@20 f_61@@20))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| newPMask@1) o@@20 f_61@@20))
))) (forall ((o@@21 T@Ref) (f_61@@21 T@Field_11076_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@21 f_61@@21) (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@21 f_61@@21)) (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| newPMask@1) o@@21 f_61@@21))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| newPMask@1) o@@21 f_61@@21))
))) (forall ((o@@22 T@Ref) (f_61@@22 T@Field_25391_25396) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@22 f_61@@22) (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@22 f_61@@22)) (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| newPMask@1) o@@22 f_61@@22))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| newPMask@1) o@@22 f_61@@22))
))) (forall ((o@@23 T@Ref) (f_61@@23 T@Field_25378_25379) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o@@23 f_61@@23) (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) null (|Q#sm| x@@11))) o@@23 f_61@@23)) (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| newPMask@1) o@@23 f_61@@23))
 :qid |stdinbpl.1728:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| newPMask@1) o@@23 f_61@@23))
))) (= Heap@11 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@10) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@10) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y) newPMask@1) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@10) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@10)))) (and (= neededTransfer@22 neededTransfer@21) (= Heap@12 Heap@11))) (and (and (= Mask@14 Mask@13) (= b_26_1@12 b_26_1@11)) (and (= Used_12Mask@7 Used_12Mask@6) (= (ControlFlow 0 20) 16)))) anon74_correct))))))
(let ((anon122_Else_correct  (=> (and (< maskTransfer@9 neededTransfer@20) (= takeTransfer@9 maskTransfer@9)) (and (=> (= (ControlFlow 0 23) 20) anon123_Then_correct) (=> (= (ControlFlow 0 23) 21) anon123_Else_correct)))))
(let ((anon122_Then_correct  (=> (and (<= neededTransfer@20 maskTransfer@9) (= takeTransfer@9 neededTransfer@20)) (and (=> (= (ControlFlow 0 22) 20) anon123_Then_correct) (=> (= (ControlFlow 0 22) 21) anon123_Else_correct)))))
(let ((anon121_Then_correct  (=> (and (and (and (and (and b_19@27 b_19@27) b_26_1@9) true) (> neededTransfer@20 0.0)) (= maskTransfer@9 (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@12) null (Q x@@11)))) (and (=> (= (ControlFlow 0 24) 22) anon122_Then_correct) (=> (= (ControlFlow 0 24) 23) anon122_Else_correct)))))
(let ((anon121_Else_correct  (=> (not (and (and (and (and b_19@27 b_19@27) b_26_1@9) true) (> neededTransfer@20 0.0))) (=> (and (= neededTransfer@22 neededTransfer@20) (= Heap@12 Heap@10)) (=> (and (and (= Mask@14 Mask@12) (= b_26_1@12 b_26_1@9)) (and (= Used_12Mask@7 Used_12Mask@5) (= (ControlFlow 0 19) 16))) anon74_correct)))))
(let ((anon120_Else_correct  (=> (>= 0.0 takeTransfer@8) (=> (and (and (= Used_12Mask@5 Used_12Mask@3) (= b_26_1@9 b_26_1@6)) (and (= neededTransfer@20 FullPerm) (= Ops_5Mask@17 Ops_5Mask@15))) (and (=> (= (ControlFlow 0 27) 24) anon121_Then_correct) (=> (= (ControlFlow 0 27) 19) anon121_Else_correct))))))
(let ((anon120_Then_correct  (=> (> takeTransfer@8 0.0) (=> (and (= neededTransfer@19 (- FullPerm takeTransfer@8)) (= Used_12Mask@4 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@3) (store (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@3) null (Q x@@11) (+ (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@3) null (Q x@@11)) takeTransfer@8)) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Used_12Mask@3) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Used_12Mask@3)))) (=> (and (and (and (= b_26_1@7  (and b_26_1@6 (state Used_12Heap@0 Used_12Mask@4))) (= TempMask@2 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) (store (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) null (Q x@@11) FullPerm) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask)))) (and (= b_26_1@8  (and b_26_1@7 (IdenticalOnKnownLocations Ops_5Heap@15 Used_12Heap@0 TempMask@2))) (= Ops_5Mask@16 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@15) (store (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@15) null (Q x@@11) (- (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@15) null (Q x@@11)) takeTransfer@8)) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Ops_5Mask@15) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Ops_5Mask@15))))) (and (and (= Used_12Mask@5 Used_12Mask@4) (= b_26_1@9 b_26_1@8)) (and (= neededTransfer@20 neededTransfer@19) (= Ops_5Mask@17 Ops_5Mask@16)))) (and (=> (= (ControlFlow 0 26) 24) anon121_Then_correct) (=> (= (ControlFlow 0 26) 19) anon121_Else_correct)))))))
(let ((anon119_Else_correct  (=> (and (< maskTransfer@8 FullPerm) (= takeTransfer@8 maskTransfer@8)) (and (=> (= (ControlFlow 0 29) 26) anon120_Then_correct) (=> (= (ControlFlow 0 29) 27) anon120_Else_correct)))))
(let ((anon119_Then_correct  (=> (and (<= FullPerm maskTransfer@8) (= takeTransfer@8 FullPerm)) (and (=> (= (ControlFlow 0 28) 26) anon120_Then_correct) (=> (= (ControlFlow 0 28) 27) anon120_Else_correct)))))
(let ((anon118_Then_correct  (=> (and (and (and (and (and b_19@27 b_19@27) b_26_1@6) true) (> FullPerm 0.0)) (= maskTransfer@8 (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@15) null (Q x@@11)))) (and (=> (= (ControlFlow 0 30) 28) anon119_Then_correct) (=> (= (ControlFlow 0 30) 29) anon119_Else_correct)))))
(let ((anon118_Else_correct  (=> (not (and (and (and (and b_19@27 b_19@27) b_26_1@6) true) (> FullPerm 0.0))) (=> (and (and (= Used_12Mask@5 Used_12Mask@3) (= b_26_1@9 b_26_1@6)) (and (= neededTransfer@20 FullPerm) (= Ops_5Mask@17 Ops_5Mask@15))) (and (=> (= (ControlFlow 0 25) 24) anon121_Then_correct) (=> (= (ControlFlow 0 25) 19) anon121_Else_correct))))))
(let ((anon62_correct  (and (=> (= (ControlFlow 0 31) (- 0 33)) (=> (and (and b_19@26 b_19@26) b_26_1@6) (and (= neededTransfer@18 0.0) (= (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@3) null (P x@@11)) initNeededTransfer@3)))) (=> (=> (and (and b_19@26 b_19@26) b_26_1@6) (and (= neededTransfer@18 0.0) (= (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@3) null (P x@@11)) initNeededTransfer@3))) (=> (= b_27_1@0  (and b_19@26 b_26_1@6)) (=> (and (= b_27_1@1  (and b_27_1@0 (state Result_11Heap Result_11Mask))) (= b_27_1@2  (and b_27_1@1 (sumMask Result_11Mask Ops_5Mask@15 Used_12Mask@3)))) (=> (and (and (= b_27_1@3  (and (and b_27_1@2 (IdenticalOnKnownLocations Ops_5Heap@15 Result_11Heap Ops_5Mask@15)) (IdenticalOnKnownLocations Used_12Heap@0 Result_11Heap Used_12Mask@3))) (= b_27_1@4  (and b_27_1@3 (state Result_11Heap Result_11Mask)))) (and (= b_19@27  (and b_19@26 b_27_1@4)) (= initNeededTransfer@4 (+ (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@3) null (Q x@@11)) FullPerm)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 31) 30) anon118_Then_correct) (=> (= (ControlFlow 0 31) 25) anon118_Else_correct)))))))))))
(let ((anon117_Else_correct  (=> (>= 0.0 takeTransfer@7) (=> (and (= neededTransfer@18 neededTransfer@16) (= Mask@12 Mask@10)) (=> (and (and (= Heap@10 Heap@8) (= b_26_1@6 b_26_1@3)) (and (= Used_12Mask@3 Used_12Mask@1) (= (ControlFlow 0 36) 31))) anon62_correct)))))
(let ((anon117_Then_correct  (=> (> takeTransfer@7 0.0) (=> (and (= neededTransfer@17 (- neededTransfer@16 takeTransfer@7)) (= Used_12Mask@2 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_12Mask@1) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@1) null (P x@@11) (+ (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_12Mask@1) null (P x@@11)) takeTransfer@7)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Used_12Mask@1) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Used_12Mask@1)))) (=> (and (and (= b_26_1@4  (and b_26_1@3 (state Used_12Heap@0 Used_12Mask@2))) (= TempMask@1 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) null (P x@@11) FullPerm) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask)))) (and (= b_26_1@5  (and b_26_1@4 (IdenticalOnKnownLocations Heap@8 Used_12Heap@0 TempMask@1))) (= Mask@11 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@10) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@10) null (P x@@11) (- (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@10) null (P x@@11)) takeTransfer@7)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@10) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@10))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_46 T@Ref) (f_60 T@Field_24307_1887) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46 f_60) (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46 f_60)) (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| newPMask@0) o_46 f_60))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| newPMask@0) o_46 f_60))
)) (forall ((o_46@@0 T@Ref) (f_60@@0 T@Field_19545_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@0 f_60@@0) (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@0 f_60@@0)) (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| newPMask@0) o_46@@0 f_60@@0))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| newPMask@0) o_46@@0 f_60@@0))
))) (forall ((o_46@@1 T@Ref) (f_60@@1 T@Field_19558_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@1 f_60@@1) (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@1 f_60@@1)) (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| newPMask@0) o_46@@1 f_60@@1))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| newPMask@0) o_46@@1 f_60@@1))
))) (forall ((o_46@@2 T@Ref) (f_60@@2 T@Field_19545_22893) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@2 f_60@@2) (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@2 f_60@@2)) (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| newPMask@0) o_46@@2 f_60@@2))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| newPMask@0) o_46@@2 f_60@@2))
))) (forall ((o_46@@3 T@Ref) (f_60@@3 T@Field_19545_11052) ) (!  (=> (or (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@3 f_60@@3) (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@3 f_60@@3)) (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| newPMask@0) o_46@@3 f_60@@3))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| newPMask@0) o_46@@3 f_60@@3))
))) (forall ((o_46@@4 T@Ref) (f_60@@4 T@Field_22874_1203) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@4 f_60@@4) (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@4 f_60@@4)) (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| newPMask@0) o_46@@4 f_60@@4))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| newPMask@0) o_46@@4 f_60@@4))
))) (forall ((o_46@@5 T@Ref) (f_60@@5 T@Field_22874_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@5 f_60@@5) (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@5 f_60@@5)) (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| newPMask@0) o_46@@5 f_60@@5))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| newPMask@0) o_46@@5 f_60@@5))
))) (forall ((o_46@@6 T@Ref) (f_60@@6 T@Field_22874_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@6 f_60@@6) (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@6 f_60@@6)) (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| newPMask@0) o_46@@6 f_60@@6))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| newPMask@0) o_46@@6 f_60@@6))
))) (forall ((o_46@@7 T@Ref) (f_60@@7 T@Field_22888_22893) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@7 f_60@@7) (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@7 f_60@@7)) (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| newPMask@0) o_46@@7 f_60@@7))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| newPMask@0) o_46@@7 f_60@@7))
))) (forall ((o_46@@8 T@Ref) (f_60@@8 T@Field_22905_22906) ) (!  (=> (or (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@8 f_60@@8) (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@8 f_60@@8)) (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| newPMask@0) o_46@@8 f_60@@8))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| newPMask@0) o_46@@8 f_60@@8))
))) (forall ((o_46@@9 T@Ref) (f_60@@9 T@Field_23549_1529) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@9 f_60@@9) (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@9 f_60@@9)) (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| newPMask@0) o_46@@9 f_60@@9))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| newPMask@0) o_46@@9 f_60@@9))
))) (forall ((o_46@@10 T@Ref) (f_60@@10 T@Field_23549_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@10 f_60@@10) (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@10 f_60@@10)) (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| newPMask@0) o_46@@10 f_60@@10))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| newPMask@0) o_46@@10 f_60@@10))
))) (forall ((o_46@@11 T@Ref) (f_60@@11 T@Field_23549_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@11 f_60@@11) (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@11 f_60@@11)) (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| newPMask@0) o_46@@11 f_60@@11))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| newPMask@0) o_46@@11 f_60@@11))
))) (forall ((o_46@@12 T@Ref) (f_60@@12 T@Field_23564_23569) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@12 f_60@@12) (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@12 f_60@@12)) (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| newPMask@0) o_46@@12 f_60@@12))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| newPMask@0) o_46@@12 f_60@@12))
))) (forall ((o_46@@13 T@Ref) (f_60@@13 T@Field_23582_23583) ) (!  (=> (or (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@13 f_60@@13) (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@13 f_60@@13)) (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| newPMask@0) o_46@@13 f_60@@13))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| newPMask@0) o_46@@13 f_60@@13))
))) (forall ((o_46@@14 T@Ref) (f_60@@14 T@Field_11051_1203) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@14 f_60@@14) (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@14 f_60@@14)) (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| newPMask@0) o_46@@14 f_60@@14))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| newPMask@0) o_46@@14 f_60@@14))
))) (forall ((o_46@@15 T@Ref) (f_60@@15 T@Field_11051_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@15 f_60@@15) (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@15 f_60@@15)) (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| newPMask@0) o_46@@15 f_60@@15))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| newPMask@0) o_46@@15 f_60@@15))
))) (forall ((o_46@@16 T@Ref) (f_60@@16 T@Field_11051_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@16 f_60@@16) (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@16 f_60@@16)) (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| newPMask@0) o_46@@16 f_60@@16))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| newPMask@0) o_46@@16 f_60@@16))
))) (forall ((o_46@@17 T@Ref) (f_60@@17 T@Field_24453_24458) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@17 f_60@@17) (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@17 f_60@@17)) (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| newPMask@0) o_46@@17 f_60@@17))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| newPMask@0) o_46@@17 f_60@@17))
))) (forall ((o_46@@18 T@Ref) (f_60@@18 T@Field_24440_24441) ) (!  (=> (or (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@18 f_60@@18) (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@18 f_60@@18)) (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| newPMask@0) o_46@@18 f_60@@18))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| newPMask@0) o_46@@18 f_60@@18))
))) (forall ((o_46@@19 T@Ref) (f_60@@19 T@Field_11076_1203) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@19 f_60@@19) (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@19 f_60@@19)) (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| newPMask@0) o_46@@19 f_60@@19))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| newPMask@0) o_46@@19 f_60@@19))
))) (forall ((o_46@@20 T@Ref) (f_60@@20 T@Field_11076_53) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@20 f_60@@20) (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@20 f_60@@20)) (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| newPMask@0) o_46@@20 f_60@@20))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| newPMask@0) o_46@@20 f_60@@20))
))) (forall ((o_46@@21 T@Ref) (f_60@@21 T@Field_11076_19559) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@21 f_60@@21) (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@21 f_60@@21)) (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| newPMask@0) o_46@@21 f_60@@21))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| newPMask@0) o_46@@21 f_60@@21))
))) (forall ((o_46@@22 T@Ref) (f_60@@22 T@Field_25391_25396) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@22 f_60@@22) (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@22 f_60@@22)) (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| newPMask@0) o_46@@22 f_60@@22))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| newPMask@0) o_46@@22 f_60@@22))
))) (forall ((o_46@@23 T@Ref) (f_60@@23 T@Field_25378_25379) ) (!  (=> (or (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) o_46@@23 f_60@@23) (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) null (|P#sm| x@@11))) o_46@@23 f_60@@23)) (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| newPMask@0) o_46@@23 f_60@@23))
 :qid |stdinbpl.1663:35|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| newPMask@0) o_46@@23 f_60@@23))
))) (= Heap@9 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@8) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@8) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y) newPMask@0) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@8) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@8)))) (and (= neededTransfer@18 neededTransfer@17) (= Mask@12 Mask@11))) (and (and (= Heap@10 Heap@9) (= b_26_1@6 b_26_1@5)) (and (= Used_12Mask@3 Used_12Mask@2) (= (ControlFlow 0 35) 31)))) anon62_correct))))))
(let ((anon116_Else_correct  (=> (and (< maskTransfer@7 neededTransfer@16) (= takeTransfer@7 maskTransfer@7)) (and (=> (= (ControlFlow 0 38) 35) anon117_Then_correct) (=> (= (ControlFlow 0 38) 36) anon117_Else_correct)))))
(let ((anon116_Then_correct  (=> (and (<= neededTransfer@16 maskTransfer@7) (= takeTransfer@7 neededTransfer@16)) (and (=> (= (ControlFlow 0 37) 35) anon117_Then_correct) (=> (= (ControlFlow 0 37) 36) anon117_Else_correct)))))
(let ((anon115_Then_correct  (=> (and (and (and (and (and b_19@26 b_19@26) b_26_1@3) true) (> neededTransfer@16 0.0)) (= maskTransfer@7 (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@10) null (P x@@11)))) (and (=> (= (ControlFlow 0 39) 37) anon116_Then_correct) (=> (= (ControlFlow 0 39) 38) anon116_Else_correct)))))
(let ((anon115_Else_correct  (=> (not (and (and (and (and b_19@26 b_19@26) b_26_1@3) true) (> neededTransfer@16 0.0))) (=> (and (= neededTransfer@18 neededTransfer@16) (= Mask@12 Mask@10)) (=> (and (and (= Heap@10 Heap@8) (= b_26_1@6 b_26_1@3)) (and (= Used_12Mask@3 Used_12Mask@1) (= (ControlFlow 0 34) 31))) anon62_correct)))))
(let ((anon114_Else_correct  (=> (>= 0.0 takeTransfer@6) (=> (and (and (= Ops_5Mask@15 Ops_5Mask@13) (= Used_12Mask@1 ZeroMask)) (and (= b_26_1@3 b_26_1@0) (= neededTransfer@16 FullPerm))) (and (=> (= (ControlFlow 0 42) 39) anon115_Then_correct) (=> (= (ControlFlow 0 42) 34) anon115_Else_correct))))))
(let ((anon114_Then_correct  (=> (> takeTransfer@6 0.0) (=> (and (= neededTransfer@15 (- FullPerm takeTransfer@6)) (= Used_12Mask@0 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) null (P x@@11) (+ (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) null (P x@@11)) takeTransfer@6)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask)))) (=> (and (and (and (= b_26_1@1  (and b_26_1@0 (state Used_12Heap@0 Used_12Mask@0))) (= TempMask@0 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) null (P x@@11) FullPerm) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask)))) (and (= b_26_1@2  (and b_26_1@1 (IdenticalOnKnownLocations Ops_5Heap@15 Used_12Heap@0 TempMask@0))) (= Ops_5Mask@14 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@13) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@13) null (P x@@11) (- (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@13) null (P x@@11)) takeTransfer@6)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Ops_5Mask@13) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Ops_5Mask@13))))) (and (and (= Ops_5Mask@15 Ops_5Mask@14) (= Used_12Mask@1 Used_12Mask@0)) (and (= b_26_1@3 b_26_1@2) (= neededTransfer@16 neededTransfer@15)))) (and (=> (= (ControlFlow 0 41) 39) anon115_Then_correct) (=> (= (ControlFlow 0 41) 34) anon115_Else_correct)))))))
(let ((anon113_Else_correct  (=> (and (< maskTransfer@6 FullPerm) (= takeTransfer@6 maskTransfer@6)) (and (=> (= (ControlFlow 0 44) 41) anon114_Then_correct) (=> (= (ControlFlow 0 44) 42) anon114_Else_correct)))))
(let ((anon113_Then_correct  (=> (and (<= FullPerm maskTransfer@6) (= takeTransfer@6 FullPerm)) (and (=> (= (ControlFlow 0 43) 41) anon114_Then_correct) (=> (= (ControlFlow 0 43) 42) anon114_Else_correct)))))
(let ((anon112_Then_correct  (=> (and (and (and (and (and b_19@26 b_19@26) b_26_1@0) true) (> FullPerm 0.0)) (= maskTransfer@6 (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@13) null (P x@@11)))) (and (=> (= (ControlFlow 0 45) 43) anon113_Then_correct) (=> (= (ControlFlow 0 45) 44) anon113_Else_correct)))))
(let ((anon112_Else_correct  (=> (not (and (and (and (and b_19@26 b_19@26) b_26_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_5Mask@15 Ops_5Mask@13) (= Used_12Mask@1 ZeroMask)) (and (= b_26_1@3 b_26_1@0) (= neededTransfer@16 FullPerm))) (and (=> (= (ControlFlow 0 40) 39) anon115_Then_correct) (=> (= (ControlFlow 0 40) 34) anon115_Else_correct))))))
(let ((anon50_correct  (=> (and (= b_26_1@0  (and b_26_1 (state Used_12Heap@0 ZeroMask))) (= initNeededTransfer@3 (+ (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) null (P x@@11)) FullPerm))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 46) 45) anon112_Then_correct) (=> (= (ControlFlow 0 46) 40) anon112_Else_correct)))))))
(let ((anon49_correct  (=> (= Ops_5Heap@14 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@13) (store (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y) (PolymorphicMapType_20034 (store (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) y f_7 true) (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))) (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@13) null (|P#sm| y))))) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Ops_5Heap@13) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Ops_5Heap@13))) (=> (and (and (and (state Ops_5Heap@14 Ops_5Mask@12) (= b_19@25  (and b_19@24 (state Ops_5Heap@14 Ops_5Mask@12)))) (and (= b_19@26 b_19@25) (= Ops_5Heap@15 Ops_5Heap@14))) (and (and (= Heap@8 Heap@7) (= Mask@10 Mask@9)) (and (= Ops_5Mask@13 Ops_5Mask@12) (= (ControlFlow 0 49) 46)))) anon50_correct))))
(let ((anon111_Else_correct  (=> (HasDirectPerm_11051_11052 Ops_5Mask@12 null (P y)) (=> (and (= Ops_5Heap@13 Ops_5Heap@10) (= (ControlFlow 0 51) 49)) anon49_correct))))
(let ((anon111_Then_correct  (=> (not (HasDirectPerm_11051_11052 Ops_5Mask@12 null (P y))) (=> (and (and (= Ops_5Heap@11 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@10) (store (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@10) null (|P#sm| y) ZeroPMask) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Ops_5Heap@10) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Ops_5Heap@10))) (= Ops_5Heap@12 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Ops_5Heap@11) (store (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@11) null (P y) freshVersion@2) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Ops_5Heap@11) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Ops_5Heap@11)))) (and (= Ops_5Heap@13 Ops_5Heap@12) (= (ControlFlow 0 50) 49))) anon49_correct))))
(let ((anon47_correct  (and (=> (= (ControlFlow 0 52) (- 0 53)) (=> (and b_19@19 b_24_1@6) (and (= neededTransfer@14 0.0) (= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_11Mask@3) y f_7) initNeededTransfer@2)))) (=> (=> (and b_19@19 b_24_1@6) (and (= neededTransfer@14 0.0) (= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_11Mask@3) y f_7) initNeededTransfer@2))) (=> (= b_25_1@0  (and b_19@19 b_24_1@6)) (=> (and (and (= b_25_1@1  (and b_25_1@0 (state Result_10Heap Result_10Mask))) (= b_25_1@2  (and b_25_1@1 (sumMask Result_10Mask Ops_5Mask@11 Used_11Mask@3)))) (and (= b_25_1@3  (and (and b_25_1@2 (IdenticalOnKnownLocations Ops_5Heap@10 Result_10Heap Ops_5Mask@11)) (IdenticalOnKnownLocations Used_11Heap@0 Result_10Heap Used_11Mask@3))) (= b_25_1@4  (and b_25_1@3 (state Result_10Heap Result_10Mask))))) (=> (and (and (and (= b_19@20  (and b_19@19 b_25_1@4)) (= b_19@21  (and b_19@20 b_24_1@6))) (and (= b_19@22  (and b_19@21 (= Used_11Heap@0 Ops_5Heap@10))) (= Ops_5Mask@12 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@11) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@11) null (P y) (+ (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@11) null (P y)) FullPerm)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Ops_5Mask@11) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Ops_5Mask@11))))) (and (and (= b_19@23  (and b_19@22 (state Ops_5Heap@10 Ops_5Mask@12))) (= b_19@24  (and b_19@23 (state Ops_5Heap@10 Ops_5Mask@12)))) (and (|P#trigger_11051| Ops_5Heap@10 (P y)) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@10) null (P y)) (FrameFragment_1887 (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@10) y f_7)))))) (and (=> (= (ControlFlow 0 52) 50) anon111_Then_correct) (=> (= (ControlFlow 0 52) 51) anon111_Else_correct)))))))))
(let ((anon110_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= neededTransfer@14 neededTransfer@12) (= Mask@9 Mask@7)) (=> (and (and (= Heap@7 Heap@5) (= b_24_1@6 b_24_1@3)) (and (= Used_11Mask@3 Used_11Mask@1) (= (ControlFlow 0 56) 52))) anon47_correct)))))
(let ((anon110_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (and (= neededTransfer@13 (- neededTransfer@12 takeTransfer@5)) (= Used_11Mask@2 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_11Mask@1) y f_7 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_11Mask@1) y f_7) takeTransfer@5)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Used_11Mask@1) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Used_11Mask@1)))) (and (= b_24_1@4  (and b_24_1@3 (state Used_11Heap@0 Used_11Mask@2))) (= b_24_1@5  (and b_24_1@4 (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@5) y f_7) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Used_11Heap@0) y f_7)))))) (=> (and (and (and (= Mask@8 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@7) y f_7 (- (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@7) y f_7) takeTransfer@5)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@7) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@7))) (= Heap@6 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@5) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y) (PolymorphicMapType_20034 (store (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) y f_7 true) (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@5) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))))) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@5) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@5)))) (and (= neededTransfer@14 neededTransfer@13) (= Mask@9 Mask@8))) (and (and (= Heap@7 Heap@6) (= b_24_1@6 b_24_1@5)) (and (= Used_11Mask@3 Used_11Mask@2) (= (ControlFlow 0 55) 52)))) anon47_correct)))))
(let ((anon109_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@12) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 58) 55) anon110_Then_correct) (=> (= (ControlFlow 0 58) 56) anon110_Else_correct)))))
(let ((anon109_Then_correct  (=> (and (<= neededTransfer@12 maskTransfer@5) (= takeTransfer@5 neededTransfer@12)) (and (=> (= (ControlFlow 0 57) 55) anon110_Then_correct) (=> (= (ControlFlow 0 57) 56) anon110_Else_correct)))))
(let ((anon108_Then_correct  (=> (and (and (and (and b_19@19 b_24_1@3) true) (> neededTransfer@12 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@7) y f_7))) (and (=> (= (ControlFlow 0 59) 57) anon109_Then_correct) (=> (= (ControlFlow 0 59) 58) anon109_Else_correct)))))
(let ((anon108_Else_correct  (=> (not (and (and (and b_19@19 b_24_1@3) true) (> neededTransfer@12 0.0))) (=> (and (= neededTransfer@14 neededTransfer@12) (= Mask@9 Mask@7)) (=> (and (and (= Heap@7 Heap@5) (= b_24_1@6 b_24_1@3)) (and (= Used_11Mask@3 Used_11Mask@1) (= (ControlFlow 0 54) 52))) anon47_correct)))))
(let ((anon107_Else_correct  (=> (>= 0.0 takeTransfer@4) (=> (and (and (= Ops_5Mask@11 Ops_5Mask@9) (= Used_11Mask@1 ZeroMask)) (and (= b_24_1@3 b_24_1@0) (= neededTransfer@12 neededTransfer@10))) (and (=> (= (ControlFlow 0 62) 59) anon108_Then_correct) (=> (= (ControlFlow 0 62) 54) anon108_Else_correct))))))
(let ((anon107_Then_correct  (=> (and (> takeTransfer@4 0.0) (= neededTransfer@11 (- neededTransfer@10 takeTransfer@4))) (=> (and (and (and (= Used_11Mask@0 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) y f_7 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) y f_7) takeTransfer@4)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask))) (= b_24_1@1  (and b_24_1@0 (state Used_11Heap@0 Used_11Mask@0)))) (and (= b_24_1@2  (and b_24_1@1 (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@10) y f_7) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Used_11Heap@0) y f_7)))) (= Ops_5Mask@10 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@9) y f_7 (- (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@9) y f_7) takeTransfer@4)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Ops_5Mask@9) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Ops_5Mask@9))))) (and (and (= Ops_5Mask@11 Ops_5Mask@10) (= Used_11Mask@1 Used_11Mask@0)) (and (= b_24_1@3 b_24_1@2) (= neededTransfer@12 neededTransfer@11)))) (and (=> (= (ControlFlow 0 61) 59) anon108_Then_correct) (=> (= (ControlFlow 0 61) 54) anon108_Else_correct))))))
(let ((anon106_Else_correct  (=> (and (< maskTransfer@4 neededTransfer@10) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 64) 61) anon107_Then_correct) (=> (= (ControlFlow 0 64) 62) anon107_Else_correct)))))
(let ((anon106_Then_correct  (=> (and (<= neededTransfer@10 maskTransfer@4) (= takeTransfer@4 neededTransfer@10)) (and (=> (= (ControlFlow 0 63) 61) anon107_Then_correct) (=> (= (ControlFlow 0 63) 62) anon107_Else_correct)))))
(let ((anon105_Then_correct  (=> (and (and (and (and b_19@19 b_24_1@0) true) (> neededTransfer@10 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@9) y f_7))) (and (=> (= (ControlFlow 0 65) 63) anon106_Then_correct) (=> (= (ControlFlow 0 65) 64) anon106_Else_correct)))))
(let ((anon105_Else_correct  (=> (not (and (and (and b_19@19 b_24_1@0) true) (> neededTransfer@10 0.0))) (=> (and (and (= Ops_5Mask@11 Ops_5Mask@9) (= Used_11Mask@1 ZeroMask)) (and (= b_24_1@3 b_24_1@0) (= neededTransfer@12 neededTransfer@10))) (and (=> (= (ControlFlow 0 60) 59) anon108_Then_correct) (=> (= (ControlFlow 0 60) 54) anon108_Else_correct))))))
(let ((anon104_Then_correct  (=> (and (and b_19@19 (= b_24_1@0  (and b_24_1 (state Used_11Heap@0 ZeroMask)))) (and (= neededTransfer@10 (/ (to_real 1) (to_real 2))) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) y f_7) neededTransfer@10)))) (and (=> (= (ControlFlow 0 66) (- 0 67)) (>= neededTransfer@10 0.0)) (=> (>= neededTransfer@10 0.0) (and (=> (= (ControlFlow 0 66) 65) anon105_Then_correct) (=> (= (ControlFlow 0 66) 60) anon105_Else_correct)))))))
(let ((anon104_Else_correct  (=> (not b_19@19) (=> (and (= b_19@26 b_19@19) (= Ops_5Heap@15 Ops_5Heap@10)) (=> (and (and (= Heap@8 Heap@5) (= Mask@10 Mask@7)) (and (= Ops_5Mask@13 Ops_5Mask@9) (= (ControlFlow 0 48) 46))) anon50_correct)))))
(let ((anon33_correct  (=> (and (and (and (= Ops_5Heap@9 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@8) (store (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11) (PolymorphicMapType_20034 (store (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) x@@11 f_7 true) (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))) (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@8) null (|Q#sm| x@@11))))) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Ops_5Heap@8) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Ops_5Heap@8))) (state Ops_5Heap@9 Ops_5Mask@8)) (and (= b_19@18  (and b_19@17 (state Ops_5Heap@9 Ops_5Mask@8))) (= b_19@19 b_19@18))) (and (and (= Ops_5Heap@10 Ops_5Heap@9) (= Heap@5 Heap@4)) (and (= Mask@7 Mask@6) (= Ops_5Mask@9 Ops_5Mask@8)))) (and (=> (= (ControlFlow 0 69) 66) anon104_Then_correct) (=> (= (ControlFlow 0 69) 48) anon104_Else_correct)))))
(let ((anon103_Else_correct  (=> (HasDirectPerm_11076_11077 Ops_5Mask@8 null (Q x@@11)) (=> (and (= Ops_5Heap@8 Ops_5Heap@5) (= (ControlFlow 0 71) 69)) anon33_correct))))
(let ((anon103_Then_correct  (=> (not (HasDirectPerm_11076_11077 Ops_5Mask@8 null (Q x@@11))) (=> (and (and (= Ops_5Heap@6 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@5) (store (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@5) null (|Q#sm| x@@11) ZeroPMask) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Ops_5Heap@5) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Ops_5Heap@5))) (= Ops_5Heap@7 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@6) (store (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@6) null (Q x@@11) freshVersion@1) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Ops_5Heap@6) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Ops_5Heap@6)))) (and (= Ops_5Heap@8 Ops_5Heap@7) (= (ControlFlow 0 70) 69))) anon33_correct))))
(let ((anon31_correct  (and (=> (= (ControlFlow 0 72) (- 0 73)) (=> (and b_19@12 b_22@6) (and (= neededTransfer@9 0.0) (= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_10Mask@3) x@@11 f_7) initNeededTransfer@1)))) (=> (=> (and b_19@12 b_22@6) (and (= neededTransfer@9 0.0) (= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_10Mask@3) x@@11 f_7) initNeededTransfer@1))) (=> (= b_23@0  (and b_19@12 b_22@6)) (=> (and (and (= b_23@1  (and b_23@0 (state Result_9Heap Result_9Mask))) (= b_23@2  (and b_23@1 (sumMask Result_9Mask Ops_5Mask@7 Used_10Mask@3)))) (and (= b_23@3  (and (and b_23@2 (IdenticalOnKnownLocations Ops_5Heap@5 Result_9Heap Ops_5Mask@7)) (IdenticalOnKnownLocations Used_10Heap@0 Result_9Heap Used_10Mask@3))) (= b_23@4  (and b_23@3 (state Result_9Heap Result_9Mask))))) (=> (and (and (and (= b_19@13  (and b_19@12 b_23@4)) (= b_19@14  (and b_19@13 b_22@6))) (and (= b_19@15  (and b_19@14 (= Used_10Heap@0 Ops_5Heap@5))) (= Ops_5Mask@8 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@7) (store (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@7) null (Q x@@11) (+ (select (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@7) null (Q x@@11)) FullPerm)) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Ops_5Mask@7) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Ops_5Mask@7))))) (and (and (= b_19@16  (and b_19@15 (state Ops_5Heap@5 Ops_5Mask@8))) (= b_19@17  (and b_19@16 (state Ops_5Heap@5 Ops_5Mask@8)))) (and (|Q#trigger_11076| Ops_5Heap@5 (Q x@@11)) (= (select (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@5) null (Q x@@11)) (FrameFragment_1887 (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@5) x@@11 f_7)))))) (and (=> (= (ControlFlow 0 72) 70) anon103_Then_correct) (=> (= (ControlFlow 0 72) 71) anon103_Else_correct)))))))))
(let ((anon102_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= neededTransfer@9 neededTransfer@7) (= Mask@6 Mask@4)) (=> (and (and (= Heap@4 Heap@2) (= b_22@6 b_22@3)) (and (= Used_10Mask@3 Used_10Mask@1) (= (ControlFlow 0 76) 72))) anon31_correct)))))
(let ((anon102_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@8 (- neededTransfer@7 takeTransfer@3)) (= Used_10Mask@2 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_10Mask@1) x@@11 f_7 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_10Mask@1) x@@11 f_7) takeTransfer@3)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Used_10Mask@1) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Used_10Mask@1)))) (and (= b_22@4  (and b_22@3 (state Used_10Heap@0 Used_10Mask@2))) (= b_22@5  (and b_22@4 (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@2) x@@11 f_7) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Used_10Heap@0) x@@11 f_7)))))) (=> (and (and (and (= Mask@5 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@4) x@@11 f_7 (- (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@4) x@@11 f_7) takeTransfer@3)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@4) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@4))) (= Heap@3 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@2) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y) (PolymorphicMapType_20034 (store (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) x@@11 f_7 true) (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@2) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))))) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@2) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@2)))) (and (= neededTransfer@9 neededTransfer@8) (= Mask@6 Mask@5))) (and (and (= Heap@4 Heap@3) (= b_22@6 b_22@5)) (and (= Used_10Mask@3 Used_10Mask@2) (= (ControlFlow 0 75) 72)))) anon31_correct)))))
(let ((anon101_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@7) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 78) 75) anon102_Then_correct) (=> (= (ControlFlow 0 78) 76) anon102_Else_correct)))))
(let ((anon101_Then_correct  (=> (and (<= neededTransfer@7 maskTransfer@3) (= takeTransfer@3 neededTransfer@7)) (and (=> (= (ControlFlow 0 77) 75) anon102_Then_correct) (=> (= (ControlFlow 0 77) 76) anon102_Else_correct)))))
(let ((anon100_Then_correct  (=> (and (and (and (and b_19@12 b_22@3) true) (> neededTransfer@7 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@4) x@@11 f_7))) (and (=> (= (ControlFlow 0 79) 77) anon101_Then_correct) (=> (= (ControlFlow 0 79) 78) anon101_Else_correct)))))
(let ((anon100_Else_correct  (=> (not (and (and (and b_19@12 b_22@3) true) (> neededTransfer@7 0.0))) (=> (and (= neededTransfer@9 neededTransfer@7) (= Mask@6 Mask@4)) (=> (and (and (= Heap@4 Heap@2) (= b_22@6 b_22@3)) (and (= Used_10Mask@3 Used_10Mask@1) (= (ControlFlow 0 74) 72))) anon31_correct)))))
(let ((anon99_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= Ops_5Mask@7 Ops_5Mask@5) (= Used_10Mask@1 ZeroMask)) (and (= b_22@3 b_22@0) (= neededTransfer@7 neededTransfer@5))) (and (=> (= (ControlFlow 0 82) 79) anon100_Then_correct) (=> (= (ControlFlow 0 82) 74) anon100_Else_correct))))))
(let ((anon99_Then_correct  (=> (and (> takeTransfer@2 0.0) (= neededTransfer@6 (- neededTransfer@5 takeTransfer@2))) (=> (and (and (and (= Used_10Mask@0 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7) takeTransfer@2)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask))) (= b_22@1  (and b_22@0 (state Used_10Heap@0 Used_10Mask@0)))) (and (= b_22@2  (and b_22@1 (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@5) x@@11 f_7) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Used_10Heap@0) x@@11 f_7)))) (= Ops_5Mask@6 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@5) x@@11 f_7 (- (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@5) x@@11 f_7) takeTransfer@2)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Ops_5Mask@5) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Ops_5Mask@5))))) (and (and (= Ops_5Mask@7 Ops_5Mask@6) (= Used_10Mask@1 Used_10Mask@0)) (and (= b_22@3 b_22@2) (= neededTransfer@7 neededTransfer@6)))) (and (=> (= (ControlFlow 0 81) 79) anon100_Then_correct) (=> (= (ControlFlow 0 81) 74) anon100_Else_correct))))))
(let ((anon98_Else_correct  (=> (and (< maskTransfer@2 neededTransfer@5) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 84) 81) anon99_Then_correct) (=> (= (ControlFlow 0 84) 82) anon99_Else_correct)))))
(let ((anon98_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@2) (= takeTransfer@2 neededTransfer@5)) (and (=> (= (ControlFlow 0 83) 81) anon99_Then_correct) (=> (= (ControlFlow 0 83) 82) anon99_Else_correct)))))
(let ((anon97_Then_correct  (=> (and (and (and (and b_19@12 b_22@0) true) (> neededTransfer@5 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@5) x@@11 f_7))) (and (=> (= (ControlFlow 0 85) 83) anon98_Then_correct) (=> (= (ControlFlow 0 85) 84) anon98_Else_correct)))))
(let ((anon97_Else_correct  (=> (not (and (and (and b_19@12 b_22@0) true) (> neededTransfer@5 0.0))) (=> (and (and (= Ops_5Mask@7 Ops_5Mask@5) (= Used_10Mask@1 ZeroMask)) (and (= b_22@3 b_22@0) (= neededTransfer@7 neededTransfer@5))) (and (=> (= (ControlFlow 0 80) 79) anon100_Then_correct) (=> (= (ControlFlow 0 80) 74) anon100_Else_correct))))))
(let ((anon96_Then_correct  (=> (and (and b_19@12 (= b_22@0  (and b_22 (state Used_10Heap@0 ZeroMask)))) (and (= neededTransfer@5 (/ (to_real 1) (to_real 2))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7) neededTransfer@5)))) (and (=> (= (ControlFlow 0 86) (- 0 87)) (>= neededTransfer@5 0.0)) (=> (>= neededTransfer@5 0.0) (and (=> (= (ControlFlow 0 86) 85) anon97_Then_correct) (=> (= (ControlFlow 0 86) 80) anon97_Else_correct)))))))
(let ((anon96_Else_correct  (=> (and (not b_19@12) (= b_19@19 b_19@12)) (=> (and (and (= Ops_5Heap@10 Ops_5Heap@5) (= Heap@5 Heap@2)) (and (= Mask@7 Mask@4) (= Ops_5Mask@9 Ops_5Mask@5))) (and (=> (= (ControlFlow 0 68) 66) anon104_Then_correct) (=> (= (ControlFlow 0 68) 48) anon104_Else_correct))))))
(let ((anon17_correct  (=> (and (and (and (= Ops_5Heap@4 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@3) (store (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11) (PolymorphicMapType_20034 (store (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) x@@11 f_7 true) (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))) (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@3) null (|P#sm| x@@11))))) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Ops_5Heap@3) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Ops_5Heap@3))) (state Ops_5Heap@4 Ops_5Mask@4)) (and (= b_19@11  (and b_19@10 (state Ops_5Heap@4 Ops_5Mask@4))) (= Ops_5Heap@5 Ops_5Heap@4))) (and (and (= b_19@12 b_19@11) (= Mask@4 Mask@3)) (and (= Ops_5Mask@5 Ops_5Mask@4) (= Heap@2 Heap@1)))) (and (=> (= (ControlFlow 0 89) 86) anon96_Then_correct) (=> (= (ControlFlow 0 89) 68) anon96_Else_correct)))))
(let ((anon95_Else_correct  (=> (HasDirectPerm_11051_11052 Ops_5Mask@4 null (P x@@11)) (=> (and (= Ops_5Heap@3 Ops_5Heap@0) (= (ControlFlow 0 91) 89)) anon17_correct))))
(let ((anon95_Then_correct  (=> (not (HasDirectPerm_11051_11052 Ops_5Mask@4 null (P x@@11))) (=> (and (and (= Ops_5Heap@1 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@0) (store (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@0) null (|P#sm| x@@11) ZeroPMask) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Ops_5Heap@0) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Ops_5Heap@0))) (= Ops_5Heap@2 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Ops_5Heap@1) (store (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@1) null (P x@@11) freshVersion@0) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Ops_5Heap@1) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Ops_5Heap@1)))) (and (= Ops_5Heap@3 Ops_5Heap@2) (= (ControlFlow 0 90) 89))) anon17_correct))))
(let ((anon15_correct  (and (=> (= (ControlFlow 0 92) (- 0 93)) (=> (and b_19@5 b_20@6) (and (= neededTransfer@4 0.0) (= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_9Mask@3) x@@11 f_7) initNeededTransfer@0)))) (=> (=> (and b_19@5 b_20@6) (and (= neededTransfer@4 0.0) (= (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_9Mask@3) x@@11 f_7) initNeededTransfer@0))) (=> (= b_21@0  (and b_19@5 b_20@6)) (=> (and (and (= b_21@1  (and b_21@0 (state Result_8Heap Result_8Mask))) (= b_21@2  (and b_21@1 (sumMask Result_8Mask Ops_5Mask@3 Used_9Mask@3)))) (and (= b_21@3  (and (and b_21@2 (IdenticalOnKnownLocations Ops_5Heap@0 Result_8Heap Ops_5Mask@3)) (IdenticalOnKnownLocations Used_9Heap@0 Result_8Heap Used_9Mask@3))) (= b_21@4  (and b_21@3 (state Result_8Heap Result_8Mask))))) (=> (and (and (and (= b_19@6  (and b_19@5 b_21@4)) (= b_19@7  (and b_19@6 b_20@6))) (and (= b_19@8  (and b_19@7 (= Used_9Heap@0 Ops_5Heap@0))) (= Ops_5Mask@4 (PolymorphicMapType_19506 (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@3) (store (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@3) null (P x@@11) (+ (select (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@3) null (P x@@11)) FullPerm)) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Ops_5Mask@3) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Ops_5Mask@3))))) (and (and (= b_19@9  (and b_19@8 (state Ops_5Heap@0 Ops_5Mask@4))) (= b_19@10  (and b_19@9 (state Ops_5Heap@0 Ops_5Mask@4)))) (and (|P#trigger_11051| Ops_5Heap@0 (P x@@11)) (= (select (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Ops_5Heap@0) null (P x@@11)) (FrameFragment_1887 (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@0) x@@11 f_7)))))) (and (=> (= (ControlFlow 0 92) 90) anon95_Then_correct) (=> (= (ControlFlow 0 92) 91) anon95_Else_correct)))))))))
(let ((anon94_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@3 Mask@1) (= neededTransfer@4 neededTransfer@2)) (=> (and (and (= b_20@6 b_20@3) (= Used_9Mask@3 Used_9Mask@1)) (and (= Heap@1 Heap@@75) (= (ControlFlow 0 96) 92))) anon15_correct)))))
(let ((anon94_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@3 (- neededTransfer@2 takeTransfer@1)) (= Used_9Mask@2 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_9Mask@1) x@@11 f_7 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Used_9Mask@1) x@@11 f_7) takeTransfer@1)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Used_9Mask@1) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Used_9Mask@1)))) (and (= b_20@4  (and b_20@3 (state Used_9Heap@0 Used_9Mask@2))) (= b_20@5  (and b_20@4 (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@75) x@@11 f_7) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Used_9Heap@0) x@@11 f_7)))))) (=> (and (and (and (= Mask@2 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@1) x@@11 f_7 (- (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@1) x@@11 f_7) takeTransfer@1)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@1) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@1))) (= Heap@0 (PolymorphicMapType_19485 (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_10802_10803#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_10937_28592#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11051_11052#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11055_29648#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11076_11077#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11080_32327#PolymorphicMapType_19485| Heap@@75) (store (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y) (PolymorphicMapType_20034 (store (|PolymorphicMapType_20034_11042_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) x@@11 f_7 true) (|PolymorphicMapType_20034_11042_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_11042_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_11042_71419#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_11042_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_72467#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_22874_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_73515#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_23549_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_74563#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_24440_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_1887#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_53#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_19559#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_75611#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))) (|PolymorphicMapType_20034_25378_22906#PolymorphicMapType_20034| (select (|PolymorphicMapType_19485_10991_50665#PolymorphicMapType_19485| Heap@@75) null (|wand_1#sm| x@@11 (/ (to_real 1) (to_real 2)) x@@11 x@@11 y))))) (|PolymorphicMapType_19485_11051_53#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11051_19559#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11051_1203#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11076_53#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11076_19559#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_11076_1203#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_19545_11052#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_19545_66612#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_22874_11052#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_22874_53#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_22874_19559#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_22874_1203#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_23549_11052#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_23549_53#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_23549_19559#PolymorphicMapType_19485| Heap@@75) (|PolymorphicMapType_19485_23549_1203#PolymorphicMapType_19485| Heap@@75)))) (and (= Mask@3 Mask@2) (= neededTransfer@4 neededTransfer@3))) (and (and (= b_20@6 b_20@5) (= Used_9Mask@3 Used_9Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 95) 92)))) anon15_correct)))))
(let ((anon93_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@2) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 98) 95) anon94_Then_correct) (=> (= (ControlFlow 0 98) 96) anon94_Else_correct)))))
(let ((anon93_Then_correct  (=> (and (<= neededTransfer@2 maskTransfer@1) (= takeTransfer@1 neededTransfer@2)) (and (=> (= (ControlFlow 0 97) 95) anon94_Then_correct) (=> (= (ControlFlow 0 97) 96) anon94_Else_correct)))))
(let ((anon92_Then_correct  (=> (and (and (and (and b_19@5 b_20@3) true) (> neededTransfer@2 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@1) x@@11 f_7))) (and (=> (= (ControlFlow 0 99) 97) anon93_Then_correct) (=> (= (ControlFlow 0 99) 98) anon93_Else_correct)))))
(let ((anon92_Else_correct  (=> (not (and (and (and b_19@5 b_20@3) true) (> neededTransfer@2 0.0))) (=> (and (= Mask@3 Mask@1) (= neededTransfer@4 neededTransfer@2)) (=> (and (and (= b_20@6 b_20@3) (= Used_9Mask@3 Used_9Mask@1)) (and (= Heap@1 Heap@@75) (= (ControlFlow 0 94) 92))) anon15_correct)))))
(let ((anon91_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_5Mask@3 Ops_5Mask@1) (= Used_9Mask@1 ZeroMask)) (and (= b_20@3 b_20@0) (= neededTransfer@2 neededTransfer@0))) (and (=> (= (ControlFlow 0 102) 99) anon92_Then_correct) (=> (= (ControlFlow 0 102) 94) anon92_Else_correct))))))
(let ((anon91_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@1 (- neededTransfer@0 takeTransfer@0))) (=> (and (and (and (= Used_9Mask@0 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7) takeTransfer@0)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask))) (= b_20@1  (and b_20@0 (state Used_9Heap@0 Used_9Mask@0)))) (and (= b_20@2  (and b_20@1 (= (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Ops_5Heap@0) x@@11 f_7) (select (|PolymorphicMapType_19485_11042_1887#PolymorphicMapType_19485| Used_9Heap@0) x@@11 f_7)))) (= Ops_5Mask@2 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@1) x@@11 f_7 (- (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@1) x@@11 f_7) takeTransfer@0)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Ops_5Mask@1) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Ops_5Mask@1))))) (and (and (= Ops_5Mask@3 Ops_5Mask@2) (= Used_9Mask@1 Used_9Mask@0)) (and (= b_20@3 b_20@2) (= neededTransfer@2 neededTransfer@1)))) (and (=> (= (ControlFlow 0 101) 99) anon92_Then_correct) (=> (= (ControlFlow 0 101) 94) anon92_Else_correct))))))
(let ((anon90_Else_correct  (=> (and (< maskTransfer@0 neededTransfer@0) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 104) 101) anon91_Then_correct) (=> (= (ControlFlow 0 104) 102) anon91_Else_correct)))))
(let ((anon90_Then_correct  (=> (and (<= neededTransfer@0 maskTransfer@0) (= takeTransfer@0 neededTransfer@0)) (and (=> (= (ControlFlow 0 103) 101) anon91_Then_correct) (=> (= (ControlFlow 0 103) 102) anon91_Else_correct)))))
(let ((anon89_Then_correct  (=> (and (and (and (and b_19@5 b_20@0) true) (> neededTransfer@0 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Ops_5Mask@1) x@@11 f_7))) (and (=> (= (ControlFlow 0 105) 103) anon90_Then_correct) (=> (= (ControlFlow 0 105) 104) anon90_Else_correct)))))
(let ((anon89_Else_correct  (=> (not (and (and (and b_19@5 b_20@0) true) (> neededTransfer@0 0.0))) (=> (and (and (= Ops_5Mask@3 Ops_5Mask@1) (= Used_9Mask@1 ZeroMask)) (and (= b_20@3 b_20@0) (= neededTransfer@2 neededTransfer@0))) (and (=> (= (ControlFlow 0 100) 99) anon92_Then_correct) (=> (= (ControlFlow 0 100) 94) anon92_Else_correct))))))
(let ((anon88_Then_correct  (=> (and (and b_19@5 (= b_20@0  (and b_20 (state Used_9Heap@0 ZeroMask)))) (and (= neededTransfer@0 (/ (to_real 1) (to_real 2))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7) neededTransfer@0)))) (and (=> (= (ControlFlow 0 106) (- 0 107)) (>= neededTransfer@0 0.0)) (=> (>= neededTransfer@0 0.0) (and (=> (= (ControlFlow 0 106) 105) anon89_Then_correct) (=> (= (ControlFlow 0 106) 100) anon89_Else_correct)))))))
(let ((anon88_Else_correct  (=> (and (not b_19@5) (= Ops_5Heap@5 Ops_5Heap@0)) (=> (and (and (= b_19@12 b_19@5) (= Mask@4 Mask@1)) (and (= Ops_5Mask@5 Ops_5Mask@1) (= Heap@2 Heap@@75))) (and (=> (= (ControlFlow 0 88) 86) anon96_Then_correct) (=> (= (ControlFlow 0 88) 68) anon96_Else_correct))))))
(let ((anon2_correct  (=> (and (= b_19@4  (and b_19@3 (state Ops_5Heap@0 Ops_5Mask@1))) (= b_19@5  (and b_19@4 (state Ops_5Heap@0 Ops_5Mask@1)))) (and (=> (= (ControlFlow 0 108) 106) anon88_Then_correct) (=> (= (ControlFlow 0 108) 88) anon88_Else_correct)))))
(let ((anon87_Else_correct  (=> (and (and (not b_19@0) (= Ops_5Mask@1 ZeroMask)) (and (= b_19@3 b_19@0) (= (ControlFlow 0 111) 108))) anon2_correct)))
(let ((anon87_Then_correct  (=> (and b_19@0 (= perm@2 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 109) (- 0 110)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (and (= b_19@1  (and b_19@0 (=> (> perm@2 NoPerm) (not (= x@@11 null))))) (= Ops_5Mask@0 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7) perm@2)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask)))) (=> (and (and (= b_19@2  (and b_19@1 (state Ops_5Heap@0 Ops_5Mask@0))) (= Ops_5Mask@1 Ops_5Mask@0)) (and (= b_19@3 b_19@2) (= (ControlFlow 0 109) 108))) anon2_correct)))))))
(let ((anon0_correct  (=> (state Heap@@75 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@75) x@@11 $allocated)) (and (select (|PolymorphicMapType_19485_10799_53#PolymorphicMapType_19485| Heap@@75) y $allocated) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 112) (- 0 114)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= x@@11 null))) (= Mask@0 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| ZeroMask) x@@11 f_7) perm@0)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| ZeroMask) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| ZeroMask)))) (and (state Heap@@75 Mask@0) (= perm@1 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 112) (- 0 113)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (=> (> perm@1 NoPerm) (not (= y null))) (= Mask@1 (PolymorphicMapType_19506 (store (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@0) y f_7 (+ (select (|PolymorphicMapType_19506_11042_1887#PolymorphicMapType_19506| Mask@0) y f_7) perm@1)) (|PolymorphicMapType_19506_11051_11052#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11076_11077#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10931_1203#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10984_1529#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11042_11052#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11042_53#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11042_19559#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11042_88495#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11051_1887#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11051_53#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11051_19559#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11051_88906#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11076_1887#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11076_53#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11076_19559#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_11076_89317#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10931_11052#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10931_53#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10931_19559#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10931_89731#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10984_11052#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10984_53#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10984_19559#PolymorphicMapType_19506| Mask@0) (|PolymorphicMapType_19506_10984_90145#PolymorphicMapType_19506| Mask@0)))) (=> (and (and (state Heap@@75 Mask@1) (state Heap@@75 Mask@1)) (and (= b_19@0  (and b_19 (state Ops_5Heap@0 ZeroMask))) (= b_18@0  (and b_18 (state Used_8Heap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 112) 109) anon87_Then_correct) (=> (= (ControlFlow 0 112) 111) anon87_Else_correct)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 115) 112) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
