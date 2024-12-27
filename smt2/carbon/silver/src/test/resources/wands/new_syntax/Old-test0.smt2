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
(declare-sort T@Field_21405_53 0)
(declare-sort T@Field_21418_21419 0)
(declare-sort T@Field_28301_3215 0)
(declare-sort T@Field_24756_24761 0)
(declare-sort T@Field_26798_26803 0)
(declare-sort T@Field_27614_27619 0)
(declare-sort T@Field_12393_24761 0)
(declare-sort T@Field_12393_24778 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_24738_1235 0)
(declare-sort T@Field_24738_53 0)
(declare-sort T@Field_24738_21419 0)
(declare-sort T@Field_24777_24778 0)
(declare-sort T@Field_25992_1989 0)
(declare-sort T@Field_25992_53 0)
(declare-sort T@Field_25992_21419 0)
(declare-sort T@Field_26006_26011 0)
(declare-sort T@Field_26023_26024 0)
(declare-sort T@Field_26783_2425 0)
(declare-sort T@Field_26783_53 0)
(declare-sort T@Field_26783_21419 0)
(declare-sort T@Field_26816_26817 0)
(declare-sort T@Field_27601_2857 0)
(declare-sort T@Field_27601_53 0)
(declare-sort T@Field_27601_21419 0)
(declare-sort T@Field_27630_27631 0)
(declare-datatypes ((T@PolymorphicMapType_21366 0)) (((PolymorphicMapType_21366 (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| (Array T@Ref T@Field_28301_3215 Real)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| (Array T@Ref T@Field_25992_1989 Real)) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| (Array T@Ref T@Field_24738_1235 Real)) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| (Array T@Ref T@Field_26783_2425 Real)) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| (Array T@Ref T@Field_27601_2857 Real)) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| (Array T@Ref T@Field_21405_53 Real)) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| (Array T@Ref T@Field_21418_21419 Real)) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| (Array T@Ref T@Field_12393_24761 Real)) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| (Array T@Ref T@Field_12393_24778 Real)) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| (Array T@Ref T@Field_25992_53 Real)) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| (Array T@Ref T@Field_25992_21419 Real)) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| (Array T@Ref T@Field_26006_26011 Real)) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| (Array T@Ref T@Field_26023_26024 Real)) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| (Array T@Ref T@Field_24738_53 Real)) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| (Array T@Ref T@Field_24738_21419 Real)) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| (Array T@Ref T@Field_24756_24761 Real)) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| (Array T@Ref T@Field_24777_24778 Real)) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| (Array T@Ref T@Field_26783_53 Real)) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| (Array T@Ref T@Field_26783_21419 Real)) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| (Array T@Ref T@Field_26798_26803 Real)) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| (Array T@Ref T@Field_26816_26817 Real)) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| (Array T@Ref T@Field_27601_53 Real)) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| (Array T@Ref T@Field_27601_21419 Real)) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| (Array T@Ref T@Field_27614_27619 Real)) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| (Array T@Ref T@Field_27630_27631 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21894 0)) (((PolymorphicMapType_21894 (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (Array T@Ref T@Field_28301_3215 Bool)) (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (Array T@Ref T@Field_21405_53 Bool)) (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (Array T@Ref T@Field_21418_21419 Bool)) (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (Array T@Ref T@Field_12393_24761 Bool)) (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (Array T@Ref T@Field_12393_24778 Bool)) (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (Array T@Ref T@Field_24738_1235 Bool)) (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (Array T@Ref T@Field_24738_53 Bool)) (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (Array T@Ref T@Field_24738_21419 Bool)) (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (Array T@Ref T@Field_24756_24761 Bool)) (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (Array T@Ref T@Field_24777_24778 Bool)) (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (Array T@Ref T@Field_25992_1989 Bool)) (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (Array T@Ref T@Field_25992_53 Bool)) (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (Array T@Ref T@Field_25992_21419 Bool)) (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (Array T@Ref T@Field_26006_26011 Bool)) (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (Array T@Ref T@Field_26023_26024 Bool)) (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (Array T@Ref T@Field_26783_2425 Bool)) (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (Array T@Ref T@Field_26783_53 Bool)) (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (Array T@Ref T@Field_26783_21419 Bool)) (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (Array T@Ref T@Field_26798_26803 Bool)) (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (Array T@Ref T@Field_26816_26817 Bool)) (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (Array T@Ref T@Field_27601_2857 Bool)) (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (Array T@Ref T@Field_27601_53 Bool)) (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (Array T@Ref T@Field_27601_21419 Bool)) (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (Array T@Ref T@Field_27614_27619 Bool)) (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (Array T@Ref T@Field_27630_27631 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21345 0)) (((PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| (Array T@Ref T@Field_21405_53 Bool)) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| (Array T@Ref T@Field_21418_21419 T@Ref)) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| (Array T@Ref T@Field_28301_3215 Int)) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| (Array T@Ref T@Field_24756_24761 T@PolymorphicMapType_21894)) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| (Array T@Ref T@Field_26798_26803 T@PolymorphicMapType_21894)) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| (Array T@Ref T@Field_27614_27619 T@PolymorphicMapType_21894)) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| (Array T@Ref T@Field_12393_24761 T@PolymorphicMapType_21894)) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| (Array T@Ref T@Field_12393_24778 T@FrameType)) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| (Array T@Ref T@Field_24738_1235 Int)) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| (Array T@Ref T@Field_24738_53 Bool)) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| (Array T@Ref T@Field_24738_21419 T@Ref)) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| (Array T@Ref T@Field_24777_24778 T@FrameType)) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| (Array T@Ref T@Field_25992_1989 Int)) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| (Array T@Ref T@Field_25992_53 Bool)) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| (Array T@Ref T@Field_25992_21419 T@Ref)) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| (Array T@Ref T@Field_26006_26011 T@PolymorphicMapType_21894)) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| (Array T@Ref T@Field_26023_26024 T@FrameType)) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| (Array T@Ref T@Field_26783_2425 Int)) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| (Array T@Ref T@Field_26783_53 Bool)) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| (Array T@Ref T@Field_26783_21419 T@Ref)) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| (Array T@Ref T@Field_26816_26817 T@FrameType)) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| (Array T@Ref T@Field_27601_2857 Int)) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| (Array T@Ref T@Field_27601_53 Bool)) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| (Array T@Ref T@Field_27601_21419 T@Ref)) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| (Array T@Ref T@Field_27630_27631 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_21405_53)
(declare-fun f_7 () T@Field_28301_3215)
(declare-fun succHeap (T@PolymorphicMapType_21345 T@PolymorphicMapType_21345) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_21345 T@PolymorphicMapType_21345) Bool)
(declare-fun state (T@PolymorphicMapType_21345 T@PolymorphicMapType_21366) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_21366) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_21894)
(declare-fun WandMaskField_12243 (T@Field_26023_26024) T@Field_26006_26011)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref Int T@Ref Int) T@Field_26023_26024)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref Int T@Ref Int) T@Field_26006_26011)
(declare-fun WandMaskField_12301 (T@Field_26816_26817) T@Field_26798_26803)
(declare-fun |wand_2#ft| (T@Ref Real T@Ref Real T@Ref T@Ref) T@Field_26816_26817)
(declare-fun |wand_2#sm| (T@Ref Real T@Ref Real T@Ref T@Ref) T@Field_26798_26803)
(declare-fun wand_3 (Bool T@Ref Real T@Ref Int) T@Field_27601_2857)
(declare-fun getPredWandId_12355_2857 (T@Field_27601_2857) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_21345 T@PolymorphicMapType_21345 T@PolymorphicMapType_21366) Bool)
(declare-fun IsPredicateField_12366_12367 (T@Field_27630_27631) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_27601 (T@Field_27630_27631) T@Field_27614_27619)
(declare-fun HasDirectPerm_27601_24778 (T@PolymorphicMapType_21366 T@Ref T@Field_27630_27631) Bool)
(declare-fun IsPredicateField_12301_12302 (T@Field_26816_26817) Bool)
(declare-fun PredicateMaskField_26783 (T@Field_26816_26817) T@Field_26798_26803)
(declare-fun HasDirectPerm_26783_24778 (T@PolymorphicMapType_21366 T@Ref T@Field_26816_26817) Bool)
(declare-fun IsPredicateField_12243_12244 (T@Field_26023_26024) Bool)
(declare-fun PredicateMaskField_25992 (T@Field_26023_26024) T@Field_26006_26011)
(declare-fun HasDirectPerm_25992_24778 (T@PolymorphicMapType_21366 T@Ref T@Field_26023_26024) Bool)
(declare-fun IsPredicateField_12143_12144 (T@Field_24777_24778) Bool)
(declare-fun PredicateMaskField_24738 (T@Field_24777_24778) T@Field_24756_24761)
(declare-fun HasDirectPerm_24738_24778 (T@PolymorphicMapType_21366 T@Ref T@Field_24777_24778) Bool)
(declare-fun IsPredicateField_12393_71364 (T@Field_12393_24778) Bool)
(declare-fun PredicateMaskField_12393 (T@Field_12393_24778) T@Field_12393_24761)
(declare-fun HasDirectPerm_12393_24778 (T@PolymorphicMapType_21366 T@Ref T@Field_12393_24778) Bool)
(declare-fun IsWandField_12366_12367 (T@Field_27630_27631) Bool)
(declare-fun WandMaskField_12366 (T@Field_27630_27631) T@Field_27614_27619)
(declare-fun IsWandField_12301_12302 (T@Field_26816_26817) Bool)
(declare-fun IsWandField_12243_12244 (T@Field_26023_26024) Bool)
(declare-fun IsWandField_12143_12144 (T@Field_24777_24778) Bool)
(declare-fun WandMaskField_12143 (T@Field_24777_24778) T@Field_24756_24761)
(declare-fun IsWandField_12393_79754 (T@Field_12393_24778) Bool)
(declare-fun WandMaskField_12393 (T@Field_12393_24778) T@Field_12393_24761)
(declare-fun dummyHeap () T@PolymorphicMapType_21345)
(declare-fun ZeroMask () T@PolymorphicMapType_21366)
(declare-fun wand (T@Ref Real T@Ref Real T@Ref Int T@Ref Int T@Ref Real T@Ref T@Ref) T@Field_24738_1235)
(declare-fun getPredWandId_12118_1235 (T@Field_24738_1235) Int)
(declare-fun InsidePredicate_27601_27601 (T@Field_27630_27631 T@FrameType T@Field_27630_27631 T@FrameType) Bool)
(declare-fun InsidePredicate_26783_26783 (T@Field_26816_26817 T@FrameType T@Field_26816_26817 T@FrameType) Bool)
(declare-fun InsidePredicate_25992_25992 (T@Field_26023_26024 T@FrameType T@Field_26023_26024 T@FrameType) Bool)
(declare-fun InsidePredicate_24738_24738 (T@Field_24777_24778 T@FrameType T@Field_24777_24778 T@FrameType) Bool)
(declare-fun InsidePredicate_21405_21405 (T@Field_12393_24778 T@FrameType T@Field_12393_24778 T@FrameType) Bool)
(declare-fun IsWandField_12355_2857 (T@Field_27601_2857) Bool)
(declare-fun |wand_3#ft| (Bool T@Ref Real T@Ref Int) T@Field_27630_27631)
(declare-fun IsPredicateField_12393_3215 (T@Field_28301_3215) Bool)
(declare-fun IsWandField_12393_3215 (T@Field_28301_3215) Bool)
(declare-fun IsPredicateField_12355_2857 (T@Field_27601_2857) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12355_97946 (T@Field_27614_27619) Bool)
(declare-fun IsWandField_12355_97962 (T@Field_27614_27619) Bool)
(declare-fun IsPredicateField_12355_21419 (T@Field_27601_21419) Bool)
(declare-fun IsWandField_12355_21419 (T@Field_27601_21419) Bool)
(declare-fun IsPredicateField_12355_53 (T@Field_27601_53) Bool)
(declare-fun IsWandField_12355_53 (T@Field_27601_53) Bool)
(declare-fun IsPredicateField_12284_97129 (T@Field_26798_26803) Bool)
(declare-fun IsWandField_12284_97145 (T@Field_26798_26803) Bool)
(declare-fun IsPredicateField_12284_21419 (T@Field_26783_21419) Bool)
(declare-fun IsWandField_12284_21419 (T@Field_26783_21419) Bool)
(declare-fun IsPredicateField_12284_53 (T@Field_26783_53) Bool)
(declare-fun IsWandField_12284_53 (T@Field_26783_53) Bool)
(declare-fun IsPredicateField_12284_2425 (T@Field_26783_2425) Bool)
(declare-fun IsWandField_12284_2425 (T@Field_26783_2425) Bool)
(declare-fun IsPredicateField_12118_96312 (T@Field_24756_24761) Bool)
(declare-fun IsWandField_12118_96328 (T@Field_24756_24761) Bool)
(declare-fun IsPredicateField_12118_21419 (T@Field_24738_21419) Bool)
(declare-fun IsWandField_12118_21419 (T@Field_24738_21419) Bool)
(declare-fun IsPredicateField_12118_53 (T@Field_24738_53) Bool)
(declare-fun IsWandField_12118_53 (T@Field_24738_53) Bool)
(declare-fun IsPredicateField_12118_1235 (T@Field_24738_1235) Bool)
(declare-fun IsWandField_12118_1235 (T@Field_24738_1235) Bool)
(declare-fun IsPredicateField_12230_95495 (T@Field_26006_26011) Bool)
(declare-fun IsWandField_12230_95511 (T@Field_26006_26011) Bool)
(declare-fun IsPredicateField_12230_21419 (T@Field_25992_21419) Bool)
(declare-fun IsWandField_12230_21419 (T@Field_25992_21419) Bool)
(declare-fun IsPredicateField_12230_53 (T@Field_25992_53) Bool)
(declare-fun IsWandField_12230_53 (T@Field_25992_53) Bool)
(declare-fun IsPredicateField_12230_1989 (T@Field_25992_1989) Bool)
(declare-fun IsWandField_12230_1989 (T@Field_25992_1989) Bool)
(declare-fun IsPredicateField_12393_94678 (T@Field_12393_24761) Bool)
(declare-fun IsWandField_12393_94694 (T@Field_12393_24761) Bool)
(declare-fun IsPredicateField_12393_21419 (T@Field_21418_21419) Bool)
(declare-fun IsWandField_12393_21419 (T@Field_21418_21419) Bool)
(declare-fun IsPredicateField_12393_53 (T@Field_21405_53) Bool)
(declare-fun IsWandField_12393_53 (T@Field_21405_53) Bool)
(declare-fun HasDirectPerm_27601_70891 (T@PolymorphicMapType_21366 T@Ref T@Field_27614_27619) Bool)
(declare-fun HasDirectPerm_27601_21419 (T@PolymorphicMapType_21366 T@Ref T@Field_27601_21419) Bool)
(declare-fun HasDirectPerm_27601_53 (T@PolymorphicMapType_21366 T@Ref T@Field_27601_53) Bool)
(declare-fun HasDirectPerm_27601_3215 (T@PolymorphicMapType_21366 T@Ref T@Field_27601_2857) Bool)
(declare-fun HasDirectPerm_26783_69757 (T@PolymorphicMapType_21366 T@Ref T@Field_26798_26803) Bool)
(declare-fun HasDirectPerm_26783_21419 (T@PolymorphicMapType_21366 T@Ref T@Field_26783_21419) Bool)
(declare-fun HasDirectPerm_26783_53 (T@PolymorphicMapType_21366 T@Ref T@Field_26783_53) Bool)
(declare-fun HasDirectPerm_26783_3215 (T@PolymorphicMapType_21366 T@Ref T@Field_26783_2425) Bool)
(declare-fun HasDirectPerm_25992_68580 (T@PolymorphicMapType_21366 T@Ref T@Field_26006_26011) Bool)
(declare-fun HasDirectPerm_25992_21419 (T@PolymorphicMapType_21366 T@Ref T@Field_25992_21419) Bool)
(declare-fun HasDirectPerm_25992_53 (T@PolymorphicMapType_21366 T@Ref T@Field_25992_53) Bool)
(declare-fun HasDirectPerm_25992_3215 (T@PolymorphicMapType_21366 T@Ref T@Field_25992_1989) Bool)
(declare-fun HasDirectPerm_24738_67446 (T@PolymorphicMapType_21366 T@Ref T@Field_24756_24761) Bool)
(declare-fun HasDirectPerm_24738_21419 (T@PolymorphicMapType_21366 T@Ref T@Field_24738_21419) Bool)
(declare-fun HasDirectPerm_24738_53 (T@PolymorphicMapType_21366 T@Ref T@Field_24738_53) Bool)
(declare-fun HasDirectPerm_24738_3215 (T@PolymorphicMapType_21366 T@Ref T@Field_24738_1235) Bool)
(declare-fun HasDirectPerm_12393_66268 (T@PolymorphicMapType_21366 T@Ref T@Field_12393_24761) Bool)
(declare-fun HasDirectPerm_12393_21419 (T@PolymorphicMapType_21366 T@Ref T@Field_21418_21419) Bool)
(declare-fun HasDirectPerm_12393_53 (T@PolymorphicMapType_21366 T@Ref T@Field_21405_53) Bool)
(declare-fun HasDirectPerm_12393_3215 (T@PolymorphicMapType_21366 T@Ref T@Field_28301_3215) Bool)
(declare-fun wand_1 (T@Ref Real T@Ref Int T@Ref Int) T@Field_25992_1989)
(declare-fun wand_2 (T@Ref Real T@Ref Real T@Ref T@Ref) T@Field_26783_2425)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real T@Ref Int T@Ref Int T@Ref Real T@Ref T@Ref) T@Field_24777_24778)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun getPredWandId_12230_1989 (T@Field_25992_1989) Int)
(declare-fun getPredWandId_12284_2425 (T@Field_26783_2425) Int)
(declare-fun sumMask (T@PolymorphicMapType_21366 T@PolymorphicMapType_21366 T@PolymorphicMapType_21366) Bool)
(declare-fun |wand_3#sm| (Bool T@Ref Real T@Ref Int) T@Field_27614_27619)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real T@Ref Int T@Ref Int T@Ref Real T@Ref T@Ref) T@Field_24756_24761)
(declare-fun InsidePredicate_27601_26783 (T@Field_27630_27631 T@FrameType T@Field_26816_26817 T@FrameType) Bool)
(declare-fun InsidePredicate_27601_25992 (T@Field_27630_27631 T@FrameType T@Field_26023_26024 T@FrameType) Bool)
(declare-fun InsidePredicate_27601_24738 (T@Field_27630_27631 T@FrameType T@Field_24777_24778 T@FrameType) Bool)
(declare-fun InsidePredicate_27601_21405 (T@Field_27630_27631 T@FrameType T@Field_12393_24778 T@FrameType) Bool)
(declare-fun InsidePredicate_26783_27601 (T@Field_26816_26817 T@FrameType T@Field_27630_27631 T@FrameType) Bool)
(declare-fun InsidePredicate_26783_25992 (T@Field_26816_26817 T@FrameType T@Field_26023_26024 T@FrameType) Bool)
(declare-fun InsidePredicate_26783_24738 (T@Field_26816_26817 T@FrameType T@Field_24777_24778 T@FrameType) Bool)
(declare-fun InsidePredicate_26783_21405 (T@Field_26816_26817 T@FrameType T@Field_12393_24778 T@FrameType) Bool)
(declare-fun InsidePredicate_25992_27601 (T@Field_26023_26024 T@FrameType T@Field_27630_27631 T@FrameType) Bool)
(declare-fun InsidePredicate_25992_26783 (T@Field_26023_26024 T@FrameType T@Field_26816_26817 T@FrameType) Bool)
(declare-fun InsidePredicate_25992_24738 (T@Field_26023_26024 T@FrameType T@Field_24777_24778 T@FrameType) Bool)
(declare-fun InsidePredicate_25992_21405 (T@Field_26023_26024 T@FrameType T@Field_12393_24778 T@FrameType) Bool)
(declare-fun InsidePredicate_24738_27601 (T@Field_24777_24778 T@FrameType T@Field_27630_27631 T@FrameType) Bool)
(declare-fun InsidePredicate_24738_26783 (T@Field_24777_24778 T@FrameType T@Field_26816_26817 T@FrameType) Bool)
(declare-fun InsidePredicate_24738_25992 (T@Field_24777_24778 T@FrameType T@Field_26023_26024 T@FrameType) Bool)
(declare-fun InsidePredicate_24738_21405 (T@Field_24777_24778 T@FrameType T@Field_12393_24778 T@FrameType) Bool)
(declare-fun InsidePredicate_21405_27601 (T@Field_12393_24778 T@FrameType T@Field_27630_27631 T@FrameType) Bool)
(declare-fun InsidePredicate_21405_26783 (T@Field_12393_24778 T@FrameType T@Field_26816_26817 T@FrameType) Bool)
(declare-fun InsidePredicate_21405_25992 (T@Field_12393_24778 T@FrameType T@Field_26023_26024 T@FrameType) Bool)
(declare-fun InsidePredicate_21405_24738 (T@Field_12393_24778 T@FrameType T@Field_24777_24778 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_21345) (Heap1 T@PolymorphicMapType_21345) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_21345) (Mask T@PolymorphicMapType_21366) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_21345) (Heap1@@0 T@PolymorphicMapType_21345) (Heap2 T@PolymorphicMapType_21345) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_27630_27631) ) (!  (not (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27614_27619) ) (!  (not (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_27601_21419) ) (!  (not (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_27601_53) ) (!  (not (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_27601_2857) ) (!  (not (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_26816_26817) ) (!  (not (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_26798_26803) ) (!  (not (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_26783_21419) ) (!  (not (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_26783_53) ) (!  (not (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_26783_2425) ) (!  (not (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_26023_26024) ) (!  (not (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_26006_26011) ) (!  (not (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_25992_21419) ) (!  (not (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_25992_53) ) (!  (not (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_25992_1989) ) (!  (not (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_24777_24778) ) (!  (not (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_24756_24761) ) (!  (not (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_24738_21419) ) (!  (not (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_24738_53) ) (!  (not (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_24738_1235) ) (!  (not (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_12393_24778) ) (!  (not (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_12393_24761) ) (!  (not (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_21418_21419) ) (!  (not (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_21405_53) ) (!  (not (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_28301_3215) ) (!  (not (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Int) (arg5 T@Ref) (arg6 Int) ) (! (= (|wand_1#sm| arg1 arg2 arg3 arg4 arg5 arg6) (WandMaskField_12243 (|wand_1#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_12243 (|wand_1#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Real) (arg5@@0 T@Ref) (arg6@@0 T@Ref) ) (! (= (|wand_2#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (WandMaskField_12301 (|wand_2#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0)))
 :qid |stdinbpl.264:15|
 :skolemid |40|
 :pattern ( (WandMaskField_12301 (|wand_2#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0)))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) (arg3@@1 Real) (arg4@@1 T@Ref) (arg5@@1 Int) ) (! (= (getPredWandId_12355_2857 (wand_3 arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1)) 3)
 :qid |stdinbpl.300:15|
 :skolemid |48|
 :pattern ( (wand_3 arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_21345) (ExhaleHeap T@PolymorphicMapType_21345) (Mask@@0 T@PolymorphicMapType_21366) (pm_f T@Field_27630_27631) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_27601_24778 Mask@@0 null pm_f) (IsPredicateField_12366_12367 pm_f)) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@0) null (PredicateMaskField_27601 pm_f)) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap) null (PredicateMaskField_27601 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_12366_12367 pm_f) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap) null (PredicateMaskField_27601 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_21345) (ExhaleHeap@@0 T@PolymorphicMapType_21345) (Mask@@1 T@PolymorphicMapType_21366) (pm_f@@0 T@Field_26816_26817) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_26783_24778 Mask@@1 null pm_f@@0) (IsPredicateField_12301_12302 pm_f@@0)) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@1) null (PredicateMaskField_26783 pm_f@@0)) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@0) null (PredicateMaskField_26783 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_12301_12302 pm_f@@0) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@0) null (PredicateMaskField_26783 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_21345) (ExhaleHeap@@1 T@PolymorphicMapType_21345) (Mask@@2 T@PolymorphicMapType_21366) (pm_f@@1 T@Field_26023_26024) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_25992_24778 Mask@@2 null pm_f@@1) (IsPredicateField_12243_12244 pm_f@@1)) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@2) null (PredicateMaskField_25992 pm_f@@1)) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@1) null (PredicateMaskField_25992 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_12243_12244 pm_f@@1) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@1) null (PredicateMaskField_25992 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_21345) (ExhaleHeap@@2 T@PolymorphicMapType_21345) (Mask@@3 T@PolymorphicMapType_21366) (pm_f@@2 T@Field_24777_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_24738_24778 Mask@@3 null pm_f@@2) (IsPredicateField_12143_12144 pm_f@@2)) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@3) null (PredicateMaskField_24738 pm_f@@2)) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@2) null (PredicateMaskField_24738 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsPredicateField_12143_12144 pm_f@@2) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@2) null (PredicateMaskField_24738 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_21345) (ExhaleHeap@@3 T@PolymorphicMapType_21345) (Mask@@4 T@PolymorphicMapType_21366) (pm_f@@3 T@Field_12393_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12393_24778 Mask@@4 null pm_f@@3) (IsPredicateField_12393_71364 pm_f@@3)) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@4) null (PredicateMaskField_12393 pm_f@@3)) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@3) null (PredicateMaskField_12393 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_12393_71364 pm_f@@3) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@3) null (PredicateMaskField_12393 pm_f@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_21345) (ExhaleHeap@@4 T@PolymorphicMapType_21345) (Mask@@5 T@PolymorphicMapType_21366) (pm_f@@4 T@Field_27630_27631) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_27601_24778 Mask@@5 null pm_f@@4) (IsWandField_12366_12367 pm_f@@4)) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@5) null (WandMaskField_12366 pm_f@@4)) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@4) null (WandMaskField_12366 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_12366_12367 pm_f@@4) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@4) null (WandMaskField_12366 pm_f@@4)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_21345) (ExhaleHeap@@5 T@PolymorphicMapType_21345) (Mask@@6 T@PolymorphicMapType_21366) (pm_f@@5 T@Field_26816_26817) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_26783_24778 Mask@@6 null pm_f@@5) (IsWandField_12301_12302 pm_f@@5)) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@6) null (WandMaskField_12301 pm_f@@5)) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@5) null (WandMaskField_12301 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_12301_12302 pm_f@@5) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@5) null (WandMaskField_12301 pm_f@@5)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_21345) (ExhaleHeap@@6 T@PolymorphicMapType_21345) (Mask@@7 T@PolymorphicMapType_21366) (pm_f@@6 T@Field_26023_26024) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_25992_24778 Mask@@7 null pm_f@@6) (IsWandField_12243_12244 pm_f@@6)) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@7) null (WandMaskField_12243 pm_f@@6)) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@6) null (WandMaskField_12243 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_12243_12244 pm_f@@6) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@6) null (WandMaskField_12243 pm_f@@6)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_21345) (ExhaleHeap@@7 T@PolymorphicMapType_21345) (Mask@@8 T@PolymorphicMapType_21366) (pm_f@@7 T@Field_24777_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_24738_24778 Mask@@8 null pm_f@@7) (IsWandField_12143_12144 pm_f@@7)) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@8) null (WandMaskField_12143 pm_f@@7)) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@7) null (WandMaskField_12143 pm_f@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (IsWandField_12143_12144 pm_f@@7) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@7) null (WandMaskField_12143 pm_f@@7)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_21345) (ExhaleHeap@@8 T@PolymorphicMapType_21345) (Mask@@9 T@PolymorphicMapType_21366) (pm_f@@8 T@Field_12393_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_12393_24778 Mask@@9 null pm_f@@8) (IsWandField_12393_79754 pm_f@@8)) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@9) null (WandMaskField_12393 pm_f@@8)) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@8) null (WandMaskField_12393 pm_f@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (IsWandField_12393_79754 pm_f@@8) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@8) null (WandMaskField_12393 pm_f@@8)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) (arg5@@2 T@Ref) (arg6@@1 Int) (arg7 T@Ref) (arg8 Int) (arg9 T@Ref) (arg10 Real) (arg11 T@Ref) (arg12 T@Ref) ) (! (= (getPredWandId_12118_1235 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@1 arg7 arg8 arg9 arg10 arg11 arg12)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@1 arg7 arg8 arg9 arg10 arg11 arg12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_21345) (ExhaleHeap@@9 T@PolymorphicMapType_21345) (Mask@@10 T@PolymorphicMapType_21366) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@10) o_1 $allocated) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@9) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@9) o_1 $allocated))
)))
(assert (forall ((p T@Field_27630_27631) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27601_27601 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27601_27601 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_26816_26817) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_26783_26783 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26783_26783 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_26023_26024) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_25992_25992 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25992_25992 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_24777_24778) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_24738_24738 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24738_24738 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_12393_24778) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_21405_21405 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21405_21405 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) (arg3@@3 Real) (arg4@@3 T@Ref) (arg5@@3 Int) ) (! (IsWandField_12355_2857 (wand_3 arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3))
 :qid |stdinbpl.280:15|
 :skolemid |43|
 :pattern ( (wand_3 arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 T@Ref) (arg3@@4 Real) (arg4@@4 T@Ref) (arg5@@4 Int) ) (! (IsWandField_12366_12367 (|wand_3#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4))
 :qid |stdinbpl.284:15|
 :skolemid |44|
 :pattern ( (|wand_3#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4))
)))
(assert  (not (IsPredicateField_12393_3215 f_7)))
(assert  (not (IsWandField_12393_3215 f_7)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_21345) (ExhaleHeap@@10 T@PolymorphicMapType_21345) (Mask@@11 T@PolymorphicMapType_21366) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@11) (succHeap Heap@@11 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@11))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 T@Ref) (arg3@@5 Real) (arg4@@5 T@Ref) (arg5@@5 Int) ) (!  (not (IsPredicateField_12355_2857 (wand_3 arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5)))
 :qid |stdinbpl.288:15|
 :skolemid |45|
 :pattern ( (wand_3 arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5))
)))
(assert (forall ((arg1@@6 Bool) (arg2@@6 T@Ref) (arg3@@6 Real) (arg4@@6 T@Ref) (arg5@@6 Int) ) (!  (not (IsPredicateField_12366_12367 (|wand_3#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@6)))
 :qid |stdinbpl.292:15|
 :skolemid |46|
 :pattern ( (|wand_3#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_21366) (o_2@@24 T@Ref) (f_4@@24 T@Field_27630_27631) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@@12) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12366_12367 f_4@@24))) (not (IsWandField_12366_12367 f_4@@24))) (<= (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@@12) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@@12) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_21366) (o_2@@25 T@Ref) (f_4@@25 T@Field_27614_27619) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@@13) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_12355_97946 f_4@@25))) (not (IsWandField_12355_97962 f_4@@25))) (<= (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@@13) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@@13) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_21366) (o_2@@26 T@Ref) (f_4@@26 T@Field_27601_21419) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@@14) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_12355_21419 f_4@@26))) (not (IsWandField_12355_21419 f_4@@26))) (<= (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@@14) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@@14) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_21366) (o_2@@27 T@Ref) (f_4@@27 T@Field_27601_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@@15) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_12355_53 f_4@@27))) (not (IsWandField_12355_53 f_4@@27))) (<= (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@@15) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@@15) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_21366) (o_2@@28 T@Ref) (f_4@@28 T@Field_27601_2857) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@@16) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_12355_2857 f_4@@28))) (not (IsWandField_12355_2857 f_4@@28))) (<= (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@@16) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@@16) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_21366) (o_2@@29 T@Ref) (f_4@@29 T@Field_26816_26817) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@@17) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_12301_12302 f_4@@29))) (not (IsWandField_12301_12302 f_4@@29))) (<= (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@@17) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@@17) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_21366) (o_2@@30 T@Ref) (f_4@@30 T@Field_26798_26803) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@@18) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_12284_97129 f_4@@30))) (not (IsWandField_12284_97145 f_4@@30))) (<= (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@@18) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@@18) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_21366) (o_2@@31 T@Ref) (f_4@@31 T@Field_26783_21419) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@@19) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_12284_21419 f_4@@31))) (not (IsWandField_12284_21419 f_4@@31))) (<= (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@@19) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@@19) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_21366) (o_2@@32 T@Ref) (f_4@@32 T@Field_26783_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@@20) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_12284_53 f_4@@32))) (not (IsWandField_12284_53 f_4@@32))) (<= (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@@20) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@@20) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_21366) (o_2@@33 T@Ref) (f_4@@33 T@Field_26783_2425) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@@21) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_12284_2425 f_4@@33))) (not (IsWandField_12284_2425 f_4@@33))) (<= (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@@21) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@@21) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_21366) (o_2@@34 T@Ref) (f_4@@34 T@Field_24777_24778) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@@22) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_12143_12144 f_4@@34))) (not (IsWandField_12143_12144 f_4@@34))) (<= (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@@22) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@@22) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_21366) (o_2@@35 T@Ref) (f_4@@35 T@Field_24756_24761) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@@23) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_12118_96312 f_4@@35))) (not (IsWandField_12118_96328 f_4@@35))) (<= (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@@23) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@@23) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_21366) (o_2@@36 T@Ref) (f_4@@36 T@Field_24738_21419) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@@24) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_12118_21419 f_4@@36))) (not (IsWandField_12118_21419 f_4@@36))) (<= (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@@24) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@@24) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_21366) (o_2@@37 T@Ref) (f_4@@37 T@Field_24738_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@@25) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_12118_53 f_4@@37))) (not (IsWandField_12118_53 f_4@@37))) (<= (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@@25) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@@25) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_21366) (o_2@@38 T@Ref) (f_4@@38 T@Field_24738_1235) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@@26) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_12118_1235 f_4@@38))) (not (IsWandField_12118_1235 f_4@@38))) (<= (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@@26) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@@26) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_21366) (o_2@@39 T@Ref) (f_4@@39 T@Field_26023_26024) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@@27) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_12243_12244 f_4@@39))) (not (IsWandField_12243_12244 f_4@@39))) (<= (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@@27) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@@27) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_21366) (o_2@@40 T@Ref) (f_4@@40 T@Field_26006_26011) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@@28) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_12230_95495 f_4@@40))) (not (IsWandField_12230_95511 f_4@@40))) (<= (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@@28) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@@28) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_21366) (o_2@@41 T@Ref) (f_4@@41 T@Field_25992_21419) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@@29) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_12230_21419 f_4@@41))) (not (IsWandField_12230_21419 f_4@@41))) (<= (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@@29) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@@29) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_21366) (o_2@@42 T@Ref) (f_4@@42 T@Field_25992_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@@30) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_12230_53 f_4@@42))) (not (IsWandField_12230_53 f_4@@42))) (<= (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@@30) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@@30) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_21366) (o_2@@43 T@Ref) (f_4@@43 T@Field_25992_1989) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@@31) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_12230_1989 f_4@@43))) (not (IsWandField_12230_1989 f_4@@43))) (<= (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@@31) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@@31) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_21366) (o_2@@44 T@Ref) (f_4@@44 T@Field_12393_24778) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@@32) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_12393_71364 f_4@@44))) (not (IsWandField_12393_79754 f_4@@44))) (<= (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@@32) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@@32) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_21366) (o_2@@45 T@Ref) (f_4@@45 T@Field_12393_24761) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@@33) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_12393_94678 f_4@@45))) (not (IsWandField_12393_94694 f_4@@45))) (<= (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@@33) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@@33) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_21366) (o_2@@46 T@Ref) (f_4@@46 T@Field_21418_21419) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@@34) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_12393_21419 f_4@@46))) (not (IsWandField_12393_21419 f_4@@46))) (<= (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@@34) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@@34) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_21366) (o_2@@47 T@Ref) (f_4@@47 T@Field_21405_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@@35) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_12393_53 f_4@@47))) (not (IsWandField_12393_53 f_4@@47))) (<= (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@@35) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@@35) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_21366) (o_2@@48 T@Ref) (f_4@@48 T@Field_28301_3215) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@@36) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_12393_3215 f_4@@48))) (not (IsWandField_12393_3215 f_4@@48))) (<= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@@36) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@@36) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_21366) (o_2@@49 T@Ref) (f_4@@49 T@Field_27630_27631) ) (! (= (HasDirectPerm_27601_24778 Mask@@37 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@@37) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27601_24778 Mask@@37 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_21366) (o_2@@50 T@Ref) (f_4@@50 T@Field_27614_27619) ) (! (= (HasDirectPerm_27601_70891 Mask@@38 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@@38) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27601_70891 Mask@@38 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_21366) (o_2@@51 T@Ref) (f_4@@51 T@Field_27601_21419) ) (! (= (HasDirectPerm_27601_21419 Mask@@39 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@@39) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27601_21419 Mask@@39 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_21366) (o_2@@52 T@Ref) (f_4@@52 T@Field_27601_53) ) (! (= (HasDirectPerm_27601_53 Mask@@40 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@@40) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27601_53 Mask@@40 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_21366) (o_2@@53 T@Ref) (f_4@@53 T@Field_27601_2857) ) (! (= (HasDirectPerm_27601_3215 Mask@@41 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@@41) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27601_3215 Mask@@41 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_21366) (o_2@@54 T@Ref) (f_4@@54 T@Field_26816_26817) ) (! (= (HasDirectPerm_26783_24778 Mask@@42 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@@42) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26783_24778 Mask@@42 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_21366) (o_2@@55 T@Ref) (f_4@@55 T@Field_26798_26803) ) (! (= (HasDirectPerm_26783_69757 Mask@@43 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@@43) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26783_69757 Mask@@43 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_21366) (o_2@@56 T@Ref) (f_4@@56 T@Field_26783_21419) ) (! (= (HasDirectPerm_26783_21419 Mask@@44 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@@44) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26783_21419 Mask@@44 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_21366) (o_2@@57 T@Ref) (f_4@@57 T@Field_26783_53) ) (! (= (HasDirectPerm_26783_53 Mask@@45 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@@45) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26783_53 Mask@@45 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_21366) (o_2@@58 T@Ref) (f_4@@58 T@Field_26783_2425) ) (! (= (HasDirectPerm_26783_3215 Mask@@46 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@@46) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26783_3215 Mask@@46 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_21366) (o_2@@59 T@Ref) (f_4@@59 T@Field_26023_26024) ) (! (= (HasDirectPerm_25992_24778 Mask@@47 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@@47) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25992_24778 Mask@@47 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_21366) (o_2@@60 T@Ref) (f_4@@60 T@Field_26006_26011) ) (! (= (HasDirectPerm_25992_68580 Mask@@48 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@@48) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25992_68580 Mask@@48 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_21366) (o_2@@61 T@Ref) (f_4@@61 T@Field_25992_21419) ) (! (= (HasDirectPerm_25992_21419 Mask@@49 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@@49) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25992_21419 Mask@@49 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_21366) (o_2@@62 T@Ref) (f_4@@62 T@Field_25992_53) ) (! (= (HasDirectPerm_25992_53 Mask@@50 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@@50) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25992_53 Mask@@50 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_21366) (o_2@@63 T@Ref) (f_4@@63 T@Field_25992_1989) ) (! (= (HasDirectPerm_25992_3215 Mask@@51 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@@51) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25992_3215 Mask@@51 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_21366) (o_2@@64 T@Ref) (f_4@@64 T@Field_24777_24778) ) (! (= (HasDirectPerm_24738_24778 Mask@@52 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@@52) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24738_24778 Mask@@52 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_21366) (o_2@@65 T@Ref) (f_4@@65 T@Field_24756_24761) ) (! (= (HasDirectPerm_24738_67446 Mask@@53 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@@53) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24738_67446 Mask@@53 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_21366) (o_2@@66 T@Ref) (f_4@@66 T@Field_24738_21419) ) (! (= (HasDirectPerm_24738_21419 Mask@@54 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@@54) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24738_21419 Mask@@54 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_21366) (o_2@@67 T@Ref) (f_4@@67 T@Field_24738_53) ) (! (= (HasDirectPerm_24738_53 Mask@@55 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@@55) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24738_53 Mask@@55 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_21366) (o_2@@68 T@Ref) (f_4@@68 T@Field_24738_1235) ) (! (= (HasDirectPerm_24738_3215 Mask@@56 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@@56) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24738_3215 Mask@@56 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_21366) (o_2@@69 T@Ref) (f_4@@69 T@Field_12393_24778) ) (! (= (HasDirectPerm_12393_24778 Mask@@57 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@@57) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12393_24778 Mask@@57 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_21366) (o_2@@70 T@Ref) (f_4@@70 T@Field_12393_24761) ) (! (= (HasDirectPerm_12393_66268 Mask@@58 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@@58) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12393_66268 Mask@@58 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_21366) (o_2@@71 T@Ref) (f_4@@71 T@Field_21418_21419) ) (! (= (HasDirectPerm_12393_21419 Mask@@59 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@@59) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12393_21419 Mask@@59 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_21366) (o_2@@72 T@Ref) (f_4@@72 T@Field_21405_53) ) (! (= (HasDirectPerm_12393_53 Mask@@60 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@@60) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12393_53 Mask@@60 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_21366) (o_2@@73 T@Ref) (f_4@@73 T@Field_28301_3215) ) (! (= (HasDirectPerm_12393_3215 Mask@@61 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@@61) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12393_3215 Mask@@61 o_2@@73 f_4@@73))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@7 T@Ref) (arg4@@7 Int) (arg5@@7 T@Ref) (arg6@@2 Int) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Int) (arg5_2 T@Ref) (arg6_2 Int) ) (!  (=> (= (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@7 arg6@@2) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2)) (and (= arg1@@7 arg1_2) (and (= arg2@@7 arg2_2) (and (= arg3@@7 arg3_2) (and (= arg4@@7 arg4_2) (and (= arg5@@7 arg5_2) (= arg6@@2 arg6_2)))))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@7 arg6@@2) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 T@Ref) (arg4@@8 Real) (arg5@@8 T@Ref) (arg6@@3 T@Ref) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) (arg4_2@@0 Real) (arg5_2@@0 T@Ref) (arg6_2@@0 T@Ref) ) (!  (=> (= (wand_2 arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@8 arg6@@3) (wand_2 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0)) (and (= arg1@@8 arg1_2@@0) (and (= arg2@@8 arg2_2@@0) (and (= arg3@@8 arg3_2@@0) (and (= arg4@@8 arg4_2@@0) (and (= arg5@@8 arg5_2@@0) (= arg6@@3 arg6_2@@0)))))))
 :qid |stdinbpl.272:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@8 arg6@@3) (wand_2 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 T@Ref) (arg4@@9 Real) (arg5@@9 T@Ref) (arg6@@4 Int) (arg7@@0 T@Ref) (arg8@@0 Int) (arg9@@0 T@Ref) (arg10@@0 Real) (arg11@@0 T@Ref) (arg12@@0 T@Ref) ) (! (IsWandField_12118_1235 (wand arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@9 arg6@@4 arg7@@0 arg8@@0 arg9@@0 arg10@@0 arg11@@0 arg12@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@9 arg6@@4 arg7@@0 arg8@@0 arg9@@0 arg10@@0 arg11@@0 arg12@@0))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 Real) (arg3@@10 T@Ref) (arg4@@10 Real) (arg5@@10 T@Ref) (arg6@@5 Int) (arg7@@1 T@Ref) (arg8@@1 Int) (arg9@@1 T@Ref) (arg10@@1 Real) (arg11@@1 T@Ref) (arg12@@1 T@Ref) ) (! (IsWandField_12143_12144 (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@10 arg6@@5 arg7@@1 arg8@@1 arg9@@1 arg10@@1 arg11@@1 arg12@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@10 arg6@@5 arg7@@1 arg8@@1 arg9@@1 arg10@@1 arg11@@1 arg12@@1))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_21345) (ExhaleHeap@@11 T@PolymorphicMapType_21345) (Mask@@62 T@PolymorphicMapType_21366) (o_1@@0 T@Ref) (f_2 T@Field_27630_27631) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_27601_24778 Mask@@62 o_1@@0 f_2) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@12) o_1@@0 f_2) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@11) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@11) o_1@@0 f_2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_21345) (ExhaleHeap@@12 T@PolymorphicMapType_21345) (Mask@@63 T@PolymorphicMapType_21366) (o_1@@1 T@Ref) (f_2@@0 T@Field_27614_27619) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_27601_70891 Mask@@63 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@13) o_1@@1 f_2@@0) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@12) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@12) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_21345) (ExhaleHeap@@13 T@PolymorphicMapType_21345) (Mask@@64 T@PolymorphicMapType_21366) (o_1@@2 T@Ref) (f_2@@1 T@Field_27601_21419) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_27601_21419 Mask@@64 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@14) o_1@@2 f_2@@1) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@13) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@13) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_21345) (ExhaleHeap@@14 T@PolymorphicMapType_21345) (Mask@@65 T@PolymorphicMapType_21366) (o_1@@3 T@Ref) (f_2@@2 T@Field_27601_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_27601_53 Mask@@65 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@15) o_1@@3 f_2@@2) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@14) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@14) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_21345) (ExhaleHeap@@15 T@PolymorphicMapType_21345) (Mask@@66 T@PolymorphicMapType_21366) (o_1@@4 T@Ref) (f_2@@3 T@Field_27601_2857) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_27601_3215 Mask@@66 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@16) o_1@@4 f_2@@3) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@15) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@15) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_21345) (ExhaleHeap@@16 T@PolymorphicMapType_21345) (Mask@@67 T@PolymorphicMapType_21366) (o_1@@5 T@Ref) (f_2@@4 T@Field_26816_26817) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_26783_24778 Mask@@67 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@17) o_1@@5 f_2@@4) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@16) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@16) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_21345) (ExhaleHeap@@17 T@PolymorphicMapType_21345) (Mask@@68 T@PolymorphicMapType_21366) (o_1@@6 T@Ref) (f_2@@5 T@Field_26798_26803) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_26783_69757 Mask@@68 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@18) o_1@@6 f_2@@5) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@17) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@17) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_21345) (ExhaleHeap@@18 T@PolymorphicMapType_21345) (Mask@@69 T@PolymorphicMapType_21366) (o_1@@7 T@Ref) (f_2@@6 T@Field_26783_21419) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_26783_21419 Mask@@69 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@19) o_1@@7 f_2@@6) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@18) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@18) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_21345) (ExhaleHeap@@19 T@PolymorphicMapType_21345) (Mask@@70 T@PolymorphicMapType_21366) (o_1@@8 T@Ref) (f_2@@7 T@Field_26783_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_26783_53 Mask@@70 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@20) o_1@@8 f_2@@7) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@19) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@19) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_21345) (ExhaleHeap@@20 T@PolymorphicMapType_21345) (Mask@@71 T@PolymorphicMapType_21366) (o_1@@9 T@Ref) (f_2@@8 T@Field_26783_2425) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_26783_3215 Mask@@71 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@21) o_1@@9 f_2@@8) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@20) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@20) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_21345) (ExhaleHeap@@21 T@PolymorphicMapType_21345) (Mask@@72 T@PolymorphicMapType_21366) (o_1@@10 T@Ref) (f_2@@9 T@Field_26023_26024) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_25992_24778 Mask@@72 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@22) o_1@@10 f_2@@9) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@21) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@21) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_21345) (ExhaleHeap@@22 T@PolymorphicMapType_21345) (Mask@@73 T@PolymorphicMapType_21366) (o_1@@11 T@Ref) (f_2@@10 T@Field_26006_26011) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_25992_68580 Mask@@73 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@23) o_1@@11 f_2@@10) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@22) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@22) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_21345) (ExhaleHeap@@23 T@PolymorphicMapType_21345) (Mask@@74 T@PolymorphicMapType_21366) (o_1@@12 T@Ref) (f_2@@11 T@Field_25992_21419) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_25992_21419 Mask@@74 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@24) o_1@@12 f_2@@11) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@23) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@23) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_21345) (ExhaleHeap@@24 T@PolymorphicMapType_21345) (Mask@@75 T@PolymorphicMapType_21366) (o_1@@13 T@Ref) (f_2@@12 T@Field_25992_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_25992_53 Mask@@75 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@25) o_1@@13 f_2@@12) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@24) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@24) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_21345) (ExhaleHeap@@25 T@PolymorphicMapType_21345) (Mask@@76 T@PolymorphicMapType_21366) (o_1@@14 T@Ref) (f_2@@13 T@Field_25992_1989) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_25992_3215 Mask@@76 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@26) o_1@@14 f_2@@13) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@25) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@25) o_1@@14 f_2@@13))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_21345) (ExhaleHeap@@26 T@PolymorphicMapType_21345) (Mask@@77 T@PolymorphicMapType_21366) (o_1@@15 T@Ref) (f_2@@14 T@Field_24777_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_24738_24778 Mask@@77 o_1@@15 f_2@@14) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@27) o_1@@15 f_2@@14) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@26) o_1@@15 f_2@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@26) o_1@@15 f_2@@14))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_21345) (ExhaleHeap@@27 T@PolymorphicMapType_21345) (Mask@@78 T@PolymorphicMapType_21366) (o_1@@16 T@Ref) (f_2@@15 T@Field_24756_24761) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_24738_67446 Mask@@78 o_1@@16 f_2@@15) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@28) o_1@@16 f_2@@15) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@27) o_1@@16 f_2@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@27) o_1@@16 f_2@@15))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_21345) (ExhaleHeap@@28 T@PolymorphicMapType_21345) (Mask@@79 T@PolymorphicMapType_21366) (o_1@@17 T@Ref) (f_2@@16 T@Field_24738_21419) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_24738_21419 Mask@@79 o_1@@17 f_2@@16) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@29) o_1@@17 f_2@@16) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@28) o_1@@17 f_2@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@28) o_1@@17 f_2@@16))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_21345) (ExhaleHeap@@29 T@PolymorphicMapType_21345) (Mask@@80 T@PolymorphicMapType_21366) (o_1@@18 T@Ref) (f_2@@17 T@Field_24738_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_24738_53 Mask@@80 o_1@@18 f_2@@17) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@30) o_1@@18 f_2@@17) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@29) o_1@@18 f_2@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@29) o_1@@18 f_2@@17))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_21345) (ExhaleHeap@@30 T@PolymorphicMapType_21345) (Mask@@81 T@PolymorphicMapType_21366) (o_1@@19 T@Ref) (f_2@@18 T@Field_24738_1235) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_24738_3215 Mask@@81 o_1@@19 f_2@@18) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@31) o_1@@19 f_2@@18) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@30) o_1@@19 f_2@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@30) o_1@@19 f_2@@18))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_21345) (ExhaleHeap@@31 T@PolymorphicMapType_21345) (Mask@@82 T@PolymorphicMapType_21366) (o_1@@20 T@Ref) (f_2@@19 T@Field_12393_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_12393_24778 Mask@@82 o_1@@20 f_2@@19) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@32) o_1@@20 f_2@@19) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@31) o_1@@20 f_2@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@31) o_1@@20 f_2@@19))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_21345) (ExhaleHeap@@32 T@PolymorphicMapType_21345) (Mask@@83 T@PolymorphicMapType_21366) (o_1@@21 T@Ref) (f_2@@20 T@Field_12393_24761) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_12393_66268 Mask@@83 o_1@@21 f_2@@20) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@33) o_1@@21 f_2@@20) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@32) o_1@@21 f_2@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@32) o_1@@21 f_2@@20))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_21345) (ExhaleHeap@@33 T@PolymorphicMapType_21345) (Mask@@84 T@PolymorphicMapType_21366) (o_1@@22 T@Ref) (f_2@@21 T@Field_21418_21419) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_12393_21419 Mask@@84 o_1@@22 f_2@@21) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@34) o_1@@22 f_2@@21) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@33) o_1@@22 f_2@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@33) o_1@@22 f_2@@21))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_21345) (ExhaleHeap@@34 T@PolymorphicMapType_21345) (Mask@@85 T@PolymorphicMapType_21366) (o_1@@23 T@Ref) (f_2@@22 T@Field_21405_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_12393_53 Mask@@85 o_1@@23 f_2@@22) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@35) o_1@@23 f_2@@22) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@34) o_1@@23 f_2@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@34) o_1@@23 f_2@@22))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_21345) (ExhaleHeap@@35 T@PolymorphicMapType_21345) (Mask@@86 T@PolymorphicMapType_21366) (o_1@@24 T@Ref) (f_2@@23 T@Field_28301_3215) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_12393_3215 Mask@@86 o_1@@24 f_2@@23) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@36) o_1@@24 f_2@@23) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@35) o_1@@24 f_2@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@35) o_1@@24 f_2@@23))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@11 T@Ref) (arg4@@11 Real) (arg5@@11 T@Ref) (arg6@@6 Int) (arg7@@2 T@Ref) (arg8@@2 Int) (arg9@@2 T@Ref) (arg10@@2 Real) (arg11@@2 T@Ref) (arg12@@2 T@Ref) ) (!  (not (IsPredicateField_12118_1235 (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@11 arg6@@6 arg7@@2 arg8@@2 arg9@@2 arg10@@2 arg11@@2 arg12@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@11 arg6@@6 arg7@@2 arg8@@2 arg9@@2 arg10@@2 arg11@@2 arg12@@2))
)))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@12 T@Ref) (arg4@@12 Real) (arg5@@12 T@Ref) (arg6@@7 Int) (arg7@@3 T@Ref) (arg8@@3 Int) (arg9@@3 T@Ref) (arg10@@3 Real) (arg11@@3 T@Ref) (arg12@@3 T@Ref) ) (!  (not (IsPredicateField_12143_12144 (|wand#ft| arg1@@12 arg2@@12 arg3@@12 arg4@@12 arg5@@12 arg6@@7 arg7@@3 arg8@@3 arg9@@3 arg10@@3 arg11@@3 arg12@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@12 arg2@@12 arg3@@12 arg4@@12 arg5@@12 arg6@@7 arg7@@3 arg8@@3 arg9@@3 arg10@@3 arg11@@3 arg12@@3))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_27630_27631) ) (! (= (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_27614_27619) ) (! (= (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_27601_21419) ) (! (= (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_27601_53) ) (! (= (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_27601_2857) ) (! (= (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_26816_26817) ) (! (= (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_26798_26803) ) (! (= (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_26783_21419) ) (! (= (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_26783_53) ) (! (= (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_26783_2425) ) (! (= (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_24777_24778) ) (! (= (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_24756_24761) ) (! (= (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_24738_21419) ) (! (= (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_24738_53) ) (! (= (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_24738_1235) ) (! (= (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_26023_26024) ) (! (= (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_26006_26011) ) (! (= (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_25992_21419) ) (! (= (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_25992_53) ) (! (= (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_25992_1989) ) (! (= (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_12393_24778) ) (! (= (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_12393_24761) ) (! (= (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_21418_21419) ) (! (= (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_21405_53) ) (! (= (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_28301_3215) ) (! (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((arg1@@13 T@Ref) (arg2@@13 Real) (arg3@@13 T@Ref) (arg4@@13 Int) (arg5@@13 T@Ref) (arg6@@8 Int) ) (! (= (getPredWandId_12230_1989 (wand_1 arg1@@13 arg2@@13 arg3@@13 arg4@@13 arg5@@13 arg6@@8)) 1)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@13 arg2@@13 arg3@@13 arg4@@13 arg5@@13 arg6@@8))
)))
(assert (forall ((arg1@@14 T@Ref) (arg2@@14 Real) (arg3@@14 T@Ref) (arg4@@14 Real) (arg5@@14 T@Ref) (arg6@@9 T@Ref) ) (! (= (getPredWandId_12284_2425 (wand_2 arg1@@14 arg2@@14 arg3@@14 arg4@@14 arg5@@14 arg6@@9)) 2)
 :qid |stdinbpl.268:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@14 arg2@@14 arg3@@14 arg4@@14 arg5@@14 arg6@@9))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_21366) (SummandMask1 T@PolymorphicMapType_21366) (SummandMask2 T@PolymorphicMapType_21366) (o_2@@99 T@Ref) (f_4@@99 T@Field_27630_27631) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_21366) (SummandMask1@@0 T@PolymorphicMapType_21366) (SummandMask2@@0 T@PolymorphicMapType_21366) (o_2@@100 T@Ref) (f_4@@100 T@Field_27614_27619) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_21366) (SummandMask1@@1 T@PolymorphicMapType_21366) (SummandMask2@@1 T@PolymorphicMapType_21366) (o_2@@101 T@Ref) (f_4@@101 T@Field_27601_21419) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_21366) (SummandMask1@@2 T@PolymorphicMapType_21366) (SummandMask2@@2 T@PolymorphicMapType_21366) (o_2@@102 T@Ref) (f_4@@102 T@Field_27601_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_21366) (SummandMask1@@3 T@PolymorphicMapType_21366) (SummandMask2@@3 T@PolymorphicMapType_21366) (o_2@@103 T@Ref) (f_4@@103 T@Field_27601_2857) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_21366) (SummandMask1@@4 T@PolymorphicMapType_21366) (SummandMask2@@4 T@PolymorphicMapType_21366) (o_2@@104 T@Ref) (f_4@@104 T@Field_26816_26817) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_21366) (SummandMask1@@5 T@PolymorphicMapType_21366) (SummandMask2@@5 T@PolymorphicMapType_21366) (o_2@@105 T@Ref) (f_4@@105 T@Field_26798_26803) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_21366) (SummandMask1@@6 T@PolymorphicMapType_21366) (SummandMask2@@6 T@PolymorphicMapType_21366) (o_2@@106 T@Ref) (f_4@@106 T@Field_26783_21419) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_21366) (SummandMask1@@7 T@PolymorphicMapType_21366) (SummandMask2@@7 T@PolymorphicMapType_21366) (o_2@@107 T@Ref) (f_4@@107 T@Field_26783_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_21366) (SummandMask1@@8 T@PolymorphicMapType_21366) (SummandMask2@@8 T@PolymorphicMapType_21366) (o_2@@108 T@Ref) (f_4@@108 T@Field_26783_2425) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_21366) (SummandMask1@@9 T@PolymorphicMapType_21366) (SummandMask2@@9 T@PolymorphicMapType_21366) (o_2@@109 T@Ref) (f_4@@109 T@Field_24777_24778) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_21366) (SummandMask1@@10 T@PolymorphicMapType_21366) (SummandMask2@@10 T@PolymorphicMapType_21366) (o_2@@110 T@Ref) (f_4@@110 T@Field_24756_24761) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_21366) (SummandMask1@@11 T@PolymorphicMapType_21366) (SummandMask2@@11 T@PolymorphicMapType_21366) (o_2@@111 T@Ref) (f_4@@111 T@Field_24738_21419) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_21366) (SummandMask1@@12 T@PolymorphicMapType_21366) (SummandMask2@@12 T@PolymorphicMapType_21366) (o_2@@112 T@Ref) (f_4@@112 T@Field_24738_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_21366) (SummandMask1@@13 T@PolymorphicMapType_21366) (SummandMask2@@13 T@PolymorphicMapType_21366) (o_2@@113 T@Ref) (f_4@@113 T@Field_24738_1235) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_21366) (SummandMask1@@14 T@PolymorphicMapType_21366) (SummandMask2@@14 T@PolymorphicMapType_21366) (o_2@@114 T@Ref) (f_4@@114 T@Field_26023_26024) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_21366) (SummandMask1@@15 T@PolymorphicMapType_21366) (SummandMask2@@15 T@PolymorphicMapType_21366) (o_2@@115 T@Ref) (f_4@@115 T@Field_26006_26011) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_21366) (SummandMask1@@16 T@PolymorphicMapType_21366) (SummandMask2@@16 T@PolymorphicMapType_21366) (o_2@@116 T@Ref) (f_4@@116 T@Field_25992_21419) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_21366) (SummandMask1@@17 T@PolymorphicMapType_21366) (SummandMask2@@17 T@PolymorphicMapType_21366) (o_2@@117 T@Ref) (f_4@@117 T@Field_25992_53) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_21366) (SummandMask1@@18 T@PolymorphicMapType_21366) (SummandMask2@@18 T@PolymorphicMapType_21366) (o_2@@118 T@Ref) (f_4@@118 T@Field_25992_1989) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_21366) (SummandMask1@@19 T@PolymorphicMapType_21366) (SummandMask2@@19 T@PolymorphicMapType_21366) (o_2@@119 T@Ref) (f_4@@119 T@Field_12393_24778) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_21366) (SummandMask1@@20 T@PolymorphicMapType_21366) (SummandMask2@@20 T@PolymorphicMapType_21366) (o_2@@120 T@Ref) (f_4@@120 T@Field_12393_24761) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_21366) (SummandMask1@@21 T@PolymorphicMapType_21366) (SummandMask2@@21 T@PolymorphicMapType_21366) (o_2@@121 T@Ref) (f_4@@121 T@Field_21418_21419) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_21366) (SummandMask1@@22 T@PolymorphicMapType_21366) (SummandMask2@@22 T@PolymorphicMapType_21366) (o_2@@122 T@Ref) (f_4@@122 T@Field_21405_53) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_21366) (SummandMask1@@23 T@PolymorphicMapType_21366) (SummandMask2@@23 T@PolymorphicMapType_21366) (o_2@@123 T@Ref) (f_4@@123 T@Field_28301_3215) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((arg1@@15 Bool) (arg2@@15 T@Ref) (arg3@@15 Real) (arg4@@15 T@Ref) (arg5@@15 Int) (arg1_2@@1 Bool) (arg2_2@@1 T@Ref) (arg3_2@@1 Real) (arg4_2@@1 T@Ref) (arg5_2@@1 Int) ) (!  (=> (= (wand_3 arg1@@15 arg2@@15 arg3@@15 arg4@@15 arg5@@15) (wand_3 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@1 arg5_2@@1)) (and (= arg1@@15 arg1_2@@1) (and (= arg2@@15 arg2_2@@1) (and (= arg3@@15 arg3_2@@1) (and (= arg4@@15 arg4_2@@1) (= arg5@@15 arg5_2@@1))))))
 :qid |stdinbpl.304:15|
 :skolemid |49|
 :pattern ( (wand_3 arg1@@15 arg2@@15 arg3@@15 arg4@@15 arg5@@15) (wand_3 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@1 arg5_2@@1))
)))
(assert (forall ((arg1@@16 T@Ref) (arg2@@16 Real) (arg3@@16 T@Ref) (arg4@@16 Int) (arg5@@16 T@Ref) (arg6@@10 Int) ) (! (IsWandField_12230_1989 (wand_1 arg1@@16 arg2@@16 arg3@@16 arg4@@16 arg5@@16 arg6@@10))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@16 arg2@@16 arg3@@16 arg4@@16 arg5@@16 arg6@@10))
)))
(assert (forall ((arg1@@17 T@Ref) (arg2@@17 Real) (arg3@@17 T@Ref) (arg4@@17 Int) (arg5@@17 T@Ref) (arg6@@11 Int) ) (! (IsWandField_12243_12244 (|wand_1#ft| arg1@@17 arg2@@17 arg3@@17 arg4@@17 arg5@@17 arg6@@11))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@17 arg2@@17 arg3@@17 arg4@@17 arg5@@17 arg6@@11))
)))
(assert (forall ((arg1@@18 T@Ref) (arg2@@18 Real) (arg3@@18 T@Ref) (arg4@@18 Real) (arg5@@18 T@Ref) (arg6@@12 T@Ref) ) (! (IsWandField_12284_2425 (wand_2 arg1@@18 arg2@@18 arg3@@18 arg4@@18 arg5@@18 arg6@@12))
 :qid |stdinbpl.248:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@18 arg2@@18 arg3@@18 arg4@@18 arg5@@18 arg6@@12))
)))
(assert (forall ((arg1@@19 T@Ref) (arg2@@19 Real) (arg3@@19 T@Ref) (arg4@@19 Real) (arg5@@19 T@Ref) (arg6@@13 T@Ref) ) (! (IsWandField_12301_12302 (|wand_2#ft| arg1@@19 arg2@@19 arg3@@19 arg4@@19 arg5@@19 arg6@@13))
 :qid |stdinbpl.252:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@19 arg2@@19 arg3@@19 arg4@@19 arg5@@19 arg6@@13))
)))
(assert (forall ((arg1@@20 T@Ref) (arg2@@20 Real) (arg3@@20 T@Ref) (arg4@@20 Int) (arg5@@20 T@Ref) (arg6@@14 Int) ) (!  (not (IsPredicateField_12230_1989 (wand_1 arg1@@20 arg2@@20 arg3@@20 arg4@@20 arg5@@20 arg6@@14)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@20 arg2@@20 arg3@@20 arg4@@20 arg5@@20 arg6@@14))
)))
(assert (forall ((arg1@@21 T@Ref) (arg2@@21 Real) (arg3@@21 T@Ref) (arg4@@21 Int) (arg5@@21 T@Ref) (arg6@@15 Int) ) (!  (not (IsPredicateField_12243_12244 (|wand_1#ft| arg1@@21 arg2@@21 arg3@@21 arg4@@21 arg5@@21 arg6@@15)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@21 arg2@@21 arg3@@21 arg4@@21 arg5@@21 arg6@@15))
)))
(assert (forall ((arg1@@22 T@Ref) (arg2@@22 Real) (arg3@@22 T@Ref) (arg4@@22 Real) (arg5@@22 T@Ref) (arg6@@16 T@Ref) ) (!  (not (IsPredicateField_12284_2425 (wand_2 arg1@@22 arg2@@22 arg3@@22 arg4@@22 arg5@@22 arg6@@16)))
 :qid |stdinbpl.256:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@22 arg2@@22 arg3@@22 arg4@@22 arg5@@22 arg6@@16))
)))
(assert (forall ((arg1@@23 T@Ref) (arg2@@23 Real) (arg3@@23 T@Ref) (arg4@@23 Real) (arg5@@23 T@Ref) (arg6@@17 T@Ref) ) (!  (not (IsPredicateField_12301_12302 (|wand_2#ft| arg1@@23 arg2@@23 arg3@@23 arg4@@23 arg5@@23 arg6@@17)))
 :qid |stdinbpl.260:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@23 arg2@@23 arg3@@23 arg4@@23 arg5@@23 arg6@@17))
)))
(assert (forall ((arg1@@24 Bool) (arg2@@24 T@Ref) (arg3@@24 Real) (arg4@@24 T@Ref) (arg5@@24 Int) ) (! (= (|wand_3#sm| arg1@@24 arg2@@24 arg3@@24 arg4@@24 arg5@@24) (WandMaskField_12366 (|wand_3#ft| arg1@@24 arg2@@24 arg3@@24 arg4@@24 arg5@@24)))
 :qid |stdinbpl.296:15|
 :skolemid |47|
 :pattern ( (WandMaskField_12366 (|wand_3#ft| arg1@@24 arg2@@24 arg3@@24 arg4@@24 arg5@@24)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_21345) (o T@Ref) (f_3 T@Field_26023_26024) (v T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@37) (store (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@37) o f_3 v) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@37) (store (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@37) o f_3 v) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@37) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_21345) (o@@0 T@Ref) (f_3@@0 T@Field_26006_26011) (v@@0 T@PolymorphicMapType_21894) ) (! (succHeap Heap@@38 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@38) (store (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@38) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@38) (store (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@38) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@38) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_21345) (o@@1 T@Ref) (f_3@@1 T@Field_25992_1989) (v@@1 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@39) (store (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@39) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@39) (store (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@39) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@39) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_21345) (o@@2 T@Ref) (f_3@@2 T@Field_25992_21419) (v@@2 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@40) (store (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@40) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@40) (store (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@40) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@40) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_21345) (o@@3 T@Ref) (f_3@@3 T@Field_25992_53) (v@@3 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@41) (store (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@41) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@41) (store (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@41) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@41) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_21345) (o@@4 T@Ref) (f_3@@4 T@Field_27630_27631) (v@@4 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@42) (store (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@42) o@@4 f_3@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@42) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@42) (store (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@42) o@@4 f_3@@4 v@@4)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_21345) (o@@5 T@Ref) (f_3@@5 T@Field_27614_27619) (v@@5 T@PolymorphicMapType_21894) ) (! (succHeap Heap@@43 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@43) (store (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@43) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@43) (store (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@43) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@43) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_21345) (o@@6 T@Ref) (f_3@@6 T@Field_27601_2857) (v@@6 Int) ) (! (succHeap Heap@@44 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@44) (store (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@44) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@44) (store (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@44) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@44) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_21345) (o@@7 T@Ref) (f_3@@7 T@Field_27601_21419) (v@@7 T@Ref) ) (! (succHeap Heap@@45 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@45) (store (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@45) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@45) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@45) (store (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@45) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_21345) (o@@8 T@Ref) (f_3@@8 T@Field_27601_53) (v@@8 Bool) ) (! (succHeap Heap@@46 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@46) (store (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@46) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@46) (store (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@46) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@46) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_21345) (o@@9 T@Ref) (f_3@@9 T@Field_26816_26817) (v@@9 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@47) (store (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@47) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@47) (store (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@47) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@47) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_21345) (o@@10 T@Ref) (f_3@@10 T@Field_26798_26803) (v@@10 T@PolymorphicMapType_21894) ) (! (succHeap Heap@@48 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@48) (store (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@48) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@48) (store (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@48) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@48) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_21345) (o@@11 T@Ref) (f_3@@11 T@Field_26783_2425) (v@@11 Int) ) (! (succHeap Heap@@49 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@49) (store (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@49) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@49) (store (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@49) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@49) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_21345) (o@@12 T@Ref) (f_3@@12 T@Field_26783_21419) (v@@12 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@50) (store (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@50) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@50) (store (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@50) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@50) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_21345) (o@@13 T@Ref) (f_3@@13 T@Field_26783_53) (v@@13 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@51) (store (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@51) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@51) (store (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@51) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@51) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_21345) (o@@14 T@Ref) (f_3@@14 T@Field_24777_24778) (v@@14 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@52) (store (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@52) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@52) (store (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@52) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@52) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_21345) (o@@15 T@Ref) (f_3@@15 T@Field_24756_24761) (v@@15 T@PolymorphicMapType_21894) ) (! (succHeap Heap@@53 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@53) (store (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@53) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@53) (store (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@53) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@53) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_21345) (o@@16 T@Ref) (f_3@@16 T@Field_24738_1235) (v@@16 Int) ) (! (succHeap Heap@@54 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@54) (store (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@54) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@54) (store (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@54) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@54) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_21345) (o@@17 T@Ref) (f_3@@17 T@Field_24738_21419) (v@@17 T@Ref) ) (! (succHeap Heap@@55 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@55) (store (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@55) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@55) (store (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@55) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@55) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_21345) (o@@18 T@Ref) (f_3@@18 T@Field_24738_53) (v@@18 Bool) ) (! (succHeap Heap@@56 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@56) (store (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@56) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@56) (store (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@56) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@56) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_21345) (o@@19 T@Ref) (f_3@@19 T@Field_12393_24778) (v@@19 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@57) (store (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@57) o@@19 f_3@@19 v@@19) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@57) (store (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@57) o@@19 f_3@@19 v@@19) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@57) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_21345) (o@@20 T@Ref) (f_3@@20 T@Field_12393_24761) (v@@20 T@PolymorphicMapType_21894) ) (! (succHeap Heap@@58 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@58) (store (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@58) o@@20 f_3@@20 v@@20) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@58) (store (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@58) o@@20 f_3@@20 v@@20) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@58) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_21345) (o@@21 T@Ref) (f_3@@21 T@Field_28301_3215) (v@@21 Int) ) (! (succHeap Heap@@59 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@59) (store (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@59) o@@21 f_3@@21 v@@21) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@59) (store (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@59) o@@21 f_3@@21 v@@21) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@59) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_21345) (o@@22 T@Ref) (f_3@@22 T@Field_21418_21419) (v@@22 T@Ref) ) (! (succHeap Heap@@60 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@60) (store (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@60) o@@22 f_3@@22 v@@22) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@60) (store (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@60) o@@22 f_3@@22 v@@22) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@60) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_21345) (o@@23 T@Ref) (f_3@@23 T@Field_21405_53) (v@@23 Bool) ) (! (succHeap Heap@@61 (PolymorphicMapType_21345 (store (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@61) o@@23 f_3@@23 v@@23) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21345 (store (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@61) o@@23 f_3@@23 v@@23) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@61) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@61)))
)))
(assert (forall ((arg1@@25 T@Ref) (arg2@@25 Real) (arg3@@25 T@Ref) (arg4@@25 Real) (arg5@@25 T@Ref) (arg6@@18 Int) (arg7@@4 T@Ref) (arg8@@4 Int) (arg9@@4 T@Ref) (arg10@@4 Real) (arg11@@4 T@Ref) (arg12@@4 T@Ref) ) (! (= (|wand#sm| arg1@@25 arg2@@25 arg3@@25 arg4@@25 arg5@@25 arg6@@18 arg7@@4 arg8@@4 arg9@@4 arg10@@4 arg11@@4 arg12@@4) (WandMaskField_12143 (|wand#ft| arg1@@25 arg2@@25 arg3@@25 arg4@@25 arg5@@25 arg6@@18 arg7@@4 arg8@@4 arg9@@4 arg10@@4 arg11@@4 arg12@@4)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_12143 (|wand#ft| arg1@@25 arg2@@25 arg3@@25 arg4@@25 arg5@@25 arg6@@18 arg7@@4 arg8@@4 arg9@@4 arg10@@4 arg11@@4 arg12@@4)))
)))
(assert (forall ((o@@24 T@Ref) (f T@Field_21418_21419) (Heap@@62 T@PolymorphicMapType_21345) ) (!  (=> (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@62) o@@24 $allocated) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@62) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@62) o@@24 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@62) o@@24 f))
)))
(assert (forall ((p@@5 T@Field_27630_27631) (v_1@@4 T@FrameType) (q T@Field_27630_27631) (w@@4 T@FrameType) (r T@Field_27630_27631) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27601_27601 p@@5 v_1@@4 q w@@4) (InsidePredicate_27601_27601 q w@@4 r u)) (InsidePredicate_27601_27601 p@@5 v_1@@4 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_27601 p@@5 v_1@@4 q w@@4) (InsidePredicate_27601_27601 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_27630_27631) (v_1@@5 T@FrameType) (q@@0 T@Field_27630_27631) (w@@5 T@FrameType) (r@@0 T@Field_26816_26817) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_27601 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_27601_26783 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_27601_26783 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_27601 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_27601_26783 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_27630_27631) (v_1@@6 T@FrameType) (q@@1 T@Field_27630_27631) (w@@6 T@FrameType) (r@@1 T@Field_26023_26024) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_27601 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_27601_25992 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_27601_25992 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_27601 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_27601_25992 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_27630_27631) (v_1@@7 T@FrameType) (q@@2 T@Field_27630_27631) (w@@7 T@FrameType) (r@@2 T@Field_24777_24778) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_27601 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_27601_24738 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_27601_24738 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_27601 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_27601_24738 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_27630_27631) (v_1@@8 T@FrameType) (q@@3 T@Field_27630_27631) (w@@8 T@FrameType) (r@@3 T@Field_12393_24778) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_27601 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_27601_21405 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_27601_21405 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_27601 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_27601_21405 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_27630_27631) (v_1@@9 T@FrameType) (q@@4 T@Field_26816_26817) (w@@9 T@FrameType) (r@@4 T@Field_27630_27631) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_26783 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_26783_27601 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_27601_27601 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_26783 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_26783_27601 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_27630_27631) (v_1@@10 T@FrameType) (q@@5 T@Field_26816_26817) (w@@10 T@FrameType) (r@@5 T@Field_26816_26817) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_26783 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_26783_26783 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_27601_26783 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_26783 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_26783_26783 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_27630_27631) (v_1@@11 T@FrameType) (q@@6 T@Field_26816_26817) (w@@11 T@FrameType) (r@@6 T@Field_26023_26024) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_26783 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_26783_25992 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_27601_25992 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_26783 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_26783_25992 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_27630_27631) (v_1@@12 T@FrameType) (q@@7 T@Field_26816_26817) (w@@12 T@FrameType) (r@@7 T@Field_24777_24778) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_26783 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_26783_24738 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_27601_24738 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_26783 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_26783_24738 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_27630_27631) (v_1@@13 T@FrameType) (q@@8 T@Field_26816_26817) (w@@13 T@FrameType) (r@@8 T@Field_12393_24778) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_26783 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_26783_21405 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_27601_21405 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_26783 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_26783_21405 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_27630_27631) (v_1@@14 T@FrameType) (q@@9 T@Field_26023_26024) (w@@14 T@FrameType) (r@@9 T@Field_27630_27631) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_25992 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_25992_27601 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_27601_27601 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_25992 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_25992_27601 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_27630_27631) (v_1@@15 T@FrameType) (q@@10 T@Field_26023_26024) (w@@15 T@FrameType) (r@@10 T@Field_26816_26817) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_25992 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_25992_26783 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_27601_26783 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_25992 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_25992_26783 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_27630_27631) (v_1@@16 T@FrameType) (q@@11 T@Field_26023_26024) (w@@16 T@FrameType) (r@@11 T@Field_26023_26024) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_25992 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_25992_25992 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_27601_25992 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_25992 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_25992_25992 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_27630_27631) (v_1@@17 T@FrameType) (q@@12 T@Field_26023_26024) (w@@17 T@FrameType) (r@@12 T@Field_24777_24778) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_25992 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_25992_24738 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_27601_24738 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_25992 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_25992_24738 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_27630_27631) (v_1@@18 T@FrameType) (q@@13 T@Field_26023_26024) (w@@18 T@FrameType) (r@@13 T@Field_12393_24778) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_25992 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_25992_21405 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_27601_21405 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_25992 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_25992_21405 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_27630_27631) (v_1@@19 T@FrameType) (q@@14 T@Field_24777_24778) (w@@19 T@FrameType) (r@@14 T@Field_27630_27631) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_24738 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_24738_27601 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_27601_27601 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_24738 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_24738_27601 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_27630_27631) (v_1@@20 T@FrameType) (q@@15 T@Field_24777_24778) (w@@20 T@FrameType) (r@@15 T@Field_26816_26817) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_24738 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_24738_26783 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_27601_26783 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_24738 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_24738_26783 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_27630_27631) (v_1@@21 T@FrameType) (q@@16 T@Field_24777_24778) (w@@21 T@FrameType) (r@@16 T@Field_26023_26024) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_24738 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_24738_25992 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_27601_25992 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_24738 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_24738_25992 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_27630_27631) (v_1@@22 T@FrameType) (q@@17 T@Field_24777_24778) (w@@22 T@FrameType) (r@@17 T@Field_24777_24778) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_24738 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_24738_24738 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_27601_24738 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_24738 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_24738_24738 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_27630_27631) (v_1@@23 T@FrameType) (q@@18 T@Field_24777_24778) (w@@23 T@FrameType) (r@@18 T@Field_12393_24778) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_24738 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_24738_21405 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_27601_21405 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_24738 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_24738_21405 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_27630_27631) (v_1@@24 T@FrameType) (q@@19 T@Field_12393_24778) (w@@24 T@FrameType) (r@@19 T@Field_27630_27631) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_21405 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_21405_27601 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_27601_27601 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_21405 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_21405_27601 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_27630_27631) (v_1@@25 T@FrameType) (q@@20 T@Field_12393_24778) (w@@25 T@FrameType) (r@@20 T@Field_26816_26817) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_21405 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_21405_26783 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_27601_26783 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_21405 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_21405_26783 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_27630_27631) (v_1@@26 T@FrameType) (q@@21 T@Field_12393_24778) (w@@26 T@FrameType) (r@@21 T@Field_26023_26024) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_21405 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_21405_25992 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_27601_25992 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_21405 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_21405_25992 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_27630_27631) (v_1@@27 T@FrameType) (q@@22 T@Field_12393_24778) (w@@27 T@FrameType) (r@@22 T@Field_24777_24778) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_21405 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_21405_24738 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_27601_24738 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_21405 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_21405_24738 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_27630_27631) (v_1@@28 T@FrameType) (q@@23 T@Field_12393_24778) (w@@28 T@FrameType) (r@@23 T@Field_12393_24778) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_27601_21405 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_21405_21405 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_27601_21405 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27601_21405 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_21405_21405 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_26816_26817) (v_1@@29 T@FrameType) (q@@24 T@Field_27630_27631) (w@@29 T@FrameType) (r@@24 T@Field_27630_27631) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_27601 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_27601_27601 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_26783_27601 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_27601 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_27601_27601 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_26816_26817) (v_1@@30 T@FrameType) (q@@25 T@Field_27630_27631) (w@@30 T@FrameType) (r@@25 T@Field_26816_26817) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_27601 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_27601_26783 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_26783_26783 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_27601 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_27601_26783 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_26816_26817) (v_1@@31 T@FrameType) (q@@26 T@Field_27630_27631) (w@@31 T@FrameType) (r@@26 T@Field_26023_26024) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_27601 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_27601_25992 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_26783_25992 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_27601 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_27601_25992 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_26816_26817) (v_1@@32 T@FrameType) (q@@27 T@Field_27630_27631) (w@@32 T@FrameType) (r@@27 T@Field_24777_24778) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_27601 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_27601_24738 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_26783_24738 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_27601 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_27601_24738 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_26816_26817) (v_1@@33 T@FrameType) (q@@28 T@Field_27630_27631) (w@@33 T@FrameType) (r@@28 T@Field_12393_24778) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_27601 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_27601_21405 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_26783_21405 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_27601 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_27601_21405 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_26816_26817) (v_1@@34 T@FrameType) (q@@29 T@Field_26816_26817) (w@@34 T@FrameType) (r@@29 T@Field_27630_27631) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_26783 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_26783_27601 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_26783_27601 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_26783 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_26783_27601 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_26816_26817) (v_1@@35 T@FrameType) (q@@30 T@Field_26816_26817) (w@@35 T@FrameType) (r@@30 T@Field_26816_26817) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_26783 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_26783_26783 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_26783_26783 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_26783 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_26783_26783 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_26816_26817) (v_1@@36 T@FrameType) (q@@31 T@Field_26816_26817) (w@@36 T@FrameType) (r@@31 T@Field_26023_26024) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_26783 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_26783_25992 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_26783_25992 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_26783 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_26783_25992 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_26816_26817) (v_1@@37 T@FrameType) (q@@32 T@Field_26816_26817) (w@@37 T@FrameType) (r@@32 T@Field_24777_24778) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_26783 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_26783_24738 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_26783_24738 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_26783 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_26783_24738 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_26816_26817) (v_1@@38 T@FrameType) (q@@33 T@Field_26816_26817) (w@@38 T@FrameType) (r@@33 T@Field_12393_24778) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_26783 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_26783_21405 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_26783_21405 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_26783 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_26783_21405 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_26816_26817) (v_1@@39 T@FrameType) (q@@34 T@Field_26023_26024) (w@@39 T@FrameType) (r@@34 T@Field_27630_27631) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_25992 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_25992_27601 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_26783_27601 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_25992 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_25992_27601 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_26816_26817) (v_1@@40 T@FrameType) (q@@35 T@Field_26023_26024) (w@@40 T@FrameType) (r@@35 T@Field_26816_26817) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_25992 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_25992_26783 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_26783_26783 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_25992 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_25992_26783 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_26816_26817) (v_1@@41 T@FrameType) (q@@36 T@Field_26023_26024) (w@@41 T@FrameType) (r@@36 T@Field_26023_26024) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_25992 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_25992_25992 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_26783_25992 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_25992 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_25992_25992 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_26816_26817) (v_1@@42 T@FrameType) (q@@37 T@Field_26023_26024) (w@@42 T@FrameType) (r@@37 T@Field_24777_24778) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_25992 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_25992_24738 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_26783_24738 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_25992 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_25992_24738 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_26816_26817) (v_1@@43 T@FrameType) (q@@38 T@Field_26023_26024) (w@@43 T@FrameType) (r@@38 T@Field_12393_24778) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_25992 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_25992_21405 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_26783_21405 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_25992 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_25992_21405 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_26816_26817) (v_1@@44 T@FrameType) (q@@39 T@Field_24777_24778) (w@@44 T@FrameType) (r@@39 T@Field_27630_27631) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_24738 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_24738_27601 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_26783_27601 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_24738 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_24738_27601 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_26816_26817) (v_1@@45 T@FrameType) (q@@40 T@Field_24777_24778) (w@@45 T@FrameType) (r@@40 T@Field_26816_26817) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_24738 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_24738_26783 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_26783_26783 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_24738 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_24738_26783 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_26816_26817) (v_1@@46 T@FrameType) (q@@41 T@Field_24777_24778) (w@@46 T@FrameType) (r@@41 T@Field_26023_26024) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_24738 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_24738_25992 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_26783_25992 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_24738 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_24738_25992 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_26816_26817) (v_1@@47 T@FrameType) (q@@42 T@Field_24777_24778) (w@@47 T@FrameType) (r@@42 T@Field_24777_24778) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_24738 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_24738_24738 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_26783_24738 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_24738 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_24738_24738 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_26816_26817) (v_1@@48 T@FrameType) (q@@43 T@Field_24777_24778) (w@@48 T@FrameType) (r@@43 T@Field_12393_24778) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_24738 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_24738_21405 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_26783_21405 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_24738 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_24738_21405 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_26816_26817) (v_1@@49 T@FrameType) (q@@44 T@Field_12393_24778) (w@@49 T@FrameType) (r@@44 T@Field_27630_27631) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_21405 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_21405_27601 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_26783_27601 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_21405 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_21405_27601 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_26816_26817) (v_1@@50 T@FrameType) (q@@45 T@Field_12393_24778) (w@@50 T@FrameType) (r@@45 T@Field_26816_26817) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_21405 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_21405_26783 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_26783_26783 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_21405 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_21405_26783 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_26816_26817) (v_1@@51 T@FrameType) (q@@46 T@Field_12393_24778) (w@@51 T@FrameType) (r@@46 T@Field_26023_26024) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_21405 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_21405_25992 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_26783_25992 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_21405 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_21405_25992 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_26816_26817) (v_1@@52 T@FrameType) (q@@47 T@Field_12393_24778) (w@@52 T@FrameType) (r@@47 T@Field_24777_24778) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_21405 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_21405_24738 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_26783_24738 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_21405 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_21405_24738 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_26816_26817) (v_1@@53 T@FrameType) (q@@48 T@Field_12393_24778) (w@@53 T@FrameType) (r@@48 T@Field_12393_24778) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_26783_21405 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_21405_21405 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_26783_21405 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26783_21405 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_21405_21405 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_26023_26024) (v_1@@54 T@FrameType) (q@@49 T@Field_27630_27631) (w@@54 T@FrameType) (r@@49 T@Field_27630_27631) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_27601 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_27601_27601 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_25992_27601 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_27601 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_27601_27601 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_26023_26024) (v_1@@55 T@FrameType) (q@@50 T@Field_27630_27631) (w@@55 T@FrameType) (r@@50 T@Field_26816_26817) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_27601 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_27601_26783 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_25992_26783 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_27601 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_27601_26783 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_26023_26024) (v_1@@56 T@FrameType) (q@@51 T@Field_27630_27631) (w@@56 T@FrameType) (r@@51 T@Field_26023_26024) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_27601 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_27601_25992 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_25992_25992 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_27601 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_27601_25992 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_26023_26024) (v_1@@57 T@FrameType) (q@@52 T@Field_27630_27631) (w@@57 T@FrameType) (r@@52 T@Field_24777_24778) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_27601 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_27601_24738 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_25992_24738 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_27601 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_27601_24738 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_26023_26024) (v_1@@58 T@FrameType) (q@@53 T@Field_27630_27631) (w@@58 T@FrameType) (r@@53 T@Field_12393_24778) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_27601 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_27601_21405 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_25992_21405 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_27601 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_27601_21405 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_26023_26024) (v_1@@59 T@FrameType) (q@@54 T@Field_26816_26817) (w@@59 T@FrameType) (r@@54 T@Field_27630_27631) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_26783 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_26783_27601 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_25992_27601 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_26783 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_26783_27601 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_26023_26024) (v_1@@60 T@FrameType) (q@@55 T@Field_26816_26817) (w@@60 T@FrameType) (r@@55 T@Field_26816_26817) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_26783 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_26783_26783 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_25992_26783 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_26783 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_26783_26783 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_26023_26024) (v_1@@61 T@FrameType) (q@@56 T@Field_26816_26817) (w@@61 T@FrameType) (r@@56 T@Field_26023_26024) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_26783 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_26783_25992 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_25992_25992 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_26783 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_26783_25992 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_26023_26024) (v_1@@62 T@FrameType) (q@@57 T@Field_26816_26817) (w@@62 T@FrameType) (r@@57 T@Field_24777_24778) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_26783 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_26783_24738 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_25992_24738 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_26783 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_26783_24738 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_26023_26024) (v_1@@63 T@FrameType) (q@@58 T@Field_26816_26817) (w@@63 T@FrameType) (r@@58 T@Field_12393_24778) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_26783 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_26783_21405 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_25992_21405 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_26783 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_26783_21405 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_26023_26024) (v_1@@64 T@FrameType) (q@@59 T@Field_26023_26024) (w@@64 T@FrameType) (r@@59 T@Field_27630_27631) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_25992 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_25992_27601 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_25992_27601 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_25992 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_25992_27601 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_26023_26024) (v_1@@65 T@FrameType) (q@@60 T@Field_26023_26024) (w@@65 T@FrameType) (r@@60 T@Field_26816_26817) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_25992 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_25992_26783 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_25992_26783 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_25992 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_25992_26783 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_26023_26024) (v_1@@66 T@FrameType) (q@@61 T@Field_26023_26024) (w@@66 T@FrameType) (r@@61 T@Field_26023_26024) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_25992 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_25992_25992 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_25992_25992 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_25992 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_25992_25992 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_26023_26024) (v_1@@67 T@FrameType) (q@@62 T@Field_26023_26024) (w@@67 T@FrameType) (r@@62 T@Field_24777_24778) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_25992 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_25992_24738 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_25992_24738 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_25992 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_25992_24738 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_26023_26024) (v_1@@68 T@FrameType) (q@@63 T@Field_26023_26024) (w@@68 T@FrameType) (r@@63 T@Field_12393_24778) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_25992 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_25992_21405 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_25992_21405 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_25992 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_25992_21405 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_26023_26024) (v_1@@69 T@FrameType) (q@@64 T@Field_24777_24778) (w@@69 T@FrameType) (r@@64 T@Field_27630_27631) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_24738 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_24738_27601 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_25992_27601 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_24738 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_24738_27601 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_26023_26024) (v_1@@70 T@FrameType) (q@@65 T@Field_24777_24778) (w@@70 T@FrameType) (r@@65 T@Field_26816_26817) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_24738 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_24738_26783 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_25992_26783 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_24738 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_24738_26783 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_26023_26024) (v_1@@71 T@FrameType) (q@@66 T@Field_24777_24778) (w@@71 T@FrameType) (r@@66 T@Field_26023_26024) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_24738 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_24738_25992 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_25992_25992 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_24738 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_24738_25992 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_26023_26024) (v_1@@72 T@FrameType) (q@@67 T@Field_24777_24778) (w@@72 T@FrameType) (r@@67 T@Field_24777_24778) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_24738 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_24738_24738 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_25992_24738 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_24738 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_24738_24738 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_26023_26024) (v_1@@73 T@FrameType) (q@@68 T@Field_24777_24778) (w@@73 T@FrameType) (r@@68 T@Field_12393_24778) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_24738 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_24738_21405 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_25992_21405 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_24738 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_24738_21405 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_26023_26024) (v_1@@74 T@FrameType) (q@@69 T@Field_12393_24778) (w@@74 T@FrameType) (r@@69 T@Field_27630_27631) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_21405 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_21405_27601 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_25992_27601 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_21405 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_21405_27601 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_26023_26024) (v_1@@75 T@FrameType) (q@@70 T@Field_12393_24778) (w@@75 T@FrameType) (r@@70 T@Field_26816_26817) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_21405 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_21405_26783 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_25992_26783 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_21405 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_21405_26783 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_26023_26024) (v_1@@76 T@FrameType) (q@@71 T@Field_12393_24778) (w@@76 T@FrameType) (r@@71 T@Field_26023_26024) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_21405 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_21405_25992 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_25992_25992 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_21405 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_21405_25992 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_26023_26024) (v_1@@77 T@FrameType) (q@@72 T@Field_12393_24778) (w@@77 T@FrameType) (r@@72 T@Field_24777_24778) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_21405 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_21405_24738 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_25992_24738 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_21405 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_21405_24738 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_26023_26024) (v_1@@78 T@FrameType) (q@@73 T@Field_12393_24778) (w@@78 T@FrameType) (r@@73 T@Field_12393_24778) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_25992_21405 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_21405_21405 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_25992_21405 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25992_21405 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_21405_21405 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_24777_24778) (v_1@@79 T@FrameType) (q@@74 T@Field_27630_27631) (w@@79 T@FrameType) (r@@74 T@Field_27630_27631) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_27601 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_27601_27601 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_24738_27601 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_27601 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_27601_27601 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_24777_24778) (v_1@@80 T@FrameType) (q@@75 T@Field_27630_27631) (w@@80 T@FrameType) (r@@75 T@Field_26816_26817) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_27601 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_27601_26783 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_24738_26783 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_27601 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_27601_26783 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_24777_24778) (v_1@@81 T@FrameType) (q@@76 T@Field_27630_27631) (w@@81 T@FrameType) (r@@76 T@Field_26023_26024) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_27601 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_27601_25992 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_24738_25992 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_27601 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_27601_25992 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_24777_24778) (v_1@@82 T@FrameType) (q@@77 T@Field_27630_27631) (w@@82 T@FrameType) (r@@77 T@Field_24777_24778) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_27601 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_27601_24738 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_24738_24738 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_27601 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_27601_24738 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_24777_24778) (v_1@@83 T@FrameType) (q@@78 T@Field_27630_27631) (w@@83 T@FrameType) (r@@78 T@Field_12393_24778) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_27601 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_27601_21405 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_24738_21405 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_27601 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_27601_21405 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_24777_24778) (v_1@@84 T@FrameType) (q@@79 T@Field_26816_26817) (w@@84 T@FrameType) (r@@79 T@Field_27630_27631) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_26783 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_26783_27601 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_24738_27601 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_26783 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_26783_27601 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_24777_24778) (v_1@@85 T@FrameType) (q@@80 T@Field_26816_26817) (w@@85 T@FrameType) (r@@80 T@Field_26816_26817) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_26783 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_26783_26783 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_24738_26783 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_26783 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_26783_26783 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_24777_24778) (v_1@@86 T@FrameType) (q@@81 T@Field_26816_26817) (w@@86 T@FrameType) (r@@81 T@Field_26023_26024) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_26783 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_26783_25992 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_24738_25992 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_26783 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_26783_25992 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_24777_24778) (v_1@@87 T@FrameType) (q@@82 T@Field_26816_26817) (w@@87 T@FrameType) (r@@82 T@Field_24777_24778) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_26783 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_26783_24738 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_24738_24738 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_26783 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_26783_24738 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_24777_24778) (v_1@@88 T@FrameType) (q@@83 T@Field_26816_26817) (w@@88 T@FrameType) (r@@83 T@Field_12393_24778) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_26783 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_26783_21405 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_24738_21405 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_26783 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_26783_21405 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_24777_24778) (v_1@@89 T@FrameType) (q@@84 T@Field_26023_26024) (w@@89 T@FrameType) (r@@84 T@Field_27630_27631) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_25992 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_25992_27601 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_24738_27601 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_25992 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_25992_27601 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_24777_24778) (v_1@@90 T@FrameType) (q@@85 T@Field_26023_26024) (w@@90 T@FrameType) (r@@85 T@Field_26816_26817) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_25992 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_25992_26783 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_24738_26783 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_25992 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_25992_26783 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_24777_24778) (v_1@@91 T@FrameType) (q@@86 T@Field_26023_26024) (w@@91 T@FrameType) (r@@86 T@Field_26023_26024) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_25992 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_25992_25992 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_24738_25992 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_25992 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_25992_25992 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_24777_24778) (v_1@@92 T@FrameType) (q@@87 T@Field_26023_26024) (w@@92 T@FrameType) (r@@87 T@Field_24777_24778) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_25992 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_25992_24738 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_24738_24738 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_25992 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_25992_24738 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_24777_24778) (v_1@@93 T@FrameType) (q@@88 T@Field_26023_26024) (w@@93 T@FrameType) (r@@88 T@Field_12393_24778) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_25992 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_25992_21405 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_24738_21405 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_25992 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_25992_21405 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_24777_24778) (v_1@@94 T@FrameType) (q@@89 T@Field_24777_24778) (w@@94 T@FrameType) (r@@89 T@Field_27630_27631) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_24738 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_24738_27601 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_24738_27601 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_24738 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_24738_27601 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_24777_24778) (v_1@@95 T@FrameType) (q@@90 T@Field_24777_24778) (w@@95 T@FrameType) (r@@90 T@Field_26816_26817) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_24738 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_24738_26783 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_24738_26783 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_24738 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_24738_26783 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_24777_24778) (v_1@@96 T@FrameType) (q@@91 T@Field_24777_24778) (w@@96 T@FrameType) (r@@91 T@Field_26023_26024) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_24738 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_24738_25992 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_24738_25992 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_24738 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_24738_25992 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_24777_24778) (v_1@@97 T@FrameType) (q@@92 T@Field_24777_24778) (w@@97 T@FrameType) (r@@92 T@Field_24777_24778) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_24738 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_24738_24738 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_24738_24738 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_24738 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_24738_24738 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_24777_24778) (v_1@@98 T@FrameType) (q@@93 T@Field_24777_24778) (w@@98 T@FrameType) (r@@93 T@Field_12393_24778) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_24738 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_24738_21405 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_24738_21405 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_24738 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_24738_21405 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_24777_24778) (v_1@@99 T@FrameType) (q@@94 T@Field_12393_24778) (w@@99 T@FrameType) (r@@94 T@Field_27630_27631) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_21405 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_21405_27601 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_24738_27601 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_21405 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_21405_27601 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_24777_24778) (v_1@@100 T@FrameType) (q@@95 T@Field_12393_24778) (w@@100 T@FrameType) (r@@95 T@Field_26816_26817) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_21405 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_21405_26783 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_24738_26783 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_21405 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_21405_26783 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_24777_24778) (v_1@@101 T@FrameType) (q@@96 T@Field_12393_24778) (w@@101 T@FrameType) (r@@96 T@Field_26023_26024) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_21405 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_21405_25992 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_24738_25992 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_21405 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_21405_25992 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_24777_24778) (v_1@@102 T@FrameType) (q@@97 T@Field_12393_24778) (w@@102 T@FrameType) (r@@97 T@Field_24777_24778) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_21405 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_21405_24738 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_24738_24738 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_21405 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_21405_24738 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_24777_24778) (v_1@@103 T@FrameType) (q@@98 T@Field_12393_24778) (w@@103 T@FrameType) (r@@98 T@Field_12393_24778) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_24738_21405 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_21405_21405 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_24738_21405 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24738_21405 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_21405_21405 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_12393_24778) (v_1@@104 T@FrameType) (q@@99 T@Field_27630_27631) (w@@104 T@FrameType) (r@@99 T@Field_27630_27631) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_27601 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_27601_27601 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_21405_27601 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_27601 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_27601_27601 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_12393_24778) (v_1@@105 T@FrameType) (q@@100 T@Field_27630_27631) (w@@105 T@FrameType) (r@@100 T@Field_26816_26817) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_27601 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_27601_26783 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_21405_26783 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_27601 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_27601_26783 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_12393_24778) (v_1@@106 T@FrameType) (q@@101 T@Field_27630_27631) (w@@106 T@FrameType) (r@@101 T@Field_26023_26024) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_27601 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_27601_25992 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_21405_25992 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_27601 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_27601_25992 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_12393_24778) (v_1@@107 T@FrameType) (q@@102 T@Field_27630_27631) (w@@107 T@FrameType) (r@@102 T@Field_24777_24778) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_27601 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_27601_24738 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_21405_24738 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_27601 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_27601_24738 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_12393_24778) (v_1@@108 T@FrameType) (q@@103 T@Field_27630_27631) (w@@108 T@FrameType) (r@@103 T@Field_12393_24778) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_27601 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_27601_21405 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_21405_21405 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_27601 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_27601_21405 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_12393_24778) (v_1@@109 T@FrameType) (q@@104 T@Field_26816_26817) (w@@109 T@FrameType) (r@@104 T@Field_27630_27631) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_26783 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_26783_27601 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_21405_27601 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_26783 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_26783_27601 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_12393_24778) (v_1@@110 T@FrameType) (q@@105 T@Field_26816_26817) (w@@110 T@FrameType) (r@@105 T@Field_26816_26817) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_26783 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_26783_26783 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_21405_26783 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_26783 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_26783_26783 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_12393_24778) (v_1@@111 T@FrameType) (q@@106 T@Field_26816_26817) (w@@111 T@FrameType) (r@@106 T@Field_26023_26024) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_26783 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_26783_25992 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_21405_25992 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_26783 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_26783_25992 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_12393_24778) (v_1@@112 T@FrameType) (q@@107 T@Field_26816_26817) (w@@112 T@FrameType) (r@@107 T@Field_24777_24778) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_26783 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_26783_24738 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_21405_24738 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_26783 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_26783_24738 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_12393_24778) (v_1@@113 T@FrameType) (q@@108 T@Field_26816_26817) (w@@113 T@FrameType) (r@@108 T@Field_12393_24778) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_26783 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_26783_21405 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_21405_21405 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_26783 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_26783_21405 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_12393_24778) (v_1@@114 T@FrameType) (q@@109 T@Field_26023_26024) (w@@114 T@FrameType) (r@@109 T@Field_27630_27631) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_25992 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_25992_27601 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_21405_27601 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_25992 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_25992_27601 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_12393_24778) (v_1@@115 T@FrameType) (q@@110 T@Field_26023_26024) (w@@115 T@FrameType) (r@@110 T@Field_26816_26817) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_25992 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_25992_26783 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_21405_26783 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_25992 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_25992_26783 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_12393_24778) (v_1@@116 T@FrameType) (q@@111 T@Field_26023_26024) (w@@116 T@FrameType) (r@@111 T@Field_26023_26024) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_25992 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_25992_25992 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_21405_25992 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_25992 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_25992_25992 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_12393_24778) (v_1@@117 T@FrameType) (q@@112 T@Field_26023_26024) (w@@117 T@FrameType) (r@@112 T@Field_24777_24778) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_25992 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_25992_24738 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_21405_24738 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_25992 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_25992_24738 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_12393_24778) (v_1@@118 T@FrameType) (q@@113 T@Field_26023_26024) (w@@118 T@FrameType) (r@@113 T@Field_12393_24778) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_25992 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_25992_21405 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_21405_21405 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_25992 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_25992_21405 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_12393_24778) (v_1@@119 T@FrameType) (q@@114 T@Field_24777_24778) (w@@119 T@FrameType) (r@@114 T@Field_27630_27631) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_24738 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_24738_27601 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_21405_27601 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_24738 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_24738_27601 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_12393_24778) (v_1@@120 T@FrameType) (q@@115 T@Field_24777_24778) (w@@120 T@FrameType) (r@@115 T@Field_26816_26817) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_24738 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_24738_26783 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_21405_26783 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_24738 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_24738_26783 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_12393_24778) (v_1@@121 T@FrameType) (q@@116 T@Field_24777_24778) (w@@121 T@FrameType) (r@@116 T@Field_26023_26024) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_24738 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_24738_25992 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_21405_25992 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_24738 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_24738_25992 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_12393_24778) (v_1@@122 T@FrameType) (q@@117 T@Field_24777_24778) (w@@122 T@FrameType) (r@@117 T@Field_24777_24778) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_24738 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_24738_24738 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_21405_24738 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_24738 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_24738_24738 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_12393_24778) (v_1@@123 T@FrameType) (q@@118 T@Field_24777_24778) (w@@123 T@FrameType) (r@@118 T@Field_12393_24778) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_24738 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_24738_21405 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_21405_21405 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_24738 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_24738_21405 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_12393_24778) (v_1@@124 T@FrameType) (q@@119 T@Field_12393_24778) (w@@124 T@FrameType) (r@@119 T@Field_27630_27631) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_21405 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_21405_27601 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_21405_27601 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_21405 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_21405_27601 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_12393_24778) (v_1@@125 T@FrameType) (q@@120 T@Field_12393_24778) (w@@125 T@FrameType) (r@@120 T@Field_26816_26817) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_21405 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_21405_26783 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_21405_26783 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_21405 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_21405_26783 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_12393_24778) (v_1@@126 T@FrameType) (q@@121 T@Field_12393_24778) (w@@126 T@FrameType) (r@@121 T@Field_26023_26024) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_21405 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_21405_25992 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_21405_25992 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_21405 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_21405_25992 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_12393_24778) (v_1@@127 T@FrameType) (q@@122 T@Field_12393_24778) (w@@127 T@FrameType) (r@@122 T@Field_24777_24778) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_21405 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_21405_24738 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_21405_24738 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_21405 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_21405_24738 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_12393_24778) (v_1@@128 T@FrameType) (q@@123 T@Field_12393_24778) (w@@128 T@FrameType) (r@@123 T@Field_12393_24778) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_21405_21405 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_21405_21405 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_21405_21405 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21405_21405 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_21405_21405 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_21345) (ExhaleHeap@@36 T@PolymorphicMapType_21345) (Mask@@87 T@PolymorphicMapType_21366) (pm_f@@9 T@Field_27630_27631) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_27601_24778 Mask@@87 null pm_f@@9) (IsPredicateField_12366_12367 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@24 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2 f_2@@24) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@63) o2 f_2@@24) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2 f_2@@24))
)) (forall ((o2@@0 T@Ref) (f_2@@25 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@0 f_2@@25) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@63) o2@@0 f_2@@25) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@0 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@0 f_2@@25))
))) (forall ((o2@@1 T@Ref) (f_2@@26 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@1 f_2@@26) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@63) o2@@1 f_2@@26) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@1 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@1 f_2@@26))
))) (forall ((o2@@2 T@Ref) (f_2@@27 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@2 f_2@@27) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@63) o2@@2 f_2@@27) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@2 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@2 f_2@@27))
))) (forall ((o2@@3 T@Ref) (f_2@@28 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@3 f_2@@28) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@63) o2@@3 f_2@@28) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@3 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@3 f_2@@28))
))) (forall ((o2@@4 T@Ref) (f_2@@29 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@4 f_2@@29) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@63) o2@@4 f_2@@29) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@4 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@4 f_2@@29))
))) (forall ((o2@@5 T@Ref) (f_2@@30 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@5 f_2@@30) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@63) o2@@5 f_2@@30) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@5 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@5 f_2@@30))
))) (forall ((o2@@6 T@Ref) (f_2@@31 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@6 f_2@@31) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@63) o2@@6 f_2@@31) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@6 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@6 f_2@@31))
))) (forall ((o2@@7 T@Ref) (f_2@@32 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@7 f_2@@32) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@63) o2@@7 f_2@@32) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@7 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@7 f_2@@32))
))) (forall ((o2@@8 T@Ref) (f_2@@33 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@8 f_2@@33) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@63) o2@@8 f_2@@33) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@8 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@8 f_2@@33))
))) (forall ((o2@@9 T@Ref) (f_2@@34 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@9 f_2@@34) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@63) o2@@9 f_2@@34) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@9 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@9 f_2@@34))
))) (forall ((o2@@10 T@Ref) (f_2@@35 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@10 f_2@@35) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@63) o2@@10 f_2@@35) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@10 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@10 f_2@@35))
))) (forall ((o2@@11 T@Ref) (f_2@@36 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@11 f_2@@36) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@63) o2@@11 f_2@@36) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@11 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@11 f_2@@36))
))) (forall ((o2@@12 T@Ref) (f_2@@37 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@12 f_2@@37) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@63) o2@@12 f_2@@37) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@12 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@12 f_2@@37))
))) (forall ((o2@@13 T@Ref) (f_2@@38 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@13 f_2@@38) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@63) o2@@13 f_2@@38) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@13 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@13 f_2@@38))
))) (forall ((o2@@14 T@Ref) (f_2@@39 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@14 f_2@@39) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@63) o2@@14 f_2@@39) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@14 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@14 f_2@@39))
))) (forall ((o2@@15 T@Ref) (f_2@@40 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@15 f_2@@40) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@63) o2@@15 f_2@@40) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@15 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@15 f_2@@40))
))) (forall ((o2@@16 T@Ref) (f_2@@41 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@16 f_2@@41) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@63) o2@@16 f_2@@41) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@16 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@16 f_2@@41))
))) (forall ((o2@@17 T@Ref) (f_2@@42 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@17 f_2@@42) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@63) o2@@17 f_2@@42) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@17 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@17 f_2@@42))
))) (forall ((o2@@18 T@Ref) (f_2@@43 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@18 f_2@@43) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@63) o2@@18 f_2@@43) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@18 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@18 f_2@@43))
))) (forall ((o2@@19 T@Ref) (f_2@@44 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@19 f_2@@44) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@63) o2@@19 f_2@@44) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@19 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@19 f_2@@44))
))) (forall ((o2@@20 T@Ref) (f_2@@45 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@20 f_2@@45) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@63) o2@@20 f_2@@45) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@20 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@20 f_2@@45))
))) (forall ((o2@@21 T@Ref) (f_2@@46 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@21 f_2@@46) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@63) o2@@21 f_2@@46) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@21 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@21 f_2@@46))
))) (forall ((o2@@22 T@Ref) (f_2@@47 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@22 f_2@@47) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) o2@@22 f_2@@47) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@22 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@22 f_2@@47))
))) (forall ((o2@@23 T@Ref) (f_2@@48 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@63) null (PredicateMaskField_27601 pm_f@@9))) o2@@23 f_2@@48) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@63) o2@@23 f_2@@48) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@23 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@36) o2@@23 f_2@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@36 Mask@@87) (IsPredicateField_12366_12367 pm_f@@9))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_21345) (ExhaleHeap@@37 T@PolymorphicMapType_21345) (Mask@@88 T@PolymorphicMapType_21366) (pm_f@@10 T@Field_26816_26817) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_26783_24778 Mask@@88 null pm_f@@10) (IsPredicateField_12301_12302 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@24 T@Ref) (f_2@@49 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@24 f_2@@49) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@64) o2@@24 f_2@@49) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@24 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@24 f_2@@49))
)) (forall ((o2@@25 T@Ref) (f_2@@50 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@25 f_2@@50) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@64) o2@@25 f_2@@50) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@25 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@25 f_2@@50))
))) (forall ((o2@@26 T@Ref) (f_2@@51 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@26 f_2@@51) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@64) o2@@26 f_2@@51) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@26 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@26 f_2@@51))
))) (forall ((o2@@27 T@Ref) (f_2@@52 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@27 f_2@@52) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@64) o2@@27 f_2@@52) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@27 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@27 f_2@@52))
))) (forall ((o2@@28 T@Ref) (f_2@@53 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@28 f_2@@53) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@64) o2@@28 f_2@@53) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@28 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@28 f_2@@53))
))) (forall ((o2@@29 T@Ref) (f_2@@54 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@29 f_2@@54) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@64) o2@@29 f_2@@54) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@29 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@29 f_2@@54))
))) (forall ((o2@@30 T@Ref) (f_2@@55 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@30 f_2@@55) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@64) o2@@30 f_2@@55) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@30 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@30 f_2@@55))
))) (forall ((o2@@31 T@Ref) (f_2@@56 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@31 f_2@@56) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@64) o2@@31 f_2@@56) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@31 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@31 f_2@@56))
))) (forall ((o2@@32 T@Ref) (f_2@@57 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@32 f_2@@57) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@64) o2@@32 f_2@@57) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@32 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@32 f_2@@57))
))) (forall ((o2@@33 T@Ref) (f_2@@58 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@33 f_2@@58) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@64) o2@@33 f_2@@58) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@33 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@33 f_2@@58))
))) (forall ((o2@@34 T@Ref) (f_2@@59 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@34 f_2@@59) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@64) o2@@34 f_2@@59) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@34 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@34 f_2@@59))
))) (forall ((o2@@35 T@Ref) (f_2@@60 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@35 f_2@@60) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@64) o2@@35 f_2@@60) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@35 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@35 f_2@@60))
))) (forall ((o2@@36 T@Ref) (f_2@@61 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@36 f_2@@61) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@64) o2@@36 f_2@@61) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@36 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@36 f_2@@61))
))) (forall ((o2@@37 T@Ref) (f_2@@62 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@37 f_2@@62) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@64) o2@@37 f_2@@62) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@37 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@37 f_2@@62))
))) (forall ((o2@@38 T@Ref) (f_2@@63 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@38 f_2@@63) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@64) o2@@38 f_2@@63) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@38 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@38 f_2@@63))
))) (forall ((o2@@39 T@Ref) (f_2@@64 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@39 f_2@@64) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@64) o2@@39 f_2@@64) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@39 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@39 f_2@@64))
))) (forall ((o2@@40 T@Ref) (f_2@@65 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@40 f_2@@65) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@64) o2@@40 f_2@@65) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@40 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@40 f_2@@65))
))) (forall ((o2@@41 T@Ref) (f_2@@66 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@41 f_2@@66) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@64) o2@@41 f_2@@66) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@41 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@41 f_2@@66))
))) (forall ((o2@@42 T@Ref) (f_2@@67 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@42 f_2@@67) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) o2@@42 f_2@@67) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@42 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@42 f_2@@67))
))) (forall ((o2@@43 T@Ref) (f_2@@68 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@43 f_2@@68) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@64) o2@@43 f_2@@68) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@43 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@43 f_2@@68))
))) (forall ((o2@@44 T@Ref) (f_2@@69 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@44 f_2@@69) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@64) o2@@44 f_2@@69) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@44 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@44 f_2@@69))
))) (forall ((o2@@45 T@Ref) (f_2@@70 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@45 f_2@@70) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@64) o2@@45 f_2@@70) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@45 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@45 f_2@@70))
))) (forall ((o2@@46 T@Ref) (f_2@@71 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@46 f_2@@71) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@64) o2@@46 f_2@@71) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@46 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@46 f_2@@71))
))) (forall ((o2@@47 T@Ref) (f_2@@72 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@47 f_2@@72) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@64) o2@@47 f_2@@72) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@47 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@47 f_2@@72))
))) (forall ((o2@@48 T@Ref) (f_2@@73 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@64) null (PredicateMaskField_26783 pm_f@@10))) o2@@48 f_2@@73) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@64) o2@@48 f_2@@73) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@48 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@37) o2@@48 f_2@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@37 Mask@@88) (IsPredicateField_12301_12302 pm_f@@10))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_21345) (ExhaleHeap@@38 T@PolymorphicMapType_21345) (Mask@@89 T@PolymorphicMapType_21366) (pm_f@@11 T@Field_26023_26024) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_25992_24778 Mask@@89 null pm_f@@11) (IsPredicateField_12243_12244 pm_f@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@49 T@Ref) (f_2@@74 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@49 f_2@@74) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@65) o2@@49 f_2@@74) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@49 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@49 f_2@@74))
)) (forall ((o2@@50 T@Ref) (f_2@@75 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@50 f_2@@75) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@65) o2@@50 f_2@@75) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@50 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@50 f_2@@75))
))) (forall ((o2@@51 T@Ref) (f_2@@76 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@51 f_2@@76) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@65) o2@@51 f_2@@76) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@51 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@51 f_2@@76))
))) (forall ((o2@@52 T@Ref) (f_2@@77 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@52 f_2@@77) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@65) o2@@52 f_2@@77) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@52 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@52 f_2@@77))
))) (forall ((o2@@53 T@Ref) (f_2@@78 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@53 f_2@@78) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@65) o2@@53 f_2@@78) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@53 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@53 f_2@@78))
))) (forall ((o2@@54 T@Ref) (f_2@@79 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@54 f_2@@79) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@65) o2@@54 f_2@@79) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@54 f_2@@79)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@54 f_2@@79))
))) (forall ((o2@@55 T@Ref) (f_2@@80 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@55 f_2@@80) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@65) o2@@55 f_2@@80) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@55 f_2@@80)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@55 f_2@@80))
))) (forall ((o2@@56 T@Ref) (f_2@@81 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@56 f_2@@81) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@65) o2@@56 f_2@@81) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@56 f_2@@81)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@56 f_2@@81))
))) (forall ((o2@@57 T@Ref) (f_2@@82 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@57 f_2@@82) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@65) o2@@57 f_2@@82) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@57 f_2@@82)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@57 f_2@@82))
))) (forall ((o2@@58 T@Ref) (f_2@@83 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@58 f_2@@83) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@65) o2@@58 f_2@@83) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@58 f_2@@83)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@58 f_2@@83))
))) (forall ((o2@@59 T@Ref) (f_2@@84 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@59 f_2@@84) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@65) o2@@59 f_2@@84) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@59 f_2@@84)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@59 f_2@@84))
))) (forall ((o2@@60 T@Ref) (f_2@@85 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@60 f_2@@85) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@65) o2@@60 f_2@@85) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@60 f_2@@85)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@60 f_2@@85))
))) (forall ((o2@@61 T@Ref) (f_2@@86 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@61 f_2@@86) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@65) o2@@61 f_2@@86) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@61 f_2@@86)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@61 f_2@@86))
))) (forall ((o2@@62 T@Ref) (f_2@@87 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@62 f_2@@87) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) o2@@62 f_2@@87) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@62 f_2@@87)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@62 f_2@@87))
))) (forall ((o2@@63 T@Ref) (f_2@@88 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@63 f_2@@88) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@65) o2@@63 f_2@@88) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@63 f_2@@88)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@63 f_2@@88))
))) (forall ((o2@@64 T@Ref) (f_2@@89 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@64 f_2@@89) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@65) o2@@64 f_2@@89) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@64 f_2@@89)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@64 f_2@@89))
))) (forall ((o2@@65 T@Ref) (f_2@@90 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@65 f_2@@90) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@65) o2@@65 f_2@@90) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@65 f_2@@90)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@65 f_2@@90))
))) (forall ((o2@@66 T@Ref) (f_2@@91 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@66 f_2@@91) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@65) o2@@66 f_2@@91) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@66 f_2@@91)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@66 f_2@@91))
))) (forall ((o2@@67 T@Ref) (f_2@@92 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@67 f_2@@92) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@65) o2@@67 f_2@@92) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@67 f_2@@92)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@67 f_2@@92))
))) (forall ((o2@@68 T@Ref) (f_2@@93 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@68 f_2@@93) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@65) o2@@68 f_2@@93) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@68 f_2@@93)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@68 f_2@@93))
))) (forall ((o2@@69 T@Ref) (f_2@@94 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@69 f_2@@94) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@65) o2@@69 f_2@@94) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@69 f_2@@94)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@69 f_2@@94))
))) (forall ((o2@@70 T@Ref) (f_2@@95 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@70 f_2@@95) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@65) o2@@70 f_2@@95) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@70 f_2@@95)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@70 f_2@@95))
))) (forall ((o2@@71 T@Ref) (f_2@@96 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@71 f_2@@96) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@65) o2@@71 f_2@@96) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@71 f_2@@96)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@71 f_2@@96))
))) (forall ((o2@@72 T@Ref) (f_2@@97 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@72 f_2@@97) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@65) o2@@72 f_2@@97) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@72 f_2@@97)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@72 f_2@@97))
))) (forall ((o2@@73 T@Ref) (f_2@@98 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@65) null (PredicateMaskField_25992 pm_f@@11))) o2@@73 f_2@@98) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@65) o2@@73 f_2@@98) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@73 f_2@@98)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@38) o2@@73 f_2@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@38 Mask@@89) (IsPredicateField_12243_12244 pm_f@@11))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_21345) (ExhaleHeap@@39 T@PolymorphicMapType_21345) (Mask@@90 T@PolymorphicMapType_21366) (pm_f@@12 T@Field_24777_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_24738_24778 Mask@@90 null pm_f@@12) (IsPredicateField_12143_12144 pm_f@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@99 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@74 f_2@@99) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@66) o2@@74 f_2@@99) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@74 f_2@@99)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@74 f_2@@99))
)) (forall ((o2@@75 T@Ref) (f_2@@100 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@75 f_2@@100) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@66) o2@@75 f_2@@100) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@75 f_2@@100)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@75 f_2@@100))
))) (forall ((o2@@76 T@Ref) (f_2@@101 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@76 f_2@@101) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@66) o2@@76 f_2@@101) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@76 f_2@@101)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@76 f_2@@101))
))) (forall ((o2@@77 T@Ref) (f_2@@102 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@77 f_2@@102) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@66) o2@@77 f_2@@102) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@77 f_2@@102)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@77 f_2@@102))
))) (forall ((o2@@78 T@Ref) (f_2@@103 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@78 f_2@@103) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@66) o2@@78 f_2@@103) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@78 f_2@@103)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@78 f_2@@103))
))) (forall ((o2@@79 T@Ref) (f_2@@104 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@79 f_2@@104) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@66) o2@@79 f_2@@104) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@79 f_2@@104)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@79 f_2@@104))
))) (forall ((o2@@80 T@Ref) (f_2@@105 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@80 f_2@@105) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@66) o2@@80 f_2@@105) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@80 f_2@@105)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@80 f_2@@105))
))) (forall ((o2@@81 T@Ref) (f_2@@106 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@81 f_2@@106) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@66) o2@@81 f_2@@106) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@81 f_2@@106)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@81 f_2@@106))
))) (forall ((o2@@82 T@Ref) (f_2@@107 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@82 f_2@@107) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) o2@@82 f_2@@107) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@82 f_2@@107)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@82 f_2@@107))
))) (forall ((o2@@83 T@Ref) (f_2@@108 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@83 f_2@@108) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@66) o2@@83 f_2@@108) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@83 f_2@@108)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@83 f_2@@108))
))) (forall ((o2@@84 T@Ref) (f_2@@109 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@84 f_2@@109) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@66) o2@@84 f_2@@109) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@84 f_2@@109)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@84 f_2@@109))
))) (forall ((o2@@85 T@Ref) (f_2@@110 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@85 f_2@@110) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@66) o2@@85 f_2@@110) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@85 f_2@@110)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@85 f_2@@110))
))) (forall ((o2@@86 T@Ref) (f_2@@111 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@86 f_2@@111) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@66) o2@@86 f_2@@111) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@86 f_2@@111)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@86 f_2@@111))
))) (forall ((o2@@87 T@Ref) (f_2@@112 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@87 f_2@@112) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@66) o2@@87 f_2@@112) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@87 f_2@@112)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@87 f_2@@112))
))) (forall ((o2@@88 T@Ref) (f_2@@113 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@88 f_2@@113) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@66) o2@@88 f_2@@113) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@88 f_2@@113)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@88 f_2@@113))
))) (forall ((o2@@89 T@Ref) (f_2@@114 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@89 f_2@@114) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@66) o2@@89 f_2@@114) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@89 f_2@@114)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@89 f_2@@114))
))) (forall ((o2@@90 T@Ref) (f_2@@115 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@90 f_2@@115) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@66) o2@@90 f_2@@115) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@90 f_2@@115)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@90 f_2@@115))
))) (forall ((o2@@91 T@Ref) (f_2@@116 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@91 f_2@@116) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@66) o2@@91 f_2@@116) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@91 f_2@@116)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@91 f_2@@116))
))) (forall ((o2@@92 T@Ref) (f_2@@117 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@92 f_2@@117) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@66) o2@@92 f_2@@117) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@92 f_2@@117)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@92 f_2@@117))
))) (forall ((o2@@93 T@Ref) (f_2@@118 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@93 f_2@@118) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@66) o2@@93 f_2@@118) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@93 f_2@@118)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@93 f_2@@118))
))) (forall ((o2@@94 T@Ref) (f_2@@119 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@94 f_2@@119) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@66) o2@@94 f_2@@119) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@94 f_2@@119)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@94 f_2@@119))
))) (forall ((o2@@95 T@Ref) (f_2@@120 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@95 f_2@@120) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@66) o2@@95 f_2@@120) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@95 f_2@@120)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@95 f_2@@120))
))) (forall ((o2@@96 T@Ref) (f_2@@121 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@96 f_2@@121) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@66) o2@@96 f_2@@121) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@96 f_2@@121)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@96 f_2@@121))
))) (forall ((o2@@97 T@Ref) (f_2@@122 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@97 f_2@@122) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@66) o2@@97 f_2@@122) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@97 f_2@@122)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@97 f_2@@122))
))) (forall ((o2@@98 T@Ref) (f_2@@123 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@66) null (PredicateMaskField_24738 pm_f@@12))) o2@@98 f_2@@123) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@66) o2@@98 f_2@@123) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@98 f_2@@123)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@39) o2@@98 f_2@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@39 Mask@@90) (IsPredicateField_12143_12144 pm_f@@12))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_21345) (ExhaleHeap@@40 T@PolymorphicMapType_21345) (Mask@@91 T@PolymorphicMapType_21366) (pm_f@@13 T@Field_12393_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_12393_24778 Mask@@91 null pm_f@@13) (IsPredicateField_12393_71364 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@99 T@Ref) (f_2@@124 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@99 f_2@@124) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@67) o2@@99 f_2@@124) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@99 f_2@@124)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@99 f_2@@124))
)) (forall ((o2@@100 T@Ref) (f_2@@125 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@100 f_2@@125) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@67) o2@@100 f_2@@125) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@100 f_2@@125)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@100 f_2@@125))
))) (forall ((o2@@101 T@Ref) (f_2@@126 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@101 f_2@@126) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@67) o2@@101 f_2@@126) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@101 f_2@@126)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@101 f_2@@126))
))) (forall ((o2@@102 T@Ref) (f_2@@127 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@102 f_2@@127) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) o2@@102 f_2@@127) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@102 f_2@@127)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@102 f_2@@127))
))) (forall ((o2@@103 T@Ref) (f_2@@128 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@103 f_2@@128) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@67) o2@@103 f_2@@128) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@103 f_2@@128)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@103 f_2@@128))
))) (forall ((o2@@104 T@Ref) (f_2@@129 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@104 f_2@@129) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@67) o2@@104 f_2@@129) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@104 f_2@@129)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@104 f_2@@129))
))) (forall ((o2@@105 T@Ref) (f_2@@130 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@105 f_2@@130) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@67) o2@@105 f_2@@130) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@105 f_2@@130)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@105 f_2@@130))
))) (forall ((o2@@106 T@Ref) (f_2@@131 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@106 f_2@@131) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@67) o2@@106 f_2@@131) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@106 f_2@@131)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@106 f_2@@131))
))) (forall ((o2@@107 T@Ref) (f_2@@132 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@107 f_2@@132) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@67) o2@@107 f_2@@132) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@107 f_2@@132)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@107 f_2@@132))
))) (forall ((o2@@108 T@Ref) (f_2@@133 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@108 f_2@@133) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@67) o2@@108 f_2@@133) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@108 f_2@@133)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@108 f_2@@133))
))) (forall ((o2@@109 T@Ref) (f_2@@134 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@109 f_2@@134) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@67) o2@@109 f_2@@134) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@109 f_2@@134)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@109 f_2@@134))
))) (forall ((o2@@110 T@Ref) (f_2@@135 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@110 f_2@@135) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@67) o2@@110 f_2@@135) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@110 f_2@@135)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@110 f_2@@135))
))) (forall ((o2@@111 T@Ref) (f_2@@136 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@111 f_2@@136) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@67) o2@@111 f_2@@136) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@111 f_2@@136)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@111 f_2@@136))
))) (forall ((o2@@112 T@Ref) (f_2@@137 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@112 f_2@@137) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@67) o2@@112 f_2@@137) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@112 f_2@@137)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@112 f_2@@137))
))) (forall ((o2@@113 T@Ref) (f_2@@138 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@113 f_2@@138) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@67) o2@@113 f_2@@138) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@113 f_2@@138)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@113 f_2@@138))
))) (forall ((o2@@114 T@Ref) (f_2@@139 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@114 f_2@@139) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@67) o2@@114 f_2@@139) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@114 f_2@@139)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@114 f_2@@139))
))) (forall ((o2@@115 T@Ref) (f_2@@140 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@115 f_2@@140) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@67) o2@@115 f_2@@140) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@115 f_2@@140)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@115 f_2@@140))
))) (forall ((o2@@116 T@Ref) (f_2@@141 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@116 f_2@@141) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@67) o2@@116 f_2@@141) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@116 f_2@@141)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@116 f_2@@141))
))) (forall ((o2@@117 T@Ref) (f_2@@142 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@117 f_2@@142) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@67) o2@@117 f_2@@142) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@117 f_2@@142)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@117 f_2@@142))
))) (forall ((o2@@118 T@Ref) (f_2@@143 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@118 f_2@@143) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@67) o2@@118 f_2@@143) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@118 f_2@@143)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@118 f_2@@143))
))) (forall ((o2@@119 T@Ref) (f_2@@144 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@119 f_2@@144) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@67) o2@@119 f_2@@144) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@119 f_2@@144)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@119 f_2@@144))
))) (forall ((o2@@120 T@Ref) (f_2@@145 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@120 f_2@@145) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@67) o2@@120 f_2@@145) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@120 f_2@@145)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@120 f_2@@145))
))) (forall ((o2@@121 T@Ref) (f_2@@146 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@121 f_2@@146) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@67) o2@@121 f_2@@146) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@121 f_2@@146)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@121 f_2@@146))
))) (forall ((o2@@122 T@Ref) (f_2@@147 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@122 f_2@@147) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@67) o2@@122 f_2@@147) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@122 f_2@@147)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@122 f_2@@147))
))) (forall ((o2@@123 T@Ref) (f_2@@148 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@67) null (PredicateMaskField_12393 pm_f@@13))) o2@@123 f_2@@148) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@67) o2@@123 f_2@@148) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@123 f_2@@148)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@40) o2@@123 f_2@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@40 Mask@@91) (IsPredicateField_12393_71364 pm_f@@13))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_21345) (ExhaleHeap@@41 T@PolymorphicMapType_21345) (Mask@@92 T@PolymorphicMapType_21366) (pm_f@@14 T@Field_27630_27631) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_27601_24778 Mask@@92 null pm_f@@14) (IsWandField_12366_12367 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@124 T@Ref) (f_2@@149 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@124 f_2@@149) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@68) o2@@124 f_2@@149) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@124 f_2@@149)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@124 f_2@@149))
)) (forall ((o2@@125 T@Ref) (f_2@@150 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@125 f_2@@150) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@68) o2@@125 f_2@@150) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@125 f_2@@150)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@125 f_2@@150))
))) (forall ((o2@@126 T@Ref) (f_2@@151 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@126 f_2@@151) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@68) o2@@126 f_2@@151) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@126 f_2@@151)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@126 f_2@@151))
))) (forall ((o2@@127 T@Ref) (f_2@@152 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@127 f_2@@152) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@68) o2@@127 f_2@@152) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@127 f_2@@152)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@127 f_2@@152))
))) (forall ((o2@@128 T@Ref) (f_2@@153 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@128 f_2@@153) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@68) o2@@128 f_2@@153) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@128 f_2@@153)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@128 f_2@@153))
))) (forall ((o2@@129 T@Ref) (f_2@@154 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@129 f_2@@154) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@68) o2@@129 f_2@@154) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@129 f_2@@154)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@129 f_2@@154))
))) (forall ((o2@@130 T@Ref) (f_2@@155 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@130 f_2@@155) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@68) o2@@130 f_2@@155) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@130 f_2@@155)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@130 f_2@@155))
))) (forall ((o2@@131 T@Ref) (f_2@@156 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@131 f_2@@156) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@68) o2@@131 f_2@@156) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@131 f_2@@156)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@131 f_2@@156))
))) (forall ((o2@@132 T@Ref) (f_2@@157 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@132 f_2@@157) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@68) o2@@132 f_2@@157) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@132 f_2@@157)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@132 f_2@@157))
))) (forall ((o2@@133 T@Ref) (f_2@@158 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@133 f_2@@158) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@68) o2@@133 f_2@@158) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@133 f_2@@158)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@133 f_2@@158))
))) (forall ((o2@@134 T@Ref) (f_2@@159 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@134 f_2@@159) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@68) o2@@134 f_2@@159) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@134 f_2@@159)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@134 f_2@@159))
))) (forall ((o2@@135 T@Ref) (f_2@@160 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@135 f_2@@160) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@68) o2@@135 f_2@@160) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@135 f_2@@160)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@135 f_2@@160))
))) (forall ((o2@@136 T@Ref) (f_2@@161 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@136 f_2@@161) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@68) o2@@136 f_2@@161) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@136 f_2@@161)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@136 f_2@@161))
))) (forall ((o2@@137 T@Ref) (f_2@@162 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@137 f_2@@162) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@68) o2@@137 f_2@@162) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@137 f_2@@162)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@137 f_2@@162))
))) (forall ((o2@@138 T@Ref) (f_2@@163 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@138 f_2@@163) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@68) o2@@138 f_2@@163) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@138 f_2@@163)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@138 f_2@@163))
))) (forall ((o2@@139 T@Ref) (f_2@@164 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@139 f_2@@164) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@68) o2@@139 f_2@@164) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@139 f_2@@164)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@139 f_2@@164))
))) (forall ((o2@@140 T@Ref) (f_2@@165 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@140 f_2@@165) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@68) o2@@140 f_2@@165) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@140 f_2@@165)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@140 f_2@@165))
))) (forall ((o2@@141 T@Ref) (f_2@@166 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@141 f_2@@166) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@68) o2@@141 f_2@@166) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@141 f_2@@166)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@141 f_2@@166))
))) (forall ((o2@@142 T@Ref) (f_2@@167 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@142 f_2@@167) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@68) o2@@142 f_2@@167) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@142 f_2@@167)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@142 f_2@@167))
))) (forall ((o2@@143 T@Ref) (f_2@@168 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@143 f_2@@168) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@68) o2@@143 f_2@@168) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@143 f_2@@168)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@143 f_2@@168))
))) (forall ((o2@@144 T@Ref) (f_2@@169 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@144 f_2@@169) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@68) o2@@144 f_2@@169) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@144 f_2@@169)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@144 f_2@@169))
))) (forall ((o2@@145 T@Ref) (f_2@@170 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@145 f_2@@170) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@68) o2@@145 f_2@@170) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@145 f_2@@170)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@145 f_2@@170))
))) (forall ((o2@@146 T@Ref) (f_2@@171 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@146 f_2@@171) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@68) o2@@146 f_2@@171) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@146 f_2@@171)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@146 f_2@@171))
))) (forall ((o2@@147 T@Ref) (f_2@@172 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@147 f_2@@172) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) o2@@147 f_2@@172) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@147 f_2@@172)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@147 f_2@@172))
))) (forall ((o2@@148 T@Ref) (f_2@@173 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@68) null (WandMaskField_12366 pm_f@@14))) o2@@148 f_2@@173) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@68) o2@@148 f_2@@173) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@148 f_2@@173)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@41) o2@@148 f_2@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@41 Mask@@92) (IsWandField_12366_12367 pm_f@@14))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_21345) (ExhaleHeap@@42 T@PolymorphicMapType_21345) (Mask@@93 T@PolymorphicMapType_21366) (pm_f@@15 T@Field_26816_26817) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_26783_24778 Mask@@93 null pm_f@@15) (IsWandField_12301_12302 pm_f@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@149 T@Ref) (f_2@@174 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@149 f_2@@174) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@69) o2@@149 f_2@@174) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@149 f_2@@174)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@149 f_2@@174))
)) (forall ((o2@@150 T@Ref) (f_2@@175 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@150 f_2@@175) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@69) o2@@150 f_2@@175) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@150 f_2@@175)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@150 f_2@@175))
))) (forall ((o2@@151 T@Ref) (f_2@@176 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@151 f_2@@176) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@69) o2@@151 f_2@@176) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@151 f_2@@176)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@151 f_2@@176))
))) (forall ((o2@@152 T@Ref) (f_2@@177 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@152 f_2@@177) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@69) o2@@152 f_2@@177) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@152 f_2@@177)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@152 f_2@@177))
))) (forall ((o2@@153 T@Ref) (f_2@@178 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@153 f_2@@178) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@69) o2@@153 f_2@@178) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@153 f_2@@178)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@153 f_2@@178))
))) (forall ((o2@@154 T@Ref) (f_2@@179 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@154 f_2@@179) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@69) o2@@154 f_2@@179) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@154 f_2@@179)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@154 f_2@@179))
))) (forall ((o2@@155 T@Ref) (f_2@@180 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@155 f_2@@180) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@69) o2@@155 f_2@@180) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@155 f_2@@180)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@155 f_2@@180))
))) (forall ((o2@@156 T@Ref) (f_2@@181 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@156 f_2@@181) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@69) o2@@156 f_2@@181) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@156 f_2@@181)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@156 f_2@@181))
))) (forall ((o2@@157 T@Ref) (f_2@@182 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@157 f_2@@182) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@69) o2@@157 f_2@@182) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@157 f_2@@182)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@157 f_2@@182))
))) (forall ((o2@@158 T@Ref) (f_2@@183 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@158 f_2@@183) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@69) o2@@158 f_2@@183) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@158 f_2@@183)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@158 f_2@@183))
))) (forall ((o2@@159 T@Ref) (f_2@@184 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@159 f_2@@184) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@69) o2@@159 f_2@@184) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@159 f_2@@184)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@159 f_2@@184))
))) (forall ((o2@@160 T@Ref) (f_2@@185 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@160 f_2@@185) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@69) o2@@160 f_2@@185) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@160 f_2@@185)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@160 f_2@@185))
))) (forall ((o2@@161 T@Ref) (f_2@@186 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@161 f_2@@186) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@69) o2@@161 f_2@@186) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@161 f_2@@186)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@161 f_2@@186))
))) (forall ((o2@@162 T@Ref) (f_2@@187 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@162 f_2@@187) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@69) o2@@162 f_2@@187) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@162 f_2@@187)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@162 f_2@@187))
))) (forall ((o2@@163 T@Ref) (f_2@@188 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@163 f_2@@188) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@69) o2@@163 f_2@@188) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@163 f_2@@188)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@163 f_2@@188))
))) (forall ((o2@@164 T@Ref) (f_2@@189 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@164 f_2@@189) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@69) o2@@164 f_2@@189) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@164 f_2@@189)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@164 f_2@@189))
))) (forall ((o2@@165 T@Ref) (f_2@@190 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@165 f_2@@190) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@69) o2@@165 f_2@@190) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@165 f_2@@190)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@165 f_2@@190))
))) (forall ((o2@@166 T@Ref) (f_2@@191 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@166 f_2@@191) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@69) o2@@166 f_2@@191) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@166 f_2@@191)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@166 f_2@@191))
))) (forall ((o2@@167 T@Ref) (f_2@@192 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@167 f_2@@192) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) o2@@167 f_2@@192) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@167 f_2@@192)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@167 f_2@@192))
))) (forall ((o2@@168 T@Ref) (f_2@@193 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@168 f_2@@193) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@69) o2@@168 f_2@@193) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@168 f_2@@193)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@168 f_2@@193))
))) (forall ((o2@@169 T@Ref) (f_2@@194 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@169 f_2@@194) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@69) o2@@169 f_2@@194) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@169 f_2@@194)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@169 f_2@@194))
))) (forall ((o2@@170 T@Ref) (f_2@@195 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@170 f_2@@195) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@69) o2@@170 f_2@@195) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@170 f_2@@195)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@170 f_2@@195))
))) (forall ((o2@@171 T@Ref) (f_2@@196 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@171 f_2@@196) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@69) o2@@171 f_2@@196) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@171 f_2@@196)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@171 f_2@@196))
))) (forall ((o2@@172 T@Ref) (f_2@@197 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@172 f_2@@197) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@69) o2@@172 f_2@@197) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@172 f_2@@197)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@172 f_2@@197))
))) (forall ((o2@@173 T@Ref) (f_2@@198 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@69) null (WandMaskField_12301 pm_f@@15))) o2@@173 f_2@@198) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@69) o2@@173 f_2@@198) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@173 f_2@@198)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@42) o2@@173 f_2@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@42 Mask@@93) (IsWandField_12301_12302 pm_f@@15))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_21345) (ExhaleHeap@@43 T@PolymorphicMapType_21345) (Mask@@94 T@PolymorphicMapType_21366) (pm_f@@16 T@Field_26023_26024) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_25992_24778 Mask@@94 null pm_f@@16) (IsWandField_12243_12244 pm_f@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@174 T@Ref) (f_2@@199 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@174 f_2@@199) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@70) o2@@174 f_2@@199) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@174 f_2@@199)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@174 f_2@@199))
)) (forall ((o2@@175 T@Ref) (f_2@@200 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@175 f_2@@200) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@70) o2@@175 f_2@@200) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@175 f_2@@200)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@175 f_2@@200))
))) (forall ((o2@@176 T@Ref) (f_2@@201 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@176 f_2@@201) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@70) o2@@176 f_2@@201) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@176 f_2@@201)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@176 f_2@@201))
))) (forall ((o2@@177 T@Ref) (f_2@@202 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@177 f_2@@202) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@70) o2@@177 f_2@@202) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@177 f_2@@202)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@177 f_2@@202))
))) (forall ((o2@@178 T@Ref) (f_2@@203 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@178 f_2@@203) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@70) o2@@178 f_2@@203) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@178 f_2@@203)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@178 f_2@@203))
))) (forall ((o2@@179 T@Ref) (f_2@@204 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@179 f_2@@204) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@70) o2@@179 f_2@@204) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@179 f_2@@204)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@179 f_2@@204))
))) (forall ((o2@@180 T@Ref) (f_2@@205 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@180 f_2@@205) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@70) o2@@180 f_2@@205) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@180 f_2@@205)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@180 f_2@@205))
))) (forall ((o2@@181 T@Ref) (f_2@@206 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@181 f_2@@206) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@70) o2@@181 f_2@@206) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@181 f_2@@206)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@181 f_2@@206))
))) (forall ((o2@@182 T@Ref) (f_2@@207 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@182 f_2@@207) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@70) o2@@182 f_2@@207) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@182 f_2@@207)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@182 f_2@@207))
))) (forall ((o2@@183 T@Ref) (f_2@@208 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@183 f_2@@208) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@70) o2@@183 f_2@@208) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@183 f_2@@208)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@183 f_2@@208))
))) (forall ((o2@@184 T@Ref) (f_2@@209 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@184 f_2@@209) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@70) o2@@184 f_2@@209) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@184 f_2@@209)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@184 f_2@@209))
))) (forall ((o2@@185 T@Ref) (f_2@@210 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@185 f_2@@210) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@70) o2@@185 f_2@@210) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@185 f_2@@210)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@185 f_2@@210))
))) (forall ((o2@@186 T@Ref) (f_2@@211 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@186 f_2@@211) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@70) o2@@186 f_2@@211) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@186 f_2@@211)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@186 f_2@@211))
))) (forall ((o2@@187 T@Ref) (f_2@@212 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@187 f_2@@212) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) o2@@187 f_2@@212) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@187 f_2@@212)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@187 f_2@@212))
))) (forall ((o2@@188 T@Ref) (f_2@@213 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@188 f_2@@213) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@70) o2@@188 f_2@@213) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@188 f_2@@213)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@188 f_2@@213))
))) (forall ((o2@@189 T@Ref) (f_2@@214 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@189 f_2@@214) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@70) o2@@189 f_2@@214) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@189 f_2@@214)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@189 f_2@@214))
))) (forall ((o2@@190 T@Ref) (f_2@@215 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@190 f_2@@215) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@70) o2@@190 f_2@@215) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@190 f_2@@215)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@190 f_2@@215))
))) (forall ((o2@@191 T@Ref) (f_2@@216 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@191 f_2@@216) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@70) o2@@191 f_2@@216) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@191 f_2@@216)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@191 f_2@@216))
))) (forall ((o2@@192 T@Ref) (f_2@@217 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@192 f_2@@217) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@70) o2@@192 f_2@@217) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@192 f_2@@217)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@192 f_2@@217))
))) (forall ((o2@@193 T@Ref) (f_2@@218 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@193 f_2@@218) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@70) o2@@193 f_2@@218) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@193 f_2@@218)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@193 f_2@@218))
))) (forall ((o2@@194 T@Ref) (f_2@@219 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@194 f_2@@219) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@70) o2@@194 f_2@@219) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@194 f_2@@219)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@194 f_2@@219))
))) (forall ((o2@@195 T@Ref) (f_2@@220 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@195 f_2@@220) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@70) o2@@195 f_2@@220) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@195 f_2@@220)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@195 f_2@@220))
))) (forall ((o2@@196 T@Ref) (f_2@@221 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@196 f_2@@221) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@70) o2@@196 f_2@@221) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@196 f_2@@221)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@196 f_2@@221))
))) (forall ((o2@@197 T@Ref) (f_2@@222 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@197 f_2@@222) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@70) o2@@197 f_2@@222) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@197 f_2@@222)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@197 f_2@@222))
))) (forall ((o2@@198 T@Ref) (f_2@@223 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@70) null (WandMaskField_12243 pm_f@@16))) o2@@198 f_2@@223) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@70) o2@@198 f_2@@223) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@198 f_2@@223)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@43) o2@@198 f_2@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@43 Mask@@94) (IsWandField_12243_12244 pm_f@@16))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_21345) (ExhaleHeap@@44 T@PolymorphicMapType_21345) (Mask@@95 T@PolymorphicMapType_21366) (pm_f@@17 T@Field_24777_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_24738_24778 Mask@@95 null pm_f@@17) (IsWandField_12143_12144 pm_f@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@199 T@Ref) (f_2@@224 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@199 f_2@@224) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@71) o2@@199 f_2@@224) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@199 f_2@@224)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@199 f_2@@224))
)) (forall ((o2@@200 T@Ref) (f_2@@225 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@200 f_2@@225) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@71) o2@@200 f_2@@225) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@200 f_2@@225)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@200 f_2@@225))
))) (forall ((o2@@201 T@Ref) (f_2@@226 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@201 f_2@@226) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@71) o2@@201 f_2@@226) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@201 f_2@@226)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@201 f_2@@226))
))) (forall ((o2@@202 T@Ref) (f_2@@227 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@202 f_2@@227) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@71) o2@@202 f_2@@227) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@202 f_2@@227)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@202 f_2@@227))
))) (forall ((o2@@203 T@Ref) (f_2@@228 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@203 f_2@@228) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@71) o2@@203 f_2@@228) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@203 f_2@@228)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@203 f_2@@228))
))) (forall ((o2@@204 T@Ref) (f_2@@229 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@204 f_2@@229) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@71) o2@@204 f_2@@229) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@204 f_2@@229)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@204 f_2@@229))
))) (forall ((o2@@205 T@Ref) (f_2@@230 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@205 f_2@@230) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@71) o2@@205 f_2@@230) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@205 f_2@@230)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@205 f_2@@230))
))) (forall ((o2@@206 T@Ref) (f_2@@231 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@206 f_2@@231) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@71) o2@@206 f_2@@231) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@206 f_2@@231)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@206 f_2@@231))
))) (forall ((o2@@207 T@Ref) (f_2@@232 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@207 f_2@@232) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) o2@@207 f_2@@232) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@207 f_2@@232)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@207 f_2@@232))
))) (forall ((o2@@208 T@Ref) (f_2@@233 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@208 f_2@@233) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@71) o2@@208 f_2@@233) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@208 f_2@@233)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@208 f_2@@233))
))) (forall ((o2@@209 T@Ref) (f_2@@234 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@209 f_2@@234) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@71) o2@@209 f_2@@234) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@209 f_2@@234)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@209 f_2@@234))
))) (forall ((o2@@210 T@Ref) (f_2@@235 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@210 f_2@@235) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@71) o2@@210 f_2@@235) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@210 f_2@@235)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@210 f_2@@235))
))) (forall ((o2@@211 T@Ref) (f_2@@236 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@211 f_2@@236) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@71) o2@@211 f_2@@236) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@211 f_2@@236)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@211 f_2@@236))
))) (forall ((o2@@212 T@Ref) (f_2@@237 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@212 f_2@@237) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@71) o2@@212 f_2@@237) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@212 f_2@@237)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@212 f_2@@237))
))) (forall ((o2@@213 T@Ref) (f_2@@238 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@213 f_2@@238) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@71) o2@@213 f_2@@238) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@213 f_2@@238)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@213 f_2@@238))
))) (forall ((o2@@214 T@Ref) (f_2@@239 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@214 f_2@@239) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@71) o2@@214 f_2@@239) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@214 f_2@@239)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@214 f_2@@239))
))) (forall ((o2@@215 T@Ref) (f_2@@240 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@215 f_2@@240) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@71) o2@@215 f_2@@240) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@215 f_2@@240)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@215 f_2@@240))
))) (forall ((o2@@216 T@Ref) (f_2@@241 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@216 f_2@@241) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@71) o2@@216 f_2@@241) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@216 f_2@@241)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@216 f_2@@241))
))) (forall ((o2@@217 T@Ref) (f_2@@242 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@217 f_2@@242) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@71) o2@@217 f_2@@242) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@217 f_2@@242)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@217 f_2@@242))
))) (forall ((o2@@218 T@Ref) (f_2@@243 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@218 f_2@@243) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@71) o2@@218 f_2@@243) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@218 f_2@@243)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@218 f_2@@243))
))) (forall ((o2@@219 T@Ref) (f_2@@244 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@219 f_2@@244) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@71) o2@@219 f_2@@244) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@219 f_2@@244)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@219 f_2@@244))
))) (forall ((o2@@220 T@Ref) (f_2@@245 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@220 f_2@@245) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@71) o2@@220 f_2@@245) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@220 f_2@@245)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@220 f_2@@245))
))) (forall ((o2@@221 T@Ref) (f_2@@246 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@221 f_2@@246) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@71) o2@@221 f_2@@246) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@221 f_2@@246)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@221 f_2@@246))
))) (forall ((o2@@222 T@Ref) (f_2@@247 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@222 f_2@@247) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@71) o2@@222 f_2@@247) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@222 f_2@@247)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@222 f_2@@247))
))) (forall ((o2@@223 T@Ref) (f_2@@248 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@71) null (WandMaskField_12143 pm_f@@17))) o2@@223 f_2@@248) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@71) o2@@223 f_2@@248) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@223 f_2@@248)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@44) o2@@223 f_2@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@44 Mask@@95) (IsWandField_12143_12144 pm_f@@17))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_21345) (ExhaleHeap@@45 T@PolymorphicMapType_21345) (Mask@@96 T@PolymorphicMapType_21366) (pm_f@@18 T@Field_12393_24778) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_12393_24778 Mask@@96 null pm_f@@18) (IsWandField_12393_79754 pm_f@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@224 T@Ref) (f_2@@249 T@Field_28301_3215) ) (!  (=> (select (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@224 f_2@@249) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@72) o2@@224 f_2@@249) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@224 f_2@@249)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@224 f_2@@249))
)) (forall ((o2@@225 T@Ref) (f_2@@250 T@Field_21405_53) ) (!  (=> (select (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@225 f_2@@250) (= (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@72) o2@@225 f_2@@250) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@225 f_2@@250)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@225 f_2@@250))
))) (forall ((o2@@226 T@Ref) (f_2@@251 T@Field_21418_21419) ) (!  (=> (select (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@226 f_2@@251) (= (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@72) o2@@226 f_2@@251) (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@226 f_2@@251)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@226 f_2@@251))
))) (forall ((o2@@227 T@Ref) (f_2@@252 T@Field_12393_24761) ) (!  (=> (select (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@227 f_2@@252) (= (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) o2@@227 f_2@@252) (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@227 f_2@@252)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@227 f_2@@252))
))) (forall ((o2@@228 T@Ref) (f_2@@253 T@Field_12393_24778) ) (!  (=> (select (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@228 f_2@@253) (= (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@72) o2@@228 f_2@@253) (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@228 f_2@@253)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@228 f_2@@253))
))) (forall ((o2@@229 T@Ref) (f_2@@254 T@Field_24738_1235) ) (!  (=> (select (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@229 f_2@@254) (= (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@72) o2@@229 f_2@@254) (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@229 f_2@@254)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@229 f_2@@254))
))) (forall ((o2@@230 T@Ref) (f_2@@255 T@Field_24738_53) ) (!  (=> (select (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@230 f_2@@255) (= (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@72) o2@@230 f_2@@255) (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@230 f_2@@255)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@230 f_2@@255))
))) (forall ((o2@@231 T@Ref) (f_2@@256 T@Field_24738_21419) ) (!  (=> (select (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@231 f_2@@256) (= (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@72) o2@@231 f_2@@256) (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@231 f_2@@256)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@231 f_2@@256))
))) (forall ((o2@@232 T@Ref) (f_2@@257 T@Field_24756_24761) ) (!  (=> (select (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@232 f_2@@257) (= (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@72) o2@@232 f_2@@257) (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@232 f_2@@257)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@232 f_2@@257))
))) (forall ((o2@@233 T@Ref) (f_2@@258 T@Field_24777_24778) ) (!  (=> (select (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@233 f_2@@258) (= (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@72) o2@@233 f_2@@258) (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@233 f_2@@258)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@233 f_2@@258))
))) (forall ((o2@@234 T@Ref) (f_2@@259 T@Field_25992_1989) ) (!  (=> (select (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@234 f_2@@259) (= (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@72) o2@@234 f_2@@259) (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@234 f_2@@259)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@234 f_2@@259))
))) (forall ((o2@@235 T@Ref) (f_2@@260 T@Field_25992_53) ) (!  (=> (select (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@235 f_2@@260) (= (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@72) o2@@235 f_2@@260) (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@235 f_2@@260)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@235 f_2@@260))
))) (forall ((o2@@236 T@Ref) (f_2@@261 T@Field_25992_21419) ) (!  (=> (select (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@236 f_2@@261) (= (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@72) o2@@236 f_2@@261) (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@236 f_2@@261)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@236 f_2@@261))
))) (forall ((o2@@237 T@Ref) (f_2@@262 T@Field_26006_26011) ) (!  (=> (select (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@237 f_2@@262) (= (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@72) o2@@237 f_2@@262) (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@237 f_2@@262)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@237 f_2@@262))
))) (forall ((o2@@238 T@Ref) (f_2@@263 T@Field_26023_26024) ) (!  (=> (select (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@238 f_2@@263) (= (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@72) o2@@238 f_2@@263) (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@238 f_2@@263)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@238 f_2@@263))
))) (forall ((o2@@239 T@Ref) (f_2@@264 T@Field_26783_2425) ) (!  (=> (select (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@239 f_2@@264) (= (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@72) o2@@239 f_2@@264) (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@239 f_2@@264)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@239 f_2@@264))
))) (forall ((o2@@240 T@Ref) (f_2@@265 T@Field_26783_53) ) (!  (=> (select (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@240 f_2@@265) (= (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@72) o2@@240 f_2@@265) (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@240 f_2@@265)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@240 f_2@@265))
))) (forall ((o2@@241 T@Ref) (f_2@@266 T@Field_26783_21419) ) (!  (=> (select (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@241 f_2@@266) (= (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@72) o2@@241 f_2@@266) (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@241 f_2@@266)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@241 f_2@@266))
))) (forall ((o2@@242 T@Ref) (f_2@@267 T@Field_26798_26803) ) (!  (=> (select (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@242 f_2@@267) (= (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@72) o2@@242 f_2@@267) (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@242 f_2@@267)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@242 f_2@@267))
))) (forall ((o2@@243 T@Ref) (f_2@@268 T@Field_26816_26817) ) (!  (=> (select (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@243 f_2@@268) (= (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@72) o2@@243 f_2@@268) (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@243 f_2@@268)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@243 f_2@@268))
))) (forall ((o2@@244 T@Ref) (f_2@@269 T@Field_27601_2857) ) (!  (=> (select (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@244 f_2@@269) (= (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@72) o2@@244 f_2@@269) (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@244 f_2@@269)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@244 f_2@@269))
))) (forall ((o2@@245 T@Ref) (f_2@@270 T@Field_27601_53) ) (!  (=> (select (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@245 f_2@@270) (= (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@72) o2@@245 f_2@@270) (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@245 f_2@@270)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@245 f_2@@270))
))) (forall ((o2@@246 T@Ref) (f_2@@271 T@Field_27601_21419) ) (!  (=> (select (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@246 f_2@@271) (= (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@72) o2@@246 f_2@@271) (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@246 f_2@@271)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@246 f_2@@271))
))) (forall ((o2@@247 T@Ref) (f_2@@272 T@Field_27614_27619) ) (!  (=> (select (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@247 f_2@@272) (= (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@72) o2@@247 f_2@@272) (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@247 f_2@@272)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@247 f_2@@272))
))) (forall ((o2@@248 T@Ref) (f_2@@273 T@Field_27630_27631) ) (!  (=> (select (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@72) null (WandMaskField_12393 pm_f@@18))) o2@@248 f_2@@273) (= (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@72) o2@@248 f_2@@273) (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@248 f_2@@273)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| ExhaleHeap@@45) o2@@248 f_2@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@45 Mask@@96) (IsWandField_12393_79754 pm_f@@18))
)))
(assert (forall ((arg1@@26 T@Ref) (arg2@@26 Real) (arg3@@26 T@Ref) (arg4@@26 Real) (arg5@@26 T@Ref) (arg6@@19 Int) (arg7@@5 T@Ref) (arg8@@5 Int) (arg9@@5 T@Ref) (arg10@@5 Real) (arg11@@5 T@Ref) (arg12@@5 T@Ref) (arg1_2@@2 T@Ref) (arg2_2@@2 Real) (arg3_2@@2 T@Ref) (arg4_2@@2 Real) (arg5_2@@2 T@Ref) (arg6_2@@1 Int) (arg7_2 T@Ref) (arg8_2 Int) (arg9_2 T@Ref) (arg10_2 Real) (arg11_2 T@Ref) (arg12_2 T@Ref) ) (!  (=> (= (wand arg1@@26 arg2@@26 arg3@@26 arg4@@26 arg5@@26 arg6@@19 arg7@@5 arg8@@5 arg9@@5 arg10@@5 arg11@@5 arg12@@5) (wand arg1_2@@2 arg2_2@@2 arg3_2@@2 arg4_2@@2 arg5_2@@2 arg6_2@@1 arg7_2 arg8_2 arg9_2 arg10_2 arg11_2 arg12_2)) (and (= arg1@@26 arg1_2@@2) (and (= arg2@@26 arg2_2@@2) (and (= arg3@@26 arg3_2@@2) (and (= arg4@@26 arg4_2@@2) (and (= arg5@@26 arg5_2@@2) (and (= arg6@@19 arg6_2@@1) (and (= arg7@@5 arg7_2) (and (= arg8@@5 arg8_2) (and (= arg9@@5 arg9_2) (and (= arg10@@5 arg10_2) (and (= arg11@@5 arg11_2) (= arg12@@5 arg12_2)))))))))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@26 arg2@@26 arg3@@26 arg4@@26 arg5@@26 arg6@@19 arg7@@5 arg8@@5 arg9@@5 arg10@@5 arg11@@5 arg12@@5) (wand arg1_2@@2 arg2_2@@2 arg3_2@@2 arg4_2@@2 arg5_2@@2 arg6_2@@1 arg7_2 arg8_2 arg9_2 arg10_2 arg11_2 arg12_2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@19 () T@PolymorphicMapType_21366)
(declare-fun Mask@18 () T@PolymorphicMapType_21366)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@16 () T@PolymorphicMapType_21345)
(declare-fun x () T@Ref)
(declare-fun Mask@20 () T@PolymorphicMapType_21366)
(declare-fun Labellhs5Heap () T@PolymorphicMapType_21345)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_21345)
(declare-fun first_lblGuard@0 () Bool)
(declare-fun LabelfirstMask@0 () T@PolymorphicMapType_21366)
(declare-fun LabelfirstHeap@0 () T@PolymorphicMapType_21345)
(declare-fun Mask@17 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@75 () Bool)
(declare-fun b_17@6 () Bool)
(declare-fun Result_4Heap () T@PolymorphicMapType_21345)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_21345)
(declare-fun Mask@16 () T@PolymorphicMapType_21366)
(declare-fun Mask@15 () T@PolymorphicMapType_21366)
(declare-fun Heap@14 () T@PolymorphicMapType_21345)
(declare-fun Heap@15 () T@PolymorphicMapType_21345)
(declare-fun Result_4Mask () T@PolymorphicMapType_21366)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@74 () Bool)
(declare-fun neededTransfer@19 () Real)
(declare-fun Used_11Mask@3 () T@PolymorphicMapType_21366)
(declare-fun initNeededTransfer@4 () Real)
(declare-fun b_18@0 () Bool)
(declare-fun b_18@1 () Bool)
(declare-fun b_18@2 () Bool)
(declare-fun Ops_1Mask@36 () T@PolymorphicMapType_21366)
(declare-fun b_18@3 () Bool)
(declare-fun Ops_1Heap@4 () T@PolymorphicMapType_21345)
(declare-fun Used_11Heap@0 () T@PolymorphicMapType_21345)
(declare-fun b_18@4 () Bool)
(declare-fun takeTransfer@9 () Real)
(declare-fun neededTransfer@17 () Real)
(declare-fun Mask@13 () T@PolymorphicMapType_21366)
(declare-fun Heap@12 () T@PolymorphicMapType_21345)
(declare-fun b_17@3 () Bool)
(declare-fun Used_11Mask@1 () T@PolymorphicMapType_21366)
(declare-fun neededTransfer@18 () Real)
(declare-fun Used_11Mask@2 () T@PolymorphicMapType_21366)
(declare-fun b_17@4 () Bool)
(declare-fun b_17@5 () Bool)
(declare-fun Mask@14 () T@PolymorphicMapType_21366)
(declare-fun Heap@13 () T@PolymorphicMapType_21345)
(declare-fun maskTransfer@9 () Real)
(declare-fun takeTransfer@8 () Real)
(declare-fun Ops_1Mask@34 () T@PolymorphicMapType_21366)
(declare-fun b_17@0 () Bool)
(declare-fun neededTransfer@16 () Real)
(declare-fun Used_11Mask@0 () T@PolymorphicMapType_21366)
(declare-fun b_17@1 () Bool)
(declare-fun b_17@2 () Bool)
(declare-fun Ops_1Mask@35 () T@PolymorphicMapType_21366)
(declare-fun maskTransfer@8 () Real)
(declare-fun b_17 () Bool)
(declare-fun b_1_1@71 () Bool)
(declare-fun b_16@0 () Bool)
(declare-fun b_1_1@72 () Bool)
(declare-fun b_1_1@73 () Bool)
(declare-fun b_16 () Bool)
(declare-fun Used_10Heap@0 () T@PolymorphicMapType_21345)
(declare-fun Ops_1Mask@33 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@70 () Bool)
(declare-fun b_1_1@69 () Bool)
(declare-fun b_1_1@68 () Bool)
(declare-fun b_1_1@67 () Bool)
(declare-fun Ops_1Mask@32 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@64 () Bool)
(declare-fun Ops_1Mask@30 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@65 () Bool)
(declare-fun Ops_1Mask@31 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@66 () Bool)
(declare-fun b_1_1@60 () Bool)
(declare-fun b_14@6 () Bool)
(declare-fun neededTransfer@15 () Real)
(declare-fun Used_9Mask@3 () T@PolymorphicMapType_21366)
(declare-fun initNeededTransfer@3 () Real)
(declare-fun b_15@0 () Bool)
(declare-fun b_15@1 () Bool)
(declare-fun Result_3Heap () T@PolymorphicMapType_21345)
(declare-fun Result_3Mask () T@PolymorphicMapType_21366)
(declare-fun b_15@2 () Bool)
(declare-fun Ops_1Mask@29 () T@PolymorphicMapType_21366)
(declare-fun b_15@3 () Bool)
(declare-fun Ops_1Heap@3 () T@PolymorphicMapType_21345)
(declare-fun Used_9Heap@0 () T@PolymorphicMapType_21345)
(declare-fun b_15@4 () Bool)
(declare-fun b_1_1@61 () Bool)
(declare-fun b_1_1@62 () Bool)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_21345)
(declare-fun b_1_1@63 () Bool)
(declare-fun Mask@12 () T@PolymorphicMapType_21366)
(declare-fun Heap@11 () T@PolymorphicMapType_21345)
(declare-fun takeTransfer@7 () Real)
(declare-fun neededTransfer@13 () Real)
(declare-fun Heap@9 () T@PolymorphicMapType_21345)
(declare-fun Mask@10 () T@PolymorphicMapType_21366)
(declare-fun b_14@3 () Bool)
(declare-fun Used_9Mask@1 () T@PolymorphicMapType_21366)
(declare-fun neededTransfer@14 () Real)
(declare-fun Used_9Mask@2 () T@PolymorphicMapType_21366)
(declare-fun b_14@4 () Bool)
(declare-fun b_14@5 () Bool)
(declare-fun Mask@11 () T@PolymorphicMapType_21366)
(declare-fun Heap@10 () T@PolymorphicMapType_21345)
(declare-fun maskTransfer@7 () Real)
(declare-fun takeTransfer@6 () Real)
(declare-fun Ops_1Mask@27 () T@PolymorphicMapType_21366)
(declare-fun b_14@0 () Bool)
(declare-fun neededTransfer@12 () Real)
(declare-fun Used_9Mask@0 () T@PolymorphicMapType_21366)
(declare-fun b_14@1 () Bool)
(declare-fun b_14@2 () Bool)
(declare-fun Ops_1Mask@28 () T@PolymorphicMapType_21366)
(declare-fun maskTransfer@6 () Real)
(declare-fun b_14 () Bool)
(declare-fun b_1_1@57 () Bool)
(declare-fun b_13@0 () Bool)
(declare-fun Heap@@73 () T@PolymorphicMapType_21345)
(declare-fun b_1_1@58 () Bool)
(declare-fun b_1_1@59 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_21366)
(declare-fun b_13 () Bool)
(declare-fun Used_8Heap@0 () T@PolymorphicMapType_21345)
(declare-fun Ops_1Mask@26 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@56 () Bool)
(declare-fun b_1_1@55 () Bool)
(declare-fun b_1_1@54 () Bool)
(declare-fun b_1_1@53 () Bool)
(declare-fun a_2@0 () Int)
(declare-fun Ops_1Mask@25 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@50 () Bool)
(declare-fun Ops_1Mask@23 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@51 () Bool)
(declare-fun Ops_1Mask@24 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@52 () Bool)
(declare-fun b_1_1@46 () Bool)
(declare-fun b_11@6 () Bool)
(declare-fun neededTransfer@11 () Real)
(declare-fun Used_7Mask@3 () T@PolymorphicMapType_21366)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun b_12@0 () Bool)
(declare-fun b_12@1 () Bool)
(declare-fun Result_2Heap () T@PolymorphicMapType_21345)
(declare-fun Result_2Mask () T@PolymorphicMapType_21366)
(declare-fun b_12@2 () Bool)
(declare-fun Ops_1Mask@22 () T@PolymorphicMapType_21366)
(declare-fun b_12@3 () Bool)
(declare-fun Ops_1Heap@2 () T@PolymorphicMapType_21345)
(declare-fun Used_7Heap@0 () T@PolymorphicMapType_21345)
(declare-fun b_12@4 () Bool)
(declare-fun b_1_1@47 () Bool)
(declare-fun b_1_1@48 () Bool)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_21345)
(declare-fun b_1_1@49 () Bool)
(declare-fun Heap@8 () T@PolymorphicMapType_21345)
(declare-fun Mask@9 () T@PolymorphicMapType_21366)
(declare-fun takeTransfer@5 () Real)
(declare-fun neededTransfer@9 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_21366)
(declare-fun Heap@6 () T@PolymorphicMapType_21345)
(declare-fun b_11@3 () Bool)
(declare-fun Used_7Mask@1 () T@PolymorphicMapType_21366)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_7Mask@2 () T@PolymorphicMapType_21366)
(declare-fun b_11@4 () Bool)
(declare-fun b_11@5 () Bool)
(declare-fun Mask@8 () T@PolymorphicMapType_21366)
(declare-fun Heap@7 () T@PolymorphicMapType_21345)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun Ops_1Mask@20 () T@PolymorphicMapType_21366)
(declare-fun b_11@0 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_7Mask@0 () T@PolymorphicMapType_21366)
(declare-fun b_11@1 () Bool)
(declare-fun b_11@2 () Bool)
(declare-fun Ops_1Mask@21 () T@PolymorphicMapType_21366)
(declare-fun maskTransfer@4 () Real)
(declare-fun b_11 () Bool)
(declare-fun b_1_1@43 () Bool)
(declare-fun b_10@0 () Bool)
(declare-fun b_1_1@44 () Bool)
(declare-fun b_1_1@45 () Bool)
(declare-fun b_10 () Bool)
(declare-fun Used_6Heap@0 () T@PolymorphicMapType_21345)
(declare-fun b_1_1@40 () Bool)
(declare-fun b_9@0 () Bool)
(declare-fun b_1_1@41 () Bool)
(declare-fun b_1_1@42 () Bool)
(declare-fun b_9 () Bool)
(declare-fun Used_5Heap@0 () T@PolymorphicMapType_21345)
(declare-fun b_7@7 () Bool)
(declare-fun b_1_1@36 () Bool)
(declare-fun b_8@0 () Bool)
(declare-fun Ops_3Heap@0 () T@PolymorphicMapType_21345)
(declare-fun Ops_1Mask@19 () T@PolymorphicMapType_21366)
(declare-fun Ops_1Mask@18 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@37 () Bool)
(declare-fun b_1_1@38 () Bool)
(declare-fun b_1_1@39 () Bool)
(declare-fun Ops_3Mask@2 () T@PolymorphicMapType_21366)
(declare-fun b_7@6 () Bool)
(declare-fun b_7@5 () Bool)
(declare-fun b_8 () Bool)
(declare-fun Used_4Heap@0 () T@PolymorphicMapType_21345)
(declare-fun b_7@4 () Bool)
(declare-fun b_7@3 () Bool)
(declare-fun Ops_3Mask@1 () T@PolymorphicMapType_21366)
(declare-fun b_7@0 () Bool)
(declare-fun b_7@1 () Bool)
(declare-fun Ops_3Mask@0 () T@PolymorphicMapType_21366)
(declare-fun b_7@2 () Bool)
(declare-fun b_7 () Bool)
(declare-fun b_6@0 () Bool)
(declare-fun b_6 () Bool)
(declare-fun Used_3Heap@0 () T@PolymorphicMapType_21345)
(declare-fun Ops_1Mask@17 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@35 () Bool)
(declare-fun b_1_1@34 () Bool)
(declare-fun b_1_1@33 () Bool)
(declare-fun b_1_1@32 () Bool)
(declare-fun Ops_1Mask@16 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@29 () Bool)
(declare-fun Ops_1Mask@14 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@30 () Bool)
(declare-fun Ops_1Mask@15 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@31 () Bool)
(declare-fun b_1_1@25 () Bool)
(declare-fun b_4@6 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_2Mask@3 () T@PolymorphicMapType_21366)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_5@0 () Bool)
(declare-fun b_5@1 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_21345)
(declare-fun Result_1Mask () T@PolymorphicMapType_21366)
(declare-fun b_5@2 () Bool)
(declare-fun Ops_1Mask@13 () T@PolymorphicMapType_21366)
(declare-fun b_5@3 () Bool)
(declare-fun Ops_1Heap@1 () T@PolymorphicMapType_21345)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_21345)
(declare-fun b_5@4 () Bool)
(declare-fun b_1_1@26 () Bool)
(declare-fun b_1_1@27 () Bool)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_21345)
(declare-fun b_1_1@28 () Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_21366)
(declare-fun Heap@5 () T@PolymorphicMapType_21345)
(declare-fun takeTransfer@3 () Real)
(declare-fun neededTransfer@5 () Real)
(declare-fun Heap@3 () T@PolymorphicMapType_21345)
(declare-fun Mask@4 () T@PolymorphicMapType_21366)
(declare-fun b_4@3 () Bool)
(declare-fun Used_2Mask@1 () T@PolymorphicMapType_21366)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_2Mask@2 () T@PolymorphicMapType_21366)
(declare-fun b_4@4 () Bool)
(declare-fun b_4@5 () Bool)
(declare-fun Mask@5 () T@PolymorphicMapType_21366)
(declare-fun Heap@4 () T@PolymorphicMapType_21345)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Ops_1Mask@11 () T@PolymorphicMapType_21366)
(declare-fun b_4@0 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_2Mask@0 () T@PolymorphicMapType_21366)
(declare-fun b_4@1 () Bool)
(declare-fun b_4@2 () Bool)
(declare-fun Ops_1Mask@12 () T@PolymorphicMapType_21366)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_4 () Bool)
(declare-fun b_1_1@23 () Bool)
(declare-fun LabelfirstHeap () T@PolymorphicMapType_21345)
(declare-fun LabelfirstMask () T@PolymorphicMapType_21366)
(declare-fun b_1_1@24 () Bool)
(declare-fun Ops_1Mask@10 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@22 () Bool)
(declare-fun b_1_1@21 () Bool)
(declare-fun b_1_1@20 () Bool)
(declare-fun b_1_1@19 () Bool)
(declare-fun Ops_1Mask@9 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@16 () Bool)
(declare-fun Ops_1Mask@7 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@17 () Bool)
(declare-fun Ops_1Mask@8 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@18 () Bool)
(declare-fun b_1_1@12 () Bool)
(declare-fun b_2_1@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_21366)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_21345)
(declare-fun ResultMask@@24 () T@PolymorphicMapType_21366)
(declare-fun b_3@2 () Bool)
(declare-fun Ops_1Mask@6 () T@PolymorphicMapType_21366)
(declare-fun b_3@3 () Bool)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_21345)
(declare-fun b_3@4 () Bool)
(declare-fun b_1_1@13 () Bool)
(declare-fun b_1_1@14 () Bool)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_21345)
(declare-fun b_1_1@15 () Bool)
(declare-fun Heap@2 () T@PolymorphicMapType_21345)
(declare-fun Mask@3 () T@PolymorphicMapType_21366)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_21366)
(declare-fun Heap@0 () T@PolymorphicMapType_21345)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_21366)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_21366)
(declare-fun b_2_1@4 () Bool)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@2 () T@PolymorphicMapType_21366)
(declare-fun Heap@1 () T@PolymorphicMapType_21345)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_21366)
(declare-fun b_2_1@1 () Bool)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@5 () T@PolymorphicMapType_21366)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1@11 () Bool)
(declare-fun b_1_1@10 () Bool)
(declare-fun b_1_1@9 () Bool)
(declare-fun b_1_1@8 () Bool)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@7 () Bool)
(declare-fun b_1_1@6 () Bool)
(declare-fun b_1_1@3 () Bool)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@4 () Bool)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@5 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun b_1_1@1 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_21366)
(declare-fun b_1_1@2 () Bool)
(declare-fun y () T@Ref)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_21345)
(set-info :boogie-vc-id test0)
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
 (=> (= (ControlFlow 0 0) 250) (let ((anon159_correct  (=> (= Mask@19 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@18) freshObj@0 f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@18) freshObj@0 f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@18) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@18))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@16) x f_7) 3)) (=> (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@16) x f_7) 3) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@16) freshObj@0 f_7) 5)) (=> (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@16) freshObj@0 f_7) 5) (=> (state Heap@16 Mask@19) (=> (and (and (and (not (= x null)) (= Mask@20 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@19) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@19) x f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@19) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@19)))) (and (state Heap@16 Mask@20) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@16) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Labellhs5Heap) x f_7)))) (and (and (state Heap@16 Mask@20) (IdenticalOnKnownLocations Heap@16 ExhaleHeap@4 Mask@20)) (and (state ExhaleHeap@4 Mask@20) (state ExhaleHeap@4 Mask@20)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) first_lblGuard@0) (=> first_lblGuard@0 (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_12393_3215 LabelfirstMask@0 x f_7)) (=> (HasDirectPerm_12393_3215 LabelfirstMask@0 x f_7) (=> (= (ControlFlow 0 2) (- 0 1)) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| LabelfirstHeap@0) x f_7) 5)))))))))))))))
(let ((anon246_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 9) 2)) anon159_correct)))
(let ((anon246_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= FullPerm (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@18) freshObj@0 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@18) freshObj@0 f_7)) (=> (= (ControlFlow 0 7) 2) anon159_correct))))))
(let ((anon157_correct  (=> (= Mask@18 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@17) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@17) x f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@17) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@17))) (and (=> (= (ControlFlow 0 10) 7) anon246_Then_correct) (=> (= (ControlFlow 0 10) 9) anon246_Else_correct)))))
(let ((anon245_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 13) 10)) anon157_correct)))
(let ((anon245_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= FullPerm (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@17) x f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@17) x f_7)) (=> (= (ControlFlow 0 11) 10) anon157_correct))))))
(let ((anon155_correct  (and (=> (= (ControlFlow 0 14) (- 0 18)) (=> (and (and b_1_1@75 b_1_1@75) b_17@6) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Result_4Heap) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@0) x f_7)))) (=> (=> (and (and b_1_1@75 b_1_1@75) b_17@6) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Result_4Heap) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@0) x f_7))) (=> (and (and (= Mask@16 (PolymorphicMapType_21366 (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@15) (store (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@15) null (wand x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x) (+ (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@15) null (wand x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x)) FullPerm)) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@15) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@15))) (state Heap@14 Mask@16)) (and (state Heap@14 Mask@16) (state Heap@14 Mask@16))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (= FullPerm (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@16) x f_7))) (=> (= FullPerm (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@16) x f_7)) (=> (and (= Heap@15 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@14) (store (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@14) x f_7 3) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@14) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@14))) (state Heap@15 Mask@16)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (= FullPerm (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@16) freshObj@0 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@16) freshObj@0 f_7)) (=> (and (= Heap@16 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@15) (store (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@15) freshObj@0 f_7 5) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@15) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@15))) (state Heap@16 Mask@16)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@16) null (wand x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x)))) (=> (<= FullPerm (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@16) null (wand x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (=> (and (= Mask@17 (PolymorphicMapType_21366 (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@16) (store (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@16) null (wand x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x) (- (select (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@16) null (wand x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x)) FullPerm)) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@16) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@16))) (state Heap@16 Mask@17)) (and (=> (= (ControlFlow 0 14) 11) anon245_Then_correct) (=> (= (ControlFlow 0 14) 13) anon245_Else_correct))))))))))))))))
(let ((anon244_Else_correct  (=> (and (not b_1_1@75) (= (ControlFlow 0 23) 14)) anon155_correct)))
(let ((anon244_Then_correct  (=> b_1_1@75 (and (=> (= (ControlFlow 0 20) (- 0 22)) (HasDirectPerm_12393_3215 Result_4Mask x f_7)) (=> (HasDirectPerm_12393_3215 Result_4Mask x f_7) (and (=> (= (ControlFlow 0 20) (- 0 21)) (HasDirectPerm_12393_3215 Ops_1Mask@4 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@4 x f_7) (=> (= (ControlFlow 0 20) 14) anon155_correct))))))))
(let ((anon243_Then_correct  (=> (and (and b_1_1@75 b_1_1@75) b_17@6) (and (=> (= (ControlFlow 0 24) 20) anon244_Then_correct) (=> (= (ControlFlow 0 24) 23) anon244_Else_correct)))))
(let ((anon243_Else_correct  (=> (and (not (and (and b_1_1@75 b_1_1@75) b_17@6)) (= (ControlFlow 0 19) 14)) anon155_correct)))
(let ((anon152_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (=> (and (and b_1_1@74 b_1_1@74) b_17@6) (and (= neededTransfer@19 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_11Mask@3) x f_7) initNeededTransfer@4)))) (=> (=> (and (and b_1_1@74 b_1_1@74) b_17@6) (and (= neededTransfer@19 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_11Mask@3) x f_7) initNeededTransfer@4))) (=> (and (= b_18@0  (and b_1_1@74 b_17@6)) (= b_18@1  (and b_18@0 (state Result_4Heap Result_4Mask)))) (=> (and (and (= b_18@2  (and b_18@1 (sumMask Result_4Mask Ops_1Mask@36 Used_11Mask@3))) (= b_18@3  (and (and b_18@2 (IdenticalOnKnownLocations Ops_1Heap@4 Result_4Heap Ops_1Mask@36)) (IdenticalOnKnownLocations Used_11Heap@0 Result_4Heap Used_11Mask@3)))) (and (= b_18@4  (and b_18@3 (state Result_4Heap Result_4Mask))) (= b_1_1@75  (and b_1_1@74 b_18@4)))) (and (=> (= (ControlFlow 0 25) 24) anon243_Then_correct) (=> (= (ControlFlow 0 25) 19) anon243_Else_correct))))))))
(let ((anon242_Else_correct  (=> (>= 0.0 takeTransfer@9) (=> (and (= neededTransfer@19 neededTransfer@17) (= Mask@15 Mask@13)) (=> (and (and (= Heap@14 Heap@12) (= b_17@6 b_17@3)) (and (= Used_11Mask@3 Used_11Mask@1) (= (ControlFlow 0 29) 25))) anon152_correct)))))
(let ((anon242_Then_correct  (=> (> takeTransfer@9 0.0) (=> (and (and (= neededTransfer@18 (- neededTransfer@17 takeTransfer@9)) (= Used_11Mask@2 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_11Mask@1) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_11Mask@1) x f_7) takeTransfer@9)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Used_11Mask@1) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Used_11Mask@1)))) (and (= b_17@4  (and b_17@3 (state Used_11Heap@0 Used_11Mask@2))) (= b_17@5  (and b_17@4 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@12) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_11Heap@0) x f_7)))))) (=> (and (and (and (= Mask@14 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@13) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@13) x f_7) takeTransfer@9)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@13) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@13))) (= Heap@13 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@12) (store (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x) (PolymorphicMapType_21894 (store (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) x f_7 true) (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@12) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))))) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@12) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@12)))) (and (= neededTransfer@19 neededTransfer@18) (= Mask@15 Mask@14))) (and (and (= Heap@14 Heap@13) (= b_17@6 b_17@5)) (and (= Used_11Mask@3 Used_11Mask@2) (= (ControlFlow 0 28) 25)))) anon152_correct)))))
(let ((anon241_Else_correct  (=> (and (< maskTransfer@9 neededTransfer@17) (= takeTransfer@9 maskTransfer@9)) (and (=> (= (ControlFlow 0 31) 28) anon242_Then_correct) (=> (= (ControlFlow 0 31) 29) anon242_Else_correct)))))
(let ((anon241_Then_correct  (=> (and (<= neededTransfer@17 maskTransfer@9) (= takeTransfer@9 neededTransfer@17)) (and (=> (= (ControlFlow 0 30) 28) anon242_Then_correct) (=> (= (ControlFlow 0 30) 29) anon242_Else_correct)))))
(let ((anon240_Then_correct  (=> (and (and (and (and (and b_1_1@74 b_1_1@74) b_17@3) true) (> neededTransfer@17 0.0)) (= maskTransfer@9 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@13) x f_7))) (and (=> (= (ControlFlow 0 32) 30) anon241_Then_correct) (=> (= (ControlFlow 0 32) 31) anon241_Else_correct)))))
(let ((anon240_Else_correct  (=> (not (and (and (and (and b_1_1@74 b_1_1@74) b_17@3) true) (> neededTransfer@17 0.0))) (=> (and (= neededTransfer@19 neededTransfer@17) (= Mask@15 Mask@13)) (=> (and (and (= Heap@14 Heap@12) (= b_17@6 b_17@3)) (and (= Used_11Mask@3 Used_11Mask@1) (= (ControlFlow 0 27) 25))) anon152_correct)))))
(let ((anon239_Else_correct  (=> (>= 0.0 takeTransfer@8) (=> (and (and (= Ops_1Mask@36 Ops_1Mask@34) (= Used_11Mask@1 ZeroMask)) (and (= b_17@3 b_17@0) (= neededTransfer@17 FullPerm))) (and (=> (= (ControlFlow 0 35) 32) anon240_Then_correct) (=> (= (ControlFlow 0 35) 27) anon240_Else_correct))))))
(let ((anon239_Then_correct  (=> (and (> takeTransfer@8 0.0) (= neededTransfer@16 (- FullPerm takeTransfer@8))) (=> (and (and (and (= Used_11Mask@0 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) takeTransfer@8)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask))) (= b_17@1  (and b_17@0 (state Used_11Heap@0 Used_11Mask@0)))) (and (= b_17@2  (and b_17@1 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@4) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_11Heap@0) x f_7)))) (= Ops_1Mask@35 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@34) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@34) x f_7) takeTransfer@8)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@34) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@34))))) (and (and (= Ops_1Mask@36 Ops_1Mask@35) (= Used_11Mask@1 Used_11Mask@0)) (and (= b_17@3 b_17@2) (= neededTransfer@17 neededTransfer@16)))) (and (=> (= (ControlFlow 0 34) 32) anon240_Then_correct) (=> (= (ControlFlow 0 34) 27) anon240_Else_correct))))))
(let ((anon238_Else_correct  (=> (and (< maskTransfer@8 FullPerm) (= takeTransfer@8 maskTransfer@8)) (and (=> (= (ControlFlow 0 37) 34) anon239_Then_correct) (=> (= (ControlFlow 0 37) 35) anon239_Else_correct)))))
(let ((anon238_Then_correct  (=> (and (<= FullPerm maskTransfer@8) (= takeTransfer@8 FullPerm)) (and (=> (= (ControlFlow 0 36) 34) anon239_Then_correct) (=> (= (ControlFlow 0 36) 35) anon239_Else_correct)))))
(let ((anon237_Then_correct  (=> (and (and (and (and (and b_1_1@74 b_1_1@74) b_17@0) true) (> FullPerm 0.0)) (= maskTransfer@8 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@34) x f_7))) (and (=> (= (ControlFlow 0 38) 36) anon238_Then_correct) (=> (= (ControlFlow 0 38) 37) anon238_Else_correct)))))
(let ((anon237_Else_correct  (=> (not (and (and (and (and b_1_1@74 b_1_1@74) b_17@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@36 Ops_1Mask@34) (= Used_11Mask@1 ZeroMask)) (and (= b_17@3 b_17@0) (= neededTransfer@17 FullPerm))) (and (=> (= (ControlFlow 0 33) 32) anon240_Then_correct) (=> (= (ControlFlow 0 33) 27) anon240_Else_correct))))))
(let ((anon140_correct  (=> (and (= b_17@0  (and b_17 (state Used_11Heap@0 ZeroMask))) (= initNeededTransfer@4 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) FullPerm))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 39) 38) anon237_Then_correct) (=> (= (ControlFlow 0 39) 33) anon237_Else_correct)))))))
(let ((anon139_correct  (and (=> (= (ControlFlow 0 42) (- 0 43)) (=> (and b_1_1@71 b_16@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| LabelfirstHeap@0) x f_7) 5))) (=> (=> (and b_1_1@71 b_16@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| LabelfirstHeap@0) x f_7) 5)) (=> (and (and (= b_1_1@72  (and b_1_1@71 b_16@0)) (= b_1_1@73  (and b_1_1@72 (state Ops_1Heap@4 Ops_1Mask@34)))) (and (= b_1_1@74 b_1_1@73) (= (ControlFlow 0 42) 39))) anon140_correct)))))
(let ((anon236_Else_correct  (=> (and (not b_1_1@71) (= (ControlFlow 0 48) 42)) anon139_correct)))
(let ((anon236_Then_correct  (=> b_1_1@71 (and (=> (= (ControlFlow 0 45) (- 0 47)) first_lblGuard@0) (=> first_lblGuard@0 (and (=> (= (ControlFlow 0 45) (- 0 46)) (HasDirectPerm_12393_3215 LabelfirstMask@0 x f_7)) (=> (HasDirectPerm_12393_3215 LabelfirstMask@0 x f_7) (=> (= (ControlFlow 0 45) 42) anon139_correct))))))))
(let ((anon235_Then_correct  (=> (and b_1_1@71 b_16@0) (and (=> (= (ControlFlow 0 49) 45) anon236_Then_correct) (=> (= (ControlFlow 0 49) 48) anon236_Else_correct)))))
(let ((anon235_Else_correct  (=> (and (not (and b_1_1@71 b_16@0)) (= (ControlFlow 0 44) 42)) anon139_correct)))
(let ((anon234_Then_correct  (=> (and b_1_1@71 (= b_16@0  (and b_16 (state Used_10Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 50) 49) anon235_Then_correct) (=> (= (ControlFlow 0 50) 44) anon235_Else_correct)))))
(let ((anon234_Else_correct  (=> (not b_1_1@71) (=> (and (= b_1_1@74 b_1_1@71) (= (ControlFlow 0 41) 39)) anon140_correct))))
(let ((anon134_correct  (=> (and (and (state Ops_1Heap@4 Ops_1Mask@33) (= b_1_1@70  (and b_1_1@69 (state Ops_1Heap@4 Ops_1Mask@33)))) (and (= b_1_1@71 b_1_1@70) (= Ops_1Mask@34 Ops_1Mask@33))) (and (=> (= (ControlFlow 0 52) 50) anon234_Then_correct) (=> (= (ControlFlow 0 52) 41) anon234_Else_correct)))))
(let ((anon133_correct  (=> (and (and (= b_1_1@68  (and b_1_1@67 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@4) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@0) x f_7)))) (= b_1_1@69 b_1_1@68)) (and (= Ops_1Mask@33 Ops_1Mask@32) (= (ControlFlow 0 55) 52))) anon134_correct)))
(let ((anon233_Else_correct  (=> (and (not b_1_1@67) (= (ControlFlow 0 59) 55)) anon133_correct)))
(let ((anon233_Then_correct  (=> b_1_1@67 (and (=> (= (ControlFlow 0 56) (- 0 58)) (HasDirectPerm_12393_3215 Ops_1Mask@32 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@32 x f_7) (and (=> (= (ControlFlow 0 56) (- 0 57)) (HasDirectPerm_12393_3215 Ops_1Mask@4 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@4 x f_7) (=> (= (ControlFlow 0 56) 55) anon133_correct))))))))
(let ((anon232_Then_correct  (=> b_1_1@67 (and (=> (= (ControlFlow 0 60) 56) anon233_Then_correct) (=> (= (ControlFlow 0 60) 59) anon233_Else_correct)))))
(let ((anon232_Else_correct  (=> (and (and (not b_1_1@67) (= b_1_1@69 b_1_1@67)) (and (= Ops_1Mask@33 Ops_1Mask@32) (= (ControlFlow 0 54) 52))) anon134_correct)))
(let ((anon231_Else_correct  (=> (not b_1_1@64) (=> (and (= Ops_1Mask@32 Ops_1Mask@30) (= b_1_1@67 b_1_1@64)) (and (=> (= (ControlFlow 0 62) 60) anon232_Then_correct) (=> (= (ControlFlow 0 62) 54) anon232_Else_correct))))))
(let ((anon231_Then_correct  (=> (and b_1_1@64 (= b_1_1@65  (and b_1_1@64 (not (= x null))))) (=> (and (and (= Ops_1Mask@31 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@30) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@30) x f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@30) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@30))) (= b_1_1@66  (and b_1_1@65 (state Ops_1Heap@4 Ops_1Mask@31)))) (and (= Ops_1Mask@32 Ops_1Mask@31) (= b_1_1@67 b_1_1@66))) (and (=> (= (ControlFlow 0 61) 60) anon232_Then_correct) (=> (= (ControlFlow 0 61) 54) anon232_Else_correct))))))
(let ((anon230_Then_correct  (=> b_1_1@64 (and (=> (= (ControlFlow 0 63) 61) anon231_Then_correct) (=> (= (ControlFlow 0 63) 62) anon231_Else_correct)))))
(let ((anon230_Else_correct  (=> (and (and (not b_1_1@64) (= b_1_1@69 b_1_1@64)) (and (= Ops_1Mask@33 Ops_1Mask@30) (= (ControlFlow 0 53) 52))) anon134_correct)))
(let ((anon229_Then_correct  (=> b_1_1@64 (and (=> (= (ControlFlow 0 64) 63) anon230_Then_correct) (=> (= (ControlFlow 0 64) 53) anon230_Else_correct)))))
(let ((anon229_Else_correct  (=> (not b_1_1@64) (=> (and (= b_1_1@71 b_1_1@64) (= Ops_1Mask@34 Ops_1Mask@30)) (and (=> (= (ControlFlow 0 51) 50) anon234_Then_correct) (=> (= (ControlFlow 0 51) 41) anon234_Else_correct))))))
(let ((anon125_correct  (and (=> (= (ControlFlow 0 66) (- 0 67)) (=> (and b_1_1@60 b_14@6) (and (= neededTransfer@15 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_9Mask@3) x f_7) initNeededTransfer@3)))) (=> (=> (and b_1_1@60 b_14@6) (and (= neededTransfer@15 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_9Mask@3) x f_7) initNeededTransfer@3))) (=> (and (= b_15@0  (and b_1_1@60 b_14@6)) (= b_15@1  (and b_15@0 (state Result_3Heap Result_3Mask)))) (=> (and (and (= b_15@2  (and b_15@1 (sumMask Result_3Mask Ops_1Mask@29 Used_9Mask@3))) (= b_15@3  (and (and b_15@2 (IdenticalOnKnownLocations Ops_1Heap@3 Result_3Heap Ops_1Mask@29)) (IdenticalOnKnownLocations Used_9Heap@0 Result_3Heap Used_9Mask@3)))) (and (= b_15@4  (and b_15@3 (state Result_3Heap Result_3Mask))) (= b_1_1@61  (and b_1_1@60 b_15@4)))) (=> (and (and (and (= b_1_1@62  (and b_1_1@61 b_14@6)) (IdenticalOnKnownLocations Ops_1Heap@3 ExhaleHeap@3 Ops_1Mask@29)) (and (= b_1_1@63  (and b_1_1@62 (state ExhaleHeap@3 Ops_1Mask@29))) (= b_1_1@64 b_1_1@63))) (and (and (= Mask@13 Mask@12) (= Ops_1Heap@4 ExhaleHeap@3)) (and (= Heap@12 Heap@11) (= Ops_1Mask@30 Ops_1Mask@29)))) (and (=> (= (ControlFlow 0 66) 64) anon229_Then_correct) (=> (= (ControlFlow 0 66) 51) anon229_Else_correct)))))))))
(let ((anon228_Else_correct  (=> (>= 0.0 takeTransfer@7) (=> (and (= neededTransfer@15 neededTransfer@13) (= Heap@11 Heap@9)) (=> (and (and (= Mask@12 Mask@10) (= b_14@6 b_14@3)) (and (= Used_9Mask@3 Used_9Mask@1) (= (ControlFlow 0 70) 66))) anon125_correct)))))
(let ((anon228_Then_correct  (=> (> takeTransfer@7 0.0) (=> (and (and (= neededTransfer@14 (- neededTransfer@13 takeTransfer@7)) (= Used_9Mask@2 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_9Mask@1) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_9Mask@1) x f_7) takeTransfer@7)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Used_9Mask@1) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Used_9Mask@1)))) (and (= b_14@4  (and b_14@3 (state Used_9Heap@0 Used_9Mask@2))) (= b_14@5  (and b_14@4 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@9) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_9Heap@0) x f_7)))))) (=> (and (and (and (= Mask@11 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@10) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@10) x f_7) takeTransfer@7)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@10) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@10))) (= Heap@10 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@9) (store (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x) (PolymorphicMapType_21894 (store (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) x f_7 true) (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@9) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))))) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@9) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@9)))) (and (= neededTransfer@15 neededTransfer@14) (= Heap@11 Heap@10))) (and (and (= Mask@12 Mask@11) (= b_14@6 b_14@5)) (and (= Used_9Mask@3 Used_9Mask@2) (= (ControlFlow 0 69) 66)))) anon125_correct)))))
(let ((anon227_Else_correct  (=> (and (< maskTransfer@7 neededTransfer@13) (= takeTransfer@7 maskTransfer@7)) (and (=> (= (ControlFlow 0 72) 69) anon228_Then_correct) (=> (= (ControlFlow 0 72) 70) anon228_Else_correct)))))
(let ((anon227_Then_correct  (=> (and (<= neededTransfer@13 maskTransfer@7) (= takeTransfer@7 neededTransfer@13)) (and (=> (= (ControlFlow 0 71) 69) anon228_Then_correct) (=> (= (ControlFlow 0 71) 70) anon228_Else_correct)))))
(let ((anon226_Then_correct  (=> (and (and (and (and b_1_1@60 b_14@3) true) (> neededTransfer@13 0.0)) (= maskTransfer@7 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@10) x f_7))) (and (=> (= (ControlFlow 0 73) 71) anon227_Then_correct) (=> (= (ControlFlow 0 73) 72) anon227_Else_correct)))))
(let ((anon226_Else_correct  (=> (not (and (and (and b_1_1@60 b_14@3) true) (> neededTransfer@13 0.0))) (=> (and (= neededTransfer@15 neededTransfer@13) (= Heap@11 Heap@9)) (=> (and (and (= Mask@12 Mask@10) (= b_14@6 b_14@3)) (and (= Used_9Mask@3 Used_9Mask@1) (= (ControlFlow 0 68) 66))) anon125_correct)))))
(let ((anon225_Else_correct  (=> (>= 0.0 takeTransfer@6) (=> (and (and (= Ops_1Mask@29 Ops_1Mask@27) (= Used_9Mask@1 ZeroMask)) (and (= b_14@3 b_14@0) (= neededTransfer@13 FullPerm))) (and (=> (= (ControlFlow 0 76) 73) anon226_Then_correct) (=> (= (ControlFlow 0 76) 68) anon226_Else_correct))))))
(let ((anon225_Then_correct  (=> (and (> takeTransfer@6 0.0) (= neededTransfer@12 (- FullPerm takeTransfer@6))) (=> (and (and (and (= Used_9Mask@0 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) takeTransfer@6)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask))) (= b_14@1  (and b_14@0 (state Used_9Heap@0 Used_9Mask@0)))) (and (= b_14@2  (and b_14@1 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@3) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_9Heap@0) x f_7)))) (= Ops_1Mask@28 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@27) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@27) x f_7) takeTransfer@6)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@27) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@27))))) (and (and (= Ops_1Mask@29 Ops_1Mask@28) (= Used_9Mask@1 Used_9Mask@0)) (and (= b_14@3 b_14@2) (= neededTransfer@13 neededTransfer@12)))) (and (=> (= (ControlFlow 0 75) 73) anon226_Then_correct) (=> (= (ControlFlow 0 75) 68) anon226_Else_correct))))))
(let ((anon224_Else_correct  (=> (and (< maskTransfer@6 FullPerm) (= takeTransfer@6 maskTransfer@6)) (and (=> (= (ControlFlow 0 78) 75) anon225_Then_correct) (=> (= (ControlFlow 0 78) 76) anon225_Else_correct)))))
(let ((anon224_Then_correct  (=> (and (<= FullPerm maskTransfer@6) (= takeTransfer@6 FullPerm)) (and (=> (= (ControlFlow 0 77) 75) anon225_Then_correct) (=> (= (ControlFlow 0 77) 76) anon225_Else_correct)))))
(let ((anon223_Then_correct  (=> (and (and (and (and b_1_1@60 b_14@0) true) (> FullPerm 0.0)) (= maskTransfer@6 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@27) x f_7))) (and (=> (= (ControlFlow 0 79) 77) anon224_Then_correct) (=> (= (ControlFlow 0 79) 78) anon224_Else_correct)))))
(let ((anon223_Else_correct  (=> (not (and (and (and b_1_1@60 b_14@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@29 Ops_1Mask@27) (= Used_9Mask@1 ZeroMask)) (and (= b_14@3 b_14@0) (= neededTransfer@13 FullPerm))) (and (=> (= (ControlFlow 0 74) 73) anon226_Then_correct) (=> (= (ControlFlow 0 74) 68) anon226_Else_correct))))))
(let ((anon222_Then_correct  (=> b_1_1@60 (=> (and (= b_14@0  (and b_14 (state Used_9Heap@0 ZeroMask))) (= initNeededTransfer@3 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) FullPerm))) (and (=> (= (ControlFlow 0 80) (- 0 81)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 80) 79) anon223_Then_correct) (=> (= (ControlFlow 0 80) 74) anon223_Else_correct))))))))
(let ((anon222_Else_correct  (=> (and (not b_1_1@60) (= b_1_1@64 b_1_1@60)) (=> (and (and (= Mask@13 Mask@10) (= Ops_1Heap@4 Ops_1Heap@3)) (and (= Heap@12 Heap@9) (= Ops_1Mask@30 Ops_1Mask@27))) (and (=> (= (ControlFlow 0 65) 64) anon229_Then_correct) (=> (= (ControlFlow 0 65) 51) anon229_Else_correct))))))
(let ((anon111_correct  (and (=> (= (ControlFlow 0 83) (- 0 84)) (=> (and b_1_1@57 b_13@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@3) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@73) x f_7)))) (=> (=> (and b_1_1@57 b_13@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@3) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@73) x f_7))) (=> (= b_1_1@58  (and b_1_1@57 b_13@0)) (=> (and (= b_1_1@59  (and b_1_1@58 (state Ops_1Heap@3 Ops_1Mask@27))) (= b_1_1@60 b_1_1@59)) (and (=> (= (ControlFlow 0 83) 80) anon222_Then_correct) (=> (= (ControlFlow 0 83) 65) anon222_Else_correct))))))))
(let ((anon221_Else_correct  (=> (and (not b_1_1@57) (= (ControlFlow 0 89) 83)) anon111_correct)))
(let ((anon221_Then_correct  (=> b_1_1@57 (and (=> (= (ControlFlow 0 86) (- 0 88)) (HasDirectPerm_12393_3215 Ops_1Mask@27 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@27 x f_7) (and (=> (= (ControlFlow 0 86) (- 0 87)) (HasDirectPerm_12393_3215 Mask@0 x f_7)) (=> (HasDirectPerm_12393_3215 Mask@0 x f_7) (=> (= (ControlFlow 0 86) 83) anon111_correct))))))))
(let ((anon220_Then_correct  (=> (and b_1_1@57 b_13@0) (and (=> (= (ControlFlow 0 90) 86) anon221_Then_correct) (=> (= (ControlFlow 0 90) 89) anon221_Else_correct)))))
(let ((anon220_Else_correct  (=> (and (not (and b_1_1@57 b_13@0)) (= (ControlFlow 0 85) 83)) anon111_correct)))
(let ((anon219_Then_correct  (=> (and b_1_1@57 (= b_13@0  (and b_13 (state Used_8Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 91) 90) anon220_Then_correct) (=> (= (ControlFlow 0 91) 85) anon220_Else_correct)))))
(let ((anon219_Else_correct  (=> (and (not b_1_1@57) (= b_1_1@60 b_1_1@57)) (and (=> (= (ControlFlow 0 82) 80) anon222_Then_correct) (=> (= (ControlFlow 0 82) 65) anon222_Else_correct)))))
(let ((anon106_correct  (=> (and (and (state Ops_1Heap@3 Ops_1Mask@26) (= b_1_1@56  (and b_1_1@55 (state Ops_1Heap@3 Ops_1Mask@26)))) (and (= b_1_1@57 b_1_1@56) (= Ops_1Mask@27 Ops_1Mask@26))) (and (=> (= (ControlFlow 0 93) 91) anon219_Then_correct) (=> (= (ControlFlow 0 93) 82) anon219_Else_correct)))))
(let ((anon105_correct  (=> (and (and (= b_1_1@54  (and b_1_1@53 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@3) x f_7) a_2@0))) (= b_1_1@55 b_1_1@54)) (and (= Ops_1Mask@26 Ops_1Mask@25) (= (ControlFlow 0 96) 93))) anon106_correct)))
(let ((anon218_Else_correct  (=> (and (not b_1_1@53) (= (ControlFlow 0 99) 96)) anon105_correct)))
(let ((anon218_Then_correct  (=> b_1_1@53 (and (=> (= (ControlFlow 0 97) (- 0 98)) (HasDirectPerm_12393_3215 Ops_1Mask@25 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@25 x f_7) (=> (= (ControlFlow 0 97) 96) anon105_correct))))))
(let ((anon217_Then_correct  (=> b_1_1@53 (and (=> (= (ControlFlow 0 100) 97) anon218_Then_correct) (=> (= (ControlFlow 0 100) 99) anon218_Else_correct)))))
(let ((anon217_Else_correct  (=> (and (and (not b_1_1@53) (= b_1_1@55 b_1_1@53)) (and (= Ops_1Mask@26 Ops_1Mask@25) (= (ControlFlow 0 95) 93))) anon106_correct)))
(let ((anon216_Else_correct  (=> (not b_1_1@50) (=> (and (= Ops_1Mask@25 Ops_1Mask@23) (= b_1_1@53 b_1_1@50)) (and (=> (= (ControlFlow 0 102) 100) anon217_Then_correct) (=> (= (ControlFlow 0 102) 95) anon217_Else_correct))))))
(let ((anon216_Then_correct  (=> (and b_1_1@50 (= b_1_1@51  (and b_1_1@50 (not (= x null))))) (=> (and (and (= Ops_1Mask@24 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@23) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@23) x f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@23) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@23))) (= b_1_1@52  (and b_1_1@51 (state Ops_1Heap@3 Ops_1Mask@24)))) (and (= Ops_1Mask@25 Ops_1Mask@24) (= b_1_1@53 b_1_1@52))) (and (=> (= (ControlFlow 0 101) 100) anon217_Then_correct) (=> (= (ControlFlow 0 101) 95) anon217_Else_correct))))))
(let ((anon215_Then_correct  (=> b_1_1@50 (and (=> (= (ControlFlow 0 103) 101) anon216_Then_correct) (=> (= (ControlFlow 0 103) 102) anon216_Else_correct)))))
(let ((anon215_Else_correct  (=> (and (and (not b_1_1@50) (= b_1_1@55 b_1_1@50)) (and (= Ops_1Mask@26 Ops_1Mask@23) (= (ControlFlow 0 94) 93))) anon106_correct)))
(let ((anon214_Then_correct  (=> b_1_1@50 (and (=> (= (ControlFlow 0 104) 103) anon215_Then_correct) (=> (= (ControlFlow 0 104) 94) anon215_Else_correct)))))
(let ((anon214_Else_correct  (=> (not b_1_1@50) (=> (and (= b_1_1@57 b_1_1@50) (= Ops_1Mask@27 Ops_1Mask@23)) (and (=> (= (ControlFlow 0 92) 91) anon219_Then_correct) (=> (= (ControlFlow 0 92) 82) anon219_Else_correct))))))
(let ((anon97_correct  (and (=> (= (ControlFlow 0 106) (- 0 107)) (=> (and b_1_1@46 b_11@6) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_7Mask@3) x f_7) initNeededTransfer@2)))) (=> (=> (and b_1_1@46 b_11@6) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_7Mask@3) x f_7) initNeededTransfer@2))) (=> (and (= b_12@0  (and b_1_1@46 b_11@6)) (= b_12@1  (and b_12@0 (state Result_2Heap Result_2Mask)))) (=> (and (and (= b_12@2  (and b_12@1 (sumMask Result_2Mask Ops_1Mask@22 Used_7Mask@3))) (= b_12@3  (and (and b_12@2 (IdenticalOnKnownLocations Ops_1Heap@2 Result_2Heap Ops_1Mask@22)) (IdenticalOnKnownLocations Used_7Heap@0 Result_2Heap Used_7Mask@3)))) (and (= b_12@4  (and b_12@3 (state Result_2Heap Result_2Mask))) (= b_1_1@47  (and b_1_1@46 b_12@4)))) (=> (and (and (and (= b_1_1@48  (and b_1_1@47 b_11@6)) (IdenticalOnKnownLocations Ops_1Heap@2 ExhaleHeap@2 Ops_1Mask@22)) (and (= b_1_1@49  (and b_1_1@48 (state ExhaleHeap@2 Ops_1Mask@22))) (= b_1_1@50 b_1_1@49))) (and (and (= Heap@9 Heap@8) (= Ops_1Heap@3 ExhaleHeap@2)) (and (= Mask@10 Mask@9) (= Ops_1Mask@23 Ops_1Mask@22)))) (and (=> (= (ControlFlow 0 106) 104) anon214_Then_correct) (=> (= (ControlFlow 0 106) 92) anon214_Else_correct)))))))))
(let ((anon213_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= neededTransfer@11 neededTransfer@9) (= Mask@9 Mask@7)) (=> (and (and (= Heap@8 Heap@6) (= b_11@6 b_11@3)) (and (= Used_7Mask@3 Used_7Mask@1) (= (ControlFlow 0 110) 106))) anon97_correct)))))
(let ((anon213_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (and (= neededTransfer@10 (- neededTransfer@9 takeTransfer@5)) (= Used_7Mask@2 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_7Mask@1) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_7Mask@1) x f_7) takeTransfer@5)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Used_7Mask@1) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Used_7Mask@1)))) (and (= b_11@4  (and b_11@3 (state Used_7Heap@0 Used_7Mask@2))) (= b_11@5  (and b_11@4 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@6) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_7Heap@0) x f_7)))))) (=> (and (and (and (= Mask@8 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@7) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@7) x f_7) takeTransfer@5)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@7) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@7))) (= Heap@7 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@6) (store (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x) (PolymorphicMapType_21894 (store (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) x f_7 true) (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@6) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))))) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@6) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@6)))) (and (= neededTransfer@11 neededTransfer@10) (= Mask@9 Mask@8))) (and (and (= Heap@8 Heap@7) (= b_11@6 b_11@5)) (and (= Used_7Mask@3 Used_7Mask@2) (= (ControlFlow 0 109) 106)))) anon97_correct)))))
(let ((anon212_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@9) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 112) 109) anon213_Then_correct) (=> (= (ControlFlow 0 112) 110) anon213_Else_correct)))))
(let ((anon212_Then_correct  (=> (and (<= neededTransfer@9 maskTransfer@5) (= takeTransfer@5 neededTransfer@9)) (and (=> (= (ControlFlow 0 111) 109) anon213_Then_correct) (=> (= (ControlFlow 0 111) 110) anon213_Else_correct)))))
(let ((anon211_Then_correct  (=> (and (and (and (and b_1_1@46 b_11@3) true) (> neededTransfer@9 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@7) x f_7))) (and (=> (= (ControlFlow 0 113) 111) anon212_Then_correct) (=> (= (ControlFlow 0 113) 112) anon212_Else_correct)))))
(let ((anon211_Else_correct  (=> (not (and (and (and b_1_1@46 b_11@3) true) (> neededTransfer@9 0.0))) (=> (and (= neededTransfer@11 neededTransfer@9) (= Mask@9 Mask@7)) (=> (and (and (= Heap@8 Heap@6) (= b_11@6 b_11@3)) (and (= Used_7Mask@3 Used_7Mask@1) (= (ControlFlow 0 108) 106))) anon97_correct)))))
(let ((anon210_Else_correct  (=> (>= 0.0 takeTransfer@4) (=> (and (and (= Ops_1Mask@22 Ops_1Mask@20) (= Used_7Mask@1 ZeroMask)) (and (= b_11@3 b_11@0) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 116) 113) anon211_Then_correct) (=> (= (ControlFlow 0 116) 108) anon211_Else_correct))))))
(let ((anon210_Then_correct  (=> (and (> takeTransfer@4 0.0) (= neededTransfer@8 (- FullPerm takeTransfer@4))) (=> (and (and (and (= Used_7Mask@0 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) takeTransfer@4)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask))) (= b_11@1  (and b_11@0 (state Used_7Heap@0 Used_7Mask@0)))) (and (= b_11@2  (and b_11@1 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@2) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_7Heap@0) x f_7)))) (= Ops_1Mask@21 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@20) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@20) x f_7) takeTransfer@4)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@20) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@20))))) (and (and (= Ops_1Mask@22 Ops_1Mask@21) (= Used_7Mask@1 Used_7Mask@0)) (and (= b_11@3 b_11@2) (= neededTransfer@9 neededTransfer@8)))) (and (=> (= (ControlFlow 0 115) 113) anon211_Then_correct) (=> (= (ControlFlow 0 115) 108) anon211_Else_correct))))))
(let ((anon209_Else_correct  (=> (and (< maskTransfer@4 FullPerm) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 118) 115) anon210_Then_correct) (=> (= (ControlFlow 0 118) 116) anon210_Else_correct)))))
(let ((anon209_Then_correct  (=> (and (<= FullPerm maskTransfer@4) (= takeTransfer@4 FullPerm)) (and (=> (= (ControlFlow 0 117) 115) anon210_Then_correct) (=> (= (ControlFlow 0 117) 116) anon210_Else_correct)))))
(let ((anon208_Then_correct  (=> (and (and (and (and b_1_1@46 b_11@0) true) (> FullPerm 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@20) x f_7))) (and (=> (= (ControlFlow 0 119) 117) anon209_Then_correct) (=> (= (ControlFlow 0 119) 118) anon209_Else_correct)))))
(let ((anon208_Else_correct  (=> (not (and (and (and b_1_1@46 b_11@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@22 Ops_1Mask@20) (= Used_7Mask@1 ZeroMask)) (and (= b_11@3 b_11@0) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 114) 113) anon211_Then_correct) (=> (= (ControlFlow 0 114) 108) anon211_Else_correct))))))
(let ((anon207_Then_correct  (=> b_1_1@46 (=> (and (= b_11@0  (and b_11 (state Used_7Heap@0 ZeroMask))) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) FullPerm))) (and (=> (= (ControlFlow 0 120) (- 0 121)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 120) 119) anon208_Then_correct) (=> (= (ControlFlow 0 120) 114) anon208_Else_correct))))))))
(let ((anon207_Else_correct  (=> (and (not b_1_1@46) (= b_1_1@50 b_1_1@46)) (=> (and (and (= Heap@9 Heap@6) (= Ops_1Heap@3 Ops_1Heap@2)) (and (= Mask@10 Mask@7) (= Ops_1Mask@23 Ops_1Mask@20))) (and (=> (= (ControlFlow 0 105) 104) anon214_Then_correct) (=> (= (ControlFlow 0 105) 92) anon214_Else_correct))))))
(let ((anon83_correct  (and (=> (= (ControlFlow 0 123) (- 0 124)) (=> (and b_1_1@43 b_10@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@2) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| LabelfirstHeap@0) x f_7)))) (=> (=> (and b_1_1@43 b_10@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@2) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| LabelfirstHeap@0) x f_7))) (=> (= b_1_1@44  (and b_1_1@43 b_10@0)) (=> (and (= b_1_1@45  (and b_1_1@44 (state Ops_1Heap@2 Ops_1Mask@20))) (= b_1_1@46 b_1_1@45)) (and (=> (= (ControlFlow 0 123) 120) anon207_Then_correct) (=> (= (ControlFlow 0 123) 105) anon207_Else_correct))))))))
(let ((anon206_Else_correct  (=> (and (not b_1_1@43) (= (ControlFlow 0 130) 123)) anon83_correct)))
(let ((anon206_Then_correct  (=> b_1_1@43 (and (=> (= (ControlFlow 0 126) (- 0 129)) (HasDirectPerm_12393_3215 Ops_1Mask@20 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@20 x f_7) (and (=> (= (ControlFlow 0 126) (- 0 128)) first_lblGuard@0) (=> first_lblGuard@0 (and (=> (= (ControlFlow 0 126) (- 0 127)) (HasDirectPerm_12393_3215 LabelfirstMask@0 x f_7)) (=> (HasDirectPerm_12393_3215 LabelfirstMask@0 x f_7) (=> (= (ControlFlow 0 126) 123) anon83_correct))))))))))
(let ((anon205_Then_correct  (=> (and b_1_1@43 b_10@0) (and (=> (= (ControlFlow 0 131) 126) anon206_Then_correct) (=> (= (ControlFlow 0 131) 130) anon206_Else_correct)))))
(let ((anon205_Else_correct  (=> (and (not (and b_1_1@43 b_10@0)) (= (ControlFlow 0 125) 123)) anon83_correct)))
(let ((anon204_Then_correct  (=> (and b_1_1@43 (= b_10@0  (and b_10 (state Used_6Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 132) 131) anon205_Then_correct) (=> (= (ControlFlow 0 132) 125) anon205_Else_correct)))))
(let ((anon204_Else_correct  (=> (and (not b_1_1@43) (= b_1_1@46 b_1_1@43)) (and (=> (= (ControlFlow 0 122) 120) anon207_Then_correct) (=> (= (ControlFlow 0 122) 105) anon207_Else_correct)))))
(let ((anon78_correct  (and (=> (= (ControlFlow 0 134) (- 0 135)) (=> (and b_1_1@40 b_9@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@0) x f_7) 3))) (=> (=> (and b_1_1@40 b_9@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@0) x f_7) 3)) (=> (= b_1_1@41  (and b_1_1@40 b_9@0)) (=> (and (= b_1_1@42  (and b_1_1@41 (state Ops_1Heap@2 Ops_1Mask@20))) (= b_1_1@43 b_1_1@42)) (and (=> (= (ControlFlow 0 134) 132) anon204_Then_correct) (=> (= (ControlFlow 0 134) 122) anon204_Else_correct))))))))
(let ((anon203_Else_correct  (=> (and (not b_1_1@40) (= (ControlFlow 0 139) 134)) anon78_correct)))
(let ((anon203_Then_correct  (=> b_1_1@40 (and (=> (= (ControlFlow 0 137) (- 0 138)) (HasDirectPerm_12393_3215 Ops_1Mask@4 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@4 x f_7) (=> (= (ControlFlow 0 137) 134) anon78_correct))))))
(let ((anon202_Then_correct  (=> (and b_1_1@40 b_9@0) (and (=> (= (ControlFlow 0 140) 137) anon203_Then_correct) (=> (= (ControlFlow 0 140) 139) anon203_Else_correct)))))
(let ((anon202_Else_correct  (=> (and (not (and b_1_1@40 b_9@0)) (= (ControlFlow 0 136) 134)) anon78_correct)))
(let ((anon201_Then_correct  (=> (and b_1_1@40 (= b_9@0  (and b_9 (state Used_5Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 141) 140) anon202_Then_correct) (=> (= (ControlFlow 0 141) 136) anon202_Else_correct)))))
(let ((anon201_Else_correct  (=> (and (not b_1_1@40) (= b_1_1@43 b_1_1@40)) (and (=> (= (ControlFlow 0 133) 132) anon204_Then_correct) (=> (= (ControlFlow 0 133) 122) anon204_Else_correct)))))
(let ((anon73_correct  (and (=> (= (ControlFlow 0 143) (- 0 144)) (=> (and (and b_7@7 (and b_7@7 b_1_1@36)) b_8@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_3Heap@0) x f_7) 4))) (=> (=> (and (and b_7@7 (and b_7@7 b_1_1@36)) b_8@0) (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_3Heap@0) x f_7) 4)) (=> (and (= Ops_1Mask@19 (PolymorphicMapType_21366 (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@18) (store (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@18) null (wand_1 x FullPerm x 4 x 4) (+ (select (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@18) null (wand_1 x FullPerm x 4 x 4)) FullPerm)) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@18) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@18))) (= b_1_1@37  (and b_1_1@36 (state Ops_1Heap@2 Ops_1Mask@19)))) (=> (and (and (= b_1_1@38  (and b_1_1@37 (state Ops_1Heap@2 Ops_1Mask@19))) (= b_1_1@39  (and b_1_1@38 (state Ops_1Heap@2 Ops_1Mask@19)))) (and (= Ops_1Mask@20 Ops_1Mask@19) (= b_1_1@40 b_1_1@39))) (and (=> (= (ControlFlow 0 143) 141) anon201_Then_correct) (=> (= (ControlFlow 0 143) 133) anon201_Else_correct))))))))
(let ((anon200_Else_correct  (=> (and (not b_7@7) (= (ControlFlow 0 148) 143)) anon73_correct)))
(let ((anon200_Then_correct  (=> b_7@7 (and (=> (= (ControlFlow 0 146) (- 0 147)) (HasDirectPerm_12393_3215 Ops_3Mask@2 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_3Mask@2 x f_7) (=> (= (ControlFlow 0 146) 143) anon73_correct))))))
(let ((anon199_Then_correct  (=> (and (and b_7@7 (and b_7@7 b_1_1@36)) b_8@0) (and (=> (= (ControlFlow 0 149) 146) anon200_Then_correct) (=> (= (ControlFlow 0 149) 148) anon200_Else_correct)))))
(let ((anon199_Else_correct  (=> (and (not (and (and b_7@7 (and b_7@7 b_1_1@36)) b_8@0)) (= (ControlFlow 0 145) 143)) anon73_correct)))
(let ((anon70_correct  (=> (= b_7@6  (and b_7@5 (state Ops_3Heap@0 Ops_3Mask@2))) (=> (and (= b_7@7  (and b_7@6 (state Ops_3Heap@0 Ops_3Mask@2))) (= b_8@0  (and b_8 (state Used_4Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 150) 149) anon199_Then_correct) (=> (= (ControlFlow 0 150) 145) anon199_Else_correct))))))
(let ((anon69_correct  (=> (and (and (= b_7@4  (and b_7@3 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_3Heap@0) x f_7) 4))) (= b_7@5 b_7@4)) (and (= Ops_3Mask@2 Ops_3Mask@1) (= (ControlFlow 0 153) 150))) anon70_correct)))
(let ((anon198_Else_correct  (=> (and (not b_7@3) (= (ControlFlow 0 156) 153)) anon69_correct)))
(let ((anon198_Then_correct  (=> b_7@3 (and (=> (= (ControlFlow 0 154) (- 0 155)) (HasDirectPerm_12393_3215 Ops_3Mask@1 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_3Mask@1 x f_7) (=> (= (ControlFlow 0 154) 153) anon69_correct))))))
(let ((anon197_Then_correct  (=> b_7@3 (and (=> (= (ControlFlow 0 157) 154) anon198_Then_correct) (=> (= (ControlFlow 0 157) 156) anon198_Else_correct)))))
(let ((anon197_Else_correct  (=> (and (and (not b_7@3) (= b_7@5 b_7@3)) (and (= Ops_3Mask@2 Ops_3Mask@1) (= (ControlFlow 0 152) 150))) anon70_correct)))
(let ((anon196_Else_correct  (=> (not b_7@0) (=> (and (= Ops_3Mask@1 ZeroMask) (= b_7@3 b_7@0)) (and (=> (= (ControlFlow 0 159) 157) anon197_Then_correct) (=> (= (ControlFlow 0 159) 152) anon197_Else_correct))))))
(let ((anon196_Then_correct  (=> (and b_7@0 (= b_7@1  (and b_7@0 (not (= x null))))) (=> (and (and (= Ops_3Mask@0 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask))) (= b_7@2  (and b_7@1 (state Ops_3Heap@0 Ops_3Mask@0)))) (and (= Ops_3Mask@1 Ops_3Mask@0) (= b_7@3 b_7@2))) (and (=> (= (ControlFlow 0 158) 157) anon197_Then_correct) (=> (= (ControlFlow 0 158) 152) anon197_Else_correct))))))
(let ((anon195_Then_correct  (=> b_7@0 (and (=> (= (ControlFlow 0 160) 158) anon196_Then_correct) (=> (= (ControlFlow 0 160) 159) anon196_Else_correct)))))
(let ((anon195_Else_correct  (=> (and (and (not b_7@0) (= b_7@5 b_7@0)) (and (= Ops_3Mask@2 ZeroMask) (= (ControlFlow 0 151) 150))) anon70_correct)))
(let ((anon194_Then_correct  (=> b_1_1@36 (=> (and (= b_7@0  (and b_7 (state Ops_3Heap@0 ZeroMask))) (= b_6@0  (and b_6 (state Used_3Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 161) 160) anon195_Then_correct) (=> (= (ControlFlow 0 161) 151) anon195_Else_correct))))))
(let ((anon194_Else_correct  (=> (not b_1_1@36) (=> (and (= Ops_1Mask@20 Ops_1Mask@18) (= b_1_1@40 b_1_1@36)) (and (=> (= (ControlFlow 0 142) 141) anon201_Then_correct) (=> (= (ControlFlow 0 142) 133) anon201_Else_correct))))))
(let ((anon61_correct  (=> (and (and (state Ops_1Heap@2 Ops_1Mask@17) (= b_1_1@35  (and b_1_1@34 (state Ops_1Heap@2 Ops_1Mask@17)))) (and (= Ops_1Mask@18 Ops_1Mask@17) (= b_1_1@36 b_1_1@35))) (and (=> (= (ControlFlow 0 163) 161) anon194_Then_correct) (=> (= (ControlFlow 0 163) 142) anon194_Else_correct)))))
(let ((anon60_correct  (=> (and (and (= b_1_1@33  (and b_1_1@32 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@2) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@2) freshObj@0 f_7)))) (= Ops_1Mask@17 Ops_1Mask@16)) (and (= b_1_1@34 b_1_1@33) (= (ControlFlow 0 166) 163))) anon61_correct)))
(let ((anon193_Else_correct  (=> (and (not b_1_1@32) (= (ControlFlow 0 170) 166)) anon60_correct)))
(let ((anon193_Then_correct  (=> b_1_1@32 (and (=> (= (ControlFlow 0 167) (- 0 169)) (HasDirectPerm_12393_3215 Ops_1Mask@16 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@16 x f_7) (and (=> (= (ControlFlow 0 167) (- 0 168)) (HasDirectPerm_12393_3215 Ops_1Mask@16 freshObj@0 f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@16 freshObj@0 f_7) (=> (= (ControlFlow 0 167) 166) anon60_correct))))))))
(let ((anon192_Then_correct  (=> b_1_1@32 (and (=> (= (ControlFlow 0 171) 167) anon193_Then_correct) (=> (= (ControlFlow 0 171) 170) anon193_Else_correct)))))
(let ((anon192_Else_correct  (=> (and (and (not b_1_1@32) (= Ops_1Mask@17 Ops_1Mask@16)) (and (= b_1_1@34 b_1_1@32) (= (ControlFlow 0 165) 163))) anon61_correct)))
(let ((anon191_Else_correct  (=> (not b_1_1@29) (=> (and (= b_1_1@32 b_1_1@29) (= Ops_1Mask@16 Ops_1Mask@14)) (and (=> (= (ControlFlow 0 173) 171) anon192_Then_correct) (=> (= (ControlFlow 0 173) 165) anon192_Else_correct))))))
(let ((anon191_Then_correct  (=> (and b_1_1@29 (= b_1_1@30  (and b_1_1@29 (not (= x null))))) (=> (and (and (= Ops_1Mask@15 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@14) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@14) x f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@14) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@14))) (= b_1_1@31  (and b_1_1@30 (state Ops_1Heap@2 Ops_1Mask@15)))) (and (= b_1_1@32 b_1_1@31) (= Ops_1Mask@16 Ops_1Mask@15))) (and (=> (= (ControlFlow 0 172) 171) anon192_Then_correct) (=> (= (ControlFlow 0 172) 165) anon192_Else_correct))))))
(let ((anon190_Then_correct  (=> b_1_1@29 (and (=> (= (ControlFlow 0 174) 172) anon191_Then_correct) (=> (= (ControlFlow 0 174) 173) anon191_Else_correct)))))
(let ((anon190_Else_correct  (=> (and (and (not b_1_1@29) (= Ops_1Mask@17 Ops_1Mask@14)) (and (= b_1_1@34 b_1_1@29) (= (ControlFlow 0 164) 163))) anon61_correct)))
(let ((anon189_Then_correct  (=> b_1_1@29 (and (=> (= (ControlFlow 0 175) 174) anon190_Then_correct) (=> (= (ControlFlow 0 175) 164) anon190_Else_correct)))))
(let ((anon189_Else_correct  (=> (not b_1_1@29) (=> (and (= Ops_1Mask@18 Ops_1Mask@14) (= b_1_1@36 b_1_1@29)) (and (=> (= (ControlFlow 0 162) 161) anon194_Then_correct) (=> (= (ControlFlow 0 162) 142) anon194_Else_correct))))))
(let ((anon52_correct  (and (=> (= (ControlFlow 0 177) (- 0 178)) (=> (and b_1_1@25 b_4@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_2Mask@3) x f_7) initNeededTransfer@1)))) (=> (=> (and b_1_1@25 b_4@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_2Mask@3) x f_7) initNeededTransfer@1))) (=> (and (= b_5@0  (and b_1_1@25 b_4@6)) (= b_5@1  (and b_5@0 (state Result_1Heap Result_1Mask)))) (=> (and (and (= b_5@2  (and b_5@1 (sumMask Result_1Mask Ops_1Mask@13 Used_2Mask@3))) (= b_5@3  (and (and b_5@2 (IdenticalOnKnownLocations Ops_1Heap@1 Result_1Heap Ops_1Mask@13)) (IdenticalOnKnownLocations Used_2Heap@0 Result_1Heap Used_2Mask@3)))) (and (= b_5@4  (and b_5@3 (state Result_1Heap Result_1Mask))) (= b_1_1@26  (and b_1_1@25 b_5@4)))) (=> (and (and (and (= b_1_1@27  (and b_1_1@26 b_4@6)) (IdenticalOnKnownLocations Ops_1Heap@1 ExhaleHeap@1 Ops_1Mask@13)) (and (= b_1_1@28  (and b_1_1@27 (state ExhaleHeap@1 Ops_1Mask@13))) (= b_1_1@29 b_1_1@28))) (and (and (= Mask@7 Mask@6) (= Ops_1Heap@2 ExhaleHeap@1)) (and (= Heap@6 Heap@5) (= Ops_1Mask@14 Ops_1Mask@13)))) (and (=> (= (ControlFlow 0 177) 175) anon189_Then_correct) (=> (= (ControlFlow 0 177) 162) anon189_Else_correct)))))))))
(let ((anon188_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= neededTransfer@7 neededTransfer@5) (= Heap@5 Heap@3)) (=> (and (and (= Mask@6 Mask@4) (= b_4@6 b_4@3)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 181) 177))) anon52_correct)))))
(let ((anon188_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_2Mask@2 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_2Mask@1) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_2Mask@1) x f_7) takeTransfer@3)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Used_2Mask@1) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Used_2Mask@1)))) (and (= b_4@4  (and b_4@3 (state Used_2Heap@0 Used_2Mask@2))) (= b_4@5  (and b_4@4 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@3) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_2Heap@0) x f_7)))))) (=> (and (and (and (= Mask@5 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@4) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@4) x f_7) takeTransfer@3)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@4) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@4))) (= Heap@4 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@3) (store (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x) (PolymorphicMapType_21894 (store (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) x f_7 true) (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@3) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))))) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@3) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@3)))) (and (= neededTransfer@7 neededTransfer@6) (= Heap@5 Heap@4))) (and (and (= Mask@6 Mask@5) (= b_4@6 b_4@5)) (and (= Used_2Mask@3 Used_2Mask@2) (= (ControlFlow 0 180) 177)))) anon52_correct)))))
(let ((anon187_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 183) 180) anon188_Then_correct) (=> (= (ControlFlow 0 183) 181) anon188_Else_correct)))))
(let ((anon187_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 182) 180) anon188_Then_correct) (=> (= (ControlFlow 0 182) 181) anon188_Else_correct)))))
(let ((anon186_Then_correct  (=> (and (and (and (and b_1_1@25 b_4@3) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@4) x f_7))) (and (=> (= (ControlFlow 0 184) 182) anon187_Then_correct) (=> (= (ControlFlow 0 184) 183) anon187_Else_correct)))))
(let ((anon186_Else_correct  (=> (not (and (and (and b_1_1@25 b_4@3) true) (> neededTransfer@5 0.0))) (=> (and (= neededTransfer@7 neededTransfer@5) (= Heap@5 Heap@3)) (=> (and (and (= Mask@6 Mask@4) (= b_4@6 b_4@3)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 179) 177))) anon52_correct)))))
(let ((anon185_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= Ops_1Mask@13 Ops_1Mask@11) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 187) 184) anon186_Then_correct) (=> (= (ControlFlow 0 187) 179) anon186_Else_correct))))))
(let ((anon185_Then_correct  (=> (and (> takeTransfer@2 0.0) (= neededTransfer@4 (- FullPerm takeTransfer@2))) (=> (and (and (and (= Used_2Mask@0 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) takeTransfer@2)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask))) (= b_4@1  (and b_4@0 (state Used_2Heap@0 Used_2Mask@0)))) (and (= b_4@2  (and b_4@1 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@1) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_2Heap@0) x f_7)))) (= Ops_1Mask@12 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@11) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@11) x f_7) takeTransfer@2)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@11) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@11))))) (and (and (= Ops_1Mask@13 Ops_1Mask@12) (= Used_2Mask@1 Used_2Mask@0)) (and (= b_4@3 b_4@2) (= neededTransfer@5 neededTransfer@4)))) (and (=> (= (ControlFlow 0 186) 184) anon186_Then_correct) (=> (= (ControlFlow 0 186) 179) anon186_Else_correct))))))
(let ((anon184_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 189) 186) anon185_Then_correct) (=> (= (ControlFlow 0 189) 187) anon185_Else_correct)))))
(let ((anon184_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 188) 186) anon185_Then_correct) (=> (= (ControlFlow 0 188) 187) anon185_Else_correct)))))
(let ((anon183_Then_correct  (=> (and (and (and (and b_1_1@25 b_4@0) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@11) x f_7))) (and (=> (= (ControlFlow 0 190) 188) anon184_Then_correct) (=> (= (ControlFlow 0 190) 189) anon184_Else_correct)))))
(let ((anon183_Else_correct  (=> (not (and (and (and b_1_1@25 b_4@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@13 Ops_1Mask@11) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 185) 184) anon186_Then_correct) (=> (= (ControlFlow 0 185) 179) anon186_Else_correct))))))
(let ((anon182_Then_correct  (=> b_1_1@25 (=> (and (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) FullPerm))) (and (=> (= (ControlFlow 0 191) (- 0 192)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 191) 190) anon183_Then_correct) (=> (= (ControlFlow 0 191) 185) anon183_Else_correct))))))))
(let ((anon182_Else_correct  (=> (and (not b_1_1@25) (= b_1_1@29 b_1_1@25)) (=> (and (and (= Mask@7 Mask@4) (= Ops_1Heap@2 Ops_1Heap@1)) (and (= Heap@6 Heap@3) (= Ops_1Mask@14 Ops_1Mask@11))) (and (=> (= (ControlFlow 0 176) 175) anon189_Then_correct) (=> (= (ControlFlow 0 176) 162) anon189_Else_correct))))))
(let ((anon181_Else_correct  (=> (not b_1_1@23) (=> (and (and (= first_lblGuard@0 false) (= b_1_1@25 b_1_1@23)) (and (= LabelfirstHeap@0 LabelfirstHeap) (= LabelfirstMask@0 LabelfirstMask))) (and (=> (= (ControlFlow 0 194) 191) anon182_Then_correct) (=> (= (ControlFlow 0 194) 176) anon182_Else_correct))))))
(let ((anon181_Then_correct  (=> (and b_1_1@23 (= b_1_1@24  (and b_1_1@23 (state Ops_1Heap@1 Ops_1Mask@11)))) (=> (and (and (= first_lblGuard@0 true) (= b_1_1@25 b_1_1@24)) (and (= LabelfirstHeap@0 Ops_1Heap@1) (= LabelfirstMask@0 Ops_1Mask@11))) (and (=> (= (ControlFlow 0 193) 191) anon182_Then_correct) (=> (= (ControlFlow 0 193) 176) anon182_Else_correct))))))
(let ((anon37_correct  (=> (and (and (state Ops_1Heap@1 Ops_1Mask@10) (= b_1_1@22  (and b_1_1@21 (state Ops_1Heap@1 Ops_1Mask@10)))) (and (= Ops_1Mask@11 Ops_1Mask@10) (= b_1_1@23 b_1_1@22))) (and (=> (= (ControlFlow 0 196) 193) anon181_Then_correct) (=> (= (ControlFlow 0 196) 194) anon181_Else_correct)))))
(let ((anon36_correct  (=> (and (and (= b_1_1@20  (and b_1_1@19 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@1) x f_7) 5))) (= Ops_1Mask@10 Ops_1Mask@9)) (and (= b_1_1@21 b_1_1@20) (= (ControlFlow 0 199) 196))) anon37_correct)))
(let ((anon180_Else_correct  (=> (and (not b_1_1@19) (= (ControlFlow 0 202) 199)) anon36_correct)))
(let ((anon180_Then_correct  (=> b_1_1@19 (and (=> (= (ControlFlow 0 200) (- 0 201)) (HasDirectPerm_12393_3215 Ops_1Mask@9 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@9 x f_7) (=> (= (ControlFlow 0 200) 199) anon36_correct))))))
(let ((anon179_Then_correct  (=> b_1_1@19 (and (=> (= (ControlFlow 0 203) 200) anon180_Then_correct) (=> (= (ControlFlow 0 203) 202) anon180_Else_correct)))))
(let ((anon179_Else_correct  (=> (and (and (not b_1_1@19) (= Ops_1Mask@10 Ops_1Mask@9)) (and (= b_1_1@21 b_1_1@19) (= (ControlFlow 0 198) 196))) anon37_correct)))
(let ((anon178_Else_correct  (=> (not b_1_1@16) (=> (and (= b_1_1@19 b_1_1@16) (= Ops_1Mask@9 Ops_1Mask@7)) (and (=> (= (ControlFlow 0 205) 203) anon179_Then_correct) (=> (= (ControlFlow 0 205) 198) anon179_Else_correct))))))
(let ((anon178_Then_correct  (=> (and b_1_1@16 (= b_1_1@17  (and b_1_1@16 (not (= x null))))) (=> (and (and (= Ops_1Mask@8 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@7) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@7) x f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@7) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@7))) (= b_1_1@18  (and b_1_1@17 (state Ops_1Heap@1 Ops_1Mask@8)))) (and (= b_1_1@19 b_1_1@18) (= Ops_1Mask@9 Ops_1Mask@8))) (and (=> (= (ControlFlow 0 204) 203) anon179_Then_correct) (=> (= (ControlFlow 0 204) 198) anon179_Else_correct))))))
(let ((anon177_Then_correct  (=> b_1_1@16 (and (=> (= (ControlFlow 0 206) 204) anon178_Then_correct) (=> (= (ControlFlow 0 206) 205) anon178_Else_correct)))))
(let ((anon177_Else_correct  (=> (and (and (not b_1_1@16) (= Ops_1Mask@10 Ops_1Mask@7)) (and (= b_1_1@21 b_1_1@16) (= (ControlFlow 0 197) 196))) anon37_correct)))
(let ((anon176_Then_correct  (=> b_1_1@16 (and (=> (= (ControlFlow 0 207) 206) anon177_Then_correct) (=> (= (ControlFlow 0 207) 197) anon177_Else_correct)))))
(let ((anon176_Else_correct  (=> (not b_1_1@16) (=> (and (= Ops_1Mask@11 Ops_1Mask@7) (= b_1_1@23 b_1_1@16)) (and (=> (= (ControlFlow 0 195) 193) anon181_Then_correct) (=> (= (ControlFlow 0 195) 194) anon181_Else_correct))))))
(let ((anon28_correct  (and (=> (= (ControlFlow 0 209) (- 0 210)) (=> (and b_1_1@12 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_1Mask@3) x f_7) initNeededTransfer@0)))) (=> (=> (and b_1_1@12 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_1Mask@3) x f_7) initNeededTransfer@0))) (=> (and (= b_3@0  (and b_1_1@12 b_2_1@6)) (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@24)))) (=> (and (and (= b_3@2  (and b_3@1 (sumMask ResultMask@@24 Ops_1Mask@6 Used_1Mask@3))) (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@0 ResultHeap Ops_1Mask@6)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3)))) (and (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@24))) (= b_1_1@13  (and b_1_1@12 b_3@4)))) (=> (and (and (and (= b_1_1@14  (and b_1_1@13 b_2_1@6)) (IdenticalOnKnownLocations Ops_1Heap@0 ExhaleHeap@0 Ops_1Mask@6)) (and (= b_1_1@15  (and b_1_1@14 (state ExhaleHeap@0 Ops_1Mask@6))) (= Ops_1Heap@1 ExhaleHeap@0))) (and (and (= b_1_1@16 b_1_1@15) (= Heap@3 Heap@2)) (and (= Mask@4 Mask@3) (= Ops_1Mask@7 Ops_1Mask@6)))) (and (=> (= (ControlFlow 0 209) 207) anon176_Then_correct) (=> (= (ControlFlow 0 209) 195) anon176_Else_correct)))))))))
(let ((anon175_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@3 Mask@1) (= Heap@2 Heap@0)) (=> (and (and (= neededTransfer@3 neededTransfer@1) (= b_2_1@6 b_2_1@3)) (and (= Used_1Mask@3 Used_1Mask@1) (= (ControlFlow 0 213) 209))) anon28_correct)))))
(let ((anon175_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_1Mask@1) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Used_1Mask@1) x f_7) takeTransfer@1)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Used_1Mask@1) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Used_1Mask@1)))) (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= b_2_1@5  (and b_2_1@4 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@0) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_1Heap@0) x f_7)))))) (=> (and (and (and (= Mask@2 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@1) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@1) x f_7) takeTransfer@1)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@1) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@1))) (= Heap@1 (PolymorphicMapType_21345 (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@0) (store (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x) (PolymorphicMapType_21894 (store (|PolymorphicMapType_21894_12393_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) x f_7 true) (|PolymorphicMapType_21894_12393_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_73707#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_12393_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_74755#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_24738_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_75803#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_25992_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_76851#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_26783_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_3215#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_53#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_21419#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_77899#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))) (|PolymorphicMapType_21894_27601_24778#PolymorphicMapType_21894| (select (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@0) null (|wand#sm| x FullPerm freshObj@0 FullPerm x 3 freshObj@0 5 x FullPerm x x))))) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@0) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@0)))) (and (= Mask@3 Mask@2) (= Heap@2 Heap@1))) (and (and (= neededTransfer@3 neededTransfer@2) (= b_2_1@6 b_2_1@5)) (and (= Used_1Mask@3 Used_1Mask@2) (= (ControlFlow 0 212) 209)))) anon28_correct)))))
(let ((anon174_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 215) 212) anon175_Then_correct) (=> (= (ControlFlow 0 215) 213) anon175_Else_correct)))))
(let ((anon174_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 214) 212) anon175_Then_correct) (=> (= (ControlFlow 0 214) 213) anon175_Else_correct)))))
(let ((anon173_Then_correct  (=> (and (and (and (and b_1_1@12 b_2_1@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@1) x f_7))) (and (=> (= (ControlFlow 0 216) 214) anon174_Then_correct) (=> (= (ControlFlow 0 216) 215) anon174_Else_correct)))))
(let ((anon173_Else_correct  (=> (not (and (and (and b_1_1@12 b_2_1@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@3 Mask@1) (= Heap@2 Heap@0)) (=> (and (and (= neededTransfer@3 neededTransfer@1) (= b_2_1@6 b_2_1@3)) (and (= Used_1Mask@3 Used_1Mask@1) (= (ControlFlow 0 211) 209))) anon28_correct)))))
(let ((anon172_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@6 Ops_1Mask@4) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 219) 216) anon173_Then_correct) (=> (= (ControlFlow 0 219) 211) anon173_Else_correct))))))
(let ((anon172_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@0 (- FullPerm takeTransfer@0))) (=> (and (and (and (= Used_1Mask@0 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) takeTransfer@0)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask))) (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0)))) (and (= b_2_1@2  (and b_2_1@1 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@0) x f_7) (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Used_1Heap@0) x f_7)))) (= Ops_1Mask@5 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@4) x f_7 (- (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@4) x f_7) takeTransfer@0)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@4) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@4))))) (and (and (= Ops_1Mask@6 Ops_1Mask@5) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 218) 216) anon173_Then_correct) (=> (= (ControlFlow 0 218) 211) anon173_Else_correct))))))
(let ((anon171_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 221) 218) anon172_Then_correct) (=> (= (ControlFlow 0 221) 219) anon172_Else_correct)))))
(let ((anon171_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 220) 218) anon172_Then_correct) (=> (= (ControlFlow 0 220) 219) anon172_Else_correct)))))
(let ((anon170_Then_correct  (=> (and (and (and (and b_1_1@12 b_2_1@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@4) x f_7))) (and (=> (= (ControlFlow 0 222) 220) anon171_Then_correct) (=> (= (ControlFlow 0 222) 221) anon171_Else_correct)))))
(let ((anon170_Else_correct  (=> (not (and (and (and b_1_1@12 b_2_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@6 Ops_1Mask@4) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 217) 216) anon173_Then_correct) (=> (= (ControlFlow 0 217) 211) anon173_Else_correct))))))
(let ((anon169_Then_correct  (=> b_1_1@12 (=> (and (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) FullPerm))) (and (=> (= (ControlFlow 0 223) (- 0 224)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 223) 222) anon170_Then_correct) (=> (= (ControlFlow 0 223) 217) anon170_Else_correct))))))))
(let ((anon169_Else_correct  (=> (and (not b_1_1@12) (= Ops_1Heap@1 Ops_1Heap@0)) (=> (and (and (= b_1_1@16 b_1_1@12) (= Heap@3 Heap@0)) (and (= Mask@4 Mask@1) (= Ops_1Mask@7 Ops_1Mask@4))) (and (=> (= (ControlFlow 0 208) 207) anon176_Then_correct) (=> (= (ControlFlow 0 208) 195) anon176_Else_correct))))))
(let ((anon15_correct  (=> (and (= b_1_1@11  (and b_1_1@10 (state Ops_1Heap@0 Ops_1Mask@4))) (= b_1_1@12  (and b_1_1@11 (state Ops_1Heap@0 Ops_1Mask@4)))) (and (=> (= (ControlFlow 0 225) 223) anon169_Then_correct) (=> (= (ControlFlow 0 225) 208) anon169_Else_correct)))))
(let ((anon14_correct  (=> (and (and (= b_1_1@9  (and b_1_1@8 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@0) freshObj@0 f_7) 5))) (= b_1_1@10 b_1_1@9)) (and (= Ops_1Mask@4 Ops_1Mask@3) (= (ControlFlow 0 230) 225))) anon15_correct)))
(let ((anon168_Else_correct  (=> (and (not b_1_1@8) (= (ControlFlow 0 233) 230)) anon14_correct)))
(let ((anon168_Then_correct  (=> b_1_1@8 (and (=> (= (ControlFlow 0 231) (- 0 232)) (HasDirectPerm_12393_3215 Ops_1Mask@3 freshObj@0 f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@3 freshObj@0 f_7) (=> (= (ControlFlow 0 231) 230) anon14_correct))))))
(let ((anon167_Then_correct  (=> b_1_1@8 (and (=> (= (ControlFlow 0 234) 231) anon168_Then_correct) (=> (= (ControlFlow 0 234) 233) anon168_Else_correct)))))
(let ((anon167_Else_correct  (=> (and (and (not b_1_1@8) (= b_1_1@10 b_1_1@8)) (and (= Ops_1Mask@4 Ops_1Mask@3) (= (ControlFlow 0 229) 225))) anon15_correct)))
(let ((anon10_correct  (=> (and (= b_1_1@7  (and b_1_1@6 (= (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Ops_1Heap@0) x f_7) 3))) (= b_1_1@8 b_1_1@7)) (and (=> (= (ControlFlow 0 236) 234) anon167_Then_correct) (=> (= (ControlFlow 0 236) 229) anon167_Else_correct)))))
(let ((anon166_Else_correct  (=> (and (not b_1_1@6) (= (ControlFlow 0 239) 236)) anon10_correct)))
(let ((anon166_Then_correct  (=> b_1_1@6 (and (=> (= (ControlFlow 0 237) (- 0 238)) (HasDirectPerm_12393_3215 Ops_1Mask@3 x f_7)) (=> (HasDirectPerm_12393_3215 Ops_1Mask@3 x f_7) (=> (= (ControlFlow 0 237) 236) anon10_correct))))))
(let ((anon165_Then_correct  (=> b_1_1@6 (and (=> (= (ControlFlow 0 240) 237) anon166_Then_correct) (=> (= (ControlFlow 0 240) 239) anon166_Else_correct)))))
(let ((anon165_Else_correct  (=> (and (not b_1_1@6) (= b_1_1@8 b_1_1@6)) (and (=> (= (ControlFlow 0 235) 234) anon167_Then_correct) (=> (= (ControlFlow 0 235) 229) anon167_Else_correct)))))
(let ((anon164_Then_correct  (=> b_1_1@6 (and (=> (= (ControlFlow 0 241) 240) anon165_Then_correct) (=> (= (ControlFlow 0 241) 235) anon165_Else_correct)))))
(let ((anon164_Else_correct  (=> (and (and (not b_1_1@6) (= b_1_1@10 b_1_1@6)) (and (= Ops_1Mask@4 Ops_1Mask@3) (= (ControlFlow 0 228) 225))) anon15_correct)))
(let ((anon163_Else_correct  (=> (not b_1_1@3) (=> (and (= b_1_1@6 b_1_1@3) (= Ops_1Mask@3 Ops_1Mask@1)) (and (=> (= (ControlFlow 0 243) 241) anon164_Then_correct) (=> (= (ControlFlow 0 243) 228) anon164_Else_correct))))))
(let ((anon163_Then_correct  (=> (and b_1_1@3 (= b_1_1@4  (and b_1_1@3 (not (= freshObj@0 null))))) (=> (and (and (= Ops_1Mask@2 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@1) freshObj@0 f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Ops_1Mask@1) freshObj@0 f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Ops_1Mask@1) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Ops_1Mask@1))) (= b_1_1@5  (and b_1_1@4 (state Ops_1Heap@0 Ops_1Mask@2)))) (and (= b_1_1@6 b_1_1@5) (= Ops_1Mask@3 Ops_1Mask@2))) (and (=> (= (ControlFlow 0 242) 241) anon164_Then_correct) (=> (= (ControlFlow 0 242) 228) anon164_Else_correct))))))
(let ((anon162_Then_correct  (=> b_1_1@3 (and (=> (= (ControlFlow 0 244) 242) anon163_Then_correct) (=> (= (ControlFlow 0 244) 243) anon163_Else_correct)))))
(let ((anon162_Else_correct  (=> (and (and (not b_1_1@3) (= b_1_1@10 b_1_1@3)) (and (= Ops_1Mask@4 Ops_1Mask@1) (= (ControlFlow 0 227) 225))) anon15_correct)))
(let ((anon161_Else_correct  (=> (not b_1_1@0) (=> (and (= Ops_1Mask@1 ZeroMask) (= b_1_1@3 b_1_1@0)) (and (=> (= (ControlFlow 0 246) 244) anon162_Then_correct) (=> (= (ControlFlow 0 246) 227) anon162_Else_correct))))))
(let ((anon161_Then_correct  (=> (and b_1_1@0 (= b_1_1@1  (and b_1_1@0 (not (= x null))))) (=> (and (and (= Ops_1Mask@0 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask))) (= b_1_1@2  (and b_1_1@1 (state Ops_1Heap@0 Ops_1Mask@0)))) (and (= Ops_1Mask@1 Ops_1Mask@0) (= b_1_1@3 b_1_1@2))) (and (=> (= (ControlFlow 0 245) 244) anon162_Then_correct) (=> (= (ControlFlow 0 245) 227) anon162_Else_correct))))))
(let ((anon160_Then_correct  (=> b_1_1@0 (and (=> (= (ControlFlow 0 247) 245) anon161_Then_correct) (=> (= (ControlFlow 0 247) 246) anon161_Else_correct)))))
(let ((anon160_Else_correct  (=> (and (and (not b_1_1@0) (= b_1_1@10 b_1_1@0)) (and (= Ops_1Mask@4 ZeroMask) (= (ControlFlow 0 226) 225))) anon15_correct)))
(let ((anon0_correct  (=> (and (and (and (state Heap@@73 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@73) x $allocated) (not (= x null)))) (and (and (= Mask@0 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| ZeroMask) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| ZeroMask))) (state Heap@@73 Mask@0)) (and (state Heap@@73 Mask@0) (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@73) y $allocated)))) (and (=> (= (ControlFlow 0 248) (- 0 249)) (HasDirectPerm_12393_3215 Mask@0 x f_7)) (=> (HasDirectPerm_12393_3215 Mask@0 x f_7) (=> (and (= a_2@0 (select (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@73) x f_7)) (state Heap@@73 Mask@0)) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@73) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_21345 (store (|PolymorphicMapType_21345_11980_53#PolymorphicMapType_21345| Heap@@73) freshObj@0 $allocated true) (|PolymorphicMapType_21345_11983_11984#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_12393_3215#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_12130_31484#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_12292_51189#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_12360_54896#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_12393_66310#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_12393_24778#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_24738_3215#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_24738_53#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_24738_21419#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_24738_24778#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_25992_3215#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_25992_53#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_25992_21419#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_25992_68622#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_25992_24778#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_26783_3215#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_26783_53#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_26783_21419#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_26783_24778#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_27601_3215#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_27601_53#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_27601_21419#PolymorphicMapType_21345| Heap@@73) (|PolymorphicMapType_21345_27601_24778#PolymorphicMapType_21345| Heap@@73)))) (and (and (= Mask@1 (PolymorphicMapType_21366 (store (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@0) freshObj@0 f_7 (+ (select (|PolymorphicMapType_21366_12393_3215#PolymorphicMapType_21366| Mask@0) freshObj@0 f_7) FullPerm)) (|PolymorphicMapType_21366_12230_1989#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12118_1235#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12284_2425#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12355_2857#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12393_53#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12393_21419#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12393_90636#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12393_24778#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12230_53#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12230_21419#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12230_91050#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12230_24778#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12118_53#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12118_21419#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12118_91464#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12118_24778#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12284_53#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12284_21419#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12284_91878#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12284_24778#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12355_53#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12355_21419#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12355_92292#PolymorphicMapType_21366| Mask@0) (|PolymorphicMapType_21366_12355_24778#PolymorphicMapType_21366| Mask@0))) (state Heap@0 Mask@1)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask)))))) (and (=> (= (ControlFlow 0 248) 247) anon160_Then_correct) (=> (= (ControlFlow 0 248) 226) anon160_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 250) 248) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)