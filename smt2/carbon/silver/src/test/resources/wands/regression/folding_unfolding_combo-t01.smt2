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
(declare-sort T@Field_13999_53 0)
(declare-sort T@Field_14012_14013 0)
(declare-sort T@Field_19316_2212 0)
(declare-sort T@Field_19684_19685 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_20934_20939 0)
(declare-sort T@Field_17341_17346 0)
(declare-sort T@Field_18043_18048 0)
(declare-sort T@Field_18687_18692 0)
(declare-sort T@Field_7958_7990 0)
(declare-sort T@Field_7958_17346 0)
(declare-sort T@Field_7989_2212 0)
(declare-sort T@Field_7989_53 0)
(declare-sort T@Field_7989_14013 0)
(declare-sort T@Field_17328_1210 0)
(declare-sort T@Field_17357_17358 0)
(declare-sort T@Field_17328_53 0)
(declare-sort T@Field_17328_14013 0)
(declare-sort T@Field_18030_1585 0)
(declare-sort T@Field_18059_18060 0)
(declare-sort T@Field_18030_53 0)
(declare-sort T@Field_18030_14013 0)
(declare-sort T@Field_18674_1907 0)
(declare-sort T@Field_18703_18704 0)
(declare-sort T@Field_18674_53 0)
(declare-sort T@Field_18674_14013 0)
(declare-datatypes ((T@PolymorphicMapType_13960 0)) (((PolymorphicMapType_13960 (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| (Array T@Ref T@Field_19684_19685 Real)) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| (Array T@Ref T@Field_19316_2212 Real)) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| (Array T@Ref T@Field_17328_1210 Real)) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| (Array T@Ref T@Field_18030_1585 Real)) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| (Array T@Ref T@Field_18674_1907 Real)) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| (Array T@Ref T@Field_7989_2212 Real)) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| (Array T@Ref T@Field_7989_53 Real)) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| (Array T@Ref T@Field_7989_14013 Real)) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| (Array T@Ref T@Field_20934_20939 Real)) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| (Array T@Ref T@Field_7958_7990 Real)) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| (Array T@Ref T@Field_13999_53 Real)) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| (Array T@Ref T@Field_14012_14013 Real)) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| (Array T@Ref T@Field_7958_17346 Real)) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| (Array T@Ref T@Field_17357_17358 Real)) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| (Array T@Ref T@Field_17328_53 Real)) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| (Array T@Ref T@Field_17328_14013 Real)) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| (Array T@Ref T@Field_17341_17346 Real)) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| (Array T@Ref T@Field_18059_18060 Real)) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| (Array T@Ref T@Field_18030_53 Real)) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| (Array T@Ref T@Field_18030_14013 Real)) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| (Array T@Ref T@Field_18043_18048 Real)) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| (Array T@Ref T@Field_18703_18704 Real)) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| (Array T@Ref T@Field_18674_53 Real)) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| (Array T@Ref T@Field_18674_14013 Real)) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| (Array T@Ref T@Field_18687_18692 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14488 0)) (((PolymorphicMapType_14488 (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (Array T@Ref T@Field_19316_2212 Bool)) (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (Array T@Ref T@Field_13999_53 Bool)) (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (Array T@Ref T@Field_14012_14013 Bool)) (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (Array T@Ref T@Field_7958_17346 Bool)) (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (Array T@Ref T@Field_7958_7990 Bool)) (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (Array T@Ref T@Field_17328_1210 Bool)) (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (Array T@Ref T@Field_17328_53 Bool)) (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (Array T@Ref T@Field_17328_14013 Bool)) (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (Array T@Ref T@Field_17341_17346 Bool)) (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (Array T@Ref T@Field_17357_17358 Bool)) (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (Array T@Ref T@Field_18030_1585 Bool)) (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (Array T@Ref T@Field_18030_53 Bool)) (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (Array T@Ref T@Field_18030_14013 Bool)) (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (Array T@Ref T@Field_18043_18048 Bool)) (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (Array T@Ref T@Field_18059_18060 Bool)) (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (Array T@Ref T@Field_18674_1907 Bool)) (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (Array T@Ref T@Field_18674_53 Bool)) (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (Array T@Ref T@Field_18674_14013 Bool)) (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (Array T@Ref T@Field_18687_18692 Bool)) (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (Array T@Ref T@Field_18703_18704 Bool)) (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (Array T@Ref T@Field_7989_2212 Bool)) (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (Array T@Ref T@Field_7989_53 Bool)) (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (Array T@Ref T@Field_7989_14013 Bool)) (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (Array T@Ref T@Field_20934_20939 Bool)) (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (Array T@Ref T@Field_19684_19685 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13939 0)) (((PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| (Array T@Ref T@Field_13999_53 Bool)) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| (Array T@Ref T@Field_14012_14013 T@Ref)) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| (Array T@Ref T@Field_19316_2212 Int)) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| (Array T@Ref T@Field_19684_19685 T@FrameType)) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| (Array T@Ref T@Field_20934_20939 T@PolymorphicMapType_14488)) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| (Array T@Ref T@Field_17341_17346 T@PolymorphicMapType_14488)) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| (Array T@Ref T@Field_18043_18048 T@PolymorphicMapType_14488)) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| (Array T@Ref T@Field_18687_18692 T@PolymorphicMapType_14488)) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| (Array T@Ref T@Field_7958_7990 T@FrameType)) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| (Array T@Ref T@Field_7958_17346 T@PolymorphicMapType_14488)) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| (Array T@Ref T@Field_7989_2212 Int)) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| (Array T@Ref T@Field_7989_53 Bool)) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| (Array T@Ref T@Field_7989_14013 T@Ref)) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| (Array T@Ref T@Field_17328_1210 Int)) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| (Array T@Ref T@Field_17357_17358 T@FrameType)) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| (Array T@Ref T@Field_17328_53 Bool)) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| (Array T@Ref T@Field_17328_14013 T@Ref)) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| (Array T@Ref T@Field_18030_1585 Int)) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| (Array T@Ref T@Field_18059_18060 T@FrameType)) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| (Array T@Ref T@Field_18030_53 Bool)) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| (Array T@Ref T@Field_18030_14013 T@Ref)) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| (Array T@Ref T@Field_18674_1907 Int)) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| (Array T@Ref T@Field_18703_18704 T@FrameType)) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| (Array T@Ref T@Field_18674_53 Bool)) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| (Array T@Ref T@Field_18674_14013 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_13999_53)
(declare-fun f_7 () T@Field_19316_2212)
(declare-fun g () T@Field_19316_2212)
(declare-fun succHeap (T@PolymorphicMapType_13939 T@PolymorphicMapType_13939) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13939 T@PolymorphicMapType_13939) Bool)
(declare-fun wand_1 (Bool T@Ref T@Ref Int) T@Field_18030_1585)
(declare-fun getPredWandId_7889_1585 (T@Field_18030_1585) Int)
(declare-fun wand_2 (Bool T@Ref T@Ref Real) T@Field_18674_1907)
(declare-fun getPredWandId_7920_1907 (T@Field_18674_1907) Int)
(declare-fun state (T@PolymorphicMapType_13939 T@PolymorphicMapType_13960) Bool)
(declare-fun sum (T@PolymorphicMapType_13939 T@Ref) Int)
(declare-fun |sum#triggerStateless| (T@Ref) Int)
(declare-fun |Single#trigger_7989| (T@PolymorphicMapType_13939 T@Field_19684_19685) Bool)
(declare-fun Single (T@Ref) T@Field_19684_19685)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_13960) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14488)
(declare-fun IsPredicateField_7989_7990 (T@Field_19684_19685) Bool)
(declare-fun |sum'| (T@PolymorphicMapType_13939 T@Ref) Int)
(declare-fun dummyFunction_2430 (Int) Bool)
(declare-fun |Single#everUsed_7989| (T@Field_19684_19685) Bool)
(declare-fun wand (Bool T@Ref Real T@Ref Int) T@Field_17328_1210)
(declare-fun getPredWandId_7849_1210 (T@Field_17328_1210) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13939 T@PolymorphicMapType_13939 T@PolymorphicMapType_13960) Bool)
(declare-fun IsPredicateField_7931_7932 (T@Field_18703_18704) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18674 (T@Field_18703_18704) T@Field_18687_18692)
(declare-fun HasDirectPerm_18674_7990 (T@PolymorphicMapType_13960 T@Ref T@Field_18703_18704) Bool)
(declare-fun IsPredicateField_7898_7899 (T@Field_18059_18060) Bool)
(declare-fun PredicateMaskField_18030 (T@Field_18059_18060) T@Field_18043_18048)
(declare-fun HasDirectPerm_18030_7990 (T@PolymorphicMapType_13960 T@Ref T@Field_18059_18060) Bool)
(declare-fun IsPredicateField_7860_7861 (T@Field_17357_17358) Bool)
(declare-fun PredicateMaskField_17328 (T@Field_17357_17358) T@Field_17341_17346)
(declare-fun HasDirectPerm_17328_7990 (T@PolymorphicMapType_13960 T@Ref T@Field_17357_17358) Bool)
(declare-fun PredicateMaskField_7989 (T@Field_19684_19685) T@Field_20934_20939)
(declare-fun HasDirectPerm_7989_7990 (T@PolymorphicMapType_13960 T@Ref T@Field_19684_19685) Bool)
(declare-fun IsPredicateField_7958_49311 (T@Field_7958_7990) Bool)
(declare-fun PredicateMaskField_7958 (T@Field_7958_7990) T@Field_7958_17346)
(declare-fun HasDirectPerm_7958_7990 (T@PolymorphicMapType_13960 T@Ref T@Field_7958_7990) Bool)
(declare-fun IsWandField_7931_7932 (T@Field_18703_18704) Bool)
(declare-fun WandMaskField_7931 (T@Field_18703_18704) T@Field_18687_18692)
(declare-fun IsWandField_7898_7899 (T@Field_18059_18060) Bool)
(declare-fun WandMaskField_7898 (T@Field_18059_18060) T@Field_18043_18048)
(declare-fun IsWandField_7860_7861 (T@Field_17357_17358) Bool)
(declare-fun WandMaskField_7860 (T@Field_17357_17358) T@Field_17341_17346)
(declare-fun IsWandField_7989_58033 (T@Field_19684_19685) Bool)
(declare-fun WandMaskField_7989 (T@Field_19684_19685) T@Field_20934_20939)
(declare-fun IsWandField_7958_57676 (T@Field_7958_7990) Bool)
(declare-fun WandMaskField_7958 (T@Field_7958_7990) T@Field_7958_17346)
(declare-fun |Single#sm| (T@Ref) T@Field_20934_20939)
(declare-fun dummyHeap () T@PolymorphicMapType_13939)
(declare-fun ZeroMask () T@PolymorphicMapType_13960)
(declare-fun InsidePredicate_19684_19684 (T@Field_19684_19685 T@FrameType T@Field_19684_19685 T@FrameType) Bool)
(declare-fun InsidePredicate_18674_18674 (T@Field_18703_18704 T@FrameType T@Field_18703_18704 T@FrameType) Bool)
(declare-fun InsidePredicate_18030_18030 (T@Field_18059_18060 T@FrameType T@Field_18059_18060 T@FrameType) Bool)
(declare-fun InsidePredicate_17328_17328 (T@Field_17357_17358 T@FrameType T@Field_17357_17358 T@FrameType) Bool)
(declare-fun InsidePredicate_13999_13999 (T@Field_7958_7990 T@FrameType T@Field_7958_7990 T@FrameType) Bool)
(declare-fun IsWandField_7849_1210 (T@Field_17328_1210) Bool)
(declare-fun |wand#ft| (Bool T@Ref Real T@Ref Int) T@Field_17357_17358)
(declare-fun IsPredicateField_7958_2212 (T@Field_19316_2212) Bool)
(declare-fun IsWandField_7958_2212 (T@Field_19316_2212) Bool)
(declare-fun IsPredicateField_7849_1210 (T@Field_17328_1210) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7920_76065 (T@Field_18687_18692) Bool)
(declare-fun IsWandField_7920_76081 (T@Field_18687_18692) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7920_14013 (T@Field_18674_14013) Bool)
(declare-fun IsWandField_7920_14013 (T@Field_18674_14013) Bool)
(declare-fun IsPredicateField_7920_53 (T@Field_18674_53) Bool)
(declare-fun IsWandField_7920_53 (T@Field_18674_53) Bool)
(declare-fun IsPredicateField_7920_1907 (T@Field_18674_1907) Bool)
(declare-fun IsWandField_7920_1907 (T@Field_18674_1907) Bool)
(declare-fun IsPredicateField_7889_75248 (T@Field_18043_18048) Bool)
(declare-fun IsWandField_7889_75264 (T@Field_18043_18048) Bool)
(declare-fun IsPredicateField_7889_14013 (T@Field_18030_14013) Bool)
(declare-fun IsWandField_7889_14013 (T@Field_18030_14013) Bool)
(declare-fun IsPredicateField_7889_53 (T@Field_18030_53) Bool)
(declare-fun IsWandField_7889_53 (T@Field_18030_53) Bool)
(declare-fun IsPredicateField_7889_1585 (T@Field_18030_1585) Bool)
(declare-fun IsWandField_7889_1585 (T@Field_18030_1585) Bool)
(declare-fun IsPredicateField_7849_74431 (T@Field_17341_17346) Bool)
(declare-fun IsWandField_7849_74447 (T@Field_17341_17346) Bool)
(declare-fun IsPredicateField_7849_14013 (T@Field_17328_14013) Bool)
(declare-fun IsWandField_7849_14013 (T@Field_17328_14013) Bool)
(declare-fun IsPredicateField_7849_53 (T@Field_17328_53) Bool)
(declare-fun IsWandField_7849_53 (T@Field_17328_53) Bool)
(declare-fun IsPredicateField_7958_73614 (T@Field_7958_17346) Bool)
(declare-fun IsWandField_7958_73630 (T@Field_7958_17346) Bool)
(declare-fun IsPredicateField_7958_14013 (T@Field_14012_14013) Bool)
(declare-fun IsWandField_7958_14013 (T@Field_14012_14013) Bool)
(declare-fun IsPredicateField_7958_53 (T@Field_13999_53) Bool)
(declare-fun IsWandField_7958_53 (T@Field_13999_53) Bool)
(declare-fun IsPredicateField_7989_72797 (T@Field_20934_20939) Bool)
(declare-fun IsWandField_7989_72813 (T@Field_20934_20939) Bool)
(declare-fun IsPredicateField_7989_14013 (T@Field_7989_14013) Bool)
(declare-fun IsWandField_7989_14013 (T@Field_7989_14013) Bool)
(declare-fun IsPredicateField_7989_53 (T@Field_7989_53) Bool)
(declare-fun IsWandField_7989_53 (T@Field_7989_53) Bool)
(declare-fun IsPredicateField_7989_2212 (T@Field_7989_2212) Bool)
(declare-fun IsWandField_7989_2212 (T@Field_7989_2212) Bool)
(declare-fun HasDirectPerm_18674_49066 (T@PolymorphicMapType_13960 T@Ref T@Field_18687_18692) Bool)
(declare-fun HasDirectPerm_18674_14013 (T@PolymorphicMapType_13960 T@Ref T@Field_18674_14013) Bool)
(declare-fun HasDirectPerm_18674_53 (T@PolymorphicMapType_13960 T@Ref T@Field_18674_53) Bool)
(declare-fun HasDirectPerm_18674_2212 (T@PolymorphicMapType_13960 T@Ref T@Field_18674_1907) Bool)
(declare-fun HasDirectPerm_18030_47932 (T@PolymorphicMapType_13960 T@Ref T@Field_18043_18048) Bool)
(declare-fun HasDirectPerm_18030_14013 (T@PolymorphicMapType_13960 T@Ref T@Field_18030_14013) Bool)
(declare-fun HasDirectPerm_18030_53 (T@PolymorphicMapType_13960 T@Ref T@Field_18030_53) Bool)
(declare-fun HasDirectPerm_18030_2212 (T@PolymorphicMapType_13960 T@Ref T@Field_18030_1585) Bool)
(declare-fun HasDirectPerm_17328_46798 (T@PolymorphicMapType_13960 T@Ref T@Field_17341_17346) Bool)
(declare-fun HasDirectPerm_17328_14013 (T@PolymorphicMapType_13960 T@Ref T@Field_17328_14013) Bool)
(declare-fun HasDirectPerm_17328_53 (T@PolymorphicMapType_13960 T@Ref T@Field_17328_53) Bool)
(declare-fun HasDirectPerm_17328_2212 (T@PolymorphicMapType_13960 T@Ref T@Field_17328_1210) Bool)
(declare-fun HasDirectPerm_7989_45664 (T@PolymorphicMapType_13960 T@Ref T@Field_20934_20939) Bool)
(declare-fun HasDirectPerm_7989_14013 (T@PolymorphicMapType_13960 T@Ref T@Field_7989_14013) Bool)
(declare-fun HasDirectPerm_7989_53 (T@PolymorphicMapType_13960 T@Ref T@Field_7989_53) Bool)
(declare-fun HasDirectPerm_7989_2212 (T@PolymorphicMapType_13960 T@Ref T@Field_7989_2212) Bool)
(declare-fun HasDirectPerm_7958_44523 (T@PolymorphicMapType_13960 T@Ref T@Field_7958_17346) Bool)
(declare-fun HasDirectPerm_7958_14013 (T@PolymorphicMapType_13960 T@Ref T@Field_14012_14013) Bool)
(declare-fun HasDirectPerm_7958_53 (T@PolymorphicMapType_13960 T@Ref T@Field_13999_53) Bool)
(declare-fun HasDirectPerm_7958_2212 (T@PolymorphicMapType_13960 T@Ref T@Field_19316_2212) Bool)
(declare-fun |wand_1#ft| (Bool T@Ref T@Ref Int) T@Field_18059_18060)
(declare-fun |wand_2#ft| (Bool T@Ref T@Ref Real) T@Field_18703_18704)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand_1#sm| (Bool T@Ref T@Ref Int) T@Field_18043_18048)
(declare-fun |wand_2#sm| (Bool T@Ref T@Ref Real) T@Field_18687_18692)
(declare-fun sumMask (T@PolymorphicMapType_13960 T@PolymorphicMapType_13960 T@PolymorphicMapType_13960) Bool)
(declare-fun |wand#sm| (Bool T@Ref Real T@Ref Int) T@Field_17341_17346)
(declare-fun |sum#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_7989_7990 (T@Field_19684_19685) Int)
(declare-fun InsidePredicate_19684_18674 (T@Field_19684_19685 T@FrameType T@Field_18703_18704 T@FrameType) Bool)
(declare-fun InsidePredicate_19684_18030 (T@Field_19684_19685 T@FrameType T@Field_18059_18060 T@FrameType) Bool)
(declare-fun InsidePredicate_19684_17328 (T@Field_19684_19685 T@FrameType T@Field_17357_17358 T@FrameType) Bool)
(declare-fun InsidePredicate_19684_13999 (T@Field_19684_19685 T@FrameType T@Field_7958_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_18674_19684 (T@Field_18703_18704 T@FrameType T@Field_19684_19685 T@FrameType) Bool)
(declare-fun InsidePredicate_18674_18030 (T@Field_18703_18704 T@FrameType T@Field_18059_18060 T@FrameType) Bool)
(declare-fun InsidePredicate_18674_17328 (T@Field_18703_18704 T@FrameType T@Field_17357_17358 T@FrameType) Bool)
(declare-fun InsidePredicate_18674_13999 (T@Field_18703_18704 T@FrameType T@Field_7958_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_18030_19684 (T@Field_18059_18060 T@FrameType T@Field_19684_19685 T@FrameType) Bool)
(declare-fun InsidePredicate_18030_18674 (T@Field_18059_18060 T@FrameType T@Field_18703_18704 T@FrameType) Bool)
(declare-fun InsidePredicate_18030_17328 (T@Field_18059_18060 T@FrameType T@Field_17357_17358 T@FrameType) Bool)
(declare-fun InsidePredicate_18030_13999 (T@Field_18059_18060 T@FrameType T@Field_7958_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_17328_19684 (T@Field_17357_17358 T@FrameType T@Field_19684_19685 T@FrameType) Bool)
(declare-fun InsidePredicate_17328_18674 (T@Field_17357_17358 T@FrameType T@Field_18703_18704 T@FrameType) Bool)
(declare-fun InsidePredicate_17328_18030 (T@Field_17357_17358 T@FrameType T@Field_18059_18060 T@FrameType) Bool)
(declare-fun InsidePredicate_17328_13999 (T@Field_17357_17358 T@FrameType T@Field_7958_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_13999_19684 (T@Field_7958_7990 T@FrameType T@Field_19684_19685 T@FrameType) Bool)
(declare-fun InsidePredicate_13999_18674 (T@Field_7958_7990 T@FrameType T@Field_18703_18704 T@FrameType) Bool)
(declare-fun InsidePredicate_13999_18030 (T@Field_7958_7990 T@FrameType T@Field_18059_18060 T@FrameType) Bool)
(declare-fun InsidePredicate_13999_17328 (T@Field_7958_7990 T@FrameType T@Field_17357_17358 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_13939) (Heap1 T@PolymorphicMapType_13939) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 Bool) (arg2 T@Ref) (arg3 T@Ref) (arg4 Int) ) (! (= (getPredWandId_7889_1585 (wand_1 arg1 arg2 arg3 arg4)) 2)
 :qid |stdinbpl.239:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1 arg2 arg3 arg4))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 T@Ref) (arg3@@0 T@Ref) (arg4@@0 Real) ) (! (= (getPredWandId_7920_1907 (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0)) 3)
 :qid |stdinbpl.271:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_13939) (Mask T@PolymorphicMapType_13960) (p_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (sum Heap p_1) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap) p_1 f_7)))
 :qid |stdinbpl.308:15|
 :skolemid |45|
 :pattern ( (state Heap Mask) (sum Heap p_1))
 :pattern ( (state Heap Mask) (|sum#triggerStateless| p_1) (|Single#trigger_7989| Heap (Single p_1)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13939) (Mask@@0 T@PolymorphicMapType_13960) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13939) (Heap1@@0 T@PolymorphicMapType_13939) (Heap2 T@PolymorphicMapType_13939) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19684_19685) ) (!  (not (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20934_20939) ) (!  (not (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7989_14013) ) (!  (not (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7989_53) ) (!  (not (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7989_2212) ) (!  (not (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_18703_18704) ) (!  (not (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_18687_18692) ) (!  (not (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_18674_14013) ) (!  (not (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_18674_53) ) (!  (not (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_18674_1907) ) (!  (not (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_18059_18060) ) (!  (not (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_18043_18048) ) (!  (not (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_18030_14013) ) (!  (not (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_18030_53) ) (!  (not (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_18030_1585) ) (!  (not (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17357_17358) ) (!  (not (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17341_17346) ) (!  (not (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_17328_14013) ) (!  (not (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_17328_53) ) (!  (not (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17328_1210) ) (!  (not (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_7958_7990) ) (!  (not (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_7958_17346) ) (!  (not (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_14012_14013) ) (!  (not (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_13999_53) ) (!  (not (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_19316_2212) ) (!  (not (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_7989_7990 (Single this))
 :qid |stdinbpl.388:15|
 :skolemid |48|
 :pattern ( (Single this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13939) (p_1@@0 T@Ref) ) (! (dummyFunction_2430 (|sum#triggerStateless| p_1@@0))
 :qid |stdinbpl.302:15|
 :skolemid |44|
 :pattern ( (|sum'| Heap@@1 p_1@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13939) (this@@0 T@Ref) ) (! (|Single#everUsed_7989| (Single this@@0))
 :qid |stdinbpl.407:15|
 :skolemid |52|
 :pattern ( (|Single#trigger_7989| Heap@@2 (Single this@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13939) (p_1@@1 T@Ref) ) (!  (and (= (sum Heap@@3 p_1@@1) (|sum'| Heap@@3 p_1@@1)) (dummyFunction_2430 (|sum#triggerStateless| p_1@@1)))
 :qid |stdinbpl.298:15|
 :skolemid |43|
 :pattern ( (sum Heap@@3 p_1@@1))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) (arg3@@1 Real) (arg4@@1 T@Ref) (arg5 Int) ) (! (= (getPredWandId_7849_1210 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5)) 1)
 :qid |stdinbpl.207:15|
 :skolemid |27|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13939) (ExhaleHeap T@PolymorphicMapType_13939) (Mask@@1 T@PolymorphicMapType_13960) (pm_f_22 T@Field_18703_18704) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_18674_7990 Mask@@1 null pm_f_22) (IsPredicateField_7931_7932 pm_f_22)) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@4) null (PredicateMaskField_18674 pm_f_22)) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap) null (PredicateMaskField_18674 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_7931_7932 pm_f_22) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap) null (PredicateMaskField_18674 pm_f_22)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13939) (ExhaleHeap@@0 T@PolymorphicMapType_13939) (Mask@@2 T@PolymorphicMapType_13960) (pm_f_22@@0 T@Field_18059_18060) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_18030_7990 Mask@@2 null pm_f_22@@0) (IsPredicateField_7898_7899 pm_f_22@@0)) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@5) null (PredicateMaskField_18030 pm_f_22@@0)) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@0) null (PredicateMaskField_18030 pm_f_22@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_7898_7899 pm_f_22@@0) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@0) null (PredicateMaskField_18030 pm_f_22@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13939) (ExhaleHeap@@1 T@PolymorphicMapType_13939) (Mask@@3 T@PolymorphicMapType_13960) (pm_f_22@@1 T@Field_17357_17358) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_17328_7990 Mask@@3 null pm_f_22@@1) (IsPredicateField_7860_7861 pm_f_22@@1)) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@6) null (PredicateMaskField_17328 pm_f_22@@1)) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@1) null (PredicateMaskField_17328 pm_f_22@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsPredicateField_7860_7861 pm_f_22@@1) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@1) null (PredicateMaskField_17328 pm_f_22@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13939) (ExhaleHeap@@2 T@PolymorphicMapType_13939) (Mask@@4 T@PolymorphicMapType_13960) (pm_f_22@@2 T@Field_19684_19685) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_7989_7990 Mask@@4 null pm_f_22@@2) (IsPredicateField_7989_7990 pm_f_22@@2)) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@7) null (PredicateMaskField_7989 pm_f_22@@2)) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@2) null (PredicateMaskField_7989 pm_f_22@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsPredicateField_7989_7990 pm_f_22@@2) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@2) null (PredicateMaskField_7989 pm_f_22@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13939) (ExhaleHeap@@3 T@PolymorphicMapType_13939) (Mask@@5 T@PolymorphicMapType_13960) (pm_f_22@@3 T@Field_7958_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_7958_7990 Mask@@5 null pm_f_22@@3) (IsPredicateField_7958_49311 pm_f_22@@3)) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@8) null (PredicateMaskField_7958 pm_f_22@@3)) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@3) null (PredicateMaskField_7958 pm_f_22@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_7958_49311 pm_f_22@@3) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@3) null (PredicateMaskField_7958 pm_f_22@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13939) (ExhaleHeap@@4 T@PolymorphicMapType_13939) (Mask@@6 T@PolymorphicMapType_13960) (pm_f_22@@4 T@Field_18703_18704) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_18674_7990 Mask@@6 null pm_f_22@@4) (IsWandField_7931_7932 pm_f_22@@4)) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@9) null (WandMaskField_7931 pm_f_22@@4)) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@4) null (WandMaskField_7931 pm_f_22@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsWandField_7931_7932 pm_f_22@@4) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@4) null (WandMaskField_7931 pm_f_22@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13939) (ExhaleHeap@@5 T@PolymorphicMapType_13939) (Mask@@7 T@PolymorphicMapType_13960) (pm_f_22@@5 T@Field_18059_18060) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_18030_7990 Mask@@7 null pm_f_22@@5) (IsWandField_7898_7899 pm_f_22@@5)) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@10) null (WandMaskField_7898 pm_f_22@@5)) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@5) null (WandMaskField_7898 pm_f_22@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_7898_7899 pm_f_22@@5) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@5) null (WandMaskField_7898 pm_f_22@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13939) (ExhaleHeap@@6 T@PolymorphicMapType_13939) (Mask@@8 T@PolymorphicMapType_13960) (pm_f_22@@6 T@Field_17357_17358) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_17328_7990 Mask@@8 null pm_f_22@@6) (IsWandField_7860_7861 pm_f_22@@6)) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@11) null (WandMaskField_7860 pm_f_22@@6)) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@6) null (WandMaskField_7860 pm_f_22@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_7860_7861 pm_f_22@@6) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@6) null (WandMaskField_7860 pm_f_22@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13939) (ExhaleHeap@@7 T@PolymorphicMapType_13939) (Mask@@9 T@PolymorphicMapType_13960) (pm_f_22@@7 T@Field_19684_19685) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_7989_7990 Mask@@9 null pm_f_22@@7) (IsWandField_7989_58033 pm_f_22@@7)) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@12) null (WandMaskField_7989 pm_f_22@@7)) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@7) null (WandMaskField_7989 pm_f_22@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (IsWandField_7989_58033 pm_f_22@@7) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@7) null (WandMaskField_7989 pm_f_22@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13939) (ExhaleHeap@@8 T@PolymorphicMapType_13939) (Mask@@10 T@PolymorphicMapType_13960) (pm_f_22@@8 T@Field_7958_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_7958_7990 Mask@@10 null pm_f_22@@8) (IsWandField_7958_57676 pm_f_22@@8)) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@13) null (WandMaskField_7958 pm_f_22@@8)) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@8) null (WandMaskField_7958 pm_f_22@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (IsWandField_7958_57676 pm_f_22@@8) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@8) null (WandMaskField_7958 pm_f_22@@8)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (Single this@@1) (Single this2)) (= this@@1 this2))
 :qid |stdinbpl.398:15|
 :skolemid |50|
 :pattern ( (Single this@@1) (Single this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Single#sm| this@@2) (|Single#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.402:15|
 :skolemid |51|
 :pattern ( (|Single#sm| this@@2) (|Single#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13939) (ExhaleHeap@@9 T@PolymorphicMapType_13939) (Mask@@11 T@PolymorphicMapType_13960) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@11) (=> (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@14) o_46 $allocated) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@9) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@11) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@9) o_46 $allocated))
)))
(assert (forall ((p T@Field_19684_19685) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_19684_19684 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19684_19684 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_18703_18704) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_18674_18674 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18674_18674 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_18059_18060) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_18030_18030 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18030_18030 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_17357_17358) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_17328_17328 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17328_17328 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_7958_7990) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_13999_13999 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13999_13999 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 T@Ref) (arg3@@2 Real) (arg4@@2 T@Ref) (arg5@@0 Int) ) (! (IsWandField_7849_1210 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@0))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@0))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) (arg3@@3 Real) (arg4@@3 T@Ref) (arg5@@1 Int) ) (! (IsWandField_7860_7861 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@1))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@1))
)))
(assert  (not (IsPredicateField_7958_2212 f_7)))
(assert  (not (IsWandField_7958_2212 f_7)))
(assert  (not (IsPredicateField_7958_2212 g)))
(assert  (not (IsWandField_7958_2212 g)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13939) (ExhaleHeap@@10 T@PolymorphicMapType_13939) (Mask@@12 T@PolymorphicMapType_13960) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@12) (succHeap Heap@@15 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@12))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 T@Ref) (arg3@@4 Real) (arg4@@4 T@Ref) (arg5@@2 Int) ) (!  (not (IsPredicateField_7849_1210 (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@2)))
 :qid |stdinbpl.195:15|
 :skolemid |24|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@2))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 T@Ref) (arg3@@5 Real) (arg4@@5 T@Ref) (arg5@@3 Int) ) (!  (not (IsPredicateField_7860_7861 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@3)))
 :qid |stdinbpl.199:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_13960) (o_2@@24 T@Ref) (f_4@@24 T@Field_18687_18692) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@@13) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7920_76065 f_4@@24))) (not (IsWandField_7920_76081 f_4@@24))) (<= (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@@13) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@@13) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_13960) (o_2@@25 T@Ref) (f_4@@25 T@Field_18674_14013) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@@14) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7920_14013 f_4@@25))) (not (IsWandField_7920_14013 f_4@@25))) (<= (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@@14) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@@14) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_13960) (o_2@@26 T@Ref) (f_4@@26 T@Field_18674_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@@15) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_7920_53 f_4@@26))) (not (IsWandField_7920_53 f_4@@26))) (<= (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@@15) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@@15) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_13960) (o_2@@27 T@Ref) (f_4@@27 T@Field_18674_1907) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@@16) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7920_1907 f_4@@27))) (not (IsWandField_7920_1907 f_4@@27))) (<= (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@@16) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@@16) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_13960) (o_2@@28 T@Ref) (f_4@@28 T@Field_18703_18704) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@@17) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_7931_7932 f_4@@28))) (not (IsWandField_7931_7932 f_4@@28))) (<= (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@@17) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@@17) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_13960) (o_2@@29 T@Ref) (f_4@@29 T@Field_18043_18048) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@@18) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7889_75248 f_4@@29))) (not (IsWandField_7889_75264 f_4@@29))) (<= (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@@18) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@@18) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_13960) (o_2@@30 T@Ref) (f_4@@30 T@Field_18030_14013) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@@19) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7889_14013 f_4@@30))) (not (IsWandField_7889_14013 f_4@@30))) (<= (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@@19) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@@19) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_13960) (o_2@@31 T@Ref) (f_4@@31 T@Field_18030_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@@20) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_7889_53 f_4@@31))) (not (IsWandField_7889_53 f_4@@31))) (<= (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@@20) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@@20) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13960) (o_2@@32 T@Ref) (f_4@@32 T@Field_18030_1585) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@@21) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_7889_1585 f_4@@32))) (not (IsWandField_7889_1585 f_4@@32))) (<= (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@@21) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@@21) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13960) (o_2@@33 T@Ref) (f_4@@33 T@Field_18059_18060) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@@22) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_7898_7899 f_4@@33))) (not (IsWandField_7898_7899 f_4@@33))) (<= (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@@22) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@@22) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13960) (o_2@@34 T@Ref) (f_4@@34 T@Field_17341_17346) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@@23) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_7849_74431 f_4@@34))) (not (IsWandField_7849_74447 f_4@@34))) (<= (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@@23) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@@23) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13960) (o_2@@35 T@Ref) (f_4@@35 T@Field_17328_14013) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@@24) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_7849_14013 f_4@@35))) (not (IsWandField_7849_14013 f_4@@35))) (<= (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@@24) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@@24) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13960) (o_2@@36 T@Ref) (f_4@@36 T@Field_17328_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@@25) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_7849_53 f_4@@36))) (not (IsWandField_7849_53 f_4@@36))) (<= (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@@25) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@@25) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13960) (o_2@@37 T@Ref) (f_4@@37 T@Field_17328_1210) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@@26) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_7849_1210 f_4@@37))) (not (IsWandField_7849_1210 f_4@@37))) (<= (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@@26) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@@26) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13960) (o_2@@38 T@Ref) (f_4@@38 T@Field_17357_17358) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@@27) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_7860_7861 f_4@@38))) (not (IsWandField_7860_7861 f_4@@38))) (<= (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@@27) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@@27) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13960) (o_2@@39 T@Ref) (f_4@@39 T@Field_7958_17346) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@@28) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_7958_73614 f_4@@39))) (not (IsWandField_7958_73630 f_4@@39))) (<= (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@@28) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@@28) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13960) (o_2@@40 T@Ref) (f_4@@40 T@Field_14012_14013) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@@29) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_7958_14013 f_4@@40))) (not (IsWandField_7958_14013 f_4@@40))) (<= (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@@29) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@@29) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_13960) (o_2@@41 T@Ref) (f_4@@41 T@Field_13999_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@@30) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_7958_53 f_4@@41))) (not (IsWandField_7958_53 f_4@@41))) (<= (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@@30) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@@30) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_13960) (o_2@@42 T@Ref) (f_4@@42 T@Field_19316_2212) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@@31) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_7958_2212 f_4@@42))) (not (IsWandField_7958_2212 f_4@@42))) (<= (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@@31) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@@31) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_13960) (o_2@@43 T@Ref) (f_4@@43 T@Field_7958_7990) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@@32) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_7958_49311 f_4@@43))) (not (IsWandField_7958_57676 f_4@@43))) (<= (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@@32) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@@32) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_13960) (o_2@@44 T@Ref) (f_4@@44 T@Field_20934_20939) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@@33) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_7989_72797 f_4@@44))) (not (IsWandField_7989_72813 f_4@@44))) (<= (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@@33) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@@33) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_13960) (o_2@@45 T@Ref) (f_4@@45 T@Field_7989_14013) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@@34) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_7989_14013 f_4@@45))) (not (IsWandField_7989_14013 f_4@@45))) (<= (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@@34) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@@34) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_13960) (o_2@@46 T@Ref) (f_4@@46 T@Field_7989_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@@35) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_7989_53 f_4@@46))) (not (IsWandField_7989_53 f_4@@46))) (<= (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@@35) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@@35) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_13960) (o_2@@47 T@Ref) (f_4@@47 T@Field_7989_2212) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@@36) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_7989_2212 f_4@@47))) (not (IsWandField_7989_2212 f_4@@47))) (<= (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@@36) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@@36) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_13960) (o_2@@48 T@Ref) (f_4@@48 T@Field_19684_19685) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@@37) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_7989_7990 f_4@@48))) (not (IsWandField_7989_58033 f_4@@48))) (<= (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@@37) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@@37) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_13960) (o_2@@49 T@Ref) (f_4@@49 T@Field_18687_18692) ) (! (= (HasDirectPerm_18674_49066 Mask@@38 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@@38) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18674_49066 Mask@@38 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_13960) (o_2@@50 T@Ref) (f_4@@50 T@Field_18674_14013) ) (! (= (HasDirectPerm_18674_14013 Mask@@39 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@@39) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18674_14013 Mask@@39 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_13960) (o_2@@51 T@Ref) (f_4@@51 T@Field_18674_53) ) (! (= (HasDirectPerm_18674_53 Mask@@40 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@@40) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18674_53 Mask@@40 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_13960) (o_2@@52 T@Ref) (f_4@@52 T@Field_18703_18704) ) (! (= (HasDirectPerm_18674_7990 Mask@@41 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@@41) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18674_7990 Mask@@41 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_13960) (o_2@@53 T@Ref) (f_4@@53 T@Field_18674_1907) ) (! (= (HasDirectPerm_18674_2212 Mask@@42 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@@42) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18674_2212 Mask@@42 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_13960) (o_2@@54 T@Ref) (f_4@@54 T@Field_18043_18048) ) (! (= (HasDirectPerm_18030_47932 Mask@@43 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@@43) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18030_47932 Mask@@43 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_13960) (o_2@@55 T@Ref) (f_4@@55 T@Field_18030_14013) ) (! (= (HasDirectPerm_18030_14013 Mask@@44 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@@44) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18030_14013 Mask@@44 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_13960) (o_2@@56 T@Ref) (f_4@@56 T@Field_18030_53) ) (! (= (HasDirectPerm_18030_53 Mask@@45 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@@45) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18030_53 Mask@@45 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_13960) (o_2@@57 T@Ref) (f_4@@57 T@Field_18059_18060) ) (! (= (HasDirectPerm_18030_7990 Mask@@46 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@@46) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18030_7990 Mask@@46 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_13960) (o_2@@58 T@Ref) (f_4@@58 T@Field_18030_1585) ) (! (= (HasDirectPerm_18030_2212 Mask@@47 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@@47) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18030_2212 Mask@@47 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_13960) (o_2@@59 T@Ref) (f_4@@59 T@Field_17341_17346) ) (! (= (HasDirectPerm_17328_46798 Mask@@48 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@@48) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17328_46798 Mask@@48 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_13960) (o_2@@60 T@Ref) (f_4@@60 T@Field_17328_14013) ) (! (= (HasDirectPerm_17328_14013 Mask@@49 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@@49) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17328_14013 Mask@@49 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_13960) (o_2@@61 T@Ref) (f_4@@61 T@Field_17328_53) ) (! (= (HasDirectPerm_17328_53 Mask@@50 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@@50) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17328_53 Mask@@50 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_13960) (o_2@@62 T@Ref) (f_4@@62 T@Field_17357_17358) ) (! (= (HasDirectPerm_17328_7990 Mask@@51 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@@51) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17328_7990 Mask@@51 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_13960) (o_2@@63 T@Ref) (f_4@@63 T@Field_17328_1210) ) (! (= (HasDirectPerm_17328_2212 Mask@@52 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@@52) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17328_2212 Mask@@52 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_13960) (o_2@@64 T@Ref) (f_4@@64 T@Field_20934_20939) ) (! (= (HasDirectPerm_7989_45664 Mask@@53 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@@53) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7989_45664 Mask@@53 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_13960) (o_2@@65 T@Ref) (f_4@@65 T@Field_7989_14013) ) (! (= (HasDirectPerm_7989_14013 Mask@@54 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@@54) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7989_14013 Mask@@54 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_13960) (o_2@@66 T@Ref) (f_4@@66 T@Field_7989_53) ) (! (= (HasDirectPerm_7989_53 Mask@@55 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@@55) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7989_53 Mask@@55 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_13960) (o_2@@67 T@Ref) (f_4@@67 T@Field_19684_19685) ) (! (= (HasDirectPerm_7989_7990 Mask@@56 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@@56) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7989_7990 Mask@@56 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_13960) (o_2@@68 T@Ref) (f_4@@68 T@Field_7989_2212) ) (! (= (HasDirectPerm_7989_2212 Mask@@57 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@@57) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7989_2212 Mask@@57 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_13960) (o_2@@69 T@Ref) (f_4@@69 T@Field_7958_17346) ) (! (= (HasDirectPerm_7958_44523 Mask@@58 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@@58) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7958_44523 Mask@@58 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_13960) (o_2@@70 T@Ref) (f_4@@70 T@Field_14012_14013) ) (! (= (HasDirectPerm_7958_14013 Mask@@59 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@@59) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7958_14013 Mask@@59 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_13960) (o_2@@71 T@Ref) (f_4@@71 T@Field_13999_53) ) (! (= (HasDirectPerm_7958_53 Mask@@60 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@@60) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7958_53 Mask@@60 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_13960) (o_2@@72 T@Ref) (f_4@@72 T@Field_7958_7990) ) (! (= (HasDirectPerm_7958_7990 Mask@@61 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@@61) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7958_7990 Mask@@61 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_13960) (o_2@@73 T@Ref) (f_4@@73 T@Field_19316_2212) ) (! (= (HasDirectPerm_7958_2212 Mask@@62 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@@62) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7958_2212 Mask@@62 o_2@@73 f_4@@73))
)))
(assert (forall ((arg1@@6 Bool) (arg2@@6 T@Ref) (arg3@@6 T@Ref) (arg4@@6 Int) ) (! (IsWandField_7889_1585 (wand_1 arg1@@6 arg2@@6 arg3@@6 arg4@@6))
 :qid |stdinbpl.219:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@6 arg2@@6 arg3@@6 arg4@@6))
)))
(assert (forall ((arg1@@7 Bool) (arg2@@7 T@Ref) (arg3@@7 T@Ref) (arg4@@7 Int) ) (! (IsWandField_7898_7899 (|wand_1#ft| arg1@@7 arg2@@7 arg3@@7 arg4@@7))
 :qid |stdinbpl.223:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@7 arg2@@7 arg3@@7 arg4@@7))
)))
(assert (forall ((arg1@@8 Bool) (arg2@@8 T@Ref) (arg3@@8 T@Ref) (arg4@@8 Real) ) (! (IsWandField_7920_1907 (wand_2 arg1@@8 arg2@@8 arg3@@8 arg4@@8))
 :qid |stdinbpl.251:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@8 arg2@@8 arg3@@8 arg4@@8))
)))
(assert (forall ((arg1@@9 Bool) (arg2@@9 T@Ref) (arg3@@9 T@Ref) (arg4@@9 Real) ) (! (IsWandField_7931_7932 (|wand_2#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9))
 :qid |stdinbpl.255:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9))
)))
(assert (forall ((arg1@@10 Bool) (arg2@@10 T@Ref) (arg3@@10 T@Ref) (arg4@@10 Int) (arg1_2 Bool) (arg2_2 T@Ref) (arg3_2 T@Ref) (arg4_2 Int) ) (!  (=> (= (wand_1 arg1@@10 arg2@@10 arg3@@10 arg4@@10) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@10 arg1_2) (and (= arg2@@10 arg2_2) (and (= arg3@@10 arg3_2) (= arg4@@10 arg4_2)))))
 :qid |stdinbpl.243:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@10 arg2@@10 arg3@@10 arg4@@10) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2))
)))
(assert (forall ((arg1@@11 Bool) (arg2@@11 T@Ref) (arg3@@11 T@Ref) (arg4@@11 Real) (arg1_2@@0 Bool) (arg2_2@@0 T@Ref) (arg3_2@@0 T@Ref) (arg4_2@@0 Real) ) (!  (=> (= (wand_2 arg1@@11 arg2@@11 arg3@@11 arg4@@11) (wand_2 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0)) (and (= arg1@@11 arg1_2@@0) (and (= arg2@@11 arg2_2@@0) (and (= arg3@@11 arg3_2@@0) (= arg4@@11 arg4_2@@0)))))
 :qid |stdinbpl.275:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@11 arg2@@11 arg3@@11 arg4@@11) (wand_2 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13939) (ExhaleHeap@@11 T@PolymorphicMapType_13939) (Mask@@63 T@PolymorphicMapType_13960) (o_46@@0 T@Ref) (f_37 T@Field_18687_18692) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@63) (=> (HasDirectPerm_18674_49066 Mask@@63 o_46@@0 f_37) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@16) o_46@@0 f_37) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@11) o_46@@0 f_37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@63) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@11) o_46@@0 f_37))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13939) (ExhaleHeap@@12 T@PolymorphicMapType_13939) (Mask@@64 T@PolymorphicMapType_13960) (o_46@@1 T@Ref) (f_37@@0 T@Field_18674_14013) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@64) (=> (HasDirectPerm_18674_14013 Mask@@64 o_46@@1 f_37@@0) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@17) o_46@@1 f_37@@0) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@12) o_46@@1 f_37@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@64) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@12) o_46@@1 f_37@@0))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13939) (ExhaleHeap@@13 T@PolymorphicMapType_13939) (Mask@@65 T@PolymorphicMapType_13960) (o_46@@2 T@Ref) (f_37@@1 T@Field_18674_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@65) (=> (HasDirectPerm_18674_53 Mask@@65 o_46@@2 f_37@@1) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@18) o_46@@2 f_37@@1) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@13) o_46@@2 f_37@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@65) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@13) o_46@@2 f_37@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13939) (ExhaleHeap@@14 T@PolymorphicMapType_13939) (Mask@@66 T@PolymorphicMapType_13960) (o_46@@3 T@Ref) (f_37@@2 T@Field_18703_18704) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@66) (=> (HasDirectPerm_18674_7990 Mask@@66 o_46@@3 f_37@@2) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@19) o_46@@3 f_37@@2) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@14) o_46@@3 f_37@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@66) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@14) o_46@@3 f_37@@2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13939) (ExhaleHeap@@15 T@PolymorphicMapType_13939) (Mask@@67 T@PolymorphicMapType_13960) (o_46@@4 T@Ref) (f_37@@3 T@Field_18674_1907) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@67) (=> (HasDirectPerm_18674_2212 Mask@@67 o_46@@4 f_37@@3) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@20) o_46@@4 f_37@@3) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@15) o_46@@4 f_37@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@67) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@15) o_46@@4 f_37@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13939) (ExhaleHeap@@16 T@PolymorphicMapType_13939) (Mask@@68 T@PolymorphicMapType_13960) (o_46@@5 T@Ref) (f_37@@4 T@Field_18043_18048) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@68) (=> (HasDirectPerm_18030_47932 Mask@@68 o_46@@5 f_37@@4) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@21) o_46@@5 f_37@@4) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@16) o_46@@5 f_37@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@68) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@16) o_46@@5 f_37@@4))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13939) (ExhaleHeap@@17 T@PolymorphicMapType_13939) (Mask@@69 T@PolymorphicMapType_13960) (o_46@@6 T@Ref) (f_37@@5 T@Field_18030_14013) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@69) (=> (HasDirectPerm_18030_14013 Mask@@69 o_46@@6 f_37@@5) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@22) o_46@@6 f_37@@5) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@17) o_46@@6 f_37@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@69) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@17) o_46@@6 f_37@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13939) (ExhaleHeap@@18 T@PolymorphicMapType_13939) (Mask@@70 T@PolymorphicMapType_13960) (o_46@@7 T@Ref) (f_37@@6 T@Field_18030_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@70) (=> (HasDirectPerm_18030_53 Mask@@70 o_46@@7 f_37@@6) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@23) o_46@@7 f_37@@6) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@18) o_46@@7 f_37@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@70) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@18) o_46@@7 f_37@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13939) (ExhaleHeap@@19 T@PolymorphicMapType_13939) (Mask@@71 T@PolymorphicMapType_13960) (o_46@@8 T@Ref) (f_37@@7 T@Field_18059_18060) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@71) (=> (HasDirectPerm_18030_7990 Mask@@71 o_46@@8 f_37@@7) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@24) o_46@@8 f_37@@7) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@19) o_46@@8 f_37@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@71) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@19) o_46@@8 f_37@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13939) (ExhaleHeap@@20 T@PolymorphicMapType_13939) (Mask@@72 T@PolymorphicMapType_13960) (o_46@@9 T@Ref) (f_37@@8 T@Field_18030_1585) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@72) (=> (HasDirectPerm_18030_2212 Mask@@72 o_46@@9 f_37@@8) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@25) o_46@@9 f_37@@8) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@20) o_46@@9 f_37@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@72) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@20) o_46@@9 f_37@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13939) (ExhaleHeap@@21 T@PolymorphicMapType_13939) (Mask@@73 T@PolymorphicMapType_13960) (o_46@@10 T@Ref) (f_37@@9 T@Field_17341_17346) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@73) (=> (HasDirectPerm_17328_46798 Mask@@73 o_46@@10 f_37@@9) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@26) o_46@@10 f_37@@9) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@21) o_46@@10 f_37@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@73) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@21) o_46@@10 f_37@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13939) (ExhaleHeap@@22 T@PolymorphicMapType_13939) (Mask@@74 T@PolymorphicMapType_13960) (o_46@@11 T@Ref) (f_37@@10 T@Field_17328_14013) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@74) (=> (HasDirectPerm_17328_14013 Mask@@74 o_46@@11 f_37@@10) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@27) o_46@@11 f_37@@10) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@22) o_46@@11 f_37@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@74) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@22) o_46@@11 f_37@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13939) (ExhaleHeap@@23 T@PolymorphicMapType_13939) (Mask@@75 T@PolymorphicMapType_13960) (o_46@@12 T@Ref) (f_37@@11 T@Field_17328_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@75) (=> (HasDirectPerm_17328_53 Mask@@75 o_46@@12 f_37@@11) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@28) o_46@@12 f_37@@11) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@23) o_46@@12 f_37@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@75) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@23) o_46@@12 f_37@@11))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13939) (ExhaleHeap@@24 T@PolymorphicMapType_13939) (Mask@@76 T@PolymorphicMapType_13960) (o_46@@13 T@Ref) (f_37@@12 T@Field_17357_17358) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@76) (=> (HasDirectPerm_17328_7990 Mask@@76 o_46@@13 f_37@@12) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@29) o_46@@13 f_37@@12) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@24) o_46@@13 f_37@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@76) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@24) o_46@@13 f_37@@12))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13939) (ExhaleHeap@@25 T@PolymorphicMapType_13939) (Mask@@77 T@PolymorphicMapType_13960) (o_46@@14 T@Ref) (f_37@@13 T@Field_17328_1210) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@77) (=> (HasDirectPerm_17328_2212 Mask@@77 o_46@@14 f_37@@13) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@30) o_46@@14 f_37@@13) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@25) o_46@@14 f_37@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@77) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@25) o_46@@14 f_37@@13))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_13939) (ExhaleHeap@@26 T@PolymorphicMapType_13939) (Mask@@78 T@PolymorphicMapType_13960) (o_46@@15 T@Ref) (f_37@@14 T@Field_20934_20939) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@78) (=> (HasDirectPerm_7989_45664 Mask@@78 o_46@@15 f_37@@14) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@31) o_46@@15 f_37@@14) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@26) o_46@@15 f_37@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@78) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@26) o_46@@15 f_37@@14))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_13939) (ExhaleHeap@@27 T@PolymorphicMapType_13939) (Mask@@79 T@PolymorphicMapType_13960) (o_46@@16 T@Ref) (f_37@@15 T@Field_7989_14013) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@79) (=> (HasDirectPerm_7989_14013 Mask@@79 o_46@@16 f_37@@15) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@32) o_46@@16 f_37@@15) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@27) o_46@@16 f_37@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@79) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@27) o_46@@16 f_37@@15))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_13939) (ExhaleHeap@@28 T@PolymorphicMapType_13939) (Mask@@80 T@PolymorphicMapType_13960) (o_46@@17 T@Ref) (f_37@@16 T@Field_7989_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@80) (=> (HasDirectPerm_7989_53 Mask@@80 o_46@@17 f_37@@16) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@33) o_46@@17 f_37@@16) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@28) o_46@@17 f_37@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@80) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@28) o_46@@17 f_37@@16))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_13939) (ExhaleHeap@@29 T@PolymorphicMapType_13939) (Mask@@81 T@PolymorphicMapType_13960) (o_46@@18 T@Ref) (f_37@@17 T@Field_19684_19685) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@81) (=> (HasDirectPerm_7989_7990 Mask@@81 o_46@@18 f_37@@17) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@34) o_46@@18 f_37@@17) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@29) o_46@@18 f_37@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@81) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@29) o_46@@18 f_37@@17))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_13939) (ExhaleHeap@@30 T@PolymorphicMapType_13939) (Mask@@82 T@PolymorphicMapType_13960) (o_46@@19 T@Ref) (f_37@@18 T@Field_7989_2212) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@82) (=> (HasDirectPerm_7989_2212 Mask@@82 o_46@@19 f_37@@18) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@35) o_46@@19 f_37@@18) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@30) o_46@@19 f_37@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@82) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@30) o_46@@19 f_37@@18))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_13939) (ExhaleHeap@@31 T@PolymorphicMapType_13939) (Mask@@83 T@PolymorphicMapType_13960) (o_46@@20 T@Ref) (f_37@@19 T@Field_7958_17346) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@83) (=> (HasDirectPerm_7958_44523 Mask@@83 o_46@@20 f_37@@19) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@36) o_46@@20 f_37@@19) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@31) o_46@@20 f_37@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@83) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@31) o_46@@20 f_37@@19))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_13939) (ExhaleHeap@@32 T@PolymorphicMapType_13939) (Mask@@84 T@PolymorphicMapType_13960) (o_46@@21 T@Ref) (f_37@@20 T@Field_14012_14013) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@84) (=> (HasDirectPerm_7958_14013 Mask@@84 o_46@@21 f_37@@20) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@37) o_46@@21 f_37@@20) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@32) o_46@@21 f_37@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@84) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@32) o_46@@21 f_37@@20))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_13939) (ExhaleHeap@@33 T@PolymorphicMapType_13939) (Mask@@85 T@PolymorphicMapType_13960) (o_46@@22 T@Ref) (f_37@@21 T@Field_13999_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@85) (=> (HasDirectPerm_7958_53 Mask@@85 o_46@@22 f_37@@21) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@38) o_46@@22 f_37@@21) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@33) o_46@@22 f_37@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@85) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@33) o_46@@22 f_37@@21))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_13939) (ExhaleHeap@@34 T@PolymorphicMapType_13939) (Mask@@86 T@PolymorphicMapType_13960) (o_46@@23 T@Ref) (f_37@@22 T@Field_7958_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@86) (=> (HasDirectPerm_7958_7990 Mask@@86 o_46@@23 f_37@@22) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@39) o_46@@23 f_37@@22) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@34) o_46@@23 f_37@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@86) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@34) o_46@@23 f_37@@22))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_13939) (ExhaleHeap@@35 T@PolymorphicMapType_13939) (Mask@@87 T@PolymorphicMapType_13960) (o_46@@24 T@Ref) (f_37@@23 T@Field_19316_2212) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@87) (=> (HasDirectPerm_7958_2212 Mask@@87 o_46@@24 f_37@@23) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@40) o_46@@24 f_37@@23) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@35) o_46@@24 f_37@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@87) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@35) o_46@@24 f_37@@23))
)))
(assert (forall ((arg1@@12 Bool) (arg2@@12 T@Ref) (arg3@@12 T@Ref) (arg4@@12 Int) ) (!  (not (IsPredicateField_7889_1585 (wand_1 arg1@@12 arg2@@12 arg3@@12 arg4@@12)))
 :qid |stdinbpl.227:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@12 arg2@@12 arg3@@12 arg4@@12))
)))
(assert (forall ((arg1@@13 Bool) (arg2@@13 T@Ref) (arg3@@13 T@Ref) (arg4@@13 Int) ) (!  (not (IsPredicateField_7898_7899 (|wand_1#ft| arg1@@13 arg2@@13 arg3@@13 arg4@@13)))
 :qid |stdinbpl.231:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@13 arg2@@13 arg3@@13 arg4@@13))
)))
(assert (forall ((arg1@@14 Bool) (arg2@@14 T@Ref) (arg3@@14 T@Ref) (arg4@@14 Real) ) (!  (not (IsPredicateField_7920_1907 (wand_2 arg1@@14 arg2@@14 arg3@@14 arg4@@14)))
 :qid |stdinbpl.259:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@14 arg2@@14 arg3@@14 arg4@@14))
)))
(assert (forall ((arg1@@15 Bool) (arg2@@15 T@Ref) (arg3@@15 T@Ref) (arg4@@15 Real) ) (!  (not (IsPredicateField_7931_7932 (|wand_2#ft| arg1@@15 arg2@@15 arg3@@15 arg4@@15)))
 :qid |stdinbpl.263:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@15 arg2@@15 arg3@@15 arg4@@15))
)))
(assert (forall ((arg1@@16 Bool) (arg2@@16 T@Ref) (arg3@@16 T@Ref) (arg4@@16 Int) ) (! (= (|wand_1#sm| arg1@@16 arg2@@16 arg3@@16 arg4@@16) (WandMaskField_7898 (|wand_1#ft| arg1@@16 arg2@@16 arg3@@16 arg4@@16)))
 :qid |stdinbpl.235:15|
 :skolemid |33|
 :pattern ( (WandMaskField_7898 (|wand_1#ft| arg1@@16 arg2@@16 arg3@@16 arg4@@16)))
)))
(assert (forall ((arg1@@17 Bool) (arg2@@17 T@Ref) (arg3@@17 T@Ref) (arg4@@17 Real) ) (! (= (|wand_2#sm| arg1@@17 arg2@@17 arg3@@17 arg4@@17) (WandMaskField_7931 (|wand_2#ft| arg1@@17 arg2@@17 arg3@@17 arg4@@17)))
 :qid |stdinbpl.267:15|
 :skolemid |40|
 :pattern ( (WandMaskField_7931 (|wand_2#ft| arg1@@17 arg2@@17 arg3@@17 arg4@@17)))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_18687_18692) ) (! (= (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_18674_14013) ) (! (= (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_18674_53) ) (! (= (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_18674_1907) ) (! (= (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_18703_18704) ) (! (= (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_18043_18048) ) (! (= (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_18030_14013) ) (! (= (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_18030_53) ) (! (= (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_18030_1585) ) (! (= (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_18059_18060) ) (! (= (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_17341_17346) ) (! (= (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_17328_14013) ) (! (= (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_17328_53) ) (! (= (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_17328_1210) ) (! (= (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_17357_17358) ) (! (= (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_7958_17346) ) (! (= (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_14012_14013) ) (! (= (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_13999_53) ) (! (= (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_19316_2212) ) (! (= (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_7958_7990) ) (! (= (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_20934_20939) ) (! (= (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_7989_14013) ) (! (= (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_7989_53) ) (! (= (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_7989_2212) ) (! (= (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_19684_19685) ) (! (= (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13960) (SummandMask1 T@PolymorphicMapType_13960) (SummandMask2 T@PolymorphicMapType_13960) (o_2@@99 T@Ref) (f_4@@99 T@Field_18687_18692) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13960) (SummandMask1@@0 T@PolymorphicMapType_13960) (SummandMask2@@0 T@PolymorphicMapType_13960) (o_2@@100 T@Ref) (f_4@@100 T@Field_18674_14013) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13960) (SummandMask1@@1 T@PolymorphicMapType_13960) (SummandMask2@@1 T@PolymorphicMapType_13960) (o_2@@101 T@Ref) (f_4@@101 T@Field_18674_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13960) (SummandMask1@@2 T@PolymorphicMapType_13960) (SummandMask2@@2 T@PolymorphicMapType_13960) (o_2@@102 T@Ref) (f_4@@102 T@Field_18674_1907) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13960) (SummandMask1@@3 T@PolymorphicMapType_13960) (SummandMask2@@3 T@PolymorphicMapType_13960) (o_2@@103 T@Ref) (f_4@@103 T@Field_18703_18704) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13960) (SummandMask1@@4 T@PolymorphicMapType_13960) (SummandMask2@@4 T@PolymorphicMapType_13960) (o_2@@104 T@Ref) (f_4@@104 T@Field_18043_18048) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13960) (SummandMask1@@5 T@PolymorphicMapType_13960) (SummandMask2@@5 T@PolymorphicMapType_13960) (o_2@@105 T@Ref) (f_4@@105 T@Field_18030_14013) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13960) (SummandMask1@@6 T@PolymorphicMapType_13960) (SummandMask2@@6 T@PolymorphicMapType_13960) (o_2@@106 T@Ref) (f_4@@106 T@Field_18030_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13960) (SummandMask1@@7 T@PolymorphicMapType_13960) (SummandMask2@@7 T@PolymorphicMapType_13960) (o_2@@107 T@Ref) (f_4@@107 T@Field_18030_1585) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13960) (SummandMask1@@8 T@PolymorphicMapType_13960) (SummandMask2@@8 T@PolymorphicMapType_13960) (o_2@@108 T@Ref) (f_4@@108 T@Field_18059_18060) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_13960) (SummandMask1@@9 T@PolymorphicMapType_13960) (SummandMask2@@9 T@PolymorphicMapType_13960) (o_2@@109 T@Ref) (f_4@@109 T@Field_17341_17346) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_13960) (SummandMask1@@10 T@PolymorphicMapType_13960) (SummandMask2@@10 T@PolymorphicMapType_13960) (o_2@@110 T@Ref) (f_4@@110 T@Field_17328_14013) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_13960) (SummandMask1@@11 T@PolymorphicMapType_13960) (SummandMask2@@11 T@PolymorphicMapType_13960) (o_2@@111 T@Ref) (f_4@@111 T@Field_17328_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_13960) (SummandMask1@@12 T@PolymorphicMapType_13960) (SummandMask2@@12 T@PolymorphicMapType_13960) (o_2@@112 T@Ref) (f_4@@112 T@Field_17328_1210) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_13960) (SummandMask1@@13 T@PolymorphicMapType_13960) (SummandMask2@@13 T@PolymorphicMapType_13960) (o_2@@113 T@Ref) (f_4@@113 T@Field_17357_17358) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_13960) (SummandMask1@@14 T@PolymorphicMapType_13960) (SummandMask2@@14 T@PolymorphicMapType_13960) (o_2@@114 T@Ref) (f_4@@114 T@Field_7958_17346) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_13960) (SummandMask1@@15 T@PolymorphicMapType_13960) (SummandMask2@@15 T@PolymorphicMapType_13960) (o_2@@115 T@Ref) (f_4@@115 T@Field_14012_14013) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_13960) (SummandMask1@@16 T@PolymorphicMapType_13960) (SummandMask2@@16 T@PolymorphicMapType_13960) (o_2@@116 T@Ref) (f_4@@116 T@Field_13999_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_13960) (SummandMask1@@17 T@PolymorphicMapType_13960) (SummandMask2@@17 T@PolymorphicMapType_13960) (o_2@@117 T@Ref) (f_4@@117 T@Field_19316_2212) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_13960) (SummandMask1@@18 T@PolymorphicMapType_13960) (SummandMask2@@18 T@PolymorphicMapType_13960) (o_2@@118 T@Ref) (f_4@@118 T@Field_7958_7990) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_13960) (SummandMask1@@19 T@PolymorphicMapType_13960) (SummandMask2@@19 T@PolymorphicMapType_13960) (o_2@@119 T@Ref) (f_4@@119 T@Field_20934_20939) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_13960) (SummandMask1@@20 T@PolymorphicMapType_13960) (SummandMask2@@20 T@PolymorphicMapType_13960) (o_2@@120 T@Ref) (f_4@@120 T@Field_7989_14013) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_13960) (SummandMask1@@21 T@PolymorphicMapType_13960) (SummandMask2@@21 T@PolymorphicMapType_13960) (o_2@@121 T@Ref) (f_4@@121 T@Field_7989_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_13960) (SummandMask1@@22 T@PolymorphicMapType_13960) (SummandMask2@@22 T@PolymorphicMapType_13960) (o_2@@122 T@Ref) (f_4@@122 T@Field_7989_2212) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_13960) (SummandMask1@@23 T@PolymorphicMapType_13960) (SummandMask2@@23 T@PolymorphicMapType_13960) (o_2@@123 T@Ref) (f_4@@123 T@Field_19684_19685) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((arg1@@18 Bool) (arg2@@18 T@Ref) (arg3@@18 Real) (arg4@@18 T@Ref) (arg5@@4 Int) (arg1_2@@1 Bool) (arg2_2@@1 T@Ref) (arg3_2@@1 Real) (arg4_2@@1 T@Ref) (arg5_2 Int) ) (!  (=> (= (wand arg1@@18 arg2@@18 arg3@@18 arg4@@18 arg5@@4) (wand arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@1 arg5_2)) (and (= arg1@@18 arg1_2@@1) (and (= arg2@@18 arg2_2@@1) (and (= arg3@@18 arg3_2@@1) (and (= arg4@@18 arg4_2@@1) (= arg5@@4 arg5_2))))))
 :qid |stdinbpl.211:15|
 :skolemid |28|
 :pattern ( (wand arg1@@18 arg2@@18 arg3@@18 arg4@@18 arg5@@4) (wand arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@1 arg5_2))
)))
(assert (forall ((arg1@@19 Bool) (arg2@@19 T@Ref) (arg3@@19 Real) (arg4@@19 T@Ref) (arg5@@5 Int) ) (! (= (|wand#sm| arg1@@19 arg2@@19 arg3@@19 arg4@@19 arg5@@5) (WandMaskField_7860 (|wand#ft| arg1@@19 arg2@@19 arg3@@19 arg4@@19 arg5@@5)))
 :qid |stdinbpl.203:15|
 :skolemid |26|
 :pattern ( (WandMaskField_7860 (|wand#ft| arg1@@19 arg2@@19 arg3@@19 arg4@@19 arg5@@5)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_13939) (Mask@@88 T@PolymorphicMapType_13960) (p_1@@2 T@Ref) ) (!  (=> (state Heap@@41 Mask@@88) (= (|sum'| Heap@@41 p_1@@2) (|sum#frame| (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@41) null (Single p_1@@2)) p_1@@2)))
 :qid |stdinbpl.315:15|
 :skolemid |46|
 :pattern ( (state Heap@@41 Mask@@88) (|sum'| Heap@@41 p_1@@2))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_7989_7990 (Single this@@3)) 0)
 :qid |stdinbpl.392:15|
 :skolemid |49|
 :pattern ( (Single this@@3))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_13939) (o_12 T@Ref) (f_24 T@Field_18687_18692) (v T@PolymorphicMapType_14488) ) (! (succHeap Heap@@42 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@42) (store (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@42) o_12 f_24 v) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@42) (store (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@42) o_12 f_24 v) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@42) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_13939) (o_12@@0 T@Ref) (f_24@@0 T@Field_18703_18704) (v@@0 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@43) (store (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@43) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@43) (store (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@43) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@43) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_13939) (o_12@@1 T@Ref) (f_24@@1 T@Field_18674_1907) (v@@1 Int) ) (! (succHeap Heap@@44 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@44) (store (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@44) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@44) (store (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@44) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@44) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_13939) (o_12@@2 T@Ref) (f_24@@2 T@Field_18674_14013) (v@@2 T@Ref) ) (! (succHeap Heap@@45 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@45) (store (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@45) o_12@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@45) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@45) (store (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@45) o_12@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_13939) (o_12@@3 T@Ref) (f_24@@3 T@Field_18674_53) (v@@3 Bool) ) (! (succHeap Heap@@46 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@46) (store (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@46) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@46) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@46) (store (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@46) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_13939) (o_12@@4 T@Ref) (f_24@@4 T@Field_18043_18048) (v@@4 T@PolymorphicMapType_14488) ) (! (succHeap Heap@@47 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@47) (store (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@47) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@47) (store (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@47) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@47) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_13939) (o_12@@5 T@Ref) (f_24@@5 T@Field_18059_18060) (v@@5 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@48) (store (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@48) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@48) (store (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@48) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@48) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_13939) (o_12@@6 T@Ref) (f_24@@6 T@Field_18030_1585) (v@@6 Int) ) (! (succHeap Heap@@49 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@49) (store (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@49) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@49) (store (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@49) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@49) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_13939) (o_12@@7 T@Ref) (f_24@@7 T@Field_18030_14013) (v@@7 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@50) (store (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@50) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@50) (store (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@50) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@50) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_13939) (o_12@@8 T@Ref) (f_24@@8 T@Field_18030_53) (v@@8 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@51) (store (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@51) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@51) (store (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@51) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@51) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_13939) (o_12@@9 T@Ref) (f_24@@9 T@Field_17341_17346) (v@@9 T@PolymorphicMapType_14488) ) (! (succHeap Heap@@52 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@52) (store (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@52) o_12@@9 f_24@@9 v@@9) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@52) (store (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@52) o_12@@9 f_24@@9 v@@9) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@52) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_13939) (o_12@@10 T@Ref) (f_24@@10 T@Field_17357_17358) (v@@10 T@FrameType) ) (! (succHeap Heap@@53 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@53) (store (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@53) o_12@@10 f_24@@10 v@@10) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@53) (store (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@53) o_12@@10 f_24@@10 v@@10) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@53) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_13939) (o_12@@11 T@Ref) (f_24@@11 T@Field_17328_1210) (v@@11 Int) ) (! (succHeap Heap@@54 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@54) (store (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@54) o_12@@11 f_24@@11 v@@11) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@54) (store (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@54) o_12@@11 f_24@@11 v@@11) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@54) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_13939) (o_12@@12 T@Ref) (f_24@@12 T@Field_17328_14013) (v@@12 T@Ref) ) (! (succHeap Heap@@55 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@55) (store (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@55) o_12@@12 f_24@@12 v@@12) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@55) (store (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@55) o_12@@12 f_24@@12 v@@12) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@55) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_13939) (o_12@@13 T@Ref) (f_24@@13 T@Field_17328_53) (v@@13 Bool) ) (! (succHeap Heap@@56 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@56) (store (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@56) o_12@@13 f_24@@13 v@@13) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@56) (store (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@56) o_12@@13 f_24@@13 v@@13) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@56) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_13939) (o_12@@14 T@Ref) (f_24@@14 T@Field_20934_20939) (v@@14 T@PolymorphicMapType_14488) ) (! (succHeap Heap@@57 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@57) (store (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@57) o_12@@14 f_24@@14 v@@14) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@57) (store (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@57) o_12@@14 f_24@@14 v@@14) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@57) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_13939) (o_12@@15 T@Ref) (f_24@@15 T@Field_19684_19685) (v@@15 T@FrameType) ) (! (succHeap Heap@@58 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@58) (store (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@58) o_12@@15 f_24@@15 v@@15) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@58) (store (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@58) o_12@@15 f_24@@15 v@@15) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@58) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_13939) (o_12@@16 T@Ref) (f_24@@16 T@Field_7989_2212) (v@@16 Int) ) (! (succHeap Heap@@59 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@59) (store (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@59) o_12@@16 f_24@@16 v@@16) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@59) (store (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@59) o_12@@16 f_24@@16 v@@16) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@59) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_13939) (o_12@@17 T@Ref) (f_24@@17 T@Field_7989_14013) (v@@17 T@Ref) ) (! (succHeap Heap@@60 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@60) (store (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@60) o_12@@17 f_24@@17 v@@17) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@60) (store (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@60) o_12@@17 f_24@@17 v@@17) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@60) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_13939) (o_12@@18 T@Ref) (f_24@@18 T@Field_7989_53) (v@@18 Bool) ) (! (succHeap Heap@@61 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@61) (store (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@61) o_12@@18 f_24@@18 v@@18) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@61) (store (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@61) o_12@@18 f_24@@18 v@@18) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@61) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_13939) (o_12@@19 T@Ref) (f_24@@19 T@Field_7958_17346) (v@@19 T@PolymorphicMapType_14488) ) (! (succHeap Heap@@62 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@62) (store (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@62) o_12@@19 f_24@@19 v@@19) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@62) (store (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@62) o_12@@19 f_24@@19 v@@19) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@62) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_13939) (o_12@@20 T@Ref) (f_24@@20 T@Field_7958_7990) (v@@20 T@FrameType) ) (! (succHeap Heap@@63 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@63) (store (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@63) o_12@@20 f_24@@20 v@@20) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@63) (store (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@63) o_12@@20 f_24@@20 v@@20) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@63) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_13939) (o_12@@21 T@Ref) (f_24@@21 T@Field_19316_2212) (v@@21 Int) ) (! (succHeap Heap@@64 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@64) (store (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@64) o_12@@21 f_24@@21 v@@21) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@64) (store (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@64) o_12@@21 f_24@@21 v@@21) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@64) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_13939) (o_12@@22 T@Ref) (f_24@@22 T@Field_14012_14013) (v@@22 T@Ref) ) (! (succHeap Heap@@65 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@65) (store (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@65) o_12@@22 f_24@@22 v@@22) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@65) (store (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@65) o_12@@22 f_24@@22 v@@22) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@65) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_13939) (o_12@@23 T@Ref) (f_24@@23 T@Field_13999_53) (v@@23 Bool) ) (! (succHeap Heap@@66 (PolymorphicMapType_13939 (store (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@66) o_12@@23 f_24@@23 v@@23) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13939 (store (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@66) o_12@@23 f_24@@23 v@@23) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@66) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@66)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_7989 (Single this@@4)) (|Single#sm| this@@4))
 :qid |stdinbpl.384:15|
 :skolemid |47|
 :pattern ( (PredicateMaskField_7989 (Single this@@4)))
)))
(assert (forall ((o_12@@24 T@Ref) (f_16 T@Field_14012_14013) (Heap@@67 T@PolymorphicMapType_13939) ) (!  (=> (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@67) o_12@@24 $allocated) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@67) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@67) o_12@@24 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@67) o_12@@24 f_16))
)))
(assert (forall ((p@@5 T@Field_19684_19685) (v_1@@4 T@FrameType) (q T@Field_19684_19685) (w@@4 T@FrameType) (r T@Field_19684_19685) (u T@FrameType) ) (!  (=> (and (InsidePredicate_19684_19684 p@@5 v_1@@4 q w@@4) (InsidePredicate_19684_19684 q w@@4 r u)) (InsidePredicate_19684_19684 p@@5 v_1@@4 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_19684 p@@5 v_1@@4 q w@@4) (InsidePredicate_19684_19684 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_19684_19685) (v_1@@5 T@FrameType) (q@@0 T@Field_19684_19685) (w@@5 T@FrameType) (r@@0 T@Field_18703_18704) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_19684 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_19684_18674 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_19684_18674 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_19684 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_19684_18674 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_19684_19685) (v_1@@6 T@FrameType) (q@@1 T@Field_19684_19685) (w@@6 T@FrameType) (r@@1 T@Field_18059_18060) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_19684 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_19684_18030 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_19684_18030 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_19684 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_19684_18030 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_19684_19685) (v_1@@7 T@FrameType) (q@@2 T@Field_19684_19685) (w@@7 T@FrameType) (r@@2 T@Field_17357_17358) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_19684 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_19684_17328 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_19684_17328 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_19684 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_19684_17328 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_19684_19685) (v_1@@8 T@FrameType) (q@@3 T@Field_19684_19685) (w@@8 T@FrameType) (r@@3 T@Field_7958_7990) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_19684 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_19684_13999 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_19684_13999 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_19684 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_19684_13999 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_19684_19685) (v_1@@9 T@FrameType) (q@@4 T@Field_18703_18704) (w@@9 T@FrameType) (r@@4 T@Field_19684_19685) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18674 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_18674_19684 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_19684_19684 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18674 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_18674_19684 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_19684_19685) (v_1@@10 T@FrameType) (q@@5 T@Field_18703_18704) (w@@10 T@FrameType) (r@@5 T@Field_18703_18704) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18674 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_18674_18674 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_19684_18674 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18674 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_18674_18674 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_19684_19685) (v_1@@11 T@FrameType) (q@@6 T@Field_18703_18704) (w@@11 T@FrameType) (r@@6 T@Field_18059_18060) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18674 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_18674_18030 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_19684_18030 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18674 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_18674_18030 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_19684_19685) (v_1@@12 T@FrameType) (q@@7 T@Field_18703_18704) (w@@12 T@FrameType) (r@@7 T@Field_17357_17358) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18674 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_18674_17328 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_19684_17328 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18674 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_18674_17328 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_19684_19685) (v_1@@13 T@FrameType) (q@@8 T@Field_18703_18704) (w@@13 T@FrameType) (r@@8 T@Field_7958_7990) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18674 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_18674_13999 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_19684_13999 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18674 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_18674_13999 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_19684_19685) (v_1@@14 T@FrameType) (q@@9 T@Field_18059_18060) (w@@14 T@FrameType) (r@@9 T@Field_19684_19685) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18030 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_18030_19684 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_19684_19684 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18030 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_18030_19684 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_19684_19685) (v_1@@15 T@FrameType) (q@@10 T@Field_18059_18060) (w@@15 T@FrameType) (r@@10 T@Field_18703_18704) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18030 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_18030_18674 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_19684_18674 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18030 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_18030_18674 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_19684_19685) (v_1@@16 T@FrameType) (q@@11 T@Field_18059_18060) (w@@16 T@FrameType) (r@@11 T@Field_18059_18060) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18030 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_18030_18030 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_19684_18030 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18030 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_18030_18030 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_19684_19685) (v_1@@17 T@FrameType) (q@@12 T@Field_18059_18060) (w@@17 T@FrameType) (r@@12 T@Field_17357_17358) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18030 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_18030_17328 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_19684_17328 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18030 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_18030_17328 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_19684_19685) (v_1@@18 T@FrameType) (q@@13 T@Field_18059_18060) (w@@18 T@FrameType) (r@@13 T@Field_7958_7990) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_18030 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_18030_13999 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_19684_13999 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_18030 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_18030_13999 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_19684_19685) (v_1@@19 T@FrameType) (q@@14 T@Field_17357_17358) (w@@19 T@FrameType) (r@@14 T@Field_19684_19685) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_17328 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_17328_19684 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_19684_19684 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_17328 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_17328_19684 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_19684_19685) (v_1@@20 T@FrameType) (q@@15 T@Field_17357_17358) (w@@20 T@FrameType) (r@@15 T@Field_18703_18704) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_17328 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_17328_18674 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_19684_18674 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_17328 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_17328_18674 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_19684_19685) (v_1@@21 T@FrameType) (q@@16 T@Field_17357_17358) (w@@21 T@FrameType) (r@@16 T@Field_18059_18060) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_17328 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_17328_18030 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_19684_18030 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_17328 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_17328_18030 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_19684_19685) (v_1@@22 T@FrameType) (q@@17 T@Field_17357_17358) (w@@22 T@FrameType) (r@@17 T@Field_17357_17358) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_17328 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_17328_17328 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_19684_17328 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_17328 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_17328_17328 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_19684_19685) (v_1@@23 T@FrameType) (q@@18 T@Field_17357_17358) (w@@23 T@FrameType) (r@@18 T@Field_7958_7990) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_17328 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_17328_13999 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_19684_13999 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_17328 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_17328_13999 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_19684_19685) (v_1@@24 T@FrameType) (q@@19 T@Field_7958_7990) (w@@24 T@FrameType) (r@@19 T@Field_19684_19685) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_13999 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_13999_19684 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_19684_19684 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_13999 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_13999_19684 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_19684_19685) (v_1@@25 T@FrameType) (q@@20 T@Field_7958_7990) (w@@25 T@FrameType) (r@@20 T@Field_18703_18704) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_13999 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_13999_18674 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_19684_18674 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_13999 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_13999_18674 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_19684_19685) (v_1@@26 T@FrameType) (q@@21 T@Field_7958_7990) (w@@26 T@FrameType) (r@@21 T@Field_18059_18060) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_13999 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_13999_18030 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_19684_18030 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_13999 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_13999_18030 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_19684_19685) (v_1@@27 T@FrameType) (q@@22 T@Field_7958_7990) (w@@27 T@FrameType) (r@@22 T@Field_17357_17358) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_13999 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_13999_17328 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_19684_17328 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_13999 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_13999_17328 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_19684_19685) (v_1@@28 T@FrameType) (q@@23 T@Field_7958_7990) (w@@28 T@FrameType) (r@@23 T@Field_7958_7990) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_19684_13999 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_13999_13999 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_19684_13999 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19684_13999 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_13999_13999 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_18703_18704) (v_1@@29 T@FrameType) (q@@24 T@Field_19684_19685) (w@@29 T@FrameType) (r@@24 T@Field_19684_19685) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_19684 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_19684_19684 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_18674_19684 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_19684 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_19684_19684 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_18703_18704) (v_1@@30 T@FrameType) (q@@25 T@Field_19684_19685) (w@@30 T@FrameType) (r@@25 T@Field_18703_18704) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_19684 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_19684_18674 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_18674_18674 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_19684 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_19684_18674 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_18703_18704) (v_1@@31 T@FrameType) (q@@26 T@Field_19684_19685) (w@@31 T@FrameType) (r@@26 T@Field_18059_18060) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_19684 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_19684_18030 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_18674_18030 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_19684 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_19684_18030 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_18703_18704) (v_1@@32 T@FrameType) (q@@27 T@Field_19684_19685) (w@@32 T@FrameType) (r@@27 T@Field_17357_17358) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_19684 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_19684_17328 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_18674_17328 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_19684 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_19684_17328 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_18703_18704) (v_1@@33 T@FrameType) (q@@28 T@Field_19684_19685) (w@@33 T@FrameType) (r@@28 T@Field_7958_7990) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_19684 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_19684_13999 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_18674_13999 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_19684 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_19684_13999 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_18703_18704) (v_1@@34 T@FrameType) (q@@29 T@Field_18703_18704) (w@@34 T@FrameType) (r@@29 T@Field_19684_19685) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18674 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_18674_19684 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_18674_19684 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18674 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_18674_19684 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_18703_18704) (v_1@@35 T@FrameType) (q@@30 T@Field_18703_18704) (w@@35 T@FrameType) (r@@30 T@Field_18703_18704) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18674 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_18674_18674 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_18674_18674 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18674 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_18674_18674 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_18703_18704) (v_1@@36 T@FrameType) (q@@31 T@Field_18703_18704) (w@@36 T@FrameType) (r@@31 T@Field_18059_18060) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18674 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_18674_18030 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_18674_18030 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18674 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_18674_18030 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_18703_18704) (v_1@@37 T@FrameType) (q@@32 T@Field_18703_18704) (w@@37 T@FrameType) (r@@32 T@Field_17357_17358) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18674 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_18674_17328 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_18674_17328 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18674 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_18674_17328 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_18703_18704) (v_1@@38 T@FrameType) (q@@33 T@Field_18703_18704) (w@@38 T@FrameType) (r@@33 T@Field_7958_7990) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18674 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_18674_13999 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_18674_13999 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18674 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_18674_13999 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_18703_18704) (v_1@@39 T@FrameType) (q@@34 T@Field_18059_18060) (w@@39 T@FrameType) (r@@34 T@Field_19684_19685) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18030 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_18030_19684 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_18674_19684 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18030 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_18030_19684 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_18703_18704) (v_1@@40 T@FrameType) (q@@35 T@Field_18059_18060) (w@@40 T@FrameType) (r@@35 T@Field_18703_18704) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18030 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_18030_18674 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_18674_18674 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18030 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_18030_18674 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_18703_18704) (v_1@@41 T@FrameType) (q@@36 T@Field_18059_18060) (w@@41 T@FrameType) (r@@36 T@Field_18059_18060) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18030 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_18030_18030 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_18674_18030 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18030 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_18030_18030 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_18703_18704) (v_1@@42 T@FrameType) (q@@37 T@Field_18059_18060) (w@@42 T@FrameType) (r@@37 T@Field_17357_17358) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18030 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_18030_17328 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_18674_17328 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18030 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_18030_17328 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_18703_18704) (v_1@@43 T@FrameType) (q@@38 T@Field_18059_18060) (w@@43 T@FrameType) (r@@38 T@Field_7958_7990) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_18030 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_18030_13999 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_18674_13999 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_18030 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_18030_13999 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_18703_18704) (v_1@@44 T@FrameType) (q@@39 T@Field_17357_17358) (w@@44 T@FrameType) (r@@39 T@Field_19684_19685) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_17328 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_17328_19684 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_18674_19684 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_17328 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_17328_19684 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_18703_18704) (v_1@@45 T@FrameType) (q@@40 T@Field_17357_17358) (w@@45 T@FrameType) (r@@40 T@Field_18703_18704) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_17328 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_17328_18674 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_18674_18674 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_17328 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_17328_18674 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_18703_18704) (v_1@@46 T@FrameType) (q@@41 T@Field_17357_17358) (w@@46 T@FrameType) (r@@41 T@Field_18059_18060) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_17328 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_17328_18030 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_18674_18030 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_17328 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_17328_18030 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_18703_18704) (v_1@@47 T@FrameType) (q@@42 T@Field_17357_17358) (w@@47 T@FrameType) (r@@42 T@Field_17357_17358) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_17328 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_17328_17328 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_18674_17328 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_17328 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_17328_17328 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_18703_18704) (v_1@@48 T@FrameType) (q@@43 T@Field_17357_17358) (w@@48 T@FrameType) (r@@43 T@Field_7958_7990) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_17328 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_17328_13999 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_18674_13999 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_17328 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_17328_13999 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_18703_18704) (v_1@@49 T@FrameType) (q@@44 T@Field_7958_7990) (w@@49 T@FrameType) (r@@44 T@Field_19684_19685) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_13999 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_13999_19684 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_18674_19684 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_13999 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_13999_19684 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_18703_18704) (v_1@@50 T@FrameType) (q@@45 T@Field_7958_7990) (w@@50 T@FrameType) (r@@45 T@Field_18703_18704) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_13999 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_13999_18674 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_18674_18674 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_13999 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_13999_18674 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_18703_18704) (v_1@@51 T@FrameType) (q@@46 T@Field_7958_7990) (w@@51 T@FrameType) (r@@46 T@Field_18059_18060) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_13999 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_13999_18030 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_18674_18030 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_13999 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_13999_18030 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_18703_18704) (v_1@@52 T@FrameType) (q@@47 T@Field_7958_7990) (w@@52 T@FrameType) (r@@47 T@Field_17357_17358) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_13999 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_13999_17328 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_18674_17328 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_13999 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_13999_17328 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_18703_18704) (v_1@@53 T@FrameType) (q@@48 T@Field_7958_7990) (w@@53 T@FrameType) (r@@48 T@Field_7958_7990) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_18674_13999 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_13999_13999 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_18674_13999 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18674_13999 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_13999_13999 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_18059_18060) (v_1@@54 T@FrameType) (q@@49 T@Field_19684_19685) (w@@54 T@FrameType) (r@@49 T@Field_19684_19685) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_19684 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_19684_19684 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_18030_19684 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_19684 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_19684_19684 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_18059_18060) (v_1@@55 T@FrameType) (q@@50 T@Field_19684_19685) (w@@55 T@FrameType) (r@@50 T@Field_18703_18704) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_19684 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_19684_18674 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_18030_18674 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_19684 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_19684_18674 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_18059_18060) (v_1@@56 T@FrameType) (q@@51 T@Field_19684_19685) (w@@56 T@FrameType) (r@@51 T@Field_18059_18060) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_19684 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_19684_18030 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_18030_18030 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_19684 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_19684_18030 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_18059_18060) (v_1@@57 T@FrameType) (q@@52 T@Field_19684_19685) (w@@57 T@FrameType) (r@@52 T@Field_17357_17358) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_19684 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_19684_17328 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_18030_17328 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_19684 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_19684_17328 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_18059_18060) (v_1@@58 T@FrameType) (q@@53 T@Field_19684_19685) (w@@58 T@FrameType) (r@@53 T@Field_7958_7990) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_19684 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_19684_13999 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_18030_13999 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_19684 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_19684_13999 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_18059_18060) (v_1@@59 T@FrameType) (q@@54 T@Field_18703_18704) (w@@59 T@FrameType) (r@@54 T@Field_19684_19685) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18674 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_18674_19684 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_18030_19684 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18674 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_18674_19684 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_18059_18060) (v_1@@60 T@FrameType) (q@@55 T@Field_18703_18704) (w@@60 T@FrameType) (r@@55 T@Field_18703_18704) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18674 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_18674_18674 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_18030_18674 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18674 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_18674_18674 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_18059_18060) (v_1@@61 T@FrameType) (q@@56 T@Field_18703_18704) (w@@61 T@FrameType) (r@@56 T@Field_18059_18060) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18674 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_18674_18030 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_18030_18030 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18674 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_18674_18030 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_18059_18060) (v_1@@62 T@FrameType) (q@@57 T@Field_18703_18704) (w@@62 T@FrameType) (r@@57 T@Field_17357_17358) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18674 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_18674_17328 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_18030_17328 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18674 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_18674_17328 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_18059_18060) (v_1@@63 T@FrameType) (q@@58 T@Field_18703_18704) (w@@63 T@FrameType) (r@@58 T@Field_7958_7990) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18674 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_18674_13999 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_18030_13999 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18674 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_18674_13999 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_18059_18060) (v_1@@64 T@FrameType) (q@@59 T@Field_18059_18060) (w@@64 T@FrameType) (r@@59 T@Field_19684_19685) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18030 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_18030_19684 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_18030_19684 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18030 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_18030_19684 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_18059_18060) (v_1@@65 T@FrameType) (q@@60 T@Field_18059_18060) (w@@65 T@FrameType) (r@@60 T@Field_18703_18704) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18030 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_18030_18674 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_18030_18674 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18030 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_18030_18674 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_18059_18060) (v_1@@66 T@FrameType) (q@@61 T@Field_18059_18060) (w@@66 T@FrameType) (r@@61 T@Field_18059_18060) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18030 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_18030_18030 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_18030_18030 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18030 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_18030_18030 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_18059_18060) (v_1@@67 T@FrameType) (q@@62 T@Field_18059_18060) (w@@67 T@FrameType) (r@@62 T@Field_17357_17358) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18030 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_18030_17328 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_18030_17328 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18030 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_18030_17328 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_18059_18060) (v_1@@68 T@FrameType) (q@@63 T@Field_18059_18060) (w@@68 T@FrameType) (r@@63 T@Field_7958_7990) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_18030 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_18030_13999 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_18030_13999 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_18030 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_18030_13999 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_18059_18060) (v_1@@69 T@FrameType) (q@@64 T@Field_17357_17358) (w@@69 T@FrameType) (r@@64 T@Field_19684_19685) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_17328 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_17328_19684 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_18030_19684 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_17328 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_17328_19684 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_18059_18060) (v_1@@70 T@FrameType) (q@@65 T@Field_17357_17358) (w@@70 T@FrameType) (r@@65 T@Field_18703_18704) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_17328 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_17328_18674 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_18030_18674 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_17328 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_17328_18674 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_18059_18060) (v_1@@71 T@FrameType) (q@@66 T@Field_17357_17358) (w@@71 T@FrameType) (r@@66 T@Field_18059_18060) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_17328 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_17328_18030 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_18030_18030 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_17328 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_17328_18030 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_18059_18060) (v_1@@72 T@FrameType) (q@@67 T@Field_17357_17358) (w@@72 T@FrameType) (r@@67 T@Field_17357_17358) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_17328 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_17328_17328 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_18030_17328 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_17328 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_17328_17328 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_18059_18060) (v_1@@73 T@FrameType) (q@@68 T@Field_17357_17358) (w@@73 T@FrameType) (r@@68 T@Field_7958_7990) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_17328 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_17328_13999 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_18030_13999 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_17328 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_17328_13999 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_18059_18060) (v_1@@74 T@FrameType) (q@@69 T@Field_7958_7990) (w@@74 T@FrameType) (r@@69 T@Field_19684_19685) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_13999 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_13999_19684 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_18030_19684 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_13999 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_13999_19684 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_18059_18060) (v_1@@75 T@FrameType) (q@@70 T@Field_7958_7990) (w@@75 T@FrameType) (r@@70 T@Field_18703_18704) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_13999 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_13999_18674 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_18030_18674 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_13999 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_13999_18674 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_18059_18060) (v_1@@76 T@FrameType) (q@@71 T@Field_7958_7990) (w@@76 T@FrameType) (r@@71 T@Field_18059_18060) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_13999 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_13999_18030 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_18030_18030 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_13999 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_13999_18030 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_18059_18060) (v_1@@77 T@FrameType) (q@@72 T@Field_7958_7990) (w@@77 T@FrameType) (r@@72 T@Field_17357_17358) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_13999 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_13999_17328 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_18030_17328 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_13999 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_13999_17328 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_18059_18060) (v_1@@78 T@FrameType) (q@@73 T@Field_7958_7990) (w@@78 T@FrameType) (r@@73 T@Field_7958_7990) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_18030_13999 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_13999_13999 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_18030_13999 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18030_13999 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_13999_13999 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_17357_17358) (v_1@@79 T@FrameType) (q@@74 T@Field_19684_19685) (w@@79 T@FrameType) (r@@74 T@Field_19684_19685) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_19684 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_19684_19684 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_17328_19684 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_19684 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_19684_19684 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_17357_17358) (v_1@@80 T@FrameType) (q@@75 T@Field_19684_19685) (w@@80 T@FrameType) (r@@75 T@Field_18703_18704) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_19684 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_19684_18674 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_17328_18674 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_19684 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_19684_18674 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_17357_17358) (v_1@@81 T@FrameType) (q@@76 T@Field_19684_19685) (w@@81 T@FrameType) (r@@76 T@Field_18059_18060) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_19684 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_19684_18030 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_17328_18030 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_19684 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_19684_18030 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_17357_17358) (v_1@@82 T@FrameType) (q@@77 T@Field_19684_19685) (w@@82 T@FrameType) (r@@77 T@Field_17357_17358) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_19684 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_19684_17328 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_17328_17328 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_19684 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_19684_17328 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_17357_17358) (v_1@@83 T@FrameType) (q@@78 T@Field_19684_19685) (w@@83 T@FrameType) (r@@78 T@Field_7958_7990) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_19684 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_19684_13999 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_17328_13999 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_19684 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_19684_13999 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_17357_17358) (v_1@@84 T@FrameType) (q@@79 T@Field_18703_18704) (w@@84 T@FrameType) (r@@79 T@Field_19684_19685) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18674 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_18674_19684 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_17328_19684 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18674 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_18674_19684 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_17357_17358) (v_1@@85 T@FrameType) (q@@80 T@Field_18703_18704) (w@@85 T@FrameType) (r@@80 T@Field_18703_18704) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18674 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_18674_18674 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_17328_18674 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18674 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_18674_18674 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_17357_17358) (v_1@@86 T@FrameType) (q@@81 T@Field_18703_18704) (w@@86 T@FrameType) (r@@81 T@Field_18059_18060) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18674 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_18674_18030 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_17328_18030 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18674 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_18674_18030 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_17357_17358) (v_1@@87 T@FrameType) (q@@82 T@Field_18703_18704) (w@@87 T@FrameType) (r@@82 T@Field_17357_17358) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18674 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_18674_17328 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_17328_17328 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18674 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_18674_17328 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_17357_17358) (v_1@@88 T@FrameType) (q@@83 T@Field_18703_18704) (w@@88 T@FrameType) (r@@83 T@Field_7958_7990) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18674 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_18674_13999 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_17328_13999 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18674 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_18674_13999 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_17357_17358) (v_1@@89 T@FrameType) (q@@84 T@Field_18059_18060) (w@@89 T@FrameType) (r@@84 T@Field_19684_19685) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18030 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_18030_19684 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_17328_19684 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18030 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_18030_19684 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_17357_17358) (v_1@@90 T@FrameType) (q@@85 T@Field_18059_18060) (w@@90 T@FrameType) (r@@85 T@Field_18703_18704) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18030 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_18030_18674 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_17328_18674 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18030 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_18030_18674 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_17357_17358) (v_1@@91 T@FrameType) (q@@86 T@Field_18059_18060) (w@@91 T@FrameType) (r@@86 T@Field_18059_18060) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18030 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_18030_18030 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_17328_18030 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18030 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_18030_18030 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_17357_17358) (v_1@@92 T@FrameType) (q@@87 T@Field_18059_18060) (w@@92 T@FrameType) (r@@87 T@Field_17357_17358) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18030 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_18030_17328 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_17328_17328 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18030 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_18030_17328 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_17357_17358) (v_1@@93 T@FrameType) (q@@88 T@Field_18059_18060) (w@@93 T@FrameType) (r@@88 T@Field_7958_7990) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_18030 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_18030_13999 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_17328_13999 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_18030 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_18030_13999 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_17357_17358) (v_1@@94 T@FrameType) (q@@89 T@Field_17357_17358) (w@@94 T@FrameType) (r@@89 T@Field_19684_19685) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_17328 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_17328_19684 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_17328_19684 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_17328 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_17328_19684 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_17357_17358) (v_1@@95 T@FrameType) (q@@90 T@Field_17357_17358) (w@@95 T@FrameType) (r@@90 T@Field_18703_18704) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_17328 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_17328_18674 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_17328_18674 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_17328 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_17328_18674 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_17357_17358) (v_1@@96 T@FrameType) (q@@91 T@Field_17357_17358) (w@@96 T@FrameType) (r@@91 T@Field_18059_18060) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_17328 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_17328_18030 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_17328_18030 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_17328 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_17328_18030 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_17357_17358) (v_1@@97 T@FrameType) (q@@92 T@Field_17357_17358) (w@@97 T@FrameType) (r@@92 T@Field_17357_17358) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_17328 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_17328_17328 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_17328_17328 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_17328 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_17328_17328 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_17357_17358) (v_1@@98 T@FrameType) (q@@93 T@Field_17357_17358) (w@@98 T@FrameType) (r@@93 T@Field_7958_7990) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_17328 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_17328_13999 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_17328_13999 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_17328 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_17328_13999 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_17357_17358) (v_1@@99 T@FrameType) (q@@94 T@Field_7958_7990) (w@@99 T@FrameType) (r@@94 T@Field_19684_19685) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_13999 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_13999_19684 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_17328_19684 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_13999 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_13999_19684 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_17357_17358) (v_1@@100 T@FrameType) (q@@95 T@Field_7958_7990) (w@@100 T@FrameType) (r@@95 T@Field_18703_18704) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_13999 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_13999_18674 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_17328_18674 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_13999 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_13999_18674 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_17357_17358) (v_1@@101 T@FrameType) (q@@96 T@Field_7958_7990) (w@@101 T@FrameType) (r@@96 T@Field_18059_18060) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_13999 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_13999_18030 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_17328_18030 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_13999 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_13999_18030 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_17357_17358) (v_1@@102 T@FrameType) (q@@97 T@Field_7958_7990) (w@@102 T@FrameType) (r@@97 T@Field_17357_17358) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_13999 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_13999_17328 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_17328_17328 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_13999 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_13999_17328 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_17357_17358) (v_1@@103 T@FrameType) (q@@98 T@Field_7958_7990) (w@@103 T@FrameType) (r@@98 T@Field_7958_7990) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_17328_13999 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_13999_13999 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_17328_13999 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17328_13999 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_13999_13999 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_7958_7990) (v_1@@104 T@FrameType) (q@@99 T@Field_19684_19685) (w@@104 T@FrameType) (r@@99 T@Field_19684_19685) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_19684 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_19684_19684 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_13999_19684 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_19684 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_19684_19684 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_7958_7990) (v_1@@105 T@FrameType) (q@@100 T@Field_19684_19685) (w@@105 T@FrameType) (r@@100 T@Field_18703_18704) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_19684 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_19684_18674 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_13999_18674 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_19684 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_19684_18674 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_7958_7990) (v_1@@106 T@FrameType) (q@@101 T@Field_19684_19685) (w@@106 T@FrameType) (r@@101 T@Field_18059_18060) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_19684 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_19684_18030 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_13999_18030 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_19684 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_19684_18030 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_7958_7990) (v_1@@107 T@FrameType) (q@@102 T@Field_19684_19685) (w@@107 T@FrameType) (r@@102 T@Field_17357_17358) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_19684 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_19684_17328 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_13999_17328 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_19684 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_19684_17328 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_7958_7990) (v_1@@108 T@FrameType) (q@@103 T@Field_19684_19685) (w@@108 T@FrameType) (r@@103 T@Field_7958_7990) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_19684 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_19684_13999 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_13999_13999 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_19684 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_19684_13999 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_7958_7990) (v_1@@109 T@FrameType) (q@@104 T@Field_18703_18704) (w@@109 T@FrameType) (r@@104 T@Field_19684_19685) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18674 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_18674_19684 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_13999_19684 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18674 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_18674_19684 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_7958_7990) (v_1@@110 T@FrameType) (q@@105 T@Field_18703_18704) (w@@110 T@FrameType) (r@@105 T@Field_18703_18704) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18674 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_18674_18674 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_13999_18674 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18674 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_18674_18674 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_7958_7990) (v_1@@111 T@FrameType) (q@@106 T@Field_18703_18704) (w@@111 T@FrameType) (r@@106 T@Field_18059_18060) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18674 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_18674_18030 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_13999_18030 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18674 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_18674_18030 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_7958_7990) (v_1@@112 T@FrameType) (q@@107 T@Field_18703_18704) (w@@112 T@FrameType) (r@@107 T@Field_17357_17358) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18674 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_18674_17328 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_13999_17328 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18674 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_18674_17328 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_7958_7990) (v_1@@113 T@FrameType) (q@@108 T@Field_18703_18704) (w@@113 T@FrameType) (r@@108 T@Field_7958_7990) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18674 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_18674_13999 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_13999_13999 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18674 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_18674_13999 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_7958_7990) (v_1@@114 T@FrameType) (q@@109 T@Field_18059_18060) (w@@114 T@FrameType) (r@@109 T@Field_19684_19685) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18030 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_18030_19684 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_13999_19684 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18030 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_18030_19684 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_7958_7990) (v_1@@115 T@FrameType) (q@@110 T@Field_18059_18060) (w@@115 T@FrameType) (r@@110 T@Field_18703_18704) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18030 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_18030_18674 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_13999_18674 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18030 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_18030_18674 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_7958_7990) (v_1@@116 T@FrameType) (q@@111 T@Field_18059_18060) (w@@116 T@FrameType) (r@@111 T@Field_18059_18060) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18030 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_18030_18030 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_13999_18030 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18030 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_18030_18030 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_7958_7990) (v_1@@117 T@FrameType) (q@@112 T@Field_18059_18060) (w@@117 T@FrameType) (r@@112 T@Field_17357_17358) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18030 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_18030_17328 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_13999_17328 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18030 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_18030_17328 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_7958_7990) (v_1@@118 T@FrameType) (q@@113 T@Field_18059_18060) (w@@118 T@FrameType) (r@@113 T@Field_7958_7990) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_18030 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_18030_13999 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_13999_13999 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_18030 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_18030_13999 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_7958_7990) (v_1@@119 T@FrameType) (q@@114 T@Field_17357_17358) (w@@119 T@FrameType) (r@@114 T@Field_19684_19685) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_17328 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_17328_19684 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_13999_19684 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_17328 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_17328_19684 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_7958_7990) (v_1@@120 T@FrameType) (q@@115 T@Field_17357_17358) (w@@120 T@FrameType) (r@@115 T@Field_18703_18704) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_17328 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_17328_18674 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_13999_18674 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_17328 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_17328_18674 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_7958_7990) (v_1@@121 T@FrameType) (q@@116 T@Field_17357_17358) (w@@121 T@FrameType) (r@@116 T@Field_18059_18060) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_17328 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_17328_18030 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_13999_18030 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_17328 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_17328_18030 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_7958_7990) (v_1@@122 T@FrameType) (q@@117 T@Field_17357_17358) (w@@122 T@FrameType) (r@@117 T@Field_17357_17358) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_17328 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_17328_17328 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_13999_17328 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_17328 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_17328_17328 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_7958_7990) (v_1@@123 T@FrameType) (q@@118 T@Field_17357_17358) (w@@123 T@FrameType) (r@@118 T@Field_7958_7990) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_17328 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_17328_13999 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_13999_13999 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_17328 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_17328_13999 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_7958_7990) (v_1@@124 T@FrameType) (q@@119 T@Field_7958_7990) (w@@124 T@FrameType) (r@@119 T@Field_19684_19685) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_13999 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_13999_19684 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_13999_19684 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_13999 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_13999_19684 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_7958_7990) (v_1@@125 T@FrameType) (q@@120 T@Field_7958_7990) (w@@125 T@FrameType) (r@@120 T@Field_18703_18704) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_13999 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_13999_18674 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_13999_18674 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_13999 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_13999_18674 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_7958_7990) (v_1@@126 T@FrameType) (q@@121 T@Field_7958_7990) (w@@126 T@FrameType) (r@@121 T@Field_18059_18060) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_13999 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_13999_18030 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_13999_18030 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_13999 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_13999_18030 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_7958_7990) (v_1@@127 T@FrameType) (q@@122 T@Field_7958_7990) (w@@127 T@FrameType) (r@@122 T@Field_17357_17358) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_13999 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_13999_17328 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_13999_17328 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_13999 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_13999_17328 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_7958_7990) (v_1@@128 T@FrameType) (q@@123 T@Field_7958_7990) (w@@128 T@FrameType) (r@@123 T@Field_7958_7990) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_13999_13999 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_13999_13999 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_13999_13999 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13999_13999 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_13999_13999 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_13939) (ExhaleHeap@@36 T@PolymorphicMapType_13939) (Mask@@89 T@PolymorphicMapType_13960) (pm_f_22@@9 T@Field_18703_18704) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@36 Mask@@89) (=> (and (HasDirectPerm_18674_7990 Mask@@89 null pm_f_22@@9) (IsPredicateField_7931_7932 pm_f_22@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37@@24 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22 f_37@@24) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@68) o2_22 f_37@@24) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22 f_37@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22 f_37@@24))
)) (forall ((o2_22@@0 T@Ref) (f_37@@25 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@0 f_37@@25) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@68) o2_22@@0 f_37@@25) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@0 f_37@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@0 f_37@@25))
))) (forall ((o2_22@@1 T@Ref) (f_37@@26 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@1 f_37@@26) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@68) o2_22@@1 f_37@@26) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@1 f_37@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@1 f_37@@26))
))) (forall ((o2_22@@2 T@Ref) (f_37@@27 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@2 f_37@@27) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@68) o2_22@@2 f_37@@27) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@2 f_37@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@2 f_37@@27))
))) (forall ((o2_22@@3 T@Ref) (f_37@@28 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@3 f_37@@28) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@68) o2_22@@3 f_37@@28) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@3 f_37@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@3 f_37@@28))
))) (forall ((o2_22@@4 T@Ref) (f_37@@29 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@4 f_37@@29) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@68) o2_22@@4 f_37@@29) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@4 f_37@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@4 f_37@@29))
))) (forall ((o2_22@@5 T@Ref) (f_37@@30 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@5 f_37@@30) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@68) o2_22@@5 f_37@@30) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@5 f_37@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@5 f_37@@30))
))) (forall ((o2_22@@6 T@Ref) (f_37@@31 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@6 f_37@@31) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@68) o2_22@@6 f_37@@31) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@6 f_37@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@6 f_37@@31))
))) (forall ((o2_22@@7 T@Ref) (f_37@@32 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@7 f_37@@32) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@68) o2_22@@7 f_37@@32) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@7 f_37@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@7 f_37@@32))
))) (forall ((o2_22@@8 T@Ref) (f_37@@33 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@8 f_37@@33) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@68) o2_22@@8 f_37@@33) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@8 f_37@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@8 f_37@@33))
))) (forall ((o2_22@@9 T@Ref) (f_37@@34 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@9 f_37@@34) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@68) o2_22@@9 f_37@@34) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@9 f_37@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@9 f_37@@34))
))) (forall ((o2_22@@10 T@Ref) (f_37@@35 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@10 f_37@@35) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@68) o2_22@@10 f_37@@35) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@10 f_37@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@10 f_37@@35))
))) (forall ((o2_22@@11 T@Ref) (f_37@@36 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@11 f_37@@36) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@68) o2_22@@11 f_37@@36) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@11 f_37@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@11 f_37@@36))
))) (forall ((o2_22@@12 T@Ref) (f_37@@37 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@12 f_37@@37) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@68) o2_22@@12 f_37@@37) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@12 f_37@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@12 f_37@@37))
))) (forall ((o2_22@@13 T@Ref) (f_37@@38 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@13 f_37@@38) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@68) o2_22@@13 f_37@@38) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@13 f_37@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@13 f_37@@38))
))) (forall ((o2_22@@14 T@Ref) (f_37@@39 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@14 f_37@@39) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@68) o2_22@@14 f_37@@39) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@14 f_37@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@14 f_37@@39))
))) (forall ((o2_22@@15 T@Ref) (f_37@@40 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@15 f_37@@40) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@68) o2_22@@15 f_37@@40) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@15 f_37@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@15 f_37@@40))
))) (forall ((o2_22@@16 T@Ref) (f_37@@41 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@16 f_37@@41) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@68) o2_22@@16 f_37@@41) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@16 f_37@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@16 f_37@@41))
))) (forall ((o2_22@@17 T@Ref) (f_37@@42 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@17 f_37@@42) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) o2_22@@17 f_37@@42) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@17 f_37@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@17 f_37@@42))
))) (forall ((o2_22@@18 T@Ref) (f_37@@43 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@18 f_37@@43) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@68) o2_22@@18 f_37@@43) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@18 f_37@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@18 f_37@@43))
))) (forall ((o2_22@@19 T@Ref) (f_37@@44 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@19 f_37@@44) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@68) o2_22@@19 f_37@@44) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@19 f_37@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@19 f_37@@44))
))) (forall ((o2_22@@20 T@Ref) (f_37@@45 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@20 f_37@@45) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@68) o2_22@@20 f_37@@45) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@20 f_37@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@20 f_37@@45))
))) (forall ((o2_22@@21 T@Ref) (f_37@@46 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@21 f_37@@46) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@68) o2_22@@21 f_37@@46) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@21 f_37@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@21 f_37@@46))
))) (forall ((o2_22@@22 T@Ref) (f_37@@47 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@22 f_37@@47) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@68) o2_22@@22 f_37@@47) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@22 f_37@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@22 f_37@@47))
))) (forall ((o2_22@@23 T@Ref) (f_37@@48 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@68) null (PredicateMaskField_18674 pm_f_22@@9))) o2_22@@23 f_37@@48) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@68) o2_22@@23 f_37@@48) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@23 f_37@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@36) o2_22@@23 f_37@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@36 Mask@@89) (IsPredicateField_7931_7932 pm_f_22@@9))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_13939) (ExhaleHeap@@37 T@PolymorphicMapType_13939) (Mask@@90 T@PolymorphicMapType_13960) (pm_f_22@@10 T@Field_18059_18060) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@37 Mask@@90) (=> (and (HasDirectPerm_18030_7990 Mask@@90 null pm_f_22@@10) (IsPredicateField_7898_7899 pm_f_22@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@24 T@Ref) (f_37@@49 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@24 f_37@@49) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@69) o2_22@@24 f_37@@49) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@24 f_37@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@24 f_37@@49))
)) (forall ((o2_22@@25 T@Ref) (f_37@@50 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@25 f_37@@50) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@69) o2_22@@25 f_37@@50) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@25 f_37@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@25 f_37@@50))
))) (forall ((o2_22@@26 T@Ref) (f_37@@51 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@26 f_37@@51) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@69) o2_22@@26 f_37@@51) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@26 f_37@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@26 f_37@@51))
))) (forall ((o2_22@@27 T@Ref) (f_37@@52 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@27 f_37@@52) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@69) o2_22@@27 f_37@@52) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@27 f_37@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@27 f_37@@52))
))) (forall ((o2_22@@28 T@Ref) (f_37@@53 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@28 f_37@@53) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@69) o2_22@@28 f_37@@53) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@28 f_37@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@28 f_37@@53))
))) (forall ((o2_22@@29 T@Ref) (f_37@@54 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@29 f_37@@54) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@69) o2_22@@29 f_37@@54) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@29 f_37@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@29 f_37@@54))
))) (forall ((o2_22@@30 T@Ref) (f_37@@55 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@30 f_37@@55) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@69) o2_22@@30 f_37@@55) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@30 f_37@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@30 f_37@@55))
))) (forall ((o2_22@@31 T@Ref) (f_37@@56 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@31 f_37@@56) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@69) o2_22@@31 f_37@@56) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@31 f_37@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@31 f_37@@56))
))) (forall ((o2_22@@32 T@Ref) (f_37@@57 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@32 f_37@@57) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@69) o2_22@@32 f_37@@57) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@32 f_37@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@32 f_37@@57))
))) (forall ((o2_22@@33 T@Ref) (f_37@@58 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@33 f_37@@58) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@69) o2_22@@33 f_37@@58) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@33 f_37@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@33 f_37@@58))
))) (forall ((o2_22@@34 T@Ref) (f_37@@59 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@34 f_37@@59) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@69) o2_22@@34 f_37@@59) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@34 f_37@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@34 f_37@@59))
))) (forall ((o2_22@@35 T@Ref) (f_37@@60 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@35 f_37@@60) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@69) o2_22@@35 f_37@@60) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@35 f_37@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@35 f_37@@60))
))) (forall ((o2_22@@36 T@Ref) (f_37@@61 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@36 f_37@@61) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@69) o2_22@@36 f_37@@61) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@36 f_37@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@36 f_37@@61))
))) (forall ((o2_22@@37 T@Ref) (f_37@@62 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@37 f_37@@62) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) o2_22@@37 f_37@@62) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@37 f_37@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@37 f_37@@62))
))) (forall ((o2_22@@38 T@Ref) (f_37@@63 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@38 f_37@@63) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@69) o2_22@@38 f_37@@63) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@38 f_37@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@38 f_37@@63))
))) (forall ((o2_22@@39 T@Ref) (f_37@@64 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@39 f_37@@64) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@69) o2_22@@39 f_37@@64) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@39 f_37@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@39 f_37@@64))
))) (forall ((o2_22@@40 T@Ref) (f_37@@65 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@40 f_37@@65) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@69) o2_22@@40 f_37@@65) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@40 f_37@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@40 f_37@@65))
))) (forall ((o2_22@@41 T@Ref) (f_37@@66 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@41 f_37@@66) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@69) o2_22@@41 f_37@@66) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@41 f_37@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@41 f_37@@66))
))) (forall ((o2_22@@42 T@Ref) (f_37@@67 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@42 f_37@@67) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@69) o2_22@@42 f_37@@67) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@42 f_37@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@42 f_37@@67))
))) (forall ((o2_22@@43 T@Ref) (f_37@@68 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@43 f_37@@68) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@69) o2_22@@43 f_37@@68) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@43 f_37@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@43 f_37@@68))
))) (forall ((o2_22@@44 T@Ref) (f_37@@69 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@44 f_37@@69) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@69) o2_22@@44 f_37@@69) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@44 f_37@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@44 f_37@@69))
))) (forall ((o2_22@@45 T@Ref) (f_37@@70 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@45 f_37@@70) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@69) o2_22@@45 f_37@@70) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@45 f_37@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@45 f_37@@70))
))) (forall ((o2_22@@46 T@Ref) (f_37@@71 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@46 f_37@@71) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@69) o2_22@@46 f_37@@71) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@46 f_37@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@46 f_37@@71))
))) (forall ((o2_22@@47 T@Ref) (f_37@@72 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@47 f_37@@72) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@69) o2_22@@47 f_37@@72) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@47 f_37@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@47 f_37@@72))
))) (forall ((o2_22@@48 T@Ref) (f_37@@73 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@69) null (PredicateMaskField_18030 pm_f_22@@10))) o2_22@@48 f_37@@73) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@69) o2_22@@48 f_37@@73) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@48 f_37@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@37) o2_22@@48 f_37@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@37 Mask@@90) (IsPredicateField_7898_7899 pm_f_22@@10))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_13939) (ExhaleHeap@@38 T@PolymorphicMapType_13939) (Mask@@91 T@PolymorphicMapType_13960) (pm_f_22@@11 T@Field_17357_17358) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@38 Mask@@91) (=> (and (HasDirectPerm_17328_7990 Mask@@91 null pm_f_22@@11) (IsPredicateField_7860_7861 pm_f_22@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@49 T@Ref) (f_37@@74 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@49 f_37@@74) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@70) o2_22@@49 f_37@@74) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@49 f_37@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@49 f_37@@74))
)) (forall ((o2_22@@50 T@Ref) (f_37@@75 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@50 f_37@@75) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@70) o2_22@@50 f_37@@75) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@50 f_37@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@50 f_37@@75))
))) (forall ((o2_22@@51 T@Ref) (f_37@@76 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@51 f_37@@76) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@70) o2_22@@51 f_37@@76) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@51 f_37@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@51 f_37@@76))
))) (forall ((o2_22@@52 T@Ref) (f_37@@77 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@52 f_37@@77) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@70) o2_22@@52 f_37@@77) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@52 f_37@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@52 f_37@@77))
))) (forall ((o2_22@@53 T@Ref) (f_37@@78 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@53 f_37@@78) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@70) o2_22@@53 f_37@@78) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@53 f_37@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@53 f_37@@78))
))) (forall ((o2_22@@54 T@Ref) (f_37@@79 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@54 f_37@@79) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@70) o2_22@@54 f_37@@79) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@54 f_37@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@54 f_37@@79))
))) (forall ((o2_22@@55 T@Ref) (f_37@@80 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@55 f_37@@80) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@70) o2_22@@55 f_37@@80) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@55 f_37@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@55 f_37@@80))
))) (forall ((o2_22@@56 T@Ref) (f_37@@81 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@56 f_37@@81) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@70) o2_22@@56 f_37@@81) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@56 f_37@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@56 f_37@@81))
))) (forall ((o2_22@@57 T@Ref) (f_37@@82 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@57 f_37@@82) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) o2_22@@57 f_37@@82) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@57 f_37@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@57 f_37@@82))
))) (forall ((o2_22@@58 T@Ref) (f_37@@83 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@58 f_37@@83) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@70) o2_22@@58 f_37@@83) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@58 f_37@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@58 f_37@@83))
))) (forall ((o2_22@@59 T@Ref) (f_37@@84 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@59 f_37@@84) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@70) o2_22@@59 f_37@@84) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@59 f_37@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@59 f_37@@84))
))) (forall ((o2_22@@60 T@Ref) (f_37@@85 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@60 f_37@@85) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@70) o2_22@@60 f_37@@85) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@60 f_37@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@60 f_37@@85))
))) (forall ((o2_22@@61 T@Ref) (f_37@@86 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@61 f_37@@86) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@70) o2_22@@61 f_37@@86) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@61 f_37@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@61 f_37@@86))
))) (forall ((o2_22@@62 T@Ref) (f_37@@87 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@62 f_37@@87) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@70) o2_22@@62 f_37@@87) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@62 f_37@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@62 f_37@@87))
))) (forall ((o2_22@@63 T@Ref) (f_37@@88 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@63 f_37@@88) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@70) o2_22@@63 f_37@@88) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@63 f_37@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@63 f_37@@88))
))) (forall ((o2_22@@64 T@Ref) (f_37@@89 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@64 f_37@@89) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@70) o2_22@@64 f_37@@89) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@64 f_37@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@64 f_37@@89))
))) (forall ((o2_22@@65 T@Ref) (f_37@@90 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@65 f_37@@90) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@70) o2_22@@65 f_37@@90) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@65 f_37@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@65 f_37@@90))
))) (forall ((o2_22@@66 T@Ref) (f_37@@91 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@66 f_37@@91) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@70) o2_22@@66 f_37@@91) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@66 f_37@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@66 f_37@@91))
))) (forall ((o2_22@@67 T@Ref) (f_37@@92 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@67 f_37@@92) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@70) o2_22@@67 f_37@@92) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@67 f_37@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@67 f_37@@92))
))) (forall ((o2_22@@68 T@Ref) (f_37@@93 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@68 f_37@@93) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@70) o2_22@@68 f_37@@93) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@68 f_37@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@68 f_37@@93))
))) (forall ((o2_22@@69 T@Ref) (f_37@@94 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@69 f_37@@94) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@70) o2_22@@69 f_37@@94) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@69 f_37@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@69 f_37@@94))
))) (forall ((o2_22@@70 T@Ref) (f_37@@95 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@70 f_37@@95) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@70) o2_22@@70 f_37@@95) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@70 f_37@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@70 f_37@@95))
))) (forall ((o2_22@@71 T@Ref) (f_37@@96 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@71 f_37@@96) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@70) o2_22@@71 f_37@@96) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@71 f_37@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@71 f_37@@96))
))) (forall ((o2_22@@72 T@Ref) (f_37@@97 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@72 f_37@@97) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@70) o2_22@@72 f_37@@97) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@72 f_37@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@72 f_37@@97))
))) (forall ((o2_22@@73 T@Ref) (f_37@@98 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@70) null (PredicateMaskField_17328 pm_f_22@@11))) o2_22@@73 f_37@@98) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@70) o2_22@@73 f_37@@98) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@73 f_37@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@38) o2_22@@73 f_37@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@38 Mask@@91) (IsPredicateField_7860_7861 pm_f_22@@11))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_13939) (ExhaleHeap@@39 T@PolymorphicMapType_13939) (Mask@@92 T@PolymorphicMapType_13960) (pm_f_22@@12 T@Field_19684_19685) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@39 Mask@@92) (=> (and (HasDirectPerm_7989_7990 Mask@@92 null pm_f_22@@12) (IsPredicateField_7989_7990 pm_f_22@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@74 T@Ref) (f_37@@99 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@74 f_37@@99) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@71) o2_22@@74 f_37@@99) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@74 f_37@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@74 f_37@@99))
)) (forall ((o2_22@@75 T@Ref) (f_37@@100 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@75 f_37@@100) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@71) o2_22@@75 f_37@@100) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@75 f_37@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@75 f_37@@100))
))) (forall ((o2_22@@76 T@Ref) (f_37@@101 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@76 f_37@@101) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@71) o2_22@@76 f_37@@101) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@76 f_37@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@76 f_37@@101))
))) (forall ((o2_22@@77 T@Ref) (f_37@@102 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@77 f_37@@102) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@71) o2_22@@77 f_37@@102) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@77 f_37@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@77 f_37@@102))
))) (forall ((o2_22@@78 T@Ref) (f_37@@103 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@78 f_37@@103) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@71) o2_22@@78 f_37@@103) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@78 f_37@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@78 f_37@@103))
))) (forall ((o2_22@@79 T@Ref) (f_37@@104 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@79 f_37@@104) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@71) o2_22@@79 f_37@@104) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@79 f_37@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@79 f_37@@104))
))) (forall ((o2_22@@80 T@Ref) (f_37@@105 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@80 f_37@@105) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@71) o2_22@@80 f_37@@105) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@80 f_37@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@80 f_37@@105))
))) (forall ((o2_22@@81 T@Ref) (f_37@@106 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@81 f_37@@106) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@71) o2_22@@81 f_37@@106) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@81 f_37@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@81 f_37@@106))
))) (forall ((o2_22@@82 T@Ref) (f_37@@107 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@82 f_37@@107) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@71) o2_22@@82 f_37@@107) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@82 f_37@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@82 f_37@@107))
))) (forall ((o2_22@@83 T@Ref) (f_37@@108 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@83 f_37@@108) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@71) o2_22@@83 f_37@@108) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@83 f_37@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@83 f_37@@108))
))) (forall ((o2_22@@84 T@Ref) (f_37@@109 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@84 f_37@@109) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@71) o2_22@@84 f_37@@109) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@84 f_37@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@84 f_37@@109))
))) (forall ((o2_22@@85 T@Ref) (f_37@@110 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@85 f_37@@110) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@71) o2_22@@85 f_37@@110) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@85 f_37@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@85 f_37@@110))
))) (forall ((o2_22@@86 T@Ref) (f_37@@111 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@86 f_37@@111) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@71) o2_22@@86 f_37@@111) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@86 f_37@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@86 f_37@@111))
))) (forall ((o2_22@@87 T@Ref) (f_37@@112 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@87 f_37@@112) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@71) o2_22@@87 f_37@@112) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@87 f_37@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@87 f_37@@112))
))) (forall ((o2_22@@88 T@Ref) (f_37@@113 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@88 f_37@@113) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@71) o2_22@@88 f_37@@113) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@88 f_37@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@88 f_37@@113))
))) (forall ((o2_22@@89 T@Ref) (f_37@@114 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@89 f_37@@114) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@71) o2_22@@89 f_37@@114) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@89 f_37@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@89 f_37@@114))
))) (forall ((o2_22@@90 T@Ref) (f_37@@115 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@90 f_37@@115) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@71) o2_22@@90 f_37@@115) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@90 f_37@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@90 f_37@@115))
))) (forall ((o2_22@@91 T@Ref) (f_37@@116 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@91 f_37@@116) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@71) o2_22@@91 f_37@@116) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@91 f_37@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@91 f_37@@116))
))) (forall ((o2_22@@92 T@Ref) (f_37@@117 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@92 f_37@@117) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@71) o2_22@@92 f_37@@117) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@92 f_37@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@92 f_37@@117))
))) (forall ((o2_22@@93 T@Ref) (f_37@@118 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@93 f_37@@118) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@71) o2_22@@93 f_37@@118) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@93 f_37@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@93 f_37@@118))
))) (forall ((o2_22@@94 T@Ref) (f_37@@119 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@94 f_37@@119) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@71) o2_22@@94 f_37@@119) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@94 f_37@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@94 f_37@@119))
))) (forall ((o2_22@@95 T@Ref) (f_37@@120 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@95 f_37@@120) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@71) o2_22@@95 f_37@@120) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@95 f_37@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@95 f_37@@120))
))) (forall ((o2_22@@96 T@Ref) (f_37@@121 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@96 f_37@@121) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@71) o2_22@@96 f_37@@121) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@96 f_37@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@96 f_37@@121))
))) (forall ((o2_22@@97 T@Ref) (f_37@@122 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@97 f_37@@122) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) o2_22@@97 f_37@@122) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@97 f_37@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@97 f_37@@122))
))) (forall ((o2_22@@98 T@Ref) (f_37@@123 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@71) null (PredicateMaskField_7989 pm_f_22@@12))) o2_22@@98 f_37@@123) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@71) o2_22@@98 f_37@@123) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@98 f_37@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@39) o2_22@@98 f_37@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@39 Mask@@92) (IsPredicateField_7989_7990 pm_f_22@@12))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_13939) (ExhaleHeap@@40 T@PolymorphicMapType_13939) (Mask@@93 T@PolymorphicMapType_13960) (pm_f_22@@13 T@Field_7958_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@40 Mask@@93) (=> (and (HasDirectPerm_7958_7990 Mask@@93 null pm_f_22@@13) (IsPredicateField_7958_49311 pm_f_22@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@99 T@Ref) (f_37@@124 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@99 f_37@@124) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@72) o2_22@@99 f_37@@124) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@99 f_37@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@99 f_37@@124))
)) (forall ((o2_22@@100 T@Ref) (f_37@@125 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@100 f_37@@125) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@72) o2_22@@100 f_37@@125) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@100 f_37@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@100 f_37@@125))
))) (forall ((o2_22@@101 T@Ref) (f_37@@126 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@101 f_37@@126) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@72) o2_22@@101 f_37@@126) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@101 f_37@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@101 f_37@@126))
))) (forall ((o2_22@@102 T@Ref) (f_37@@127 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@102 f_37@@127) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) o2_22@@102 f_37@@127) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@102 f_37@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@102 f_37@@127))
))) (forall ((o2_22@@103 T@Ref) (f_37@@128 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@103 f_37@@128) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@72) o2_22@@103 f_37@@128) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@103 f_37@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@103 f_37@@128))
))) (forall ((o2_22@@104 T@Ref) (f_37@@129 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@104 f_37@@129) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@72) o2_22@@104 f_37@@129) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@104 f_37@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@104 f_37@@129))
))) (forall ((o2_22@@105 T@Ref) (f_37@@130 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@105 f_37@@130) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@72) o2_22@@105 f_37@@130) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@105 f_37@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@105 f_37@@130))
))) (forall ((o2_22@@106 T@Ref) (f_37@@131 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@106 f_37@@131) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@72) o2_22@@106 f_37@@131) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@106 f_37@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@106 f_37@@131))
))) (forall ((o2_22@@107 T@Ref) (f_37@@132 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@107 f_37@@132) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@72) o2_22@@107 f_37@@132) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@107 f_37@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@107 f_37@@132))
))) (forall ((o2_22@@108 T@Ref) (f_37@@133 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@108 f_37@@133) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@72) o2_22@@108 f_37@@133) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@108 f_37@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@108 f_37@@133))
))) (forall ((o2_22@@109 T@Ref) (f_37@@134 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@109 f_37@@134) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@72) o2_22@@109 f_37@@134) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@109 f_37@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@109 f_37@@134))
))) (forall ((o2_22@@110 T@Ref) (f_37@@135 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@110 f_37@@135) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@72) o2_22@@110 f_37@@135) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@110 f_37@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@110 f_37@@135))
))) (forall ((o2_22@@111 T@Ref) (f_37@@136 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@111 f_37@@136) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@72) o2_22@@111 f_37@@136) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@111 f_37@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@111 f_37@@136))
))) (forall ((o2_22@@112 T@Ref) (f_37@@137 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@112 f_37@@137) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@72) o2_22@@112 f_37@@137) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@112 f_37@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@112 f_37@@137))
))) (forall ((o2_22@@113 T@Ref) (f_37@@138 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@113 f_37@@138) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@72) o2_22@@113 f_37@@138) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@113 f_37@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@113 f_37@@138))
))) (forall ((o2_22@@114 T@Ref) (f_37@@139 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@114 f_37@@139) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@72) o2_22@@114 f_37@@139) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@114 f_37@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@114 f_37@@139))
))) (forall ((o2_22@@115 T@Ref) (f_37@@140 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@115 f_37@@140) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@72) o2_22@@115 f_37@@140) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@115 f_37@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@115 f_37@@140))
))) (forall ((o2_22@@116 T@Ref) (f_37@@141 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@116 f_37@@141) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@72) o2_22@@116 f_37@@141) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@116 f_37@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@116 f_37@@141))
))) (forall ((o2_22@@117 T@Ref) (f_37@@142 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@117 f_37@@142) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@72) o2_22@@117 f_37@@142) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@117 f_37@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@117 f_37@@142))
))) (forall ((o2_22@@118 T@Ref) (f_37@@143 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@118 f_37@@143) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@72) o2_22@@118 f_37@@143) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@118 f_37@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@118 f_37@@143))
))) (forall ((o2_22@@119 T@Ref) (f_37@@144 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@119 f_37@@144) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@72) o2_22@@119 f_37@@144) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@119 f_37@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@119 f_37@@144))
))) (forall ((o2_22@@120 T@Ref) (f_37@@145 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@120 f_37@@145) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@72) o2_22@@120 f_37@@145) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@120 f_37@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@120 f_37@@145))
))) (forall ((o2_22@@121 T@Ref) (f_37@@146 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@121 f_37@@146) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@72) o2_22@@121 f_37@@146) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@121 f_37@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@121 f_37@@146))
))) (forall ((o2_22@@122 T@Ref) (f_37@@147 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@122 f_37@@147) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@72) o2_22@@122 f_37@@147) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@122 f_37@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@122 f_37@@147))
))) (forall ((o2_22@@123 T@Ref) (f_37@@148 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@72) null (PredicateMaskField_7958 pm_f_22@@13))) o2_22@@123 f_37@@148) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@72) o2_22@@123 f_37@@148) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@123 f_37@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@40) o2_22@@123 f_37@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@40 Mask@@93) (IsPredicateField_7958_49311 pm_f_22@@13))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_13939) (ExhaleHeap@@41 T@PolymorphicMapType_13939) (Mask@@94 T@PolymorphicMapType_13960) (pm_f_22@@14 T@Field_18703_18704) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@41 Mask@@94) (=> (and (HasDirectPerm_18674_7990 Mask@@94 null pm_f_22@@14) (IsWandField_7931_7932 pm_f_22@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@124 T@Ref) (f_37@@149 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@124 f_37@@149) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@73) o2_22@@124 f_37@@149) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@124 f_37@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@124 f_37@@149))
)) (forall ((o2_22@@125 T@Ref) (f_37@@150 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@125 f_37@@150) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@73) o2_22@@125 f_37@@150) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@125 f_37@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@125 f_37@@150))
))) (forall ((o2_22@@126 T@Ref) (f_37@@151 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@126 f_37@@151) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@73) o2_22@@126 f_37@@151) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@126 f_37@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@126 f_37@@151))
))) (forall ((o2_22@@127 T@Ref) (f_37@@152 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@127 f_37@@152) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@73) o2_22@@127 f_37@@152) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@127 f_37@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@127 f_37@@152))
))) (forall ((o2_22@@128 T@Ref) (f_37@@153 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@128 f_37@@153) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@73) o2_22@@128 f_37@@153) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@128 f_37@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@128 f_37@@153))
))) (forall ((o2_22@@129 T@Ref) (f_37@@154 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@129 f_37@@154) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@73) o2_22@@129 f_37@@154) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@129 f_37@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@129 f_37@@154))
))) (forall ((o2_22@@130 T@Ref) (f_37@@155 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@130 f_37@@155) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@73) o2_22@@130 f_37@@155) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@130 f_37@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@130 f_37@@155))
))) (forall ((o2_22@@131 T@Ref) (f_37@@156 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@131 f_37@@156) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@73) o2_22@@131 f_37@@156) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@131 f_37@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@131 f_37@@156))
))) (forall ((o2_22@@132 T@Ref) (f_37@@157 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@132 f_37@@157) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@73) o2_22@@132 f_37@@157) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@132 f_37@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@132 f_37@@157))
))) (forall ((o2_22@@133 T@Ref) (f_37@@158 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@133 f_37@@158) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@73) o2_22@@133 f_37@@158) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@133 f_37@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@133 f_37@@158))
))) (forall ((o2_22@@134 T@Ref) (f_37@@159 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@134 f_37@@159) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@73) o2_22@@134 f_37@@159) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@134 f_37@@159)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@134 f_37@@159))
))) (forall ((o2_22@@135 T@Ref) (f_37@@160 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@135 f_37@@160) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@73) o2_22@@135 f_37@@160) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@135 f_37@@160)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@135 f_37@@160))
))) (forall ((o2_22@@136 T@Ref) (f_37@@161 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@136 f_37@@161) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@73) o2_22@@136 f_37@@161) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@136 f_37@@161)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@136 f_37@@161))
))) (forall ((o2_22@@137 T@Ref) (f_37@@162 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@137 f_37@@162) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@73) o2_22@@137 f_37@@162) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@137 f_37@@162)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@137 f_37@@162))
))) (forall ((o2_22@@138 T@Ref) (f_37@@163 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@138 f_37@@163) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@73) o2_22@@138 f_37@@163) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@138 f_37@@163)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@138 f_37@@163))
))) (forall ((o2_22@@139 T@Ref) (f_37@@164 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@139 f_37@@164) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@73) o2_22@@139 f_37@@164) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@139 f_37@@164)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@139 f_37@@164))
))) (forall ((o2_22@@140 T@Ref) (f_37@@165 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@140 f_37@@165) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@73) o2_22@@140 f_37@@165) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@140 f_37@@165)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@140 f_37@@165))
))) (forall ((o2_22@@141 T@Ref) (f_37@@166 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@141 f_37@@166) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@73) o2_22@@141 f_37@@166) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@141 f_37@@166)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@141 f_37@@166))
))) (forall ((o2_22@@142 T@Ref) (f_37@@167 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@142 f_37@@167) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) o2_22@@142 f_37@@167) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@142 f_37@@167)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@142 f_37@@167))
))) (forall ((o2_22@@143 T@Ref) (f_37@@168 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@143 f_37@@168) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@73) o2_22@@143 f_37@@168) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@143 f_37@@168)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@143 f_37@@168))
))) (forall ((o2_22@@144 T@Ref) (f_37@@169 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@144 f_37@@169) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@73) o2_22@@144 f_37@@169) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@144 f_37@@169)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@144 f_37@@169))
))) (forall ((o2_22@@145 T@Ref) (f_37@@170 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@145 f_37@@170) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@73) o2_22@@145 f_37@@170) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@145 f_37@@170)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@145 f_37@@170))
))) (forall ((o2_22@@146 T@Ref) (f_37@@171 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@146 f_37@@171) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@73) o2_22@@146 f_37@@171) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@146 f_37@@171)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@146 f_37@@171))
))) (forall ((o2_22@@147 T@Ref) (f_37@@172 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@147 f_37@@172) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@73) o2_22@@147 f_37@@172) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@147 f_37@@172)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@147 f_37@@172))
))) (forall ((o2_22@@148 T@Ref) (f_37@@173 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@73) null (WandMaskField_7931 pm_f_22@@14))) o2_22@@148 f_37@@173) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@73) o2_22@@148 f_37@@173) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@148 f_37@@173)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@41) o2_22@@148 f_37@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@41 Mask@@94) (IsWandField_7931_7932 pm_f_22@@14))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_13939) (ExhaleHeap@@42 T@PolymorphicMapType_13939) (Mask@@95 T@PolymorphicMapType_13960) (pm_f_22@@15 T@Field_18059_18060) ) (!  (=> (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@42 Mask@@95) (=> (and (HasDirectPerm_18030_7990 Mask@@95 null pm_f_22@@15) (IsWandField_7898_7899 pm_f_22@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@149 T@Ref) (f_37@@174 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@149 f_37@@174) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@74) o2_22@@149 f_37@@174) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@149 f_37@@174)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@149 f_37@@174))
)) (forall ((o2_22@@150 T@Ref) (f_37@@175 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@150 f_37@@175) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@74) o2_22@@150 f_37@@175) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@150 f_37@@175)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@150 f_37@@175))
))) (forall ((o2_22@@151 T@Ref) (f_37@@176 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@151 f_37@@176) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@74) o2_22@@151 f_37@@176) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@151 f_37@@176)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@151 f_37@@176))
))) (forall ((o2_22@@152 T@Ref) (f_37@@177 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@152 f_37@@177) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@74) o2_22@@152 f_37@@177) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@152 f_37@@177)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@152 f_37@@177))
))) (forall ((o2_22@@153 T@Ref) (f_37@@178 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@153 f_37@@178) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@74) o2_22@@153 f_37@@178) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@153 f_37@@178)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@153 f_37@@178))
))) (forall ((o2_22@@154 T@Ref) (f_37@@179 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@154 f_37@@179) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@74) o2_22@@154 f_37@@179) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@154 f_37@@179)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@154 f_37@@179))
))) (forall ((o2_22@@155 T@Ref) (f_37@@180 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@155 f_37@@180) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@74) o2_22@@155 f_37@@180) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@155 f_37@@180)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@155 f_37@@180))
))) (forall ((o2_22@@156 T@Ref) (f_37@@181 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@156 f_37@@181) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@74) o2_22@@156 f_37@@181) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@156 f_37@@181)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@156 f_37@@181))
))) (forall ((o2_22@@157 T@Ref) (f_37@@182 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@157 f_37@@182) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@74) o2_22@@157 f_37@@182) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@157 f_37@@182)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@157 f_37@@182))
))) (forall ((o2_22@@158 T@Ref) (f_37@@183 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@158 f_37@@183) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@74) o2_22@@158 f_37@@183) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@158 f_37@@183)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@158 f_37@@183))
))) (forall ((o2_22@@159 T@Ref) (f_37@@184 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@159 f_37@@184) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@74) o2_22@@159 f_37@@184) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@159 f_37@@184)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@159 f_37@@184))
))) (forall ((o2_22@@160 T@Ref) (f_37@@185 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@160 f_37@@185) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@74) o2_22@@160 f_37@@185) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@160 f_37@@185)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@160 f_37@@185))
))) (forall ((o2_22@@161 T@Ref) (f_37@@186 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@161 f_37@@186) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@74) o2_22@@161 f_37@@186) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@161 f_37@@186)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@161 f_37@@186))
))) (forall ((o2_22@@162 T@Ref) (f_37@@187 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@162 f_37@@187) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) o2_22@@162 f_37@@187) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@162 f_37@@187)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@162 f_37@@187))
))) (forall ((o2_22@@163 T@Ref) (f_37@@188 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@163 f_37@@188) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@74) o2_22@@163 f_37@@188) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@163 f_37@@188)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@163 f_37@@188))
))) (forall ((o2_22@@164 T@Ref) (f_37@@189 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@164 f_37@@189) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@74) o2_22@@164 f_37@@189) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@164 f_37@@189)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@164 f_37@@189))
))) (forall ((o2_22@@165 T@Ref) (f_37@@190 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@165 f_37@@190) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@74) o2_22@@165 f_37@@190) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@165 f_37@@190)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@165 f_37@@190))
))) (forall ((o2_22@@166 T@Ref) (f_37@@191 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@166 f_37@@191) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@74) o2_22@@166 f_37@@191) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@166 f_37@@191)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@166 f_37@@191))
))) (forall ((o2_22@@167 T@Ref) (f_37@@192 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@167 f_37@@192) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@74) o2_22@@167 f_37@@192) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@167 f_37@@192)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@167 f_37@@192))
))) (forall ((o2_22@@168 T@Ref) (f_37@@193 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@168 f_37@@193) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@74) o2_22@@168 f_37@@193) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@168 f_37@@193)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@168 f_37@@193))
))) (forall ((o2_22@@169 T@Ref) (f_37@@194 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@169 f_37@@194) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@74) o2_22@@169 f_37@@194) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@169 f_37@@194)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@169 f_37@@194))
))) (forall ((o2_22@@170 T@Ref) (f_37@@195 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@170 f_37@@195) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@74) o2_22@@170 f_37@@195) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@170 f_37@@195)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@170 f_37@@195))
))) (forall ((o2_22@@171 T@Ref) (f_37@@196 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@171 f_37@@196) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@74) o2_22@@171 f_37@@196) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@171 f_37@@196)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@171 f_37@@196))
))) (forall ((o2_22@@172 T@Ref) (f_37@@197 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@172 f_37@@197) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@74) o2_22@@172 f_37@@197) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@172 f_37@@197)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@172 f_37@@197))
))) (forall ((o2_22@@173 T@Ref) (f_37@@198 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@74) null (WandMaskField_7898 pm_f_22@@15))) o2_22@@173 f_37@@198) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@74) o2_22@@173 f_37@@198) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@173 f_37@@198)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@42) o2_22@@173 f_37@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@42 Mask@@95) (IsWandField_7898_7899 pm_f_22@@15))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_13939) (ExhaleHeap@@43 T@PolymorphicMapType_13939) (Mask@@96 T@PolymorphicMapType_13960) (pm_f_22@@16 T@Field_17357_17358) ) (!  (=> (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@43 Mask@@96) (=> (and (HasDirectPerm_17328_7990 Mask@@96 null pm_f_22@@16) (IsWandField_7860_7861 pm_f_22@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@174 T@Ref) (f_37@@199 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@174 f_37@@199) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@75) o2_22@@174 f_37@@199) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@174 f_37@@199)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@174 f_37@@199))
)) (forall ((o2_22@@175 T@Ref) (f_37@@200 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@175 f_37@@200) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@75) o2_22@@175 f_37@@200) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@175 f_37@@200)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@175 f_37@@200))
))) (forall ((o2_22@@176 T@Ref) (f_37@@201 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@176 f_37@@201) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@75) o2_22@@176 f_37@@201) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@176 f_37@@201)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@176 f_37@@201))
))) (forall ((o2_22@@177 T@Ref) (f_37@@202 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@177 f_37@@202) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@75) o2_22@@177 f_37@@202) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@177 f_37@@202)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@177 f_37@@202))
))) (forall ((o2_22@@178 T@Ref) (f_37@@203 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@178 f_37@@203) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@75) o2_22@@178 f_37@@203) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@178 f_37@@203)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@178 f_37@@203))
))) (forall ((o2_22@@179 T@Ref) (f_37@@204 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@179 f_37@@204) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@75) o2_22@@179 f_37@@204) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@179 f_37@@204)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@179 f_37@@204))
))) (forall ((o2_22@@180 T@Ref) (f_37@@205 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@180 f_37@@205) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@75) o2_22@@180 f_37@@205) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@180 f_37@@205)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@180 f_37@@205))
))) (forall ((o2_22@@181 T@Ref) (f_37@@206 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@181 f_37@@206) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@75) o2_22@@181 f_37@@206) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@181 f_37@@206)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@181 f_37@@206))
))) (forall ((o2_22@@182 T@Ref) (f_37@@207 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@182 f_37@@207) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) o2_22@@182 f_37@@207) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@182 f_37@@207)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@182 f_37@@207))
))) (forall ((o2_22@@183 T@Ref) (f_37@@208 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@183 f_37@@208) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@75) o2_22@@183 f_37@@208) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@183 f_37@@208)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@183 f_37@@208))
))) (forall ((o2_22@@184 T@Ref) (f_37@@209 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@184 f_37@@209) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@75) o2_22@@184 f_37@@209) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@184 f_37@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@184 f_37@@209))
))) (forall ((o2_22@@185 T@Ref) (f_37@@210 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@185 f_37@@210) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@75) o2_22@@185 f_37@@210) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@185 f_37@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@185 f_37@@210))
))) (forall ((o2_22@@186 T@Ref) (f_37@@211 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@186 f_37@@211) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@75) o2_22@@186 f_37@@211) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@186 f_37@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@186 f_37@@211))
))) (forall ((o2_22@@187 T@Ref) (f_37@@212 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@187 f_37@@212) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@75) o2_22@@187 f_37@@212) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@187 f_37@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@187 f_37@@212))
))) (forall ((o2_22@@188 T@Ref) (f_37@@213 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@188 f_37@@213) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@75) o2_22@@188 f_37@@213) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@188 f_37@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@188 f_37@@213))
))) (forall ((o2_22@@189 T@Ref) (f_37@@214 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@189 f_37@@214) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@75) o2_22@@189 f_37@@214) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@189 f_37@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@189 f_37@@214))
))) (forall ((o2_22@@190 T@Ref) (f_37@@215 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@190 f_37@@215) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@75) o2_22@@190 f_37@@215) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@190 f_37@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@190 f_37@@215))
))) (forall ((o2_22@@191 T@Ref) (f_37@@216 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@191 f_37@@216) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@75) o2_22@@191 f_37@@216) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@191 f_37@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@191 f_37@@216))
))) (forall ((o2_22@@192 T@Ref) (f_37@@217 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@192 f_37@@217) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@75) o2_22@@192 f_37@@217) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@192 f_37@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@192 f_37@@217))
))) (forall ((o2_22@@193 T@Ref) (f_37@@218 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@193 f_37@@218) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@75) o2_22@@193 f_37@@218) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@193 f_37@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@193 f_37@@218))
))) (forall ((o2_22@@194 T@Ref) (f_37@@219 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@194 f_37@@219) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@75) o2_22@@194 f_37@@219) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@194 f_37@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@194 f_37@@219))
))) (forall ((o2_22@@195 T@Ref) (f_37@@220 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@195 f_37@@220) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@75) o2_22@@195 f_37@@220) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@195 f_37@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@195 f_37@@220))
))) (forall ((o2_22@@196 T@Ref) (f_37@@221 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@196 f_37@@221) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@75) o2_22@@196 f_37@@221) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@196 f_37@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@196 f_37@@221))
))) (forall ((o2_22@@197 T@Ref) (f_37@@222 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@197 f_37@@222) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@75) o2_22@@197 f_37@@222) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@197 f_37@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@197 f_37@@222))
))) (forall ((o2_22@@198 T@Ref) (f_37@@223 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@75) null (WandMaskField_7860 pm_f_22@@16))) o2_22@@198 f_37@@223) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@75) o2_22@@198 f_37@@223) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@198 f_37@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@43) o2_22@@198 f_37@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@43 Mask@@96) (IsWandField_7860_7861 pm_f_22@@16))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_13939) (ExhaleHeap@@44 T@PolymorphicMapType_13939) (Mask@@97 T@PolymorphicMapType_13960) (pm_f_22@@17 T@Field_19684_19685) ) (!  (=> (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@44 Mask@@97) (=> (and (HasDirectPerm_7989_7990 Mask@@97 null pm_f_22@@17) (IsWandField_7989_58033 pm_f_22@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@199 T@Ref) (f_37@@224 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@199 f_37@@224) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@76) o2_22@@199 f_37@@224) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@199 f_37@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@199 f_37@@224))
)) (forall ((o2_22@@200 T@Ref) (f_37@@225 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@200 f_37@@225) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@76) o2_22@@200 f_37@@225) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@200 f_37@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@200 f_37@@225))
))) (forall ((o2_22@@201 T@Ref) (f_37@@226 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@201 f_37@@226) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@76) o2_22@@201 f_37@@226) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@201 f_37@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@201 f_37@@226))
))) (forall ((o2_22@@202 T@Ref) (f_37@@227 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@202 f_37@@227) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@76) o2_22@@202 f_37@@227) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@202 f_37@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@202 f_37@@227))
))) (forall ((o2_22@@203 T@Ref) (f_37@@228 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@203 f_37@@228) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@76) o2_22@@203 f_37@@228) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@203 f_37@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@203 f_37@@228))
))) (forall ((o2_22@@204 T@Ref) (f_37@@229 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@204 f_37@@229) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@76) o2_22@@204 f_37@@229) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@204 f_37@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@204 f_37@@229))
))) (forall ((o2_22@@205 T@Ref) (f_37@@230 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@205 f_37@@230) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@76) o2_22@@205 f_37@@230) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@205 f_37@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@205 f_37@@230))
))) (forall ((o2_22@@206 T@Ref) (f_37@@231 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@206 f_37@@231) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@76) o2_22@@206 f_37@@231) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@206 f_37@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@206 f_37@@231))
))) (forall ((o2_22@@207 T@Ref) (f_37@@232 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@207 f_37@@232) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@76) o2_22@@207 f_37@@232) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@207 f_37@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@207 f_37@@232))
))) (forall ((o2_22@@208 T@Ref) (f_37@@233 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@208 f_37@@233) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@76) o2_22@@208 f_37@@233) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@208 f_37@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@208 f_37@@233))
))) (forall ((o2_22@@209 T@Ref) (f_37@@234 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@209 f_37@@234) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@76) o2_22@@209 f_37@@234) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@209 f_37@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@209 f_37@@234))
))) (forall ((o2_22@@210 T@Ref) (f_37@@235 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@210 f_37@@235) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@76) o2_22@@210 f_37@@235) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@210 f_37@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@210 f_37@@235))
))) (forall ((o2_22@@211 T@Ref) (f_37@@236 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@211 f_37@@236) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@76) o2_22@@211 f_37@@236) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@211 f_37@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@211 f_37@@236))
))) (forall ((o2_22@@212 T@Ref) (f_37@@237 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@212 f_37@@237) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@76) o2_22@@212 f_37@@237) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@212 f_37@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@212 f_37@@237))
))) (forall ((o2_22@@213 T@Ref) (f_37@@238 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@213 f_37@@238) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@76) o2_22@@213 f_37@@238) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@213 f_37@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@213 f_37@@238))
))) (forall ((o2_22@@214 T@Ref) (f_37@@239 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@214 f_37@@239) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@76) o2_22@@214 f_37@@239) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@214 f_37@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@214 f_37@@239))
))) (forall ((o2_22@@215 T@Ref) (f_37@@240 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@215 f_37@@240) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@76) o2_22@@215 f_37@@240) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@215 f_37@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@215 f_37@@240))
))) (forall ((o2_22@@216 T@Ref) (f_37@@241 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@216 f_37@@241) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@76) o2_22@@216 f_37@@241) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@216 f_37@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@216 f_37@@241))
))) (forall ((o2_22@@217 T@Ref) (f_37@@242 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@217 f_37@@242) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@76) o2_22@@217 f_37@@242) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@217 f_37@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@217 f_37@@242))
))) (forall ((o2_22@@218 T@Ref) (f_37@@243 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@218 f_37@@243) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@76) o2_22@@218 f_37@@243) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@218 f_37@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@218 f_37@@243))
))) (forall ((o2_22@@219 T@Ref) (f_37@@244 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@219 f_37@@244) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@76) o2_22@@219 f_37@@244) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@219 f_37@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@219 f_37@@244))
))) (forall ((o2_22@@220 T@Ref) (f_37@@245 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@220 f_37@@245) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@76) o2_22@@220 f_37@@245) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@220 f_37@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@220 f_37@@245))
))) (forall ((o2_22@@221 T@Ref) (f_37@@246 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@221 f_37@@246) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@76) o2_22@@221 f_37@@246) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@221 f_37@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@221 f_37@@246))
))) (forall ((o2_22@@222 T@Ref) (f_37@@247 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@222 f_37@@247) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) o2_22@@222 f_37@@247) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@222 f_37@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@222 f_37@@247))
))) (forall ((o2_22@@223 T@Ref) (f_37@@248 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@76) null (WandMaskField_7989 pm_f_22@@17))) o2_22@@223 f_37@@248) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@76) o2_22@@223 f_37@@248) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@223 f_37@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@44) o2_22@@223 f_37@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@44 Mask@@97) (IsWandField_7989_58033 pm_f_22@@17))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_13939) (ExhaleHeap@@45 T@PolymorphicMapType_13939) (Mask@@98 T@PolymorphicMapType_13960) (pm_f_22@@18 T@Field_7958_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@77 ExhaleHeap@@45 Mask@@98) (=> (and (HasDirectPerm_7958_7990 Mask@@98 null pm_f_22@@18) (IsWandField_7958_57676 pm_f_22@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@224 T@Ref) (f_37@@249 T@Field_19316_2212) ) (!  (=> (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@224 f_37@@249) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@77) o2_22@@224 f_37@@249) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@224 f_37@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@224 f_37@@249))
)) (forall ((o2_22@@225 T@Ref) (f_37@@250 T@Field_13999_53) ) (!  (=> (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@225 f_37@@250) (= (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@77) o2_22@@225 f_37@@250) (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@225 f_37@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@225 f_37@@250))
))) (forall ((o2_22@@226 T@Ref) (f_37@@251 T@Field_14012_14013) ) (!  (=> (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@226 f_37@@251) (= (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@77) o2_22@@226 f_37@@251) (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@226 f_37@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@226 f_37@@251))
))) (forall ((o2_22@@227 T@Ref) (f_37@@252 T@Field_7958_17346) ) (!  (=> (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@227 f_37@@252) (= (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) o2_22@@227 f_37@@252) (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@227 f_37@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@227 f_37@@252))
))) (forall ((o2_22@@228 T@Ref) (f_37@@253 T@Field_7958_7990) ) (!  (=> (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@228 f_37@@253) (= (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@77) o2_22@@228 f_37@@253) (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@228 f_37@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@228 f_37@@253))
))) (forall ((o2_22@@229 T@Ref) (f_37@@254 T@Field_17328_1210) ) (!  (=> (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@229 f_37@@254) (= (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@77) o2_22@@229 f_37@@254) (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@229 f_37@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@229 f_37@@254))
))) (forall ((o2_22@@230 T@Ref) (f_37@@255 T@Field_17328_53) ) (!  (=> (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@230 f_37@@255) (= (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@77) o2_22@@230 f_37@@255) (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@230 f_37@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@230 f_37@@255))
))) (forall ((o2_22@@231 T@Ref) (f_37@@256 T@Field_17328_14013) ) (!  (=> (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@231 f_37@@256) (= (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@77) o2_22@@231 f_37@@256) (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@231 f_37@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@231 f_37@@256))
))) (forall ((o2_22@@232 T@Ref) (f_37@@257 T@Field_17341_17346) ) (!  (=> (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@232 f_37@@257) (= (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@77) o2_22@@232 f_37@@257) (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@232 f_37@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@232 f_37@@257))
))) (forall ((o2_22@@233 T@Ref) (f_37@@258 T@Field_17357_17358) ) (!  (=> (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@233 f_37@@258) (= (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@77) o2_22@@233 f_37@@258) (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@233 f_37@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@233 f_37@@258))
))) (forall ((o2_22@@234 T@Ref) (f_37@@259 T@Field_18030_1585) ) (!  (=> (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@234 f_37@@259) (= (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@77) o2_22@@234 f_37@@259) (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@234 f_37@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@234 f_37@@259))
))) (forall ((o2_22@@235 T@Ref) (f_37@@260 T@Field_18030_53) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@235 f_37@@260) (= (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@77) o2_22@@235 f_37@@260) (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@235 f_37@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@235 f_37@@260))
))) (forall ((o2_22@@236 T@Ref) (f_37@@261 T@Field_18030_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@236 f_37@@261) (= (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@77) o2_22@@236 f_37@@261) (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@236 f_37@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@236 f_37@@261))
))) (forall ((o2_22@@237 T@Ref) (f_37@@262 T@Field_18043_18048) ) (!  (=> (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@237 f_37@@262) (= (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@77) o2_22@@237 f_37@@262) (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@237 f_37@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@237 f_37@@262))
))) (forall ((o2_22@@238 T@Ref) (f_37@@263 T@Field_18059_18060) ) (!  (=> (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@238 f_37@@263) (= (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@77) o2_22@@238 f_37@@263) (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@238 f_37@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@238 f_37@@263))
))) (forall ((o2_22@@239 T@Ref) (f_37@@264 T@Field_18674_1907) ) (!  (=> (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@239 f_37@@264) (= (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@77) o2_22@@239 f_37@@264) (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@239 f_37@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@239 f_37@@264))
))) (forall ((o2_22@@240 T@Ref) (f_37@@265 T@Field_18674_53) ) (!  (=> (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@240 f_37@@265) (= (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@77) o2_22@@240 f_37@@265) (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@240 f_37@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@240 f_37@@265))
))) (forall ((o2_22@@241 T@Ref) (f_37@@266 T@Field_18674_14013) ) (!  (=> (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@241 f_37@@266) (= (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@77) o2_22@@241 f_37@@266) (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@241 f_37@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@241 f_37@@266))
))) (forall ((o2_22@@242 T@Ref) (f_37@@267 T@Field_18687_18692) ) (!  (=> (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@242 f_37@@267) (= (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@77) o2_22@@242 f_37@@267) (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@242 f_37@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@242 f_37@@267))
))) (forall ((o2_22@@243 T@Ref) (f_37@@268 T@Field_18703_18704) ) (!  (=> (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@243 f_37@@268) (= (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@77) o2_22@@243 f_37@@268) (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@243 f_37@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@243 f_37@@268))
))) (forall ((o2_22@@244 T@Ref) (f_37@@269 T@Field_7989_2212) ) (!  (=> (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@244 f_37@@269) (= (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@77) o2_22@@244 f_37@@269) (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@244 f_37@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@244 f_37@@269))
))) (forall ((o2_22@@245 T@Ref) (f_37@@270 T@Field_7989_53) ) (!  (=> (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@245 f_37@@270) (= (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@77) o2_22@@245 f_37@@270) (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@245 f_37@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@245 f_37@@270))
))) (forall ((o2_22@@246 T@Ref) (f_37@@271 T@Field_7989_14013) ) (!  (=> (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@246 f_37@@271) (= (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@77) o2_22@@246 f_37@@271) (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@246 f_37@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@246 f_37@@271))
))) (forall ((o2_22@@247 T@Ref) (f_37@@272 T@Field_20934_20939) ) (!  (=> (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@247 f_37@@272) (= (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@77) o2_22@@247 f_37@@272) (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@247 f_37@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@247 f_37@@272))
))) (forall ((o2_22@@248 T@Ref) (f_37@@273 T@Field_19684_19685) ) (!  (=> (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@77) null (WandMaskField_7958 pm_f_22@@18))) o2_22@@248 f_37@@273) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@77) o2_22@@248 f_37@@273) (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@248 f_37@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| ExhaleHeap@@45) o2_22@@248 f_37@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@77 ExhaleHeap@@45 Mask@@98) (IsWandField_7958_57676 pm_f_22@@18))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_1_1@11 () Bool)
(declare-fun b_4@6 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_13939)
(declare-fun xs () T@Ref)
(declare-fun Mask@10 () T@PolymorphicMapType_13960)
(declare-fun Mask@9 () T@PolymorphicMapType_13960)
(declare-fun Heap@11 () T@PolymorphicMapType_13939)
(declare-fun Result_1Mask () T@PolymorphicMapType_13960)
(declare-fun b_1_1@10 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_2Mask@3 () T@PolymorphicMapType_13960)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_5@0 () Bool)
(declare-fun b_5@1 () Bool)
(declare-fun b_5@2 () Bool)
(declare-fun Ops_1Mask@5 () T@PolymorphicMapType_13960)
(declare-fun b_5@3 () Bool)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_13939)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_13939)
(declare-fun b_5@4 () Bool)
(declare-fun takeTransfer@3 () Real)
(declare-fun Heap@9 () T@PolymorphicMapType_13939)
(declare-fun neededTransfer@5 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_13960)
(declare-fun Used_2Mask@1 () T@PolymorphicMapType_13960)
(declare-fun b_4@3 () Bool)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_2Mask@2 () T@PolymorphicMapType_13960)
(declare-fun b_4@4 () Bool)
(declare-fun b_4@5 () Bool)
(declare-fun Mask@8 () T@PolymorphicMapType_13960)
(declare-fun Heap@10 () T@PolymorphicMapType_13939)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun b_4@0 () Bool)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_13960)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_2Mask@0 () T@PolymorphicMapType_13960)
(declare-fun b_4@1 () Bool)
(declare-fun b_4@2 () Bool)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_13960)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_4 () Bool)
(declare-fun b_1_1@2 () Bool)
(declare-fun b_2_1@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_13960)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_13939)
(declare-fun ResultMask@@24 () T@PolymorphicMapType_13960)
(declare-fun b_3@2 () Bool)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_13960)
(declare-fun b_3@3 () Bool)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_13939)
(declare-fun b_3@4 () Bool)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_1_1@4 () Bool)
(declare-fun b_1_1@5 () Bool)
(declare-fun b_1_1@6 () Bool)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_13960)
(declare-fun b_1_1@7 () Bool)
(declare-fun b_1_1@8 () Bool)
(declare-fun b_1_1@9 () Bool)
(declare-fun Heap@8 () T@PolymorphicMapType_13939)
(declare-fun Mask@6 () T@PolymorphicMapType_13960)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_13960)
(declare-fun Heap@6 () T@PolymorphicMapType_13939)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_13960)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_13960)
(declare-fun b_2_1@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_13960)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@5 () T@PolymorphicMapType_13960)
(declare-fun newPMask@0 () T@PolymorphicMapType_14488)
(declare-fun Heap@7 () T@PolymorphicMapType_13939)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_13960)
(declare-fun b_2_1@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_13960)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_13960)
(declare-fun maskTransfer@0 () Real)
(declare-fun FrameFragment_2212 (Int) T@FrameType)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1@1 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun Heap@5 () T@PolymorphicMapType_13939)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_13939)
(declare-fun Heap@2 () T@PolymorphicMapType_13939)
(declare-fun Heap@3 () T@PolymorphicMapType_13939)
(declare-fun Heap@4 () T@PolymorphicMapType_13939)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@3 () T@PolymorphicMapType_13960)
(declare-fun Mask@2 () T@PolymorphicMapType_13960)
(declare-fun Mask@1 () T@PolymorphicMapType_13960)
(declare-fun Heap@1 () T@PolymorphicMapType_13939)
(declare-fun Heap@@78 () T@PolymorphicMapType_13939)
(declare-fun Heap@0 () T@PolymorphicMapType_13939)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_13960)
(set-info :boogie-vc-id t01)
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
 (=> (= (ControlFlow 0 0) 61) (let ((anon39_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (and (and b_1_1@11 b_1_1@11) b_4@6) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Result_1Heap) xs f_7) 3))) (=> (=> (and (and b_1_1@11 b_1_1@11) b_4@6) (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Result_1Heap) xs f_7) 3)) (=> (= Mask@10 (PolymorphicMapType_13960 (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@9) (store (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@9) null (wand true xs FullPerm xs 3) (+ (select (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@9) null (wand true xs FullPerm xs 3)) FullPerm)) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@9) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@9))) (=> (and (and (state Heap@11 Mask@10) (state Heap@11 Mask@10)) (and (state Heap@11 Mask@10) (= (ControlFlow 0 2) (- 0 1)))) false))))))
(let ((anon59_Else_correct  (=> (and (not b_1_1@11) (= (ControlFlow 0 7) 2)) anon39_correct)))
(let ((anon59_Then_correct  (=> b_1_1@11 (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_7958_2212 Result_1Mask xs f_7)) (=> (HasDirectPerm_7958_2212 Result_1Mask xs f_7) (=> (= (ControlFlow 0 5) 2) anon39_correct))))))
(let ((anon58_Then_correct  (=> (and (and b_1_1@11 b_1_1@11) b_4@6) (and (=> (= (ControlFlow 0 8) 5) anon59_Then_correct) (=> (= (ControlFlow 0 8) 7) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (and (not (and (and b_1_1@11 b_1_1@11) b_4@6)) (= (ControlFlow 0 4) 2)) anon39_correct)))
(let ((anon36_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> (and (and b_1_1@10 b_1_1@10) b_4@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Used_2Mask@3) xs f_7) initNeededTransfer@1)))) (=> (=> (and (and b_1_1@10 b_1_1@10) b_4@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Used_2Mask@3) xs f_7) initNeededTransfer@1))) (=> (and (= b_5@0  (and b_1_1@10 b_4@6)) (= b_5@1  (and b_5@0 (state Result_1Heap Result_1Mask)))) (=> (and (and (= b_5@2  (and b_5@1 (sumMask Result_1Mask Ops_1Mask@5 Used_2Mask@3))) (= b_5@3  (and (and b_5@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_1Heap Ops_1Mask@5)) (IdenticalOnKnownLocations Used_2Heap@0 Result_1Heap Used_2Mask@3)))) (and (= b_5@4  (and b_5@3 (state Result_1Heap Result_1Mask))) (= b_1_1@11  (and b_1_1@10 b_5@4)))) (and (=> (= (ControlFlow 0 9) 8) anon58_Then_correct) (=> (= (ControlFlow 0 9) 4) anon58_Else_correct))))))))
(let ((anon57_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= Heap@11 Heap@9) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Mask@9 Mask@7) (= Used_2Mask@3 Used_2Mask@1)) (and (= b_4@6 b_4@3) (= (ControlFlow 0 13) 9))) anon36_correct)))))
(let ((anon57_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_2Mask@2 (PolymorphicMapType_13960 (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Used_2Mask@1) (store (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Used_2Mask@1) xs f_7 (+ (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Used_2Mask@1) xs f_7) takeTransfer@3)) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Used_2Mask@1) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Used_2Mask@1)))) (and (= b_4@4  (and b_4@3 (state Used_2Heap@0 Used_2Mask@2))) (= b_4@5  (and b_4@4 (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@9) xs f_7) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Used_2Heap@0) xs f_7)))))) (=> (and (and (and (= Mask@8 (PolymorphicMapType_13960 (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@7) (store (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@7) xs f_7 (- (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@7) xs f_7) takeTransfer@3)) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@7) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@7))) (= Heap@10 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@9) (store (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3) (PolymorphicMapType_14488 (store (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) xs f_7 true) (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))) (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@9) null (|wand#sm| true xs FullPerm xs 3))))) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@9) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@9)))) (and (= Heap@11 Heap@10) (= neededTransfer@7 neededTransfer@6))) (and (and (= Mask@9 Mask@8) (= Used_2Mask@3 Used_2Mask@2)) (and (= b_4@6 b_4@5) (= (ControlFlow 0 12) 9)))) anon36_correct)))))
(let ((anon56_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 15) 12) anon57_Then_correct) (=> (= (ControlFlow 0 15) 13) anon57_Else_correct)))))
(let ((anon56_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 14) 12) anon57_Then_correct) (=> (= (ControlFlow 0 14) 13) anon57_Else_correct)))))
(let ((anon55_Then_correct  (=> (and (and (and (and (and b_1_1@10 b_1_1@10) b_4@3) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@7) xs f_7))) (and (=> (= (ControlFlow 0 16) 14) anon56_Then_correct) (=> (= (ControlFlow 0 16) 15) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (not (and (and (and (and b_1_1@10 b_1_1@10) b_4@3) true) (> neededTransfer@5 0.0))) (=> (and (= Heap@11 Heap@9) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Mask@9 Mask@7) (= Used_2Mask@3 Used_2Mask@1)) (and (= b_4@6 b_4@3) (= (ControlFlow 0 11) 9))) anon36_correct)))))
(let ((anon54_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= b_4@3 b_4@0) (= Used_2Mask@1 ZeroMask)) (and (= Ops_1Mask@5 Ops_1Mask@3) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 19) 16) anon55_Then_correct) (=> (= (ControlFlow 0 19) 11) anon55_Else_correct))))))
(let ((anon54_Then_correct  (=> (and (> takeTransfer@2 0.0) (= neededTransfer@4 (- FullPerm takeTransfer@2))) (=> (and (and (and (= Used_2Mask@0 (PolymorphicMapType_13960 (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) (store (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) xs f_7 (+ (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) xs f_7) takeTransfer@2)) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ZeroMask))) (= b_4@1  (and b_4@0 (state Used_2Heap@0 Used_2Mask@0)))) (and (= b_4@2  (and b_4@1 (= (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Ops_1Heap@0) xs f_7) (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Used_2Heap@0) xs f_7)))) (= Ops_1Mask@4 (PolymorphicMapType_13960 (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Ops_1Mask@3) (store (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Ops_1Mask@3) xs f_7 (- (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Ops_1Mask@3) xs f_7) takeTransfer@2)) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Ops_1Mask@3) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Ops_1Mask@3))))) (and (and (= b_4@3 b_4@2) (= Used_2Mask@1 Used_2Mask@0)) (and (= Ops_1Mask@5 Ops_1Mask@4) (= neededTransfer@5 neededTransfer@4)))) (and (=> (= (ControlFlow 0 18) 16) anon55_Then_correct) (=> (= (ControlFlow 0 18) 11) anon55_Else_correct))))))
(let ((anon53_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 21) 18) anon54_Then_correct) (=> (= (ControlFlow 0 21) 19) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 20) 18) anon54_Then_correct) (=> (= (ControlFlow 0 20) 19) anon54_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (and (and (and (and b_1_1@10 b_1_1@10) b_4@0) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Ops_1Mask@3) xs f_7))) (and (=> (= (ControlFlow 0 22) 20) anon53_Then_correct) (=> (= (ControlFlow 0 22) 21) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (not (and (and (and (and b_1_1@10 b_1_1@10) b_4@0) true) (> FullPerm 0.0))) (=> (and (and (= b_4@3 b_4@0) (= Used_2Mask@1 ZeroMask)) (and (= Ops_1Mask@5 Ops_1Mask@3) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 17) 16) anon55_Then_correct) (=> (= (ControlFlow 0 17) 11) anon55_Else_correct))))))
(let ((anon24_correct  (=> (and (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) xs f_7) FullPerm))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 23) 22) anon52_Then_correct) (=> (= (ControlFlow 0 23) 17) anon52_Else_correct)))))))
(let ((anon23_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (=> (and b_1_1@2 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Used_1Mask@3) null (Single xs)) initNeededTransfer@0)))) (=> (=> (and b_1_1@2 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Used_1Mask@3) null (Single xs)) initNeededTransfer@0))) (=> (and (= b_3@0  (and b_1_1@2 b_2_1@6)) (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@24)))) (=> (and (and (and (and (= b_3@2  (and b_3@1 (sumMask ResultMask@@24 Ops_1Mask@1 Used_1Mask@3))) (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@0 ResultHeap Ops_1Mask@1)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3)))) (and (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@24))) (= b_1_1@3  (and b_1_1@2 b_3@4)))) (and (and (= b_1_1@4  (and b_1_1@3 b_2_1@6)) (= b_1_1@5  (and b_1_1@4 (= Used_1Heap@0 Ops_1Heap@0)))) (and (= b_1_1@6  (and b_1_1@5 (not (= xs null)))) (= Ops_1Mask@2 (PolymorphicMapType_13960 (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Ops_1Mask@1) (store (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Ops_1Mask@1) xs f_7 (+ (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Ops_1Mask@1) xs f_7) FullPerm)) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Ops_1Mask@1) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Ops_1Mask@1)))))) (and (and (and (= b_1_1@7  (and b_1_1@6 (state Ops_1Heap@0 Ops_1Mask@2))) (= b_1_1@8  (and b_1_1@7 (state Ops_1Heap@0 Ops_1Mask@2)))) (and (= b_1_1@9  (and b_1_1@8 (state Ops_1Heap@0 Ops_1Mask@2))) (= b_1_1@10 b_1_1@9))) (and (and (= Heap@9 Heap@8) (= Mask@7 Mask@6)) (and (= Ops_1Mask@3 Ops_1Mask@2) (= (ControlFlow 0 26) 23))))) anon24_correct))))))
(let ((anon51_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@6 Mask@4) (= Heap@8 Heap@6)) (=> (and (and (= neededTransfer@3 neededTransfer@1) (= b_2_1@6 b_2_1@3)) (and (= Used_1Mask@3 Used_1Mask@1) (= (ControlFlow 0 30) 26))) anon23_correct)))))
(let ((anon51_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_13960 (store (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Used_1Mask@1) null (Single xs) (+ (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Used_1Mask@1) null (Single xs)) takeTransfer@1)) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Used_1Mask@1) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Used_1Mask@1)))) (=> (and (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= TempMask@1 (PolymorphicMapType_13960 (store (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs) FullPerm) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ZeroMask)))) (and (= b_2_1@5  (and b_2_1@4 (IdenticalOnKnownLocations Heap@6 Used_1Heap@0 TempMask@1))) (= Mask@5 (PolymorphicMapType_13960 (store (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@4) null (Single xs) (- (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@4) null (Single xs)) takeTransfer@1)) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@4) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@4))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_19316_2212) ) (!  (=> (or (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15 f_20) (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15 f_20)) (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| newPMask@0) o_15 f_20))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_13999_53) ) (!  (=> (or (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_14012_14013) ) (!  (=> (or (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_7958_17346) ) (!  (=> (or (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_7958_7990) ) (!  (=> (or (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_17328_1210) ) (!  (=> (or (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_17328_53) ) (!  (=> (or (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_17328_14013) ) (!  (=> (or (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_17341_17346) ) (!  (=> (or (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_17357_17358) ) (!  (=> (or (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| newPMask@0) o_15@@8 f_20@@8))
))) (forall ((o_15@@9 T@Ref) (f_20@@9 T@Field_18030_1585) ) (!  (=> (or (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@9 f_20@@9) (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@9 f_20@@9)) (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| newPMask@0) o_15@@9 f_20@@9))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| newPMask@0) o_15@@9 f_20@@9))
))) (forall ((o_15@@10 T@Ref) (f_20@@10 T@Field_18030_53) ) (!  (=> (or (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@10 f_20@@10) (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@10 f_20@@10)) (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| newPMask@0) o_15@@10 f_20@@10))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| newPMask@0) o_15@@10 f_20@@10))
))) (forall ((o_15@@11 T@Ref) (f_20@@11 T@Field_18030_14013) ) (!  (=> (or (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@11 f_20@@11) (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@11 f_20@@11)) (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| newPMask@0) o_15@@11 f_20@@11))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| newPMask@0) o_15@@11 f_20@@11))
))) (forall ((o_15@@12 T@Ref) (f_20@@12 T@Field_18043_18048) ) (!  (=> (or (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@12 f_20@@12) (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@12 f_20@@12)) (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| newPMask@0) o_15@@12 f_20@@12))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| newPMask@0) o_15@@12 f_20@@12))
))) (forall ((o_15@@13 T@Ref) (f_20@@13 T@Field_18059_18060) ) (!  (=> (or (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@13 f_20@@13) (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@13 f_20@@13)) (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| newPMask@0) o_15@@13 f_20@@13))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| newPMask@0) o_15@@13 f_20@@13))
))) (forall ((o_15@@14 T@Ref) (f_20@@14 T@Field_18674_1907) ) (!  (=> (or (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@14 f_20@@14) (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@14 f_20@@14)) (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| newPMask@0) o_15@@14 f_20@@14))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| newPMask@0) o_15@@14 f_20@@14))
))) (forall ((o_15@@15 T@Ref) (f_20@@15 T@Field_18674_53) ) (!  (=> (or (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@15 f_20@@15) (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@15 f_20@@15)) (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| newPMask@0) o_15@@15 f_20@@15))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| newPMask@0) o_15@@15 f_20@@15))
))) (forall ((o_15@@16 T@Ref) (f_20@@16 T@Field_18674_14013) ) (!  (=> (or (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@16 f_20@@16) (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@16 f_20@@16)) (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| newPMask@0) o_15@@16 f_20@@16))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| newPMask@0) o_15@@16 f_20@@16))
))) (forall ((o_15@@17 T@Ref) (f_20@@17 T@Field_18687_18692) ) (!  (=> (or (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@17 f_20@@17) (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@17 f_20@@17)) (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| newPMask@0) o_15@@17 f_20@@17))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| newPMask@0) o_15@@17 f_20@@17))
))) (forall ((o_15@@18 T@Ref) (f_20@@18 T@Field_18703_18704) ) (!  (=> (or (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@18 f_20@@18) (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@18 f_20@@18)) (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| newPMask@0) o_15@@18 f_20@@18))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| newPMask@0) o_15@@18 f_20@@18))
))) (forall ((o_15@@19 T@Ref) (f_20@@19 T@Field_7989_2212) ) (!  (=> (or (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@19 f_20@@19) (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@19 f_20@@19)) (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| newPMask@0) o_15@@19 f_20@@19))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| newPMask@0) o_15@@19 f_20@@19))
))) (forall ((o_15@@20 T@Ref) (f_20@@20 T@Field_7989_53) ) (!  (=> (or (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@20 f_20@@20) (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@20 f_20@@20)) (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| newPMask@0) o_15@@20 f_20@@20))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| newPMask@0) o_15@@20 f_20@@20))
))) (forall ((o_15@@21 T@Ref) (f_20@@21 T@Field_7989_14013) ) (!  (=> (or (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@21 f_20@@21) (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@21 f_20@@21)) (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| newPMask@0) o_15@@21 f_20@@21))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| newPMask@0) o_15@@21 f_20@@21))
))) (forall ((o_15@@22 T@Ref) (f_20@@22 T@Field_20934_20939) ) (!  (=> (or (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@22 f_20@@22) (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@22 f_20@@22)) (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| newPMask@0) o_15@@22 f_20@@22))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| newPMask@0) o_15@@22 f_20@@22))
))) (forall ((o_15@@23 T@Ref) (f_20@@23 T@Field_19684_19685) ) (!  (=> (or (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3))) o_15@@23 f_20@@23) (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) null (|Single#sm| xs))) o_15@@23 f_20@@23)) (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| newPMask@0) o_15@@23 f_20@@23))
 :qid |stdinbpl.631:39|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| newPMask@0) o_15@@23 f_20@@23))
))) (= Heap@7 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@6) (store (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@6) null (|wand#sm| true xs FullPerm xs 3) newPMask@0) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@6) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@6)))) (and (= Mask@6 Mask@5) (= Heap@8 Heap@7))) (and (and (= neededTransfer@3 neededTransfer@2) (= b_2_1@6 b_2_1@5)) (and (= Used_1Mask@3 Used_1Mask@2) (= (ControlFlow 0 29) 26)))) anon23_correct))))))
(let ((anon50_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 32) 29) anon51_Then_correct) (=> (= (ControlFlow 0 32) 30) anon51_Else_correct)))))
(let ((anon50_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 31) 29) anon51_Then_correct) (=> (= (ControlFlow 0 31) 30) anon51_Else_correct)))))
(let ((anon49_Then_correct  (=> (and (and (and (and b_1_1@2 b_2_1@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@4) null (Single xs)))) (and (=> (= (ControlFlow 0 33) 31) anon50_Then_correct) (=> (= (ControlFlow 0 33) 32) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (not (and (and (and b_1_1@2 b_2_1@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@6 Mask@4) (= Heap@8 Heap@6)) (=> (and (and (= neededTransfer@3 neededTransfer@1) (= b_2_1@6 b_2_1@3)) (and (= Used_1Mask@3 Used_1Mask@1) (= (ControlFlow 0 28) 26))) anon23_correct)))))
(let ((anon48_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@1 ZeroMask) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 36) 33) anon49_Then_correct) (=> (= (ControlFlow 0 36) 28) anon49_Else_correct))))))
(let ((anon48_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_1Mask@0 (PolymorphicMapType_13960 (store (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs) (+ (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs)) takeTransfer@0)) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ZeroMask)))) (=> (and (and (and (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0))) (= TempMask@0 (PolymorphicMapType_13960 (store (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs) FullPerm) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ZeroMask)))) (and (= b_2_1@2  (and b_2_1@1 (IdenticalOnKnownLocations Ops_1Heap@0 Used_1Heap@0 TempMask@0))) (= Ops_1Mask@0 (PolymorphicMapType_13960 (store (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs) (- (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs)) takeTransfer@0)) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ZeroMask))))) (and (and (= Ops_1Mask@1 Ops_1Mask@0) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 35) 33) anon49_Then_correct) (=> (= (ControlFlow 0 35) 28) anon49_Else_correct)))))))
(let ((anon47_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 38) 35) anon48_Then_correct) (=> (= (ControlFlow 0 38) 36) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 37) 35) anon48_Then_correct) (=> (= (ControlFlow 0 37) 36) anon48_Else_correct)))))
(let ((anon46_Then_correct  (=> (and (and (and (and b_1_1@2 b_2_1@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs)))) (and (=> (= (ControlFlow 0 39) 37) anon47_Then_correct) (=> (= (ControlFlow 0 39) 38) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (not (and (and (and b_1_1@2 b_2_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@1 ZeroMask) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 34) 33) anon49_Then_correct) (=> (= (ControlFlow 0 34) 28) anon49_Else_correct))))))
(let ((anon45_Then_correct  (=> b_1_1@2 (=> (and (and (|Single#trigger_7989| Ops_1Heap@0 (Single xs)) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Ops_1Heap@0) null (Single xs)) (FrameFragment_2212 (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Ops_1Heap@0) xs f_7)))) (and (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs)) FullPerm)))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 40) 39) anon46_Then_correct) (=> (= (ControlFlow 0 40) 34) anon46_Else_correct))))))))
(let ((anon45_Else_correct  (=> (and (not b_1_1@2) (= b_1_1@10 b_1_1@2)) (=> (and (and (= Heap@9 Heap@6) (= Mask@7 Mask@4)) (and (= Ops_1Mask@3 ZeroMask) (= (ControlFlow 0 25) 23))) anon24_correct))))
(let ((anon10_correct  (=> (and (= b_1_1@1  (and b_1_1@0 (state Ops_1Heap@0 ZeroMask))) (= b_1_1@2  (and b_1_1@1 (state Ops_1Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 42) 40) anon45_Then_correct) (=> (= (ControlFlow 0 42) 25) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (not b_1_1@0) (= (ControlFlow 0 44) 42)) anon10_correct)))
(let ((anon44_Then_correct  (=> (and b_1_1@0 (= (ControlFlow 0 43) 42)) anon10_correct)))
(let ((anon8_correct  (=> (= Heap@6 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@5) (store (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs) (PolymorphicMapType_14488 (store (|PolymorphicMapType_14488_7958_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) xs f_7 true) (|PolymorphicMapType_14488_7958_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_7958_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_7958_51629#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_7958_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_17328_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_17328_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_17328_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_17328_52677#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_17328_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18030_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18030_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18030_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18030_53725#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18030_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18674_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18674_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18674_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18674_54773#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_18674_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_19684_2212#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_19684_53#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_19684_14013#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_19684_55821#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))) (|PolymorphicMapType_14488_19684_17358#PolymorphicMapType_14488| (select (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@5) null (|Single#sm| xs))))) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@5) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@5))) (=> (and (and (state Heap@6 Mask@4) (state Heap@6 Mask@4)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 45) 43) anon44_Then_correct) (=> (= (ControlFlow 0 45) 44) anon44_Else_correct))))))
(let ((anon43_Else_correct  (=> (HasDirectPerm_7989_7990 Mask@4 null (Single xs)) (=> (and (= Heap@5 Heap@2) (= (ControlFlow 0 47) 45)) anon8_correct))))
(let ((anon43_Then_correct  (=> (not (HasDirectPerm_7989_7990 Mask@4 null (Single xs))) (=> (and (and (= Heap@3 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@2) (store (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@2) null (|Single#sm| xs) ZeroPMask) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@2) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@2))) (= Heap@4 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@3) (store (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@3) null (Single xs) freshVersion@0) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@3) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 46) 45))) anon8_correct))))
(let ((anon6_correct  (=> (and (= Mask@3 (PolymorphicMapType_13960 (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@2) (store (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@2) xs f_7 (- (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@2) xs f_7) FullPerm)) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@2) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@2))) (= Mask@4 (PolymorphicMapType_13960 (store (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@3) null (Single xs) (+ (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@3) null (Single xs)) FullPerm)) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@3) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@3)))) (=> (and (and (state Heap@2 Mask@4) (state Heap@2 Mask@4)) (and (|Single#trigger_7989| Heap@2 (Single xs)) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@2) null (Single xs)) (FrameFragment_2212 (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@2) xs f_7))))) (and (=> (= (ControlFlow 0 48) 46) anon43_Then_correct) (=> (= (ControlFlow 0 48) 47) anon43_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 51) 48)) anon6_correct)))
(let ((anon42_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (<= FullPerm (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@2) xs f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@2) xs f_7)) (=> (= (ControlFlow 0 49) 48) anon6_correct))))))
(let ((anon4_correct  (=> (not (= xs null)) (=> (and (and (= Mask@2 (PolymorphicMapType_13960 (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@1) (store (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@1) xs f_7 (+ (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@1) xs f_7) FullPerm)) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@1) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@1))) (state Heap@1 Mask@2)) (and (state Heap@1 Mask@2) (state Heap@1 Mask@2))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (= FullPerm (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@2) xs f_7))) (=> (= FullPerm (select (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@2) xs f_7)) (=> (and (= Heap@2 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@1) (store (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@1) xs f_7 3) (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@1) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@1))) (state Heap@2 Mask@2)) (and (=> (= (ControlFlow 0 52) 49) anon42_Then_correct) (=> (= (ControlFlow 0 52) 51) anon42_Else_correct)))))))))
(let ((anon41_Else_correct  (=> (HasDirectPerm_7989_7990 Mask@1 null (Single xs)) (=> (and (= Heap@1 Heap@@78) (= (ControlFlow 0 55) 52)) anon4_correct))))
(let ((anon41_Then_correct  (=> (and (and (not (HasDirectPerm_7989_7990 Mask@1 null (Single xs))) (= Heap@0 (PolymorphicMapType_13939 (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7721_7722#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@78) (store (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@78) null (Single xs) newVersion@0) (|PolymorphicMapType_13939_7993_21026#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7854_26450#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7893_32297#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7925_41005#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7958_7990#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7958_44565#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7989_2212#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7989_53#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_7989_14013#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_17328_2212#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_17328_7990#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_17328_53#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_17328_14013#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_18030_2212#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_18030_7990#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_18030_53#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_18030_14013#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_18674_2212#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_18674_7990#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_18674_53#PolymorphicMapType_13939| Heap@@78) (|PolymorphicMapType_13939_18674_14013#PolymorphicMapType_13939| Heap@@78)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 54) 52))) anon4_correct)))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_13960 (store (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@0) null (Single xs) (- (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@0) null (Single xs)) FullPerm)) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| Mask@0) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| Mask@0))) (and (=> (= (ControlFlow 0 56) 54) anon41_Then_correct) (=> (= (ControlFlow 0 56) 55) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 59) 56)) anon2_correct)))
(let ((anon40_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (<= FullPerm (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@0) null (Single xs)))) (=> (<= FullPerm (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| Mask@0) null (Single xs))) (=> (= (ControlFlow 0 57) 56) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@78 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_13939_7718_53#PolymorphicMapType_13939| Heap@@78) xs $allocated) (= Mask@0 (PolymorphicMapType_13960 (store (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs) (+ (select (|PolymorphicMapType_13960_7989_7990#PolymorphicMapType_13960| ZeroMask) null (Single xs)) FullPerm)) (|PolymorphicMapType_13960_7958_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_1210#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_1585#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_1907#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_2212#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7989_68670#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7958_69084#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7849_69498#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7889_69912#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_7990#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_53#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_14013#PolymorphicMapType_13960| ZeroMask) (|PolymorphicMapType_13960_7920_70326#PolymorphicMapType_13960| ZeroMask))))) (and (and (state Heap@@78 Mask@0) (state Heap@@78 Mask@0)) (and (|Single#trigger_7989| Heap@@78 (Single xs)) (= (select (|PolymorphicMapType_13939_7989_7990#PolymorphicMapType_13939| Heap@@78) null (Single xs)) (FrameFragment_2212 (select (|PolymorphicMapType_13939_7958_2212#PolymorphicMapType_13939| Heap@@78) xs f_7)))))) (and (=> (= (ControlFlow 0 60) 57) anon40_Then_correct) (=> (= (ControlFlow 0 60) 59) anon40_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 61) 60) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
