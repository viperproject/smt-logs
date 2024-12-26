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
(declare-sort T@Field_11138_53 0)
(declare-sort T@Field_11151_11152 0)
(declare-sort T@Field_15623_15624 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15576_1716 0)
(declare-sort T@Field_14477_14482 0)
(declare-sort T@Field_15636_15641 0)
(declare-sort T@Field_16561_16562 0)
(declare-sort T@Field_16574_16579 0)
(declare-sort T@Field_11138_14482 0)
(declare-sort T@Field_11138_14493 0)
(declare-sort T@Field_14465_53 0)
(declare-sort T@Field_14465_11152 0)
(declare-sort T@Field_14465_1199 0)
(declare-sort T@Field_14492_14493 0)
(declare-sort T@Field_15021_53 0)
(declare-sort T@Field_15021_11152 0)
(declare-sort T@Field_15021_1464 0)
(declare-sort T@Field_15033_15038 0)
(declare-sort T@Field_15048_15049 0)
(declare-sort T@Field_15623_53 0)
(declare-sort T@Field_15623_11152 0)
(declare-sort T@Field_15623_1199 0)
(declare-sort T@Field_16561_53 0)
(declare-sort T@Field_16561_11152 0)
(declare-sort T@Field_16561_1199 0)
(declare-datatypes ((T@PolymorphicMapType_11099 0)) (((PolymorphicMapType_11099 (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| (Array T@Ref T@Field_15576_1716 Real)) (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| (Array T@Ref T@Field_15623_15624 Real)) (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| (Array T@Ref T@Field_16561_16562 Real)) (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| (Array T@Ref T@Field_14465_1199 Real)) (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| (Array T@Ref T@Field_15021_1464 Real)) (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| (Array T@Ref T@Field_11138_14493 Real)) (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| (Array T@Ref T@Field_11138_53 Real)) (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| (Array T@Ref T@Field_11151_11152 Real)) (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| (Array T@Ref T@Field_11138_14482 Real)) (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| (Array T@Ref T@Field_15623_1199 Real)) (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| (Array T@Ref T@Field_15623_53 Real)) (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| (Array T@Ref T@Field_15623_11152 Real)) (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| (Array T@Ref T@Field_15636_15641 Real)) (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| (Array T@Ref T@Field_16561_1199 Real)) (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| (Array T@Ref T@Field_16561_53 Real)) (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| (Array T@Ref T@Field_16561_11152 Real)) (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| (Array T@Ref T@Field_16574_16579 Real)) (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| (Array T@Ref T@Field_14492_14493 Real)) (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| (Array T@Ref T@Field_14465_53 Real)) (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| (Array T@Ref T@Field_14465_11152 Real)) (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| (Array T@Ref T@Field_14477_14482 Real)) (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| (Array T@Ref T@Field_15048_15049 Real)) (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| (Array T@Ref T@Field_15021_53 Real)) (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| (Array T@Ref T@Field_15021_11152 Real)) (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| (Array T@Ref T@Field_15033_15038 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11627 0)) (((PolymorphicMapType_11627 (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (Array T@Ref T@Field_15576_1716 Bool)) (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (Array T@Ref T@Field_11138_53 Bool)) (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (Array T@Ref T@Field_11151_11152 Bool)) (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (Array T@Ref T@Field_11138_14482 Bool)) (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (Array T@Ref T@Field_11138_14493 Bool)) (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (Array T@Ref T@Field_14465_1199 Bool)) (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (Array T@Ref T@Field_14465_53 Bool)) (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (Array T@Ref T@Field_14465_11152 Bool)) (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (Array T@Ref T@Field_14477_14482 Bool)) (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (Array T@Ref T@Field_14492_14493 Bool)) (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (Array T@Ref T@Field_15021_1464 Bool)) (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (Array T@Ref T@Field_15021_53 Bool)) (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (Array T@Ref T@Field_15021_11152 Bool)) (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (Array T@Ref T@Field_15033_15038 Bool)) (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (Array T@Ref T@Field_15048_15049 Bool)) (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (Array T@Ref T@Field_15623_1199 Bool)) (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (Array T@Ref T@Field_15623_53 Bool)) (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (Array T@Ref T@Field_15623_11152 Bool)) (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (Array T@Ref T@Field_15636_15641 Bool)) (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (Array T@Ref T@Field_15623_15624 Bool)) (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (Array T@Ref T@Field_16561_1199 Bool)) (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (Array T@Ref T@Field_16561_53 Bool)) (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (Array T@Ref T@Field_16561_11152 Bool)) (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (Array T@Ref T@Field_16574_16579 Bool)) (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (Array T@Ref T@Field_16561_16562 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11078 0)) (((PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| (Array T@Ref T@Field_11138_53 Bool)) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| (Array T@Ref T@Field_11151_11152 T@Ref)) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| (Array T@Ref T@Field_15623_15624 T@FrameType)) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| (Array T@Ref T@Field_15576_1716 Int)) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| (Array T@Ref T@Field_14477_14482 T@PolymorphicMapType_11627)) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| (Array T@Ref T@Field_15636_15641 T@PolymorphicMapType_11627)) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| (Array T@Ref T@Field_16561_16562 T@FrameType)) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| (Array T@Ref T@Field_16574_16579 T@PolymorphicMapType_11627)) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| (Array T@Ref T@Field_11138_14482 T@PolymorphicMapType_11627)) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| (Array T@Ref T@Field_11138_14493 T@FrameType)) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| (Array T@Ref T@Field_14465_53 Bool)) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| (Array T@Ref T@Field_14465_11152 T@Ref)) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| (Array T@Ref T@Field_14465_1199 Int)) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| (Array T@Ref T@Field_14492_14493 T@FrameType)) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| (Array T@Ref T@Field_15021_53 Bool)) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| (Array T@Ref T@Field_15021_11152 T@Ref)) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| (Array T@Ref T@Field_15021_1464 Int)) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| (Array T@Ref T@Field_15033_15038 T@PolymorphicMapType_11627)) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| (Array T@Ref T@Field_15048_15049 T@FrameType)) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| (Array T@Ref T@Field_15623_53 Bool)) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| (Array T@Ref T@Field_15623_11152 T@Ref)) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| (Array T@Ref T@Field_15623_1199 Int)) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| (Array T@Ref T@Field_16561_53 Bool)) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| (Array T@Ref T@Field_16561_11152 T@Ref)) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| (Array T@Ref T@Field_16561_1199 Int)) ) ) ))
(declare-fun $allocated () T@Field_11138_53)
(declare-fun f_7 () T@Field_15576_1716)
(declare-fun succHeap (T@PolymorphicMapType_11078 T@PolymorphicMapType_11078) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11078 T@PolymorphicMapType_11078) Bool)
(declare-fun state (T@PolymorphicMapType_11078 T@PolymorphicMapType_11099) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11099) Bool)
(declare-fun wand (Bool T@Ref Real) T@Field_14465_1199)
(declare-fun IsWandField_6278_1199 (T@Field_14465_1199) Bool)
(declare-fun |wand#ft| (Bool T@Ref Real) T@Field_14492_14493)
(declare-fun IsWandField_6287_6288 (T@Field_14492_14493) Bool)
(declare-fun wand_1 (Bool T@Ref Real) T@Field_15021_1464)
(declare-fun IsWandField_6308_1464 (T@Field_15021_1464) Bool)
(declare-fun |wand_1#ft| (Bool T@Ref Real) T@Field_15048_15049)
(declare-fun IsWandField_6317_6318 (T@Field_15048_15049) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11627)
(declare-fun getPredWandId_6278_1199 (T@Field_14465_1199) Int)
(declare-fun getPredWandId_6308_1464 (T@Field_15021_1464) Int)
(declare-fun IsPredicateField_6278_1199 (T@Field_14465_1199) Bool)
(declare-fun IsPredicateField_6287_6288 (T@Field_14492_14493) Bool)
(declare-fun IsPredicateField_6308_1464 (T@Field_15021_1464) Bool)
(declare-fun IsPredicateField_6317_6318 (T@Field_15048_15049) Bool)
(declare-fun P (T@Ref) T@Field_15623_15624)
(declare-fun IsPredicateField_6339_6340 (T@Field_15623_15624) Bool)
(declare-fun Q (T@Ref) T@Field_16561_16562)
(declare-fun IsPredicateField_6364_6365 (T@Field_16561_16562) Bool)
(declare-fun |P#trigger_6339| (T@PolymorphicMapType_11078 T@Field_15623_15624) Bool)
(declare-fun |P#everUsed_6339| (T@Field_15623_15624) Bool)
(declare-fun |Q#trigger_6364| (T@PolymorphicMapType_11078 T@Field_16561_16562) Bool)
(declare-fun |Q#everUsed_6364| (T@Field_16561_16562) Bool)
(declare-fun WandMaskField_6287 (T@Field_14492_14493) T@Field_14477_14482)
(declare-fun |wand#sm| (Bool T@Ref Real) T@Field_14477_14482)
(declare-fun WandMaskField_6317 (T@Field_15048_15049) T@Field_15033_15038)
(declare-fun |wand_1#sm| (Bool T@Ref Real) T@Field_15033_15038)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11078 T@PolymorphicMapType_11078 T@PolymorphicMapType_11099) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6364 (T@Field_16561_16562) T@Field_16574_16579)
(declare-fun HasDirectPerm_16561_14493 (T@PolymorphicMapType_11099 T@Ref T@Field_16561_16562) Bool)
(declare-fun PredicateMaskField_6339 (T@Field_15623_15624) T@Field_15636_15641)
(declare-fun HasDirectPerm_15623_14493 (T@PolymorphicMapType_11099 T@Ref T@Field_15623_15624) Bool)
(declare-fun PredicateMaskField_15021 (T@Field_15048_15049) T@Field_15033_15038)
(declare-fun HasDirectPerm_15021_14493 (T@PolymorphicMapType_11099 T@Ref T@Field_15048_15049) Bool)
(declare-fun PredicateMaskField_14465 (T@Field_14492_14493) T@Field_14477_14482)
(declare-fun HasDirectPerm_14465_14493 (T@PolymorphicMapType_11099 T@Ref T@Field_14492_14493) Bool)
(declare-fun IsPredicateField_11138_40083 (T@Field_11138_14493) Bool)
(declare-fun PredicateMaskField_11138 (T@Field_11138_14493) T@Field_11138_14482)
(declare-fun HasDirectPerm_11138_14493 (T@PolymorphicMapType_11099 T@Ref T@Field_11138_14493) Bool)
(declare-fun IsWandField_16561_49787 (T@Field_16561_16562) Bool)
(declare-fun WandMaskField_16561 (T@Field_16561_16562) T@Field_16574_16579)
(declare-fun IsWandField_15623_49430 (T@Field_15623_15624) Bool)
(declare-fun WandMaskField_15623 (T@Field_15623_15624) T@Field_15636_15641)
(declare-fun IsWandField_11138_48423 (T@Field_11138_14493) Bool)
(declare-fun WandMaskField_11138 (T@Field_11138_14493) T@Field_11138_14482)
(declare-fun |P#sm| (T@Ref) T@Field_15636_15641)
(declare-fun |Q#sm| (T@Ref) T@Field_16574_16579)
(declare-fun dummyHeap () T@PolymorphicMapType_11078)
(declare-fun ZeroMask () T@PolymorphicMapType_11099)
(declare-fun InsidePredicate_16561_16561 (T@Field_16561_16562 T@FrameType T@Field_16561_16562 T@FrameType) Bool)
(declare-fun InsidePredicate_15623_15623 (T@Field_15623_15624 T@FrameType T@Field_15623_15624 T@FrameType) Bool)
(declare-fun InsidePredicate_15021_15021 (T@Field_15048_15049 T@FrameType T@Field_15048_15049 T@FrameType) Bool)
(declare-fun InsidePredicate_14465_14465 (T@Field_14492_14493 T@FrameType T@Field_14492_14493 T@FrameType) Bool)
(declare-fun InsidePredicate_11138_11138 (T@Field_11138_14493 T@FrameType T@Field_11138_14493 T@FrameType) Bool)
(declare-fun IsPredicateField_6336_1716 (T@Field_15576_1716) Bool)
(declare-fun IsWandField_6336_1716 (T@Field_15576_1716) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6308_66855 (T@Field_15033_15038) Bool)
(declare-fun IsWandField_6308_66871 (T@Field_15033_15038) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6308_11152 (T@Field_15021_11152) Bool)
(declare-fun IsWandField_6308_11152 (T@Field_15021_11152) Bool)
(declare-fun IsPredicateField_6308_53 (T@Field_15021_53) Bool)
(declare-fun IsWandField_6308_53 (T@Field_15021_53) Bool)
(declare-fun IsPredicateField_6278_66038 (T@Field_14477_14482) Bool)
(declare-fun IsWandField_6278_66054 (T@Field_14477_14482) Bool)
(declare-fun IsPredicateField_6278_11152 (T@Field_14465_11152) Bool)
(declare-fun IsWandField_6278_11152 (T@Field_14465_11152) Bool)
(declare-fun IsPredicateField_6278_53 (T@Field_14465_53) Bool)
(declare-fun IsWandField_6278_53 (T@Field_14465_53) Bool)
(declare-fun IsPredicateField_6364_65221 (T@Field_16574_16579) Bool)
(declare-fun IsWandField_6364_65237 (T@Field_16574_16579) Bool)
(declare-fun IsPredicateField_6364_11152 (T@Field_16561_11152) Bool)
(declare-fun IsWandField_6364_11152 (T@Field_16561_11152) Bool)
(declare-fun IsPredicateField_6364_53 (T@Field_16561_53) Bool)
(declare-fun IsWandField_6364_53 (T@Field_16561_53) Bool)
(declare-fun IsPredicateField_6364_1716 (T@Field_16561_1199) Bool)
(declare-fun IsWandField_6364_1716 (T@Field_16561_1199) Bool)
(declare-fun IsPredicateField_6339_64390 (T@Field_15636_15641) Bool)
(declare-fun IsWandField_6339_64406 (T@Field_15636_15641) Bool)
(declare-fun IsPredicateField_6339_11152 (T@Field_15623_11152) Bool)
(declare-fun IsWandField_6339_11152 (T@Field_15623_11152) Bool)
(declare-fun IsPredicateField_6339_53 (T@Field_15623_53) Bool)
(declare-fun IsWandField_6339_53 (T@Field_15623_53) Bool)
(declare-fun IsPredicateField_6339_1716 (T@Field_15623_1199) Bool)
(declare-fun IsWandField_6339_1716 (T@Field_15623_1199) Bool)
(declare-fun IsPredicateField_6336_63559 (T@Field_11138_14482) Bool)
(declare-fun IsWandField_6336_63575 (T@Field_11138_14482) Bool)
(declare-fun IsPredicateField_6336_11152 (T@Field_11151_11152) Bool)
(declare-fun IsWandField_6336_11152 (T@Field_11151_11152) Bool)
(declare-fun IsPredicateField_6336_53 (T@Field_11138_53) Bool)
(declare-fun IsWandField_6336_53 (T@Field_11138_53) Bool)
(declare-fun HasDirectPerm_16561_39627 (T@PolymorphicMapType_11099 T@Ref T@Field_16574_16579) Bool)
(declare-fun HasDirectPerm_16561_1199 (T@PolymorphicMapType_11099 T@Ref T@Field_16561_1199) Bool)
(declare-fun HasDirectPerm_16561_11152 (T@PolymorphicMapType_11099 T@Ref T@Field_16561_11152) Bool)
(declare-fun HasDirectPerm_16561_53 (T@PolymorphicMapType_11099 T@Ref T@Field_16561_53) Bool)
(declare-fun HasDirectPerm_15623_38509 (T@PolymorphicMapType_11099 T@Ref T@Field_15636_15641) Bool)
(declare-fun HasDirectPerm_15623_1199 (T@PolymorphicMapType_11099 T@Ref T@Field_15623_1199) Bool)
(declare-fun HasDirectPerm_15623_11152 (T@PolymorphicMapType_11099 T@Ref T@Field_15623_11152) Bool)
(declare-fun HasDirectPerm_15623_53 (T@PolymorphicMapType_11099 T@Ref T@Field_15623_53) Bool)
(declare-fun HasDirectPerm_15021_37331 (T@PolymorphicMapType_11099 T@Ref T@Field_15033_15038) Bool)
(declare-fun HasDirectPerm_15021_1199 (T@PolymorphicMapType_11099 T@Ref T@Field_15021_1464) Bool)
(declare-fun HasDirectPerm_15021_11152 (T@PolymorphicMapType_11099 T@Ref T@Field_15021_11152) Bool)
(declare-fun HasDirectPerm_15021_53 (T@PolymorphicMapType_11099 T@Ref T@Field_15021_53) Bool)
(declare-fun HasDirectPerm_14465_36197 (T@PolymorphicMapType_11099 T@Ref T@Field_14477_14482) Bool)
(declare-fun HasDirectPerm_14465_1199 (T@PolymorphicMapType_11099 T@Ref T@Field_14465_1199) Bool)
(declare-fun HasDirectPerm_14465_11152 (T@PolymorphicMapType_11099 T@Ref T@Field_14465_11152) Bool)
(declare-fun HasDirectPerm_14465_53 (T@PolymorphicMapType_11099 T@Ref T@Field_14465_53) Bool)
(declare-fun HasDirectPerm_11138_35019 (T@PolymorphicMapType_11099 T@Ref T@Field_11138_14482) Bool)
(declare-fun HasDirectPerm_11138_1199 (T@PolymorphicMapType_11099 T@Ref T@Field_15576_1716) Bool)
(declare-fun HasDirectPerm_11138_11152 (T@PolymorphicMapType_11099 T@Ref T@Field_11151_11152) Bool)
(declare-fun HasDirectPerm_11138_53 (T@PolymorphicMapType_11099 T@Ref T@Field_11138_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11099 T@PolymorphicMapType_11099 T@PolymorphicMapType_11099) Bool)
(declare-fun getPredWandId_6339_6340 (T@Field_15623_15624) Int)
(declare-fun getPredWandId_6364_6365 (T@Field_16561_16562) Int)
(declare-fun InsidePredicate_16561_15623 (T@Field_16561_16562 T@FrameType T@Field_15623_15624 T@FrameType) Bool)
(declare-fun InsidePredicate_16561_15021 (T@Field_16561_16562 T@FrameType T@Field_15048_15049 T@FrameType) Bool)
(declare-fun InsidePredicate_16561_14465 (T@Field_16561_16562 T@FrameType T@Field_14492_14493 T@FrameType) Bool)
(declare-fun InsidePredicate_16561_11138 (T@Field_16561_16562 T@FrameType T@Field_11138_14493 T@FrameType) Bool)
(declare-fun InsidePredicate_15623_16561 (T@Field_15623_15624 T@FrameType T@Field_16561_16562 T@FrameType) Bool)
(declare-fun InsidePredicate_15623_15021 (T@Field_15623_15624 T@FrameType T@Field_15048_15049 T@FrameType) Bool)
(declare-fun InsidePredicate_15623_14465 (T@Field_15623_15624 T@FrameType T@Field_14492_14493 T@FrameType) Bool)
(declare-fun InsidePredicate_15623_11138 (T@Field_15623_15624 T@FrameType T@Field_11138_14493 T@FrameType) Bool)
(declare-fun InsidePredicate_15021_16561 (T@Field_15048_15049 T@FrameType T@Field_16561_16562 T@FrameType) Bool)
(declare-fun InsidePredicate_15021_15623 (T@Field_15048_15049 T@FrameType T@Field_15623_15624 T@FrameType) Bool)
(declare-fun InsidePredicate_15021_14465 (T@Field_15048_15049 T@FrameType T@Field_14492_14493 T@FrameType) Bool)
(declare-fun InsidePredicate_15021_11138 (T@Field_15048_15049 T@FrameType T@Field_11138_14493 T@FrameType) Bool)
(declare-fun InsidePredicate_14465_16561 (T@Field_14492_14493 T@FrameType T@Field_16561_16562 T@FrameType) Bool)
(declare-fun InsidePredicate_14465_15623 (T@Field_14492_14493 T@FrameType T@Field_15623_15624 T@FrameType) Bool)
(declare-fun InsidePredicate_14465_15021 (T@Field_14492_14493 T@FrameType T@Field_15048_15049 T@FrameType) Bool)
(declare-fun InsidePredicate_14465_11138 (T@Field_14492_14493 T@FrameType T@Field_11138_14493 T@FrameType) Bool)
(declare-fun InsidePredicate_11138_16561 (T@Field_11138_14493 T@FrameType T@Field_16561_16562 T@FrameType) Bool)
(declare-fun InsidePredicate_11138_15623 (T@Field_11138_14493 T@FrameType T@Field_15623_15624 T@FrameType) Bool)
(declare-fun InsidePredicate_11138_15021 (T@Field_11138_14493 T@FrameType T@Field_15048_15049 T@FrameType) Bool)
(declare-fun InsidePredicate_11138_14465 (T@Field_11138_14493 T@FrameType T@Field_14492_14493 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_11078) (Heap1 T@PolymorphicMapType_11078) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11078) (Mask T@PolymorphicMapType_11099) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11078) (Heap1@@0 T@PolymorphicMapType_11078) (Heap2 T@PolymorphicMapType_11078) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((arg1 Bool) (arg2 T@Ref) (arg3 Real) ) (! (IsWandField_6278_1199 (wand arg1 arg2 arg3))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1 arg2 arg3))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 T@Ref) (arg3@@0 Real) ) (! (IsWandField_6287_6288 (|wand#ft| arg1@@0 arg2@@0 arg3@@0))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@0 arg2@@0 arg3@@0))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) (arg3@@1 Real) ) (! (IsWandField_6308_1464 (wand_1 arg1@@1 arg2@@1 arg3@@1))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@1 arg2@@1 arg3@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 T@Ref) (arg3@@2 Real) ) (! (IsWandField_6317_6318 (|wand_1#ft| arg1@@2 arg2@@2 arg3@@2))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@2 arg2@@2 arg3@@2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16561_16562) ) (!  (not (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16574_16579) ) (!  (not (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16561_11152) ) (!  (not (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16561_53) ) (!  (not (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16561_1199) ) (!  (not (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15623_15624) ) (!  (not (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_15636_15641) ) (!  (not (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_15623_11152) ) (!  (not (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_15623_53) ) (!  (not (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_15623_1199) ) (!  (not (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_15048_15049) ) (!  (not (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_15033_15038) ) (!  (not (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_15021_11152) ) (!  (not (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_15021_53) ) (!  (not (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_15021_1464) ) (!  (not (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_14492_14493) ) (!  (not (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_14477_14482) ) (!  (not (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_14465_11152) ) (!  (not (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_14465_53) ) (!  (not (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14465_1199) ) (!  (not (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_11138_14493) ) (!  (not (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_11138_14482) ) (!  (not (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_11151_11152) ) (!  (not (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_11138_53) ) (!  (not (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_15576_1716) ) (!  (not (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) (arg3@@3 Real) ) (! (= (getPredWandId_6278_1199 (wand arg1@@3 arg2@@3 arg3@@3)) 2)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 T@Ref) (arg3@@4 Real) ) (! (= (getPredWandId_6308_1464 (wand_1 arg1@@4 arg2@@4 arg3@@4)) 3)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@4))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 T@Ref) (arg3@@5 Real) ) (!  (not (IsPredicateField_6278_1199 (wand arg1@@5 arg2@@5 arg3@@5)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5))
)))
(assert (forall ((arg1@@6 Bool) (arg2@@6 T@Ref) (arg3@@6 Real) ) (!  (not (IsPredicateField_6287_6288 (|wand#ft| arg1@@6 arg2@@6 arg3@@6)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@6 arg2@@6 arg3@@6))
)))
(assert (forall ((arg1@@7 Bool) (arg2@@7 T@Ref) (arg3@@7 Real) ) (!  (not (IsPredicateField_6308_1464 (wand_1 arg1@@7 arg2@@7 arg3@@7)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@7))
)))
(assert (forall ((arg1@@8 Bool) (arg2@@8 T@Ref) (arg3@@8 Real) ) (!  (not (IsPredicateField_6317_6318 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_6339_6340 (P x))
 :qid |stdinbpl.264:15|
 :skolemid |37|
 :pattern ( (P x))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_6364_6365 (Q x@@0))
 :qid |stdinbpl.320:15|
 :skolemid |43|
 :pattern ( (Q x@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11078) (x@@1 T@Ref) ) (! (|P#everUsed_6339| (P x@@1))
 :qid |stdinbpl.283:15|
 :skolemid |41|
 :pattern ( (|P#trigger_6339| Heap@@0 (P x@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11078) (x@@2 T@Ref) ) (! (|Q#everUsed_6364| (Q x@@2))
 :qid |stdinbpl.339:15|
 :skolemid |47|
 :pattern ( (|Q#trigger_6364| Heap@@1 (Q x@@2)))
)))
(assert (forall ((arg1@@9 Bool) (arg2@@9 T@Ref) (arg3@@9 Real) ) (! (= (|wand#sm| arg1@@9 arg2@@9 arg3@@9) (WandMaskField_6287 (|wand#ft| arg1@@9 arg2@@9 arg3@@9)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_6287 (|wand#ft| arg1@@9 arg2@@9 arg3@@9)))
)))
(assert (forall ((arg1@@10 Bool) (arg2@@10 T@Ref) (arg3@@10 Real) ) (! (= (|wand_1#sm| arg1@@10 arg2@@10 arg3@@10) (WandMaskField_6317 (|wand_1#ft| arg1@@10 arg2@@10 arg3@@10)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_6317 (|wand_1#ft| arg1@@10 arg2@@10 arg3@@10)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11078) (ExhaleHeap T@PolymorphicMapType_11078) (Mask@@0 T@PolymorphicMapType_11099) (pm_f_1 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16561_14493 Mask@@0 null pm_f_1) (IsPredicateField_6364_6365 pm_f_1)) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@2) null (PredicateMaskField_6364 pm_f_1)) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap) null (PredicateMaskField_6364 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_6364_6365 pm_f_1) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap) null (PredicateMaskField_6364 pm_f_1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11078) (ExhaleHeap@@0 T@PolymorphicMapType_11078) (Mask@@1 T@PolymorphicMapType_11099) (pm_f_1@@0 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_15623_14493 Mask@@1 null pm_f_1@@0) (IsPredicateField_6339_6340 pm_f_1@@0)) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@3) null (PredicateMaskField_6339 pm_f_1@@0)) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@0) null (PredicateMaskField_6339 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6339_6340 pm_f_1@@0) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@0) null (PredicateMaskField_6339 pm_f_1@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11078) (ExhaleHeap@@1 T@PolymorphicMapType_11078) (Mask@@2 T@PolymorphicMapType_11099) (pm_f_1@@1 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_15021_14493 Mask@@2 null pm_f_1@@1) (IsPredicateField_6317_6318 pm_f_1@@1)) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@4) null (PredicateMaskField_15021 pm_f_1@@1)) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@1) null (PredicateMaskField_15021 pm_f_1@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6317_6318 pm_f_1@@1) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@1) null (PredicateMaskField_15021 pm_f_1@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11078) (ExhaleHeap@@2 T@PolymorphicMapType_11078) (Mask@@3 T@PolymorphicMapType_11099) (pm_f_1@@2 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_14465_14493 Mask@@3 null pm_f_1@@2) (IsPredicateField_6287_6288 pm_f_1@@2)) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@5) null (PredicateMaskField_14465 pm_f_1@@2)) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@2) null (PredicateMaskField_14465 pm_f_1@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_6287_6288 pm_f_1@@2) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@2) null (PredicateMaskField_14465 pm_f_1@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11078) (ExhaleHeap@@3 T@PolymorphicMapType_11078) (Mask@@4 T@PolymorphicMapType_11099) (pm_f_1@@3 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11138_14493 Mask@@4 null pm_f_1@@3) (IsPredicateField_11138_40083 pm_f_1@@3)) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@6) null (PredicateMaskField_11138 pm_f_1@@3)) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@3) null (PredicateMaskField_11138 pm_f_1@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_11138_40083 pm_f_1@@3) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@3) null (PredicateMaskField_11138 pm_f_1@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11078) (ExhaleHeap@@4 T@PolymorphicMapType_11078) (Mask@@5 T@PolymorphicMapType_11099) (pm_f_1@@4 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_16561_14493 Mask@@5 null pm_f_1@@4) (IsWandField_16561_49787 pm_f_1@@4)) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@7) null (WandMaskField_16561 pm_f_1@@4)) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@4) null (WandMaskField_16561 pm_f_1@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_16561_49787 pm_f_1@@4) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@4) null (WandMaskField_16561 pm_f_1@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11078) (ExhaleHeap@@5 T@PolymorphicMapType_11078) (Mask@@6 T@PolymorphicMapType_11099) (pm_f_1@@5 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_15623_14493 Mask@@6 null pm_f_1@@5) (IsWandField_15623_49430 pm_f_1@@5)) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@8) null (WandMaskField_15623 pm_f_1@@5)) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@5) null (WandMaskField_15623 pm_f_1@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_15623_49430 pm_f_1@@5) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@5) null (WandMaskField_15623 pm_f_1@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11078) (ExhaleHeap@@6 T@PolymorphicMapType_11078) (Mask@@7 T@PolymorphicMapType_11099) (pm_f_1@@6 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_15021_14493 Mask@@7 null pm_f_1@@6) (IsWandField_6317_6318 pm_f_1@@6)) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@9) null (WandMaskField_6317 pm_f_1@@6)) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@6) null (WandMaskField_6317 pm_f_1@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_6317_6318 pm_f_1@@6) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@6) null (WandMaskField_6317 pm_f_1@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11078) (ExhaleHeap@@7 T@PolymorphicMapType_11078) (Mask@@8 T@PolymorphicMapType_11099) (pm_f_1@@7 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_14465_14493 Mask@@8 null pm_f_1@@7) (IsWandField_6287_6288 pm_f_1@@7)) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@10) null (WandMaskField_6287 pm_f_1@@7)) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@7) null (WandMaskField_6287 pm_f_1@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsWandField_6287_6288 pm_f_1@@7) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@7) null (WandMaskField_6287 pm_f_1@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11078) (ExhaleHeap@@8 T@PolymorphicMapType_11078) (Mask@@9 T@PolymorphicMapType_11099) (pm_f_1@@8 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11138_14493 Mask@@9 null pm_f_1@@8) (IsWandField_11138_48423 pm_f_1@@8)) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@11) null (WandMaskField_11138 pm_f_1@@8)) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@8) null (WandMaskField_11138 pm_f_1@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_11138_48423 pm_f_1@@8) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@8) null (WandMaskField_11138 pm_f_1@@8)))
)))
(assert (forall ((x@@3 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@3) (P x2)) (= x@@3 x2))
 :qid |stdinbpl.274:15|
 :skolemid |39|
 :pattern ( (P x@@3) (P x2))
)))
(assert (forall ((x@@4 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@4) (|P#sm| x2@@0)) (= x@@4 x2@@0))
 :qid |stdinbpl.278:15|
 :skolemid |40|
 :pattern ( (|P#sm| x@@4) (|P#sm| x2@@0))
)))
(assert (forall ((x@@5 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Q x@@5) (Q x2@@1)) (= x@@5 x2@@1))
 :qid |stdinbpl.330:15|
 :skolemid |45|
 :pattern ( (Q x@@5) (Q x2@@1))
)))
(assert (forall ((x@@6 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Q#sm| x@@6) (|Q#sm| x2@@2)) (= x@@6 x2@@2))
 :qid |stdinbpl.334:15|
 :skolemid |46|
 :pattern ( (|Q#sm| x@@6) (|Q#sm| x2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11078) (ExhaleHeap@@9 T@PolymorphicMapType_11078) (Mask@@10 T@PolymorphicMapType_11099) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@12) o_3 $allocated) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@9) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@9) o_3 $allocated))
)))
(assert (forall ((p T@Field_16561_16562) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16561_16561 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16561_16561 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_15623_15624) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_15623_15623 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15623_15623 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_15048_15049) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_15021_15021 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15021_15021 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_14492_14493) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_14465_14465 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14465_14465 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_11138_14493) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_11138_11138 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11138_11138 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert  (not (IsPredicateField_6336_1716 f_7)))
(assert  (not (IsWandField_6336_1716 f_7)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11078) (ExhaleHeap@@10 T@PolymorphicMapType_11078) (Mask@@11 T@PolymorphicMapType_11099) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (succHeap Heap@@13 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11099) (o_2@@24 T@Ref) (f_4@@24 T@Field_15033_15038) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Mask@@12) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6308_66855 f_4@@24))) (not (IsWandField_6308_66871 f_4@@24))) (<= (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Mask@@12) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Mask@@12) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11099) (o_2@@25 T@Ref) (f_4@@25 T@Field_15021_11152) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Mask@@13) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6308_11152 f_4@@25))) (not (IsWandField_6308_11152 f_4@@25))) (<= (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Mask@@13) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Mask@@13) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11099) (o_2@@26 T@Ref) (f_4@@26 T@Field_15021_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Mask@@14) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6308_53 f_4@@26))) (not (IsWandField_6308_53 f_4@@26))) (<= (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Mask@@14) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Mask@@14) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11099) (o_2@@27 T@Ref) (f_4@@27 T@Field_15048_15049) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Mask@@15) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6317_6318 f_4@@27))) (not (IsWandField_6317_6318 f_4@@27))) (<= (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Mask@@15) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Mask@@15) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11099) (o_2@@28 T@Ref) (f_4@@28 T@Field_15021_1464) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@@16) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6308_1464 f_4@@28))) (not (IsWandField_6308_1464 f_4@@28))) (<= (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@@16) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@@16) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11099) (o_2@@29 T@Ref) (f_4@@29 T@Field_14477_14482) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Mask@@17) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6278_66038 f_4@@29))) (not (IsWandField_6278_66054 f_4@@29))) (<= (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Mask@@17) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Mask@@17) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11099) (o_2@@30 T@Ref) (f_4@@30 T@Field_14465_11152) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Mask@@18) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6278_11152 f_4@@30))) (not (IsWandField_6278_11152 f_4@@30))) (<= (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Mask@@18) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Mask@@18) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11099) (o_2@@31 T@Ref) (f_4@@31 T@Field_14465_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Mask@@19) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6278_53 f_4@@31))) (not (IsWandField_6278_53 f_4@@31))) (<= (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Mask@@19) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Mask@@19) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11099) (o_2@@32 T@Ref) (f_4@@32 T@Field_14492_14493) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Mask@@20) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6287_6288 f_4@@32))) (not (IsWandField_6287_6288 f_4@@32))) (<= (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Mask@@20) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Mask@@20) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11099) (o_2@@33 T@Ref) (f_4@@33 T@Field_14465_1199) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Mask@@21) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6278_1199 f_4@@33))) (not (IsWandField_6278_1199 f_4@@33))) (<= (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Mask@@21) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Mask@@21) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11099) (o_2@@34 T@Ref) (f_4@@34 T@Field_16574_16579) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Mask@@22) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6364_65221 f_4@@34))) (not (IsWandField_6364_65237 f_4@@34))) (<= (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Mask@@22) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Mask@@22) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11099) (o_2@@35 T@Ref) (f_4@@35 T@Field_16561_11152) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Mask@@23) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6364_11152 f_4@@35))) (not (IsWandField_6364_11152 f_4@@35))) (<= (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Mask@@23) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Mask@@23) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11099) (o_2@@36 T@Ref) (f_4@@36 T@Field_16561_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Mask@@24) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_6364_53 f_4@@36))) (not (IsWandField_6364_53 f_4@@36))) (<= (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Mask@@24) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Mask@@24) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11099) (o_2@@37 T@Ref) (f_4@@37 T@Field_16561_16562) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Mask@@25) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_6364_6365 f_4@@37))) (not (IsWandField_16561_49787 f_4@@37))) (<= (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Mask@@25) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Mask@@25) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11099) (o_2@@38 T@Ref) (f_4@@38 T@Field_16561_1199) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Mask@@26) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_6364_1716 f_4@@38))) (not (IsWandField_6364_1716 f_4@@38))) (<= (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Mask@@26) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Mask@@26) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11099) (o_2@@39 T@Ref) (f_4@@39 T@Field_15636_15641) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Mask@@27) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_6339_64390 f_4@@39))) (not (IsWandField_6339_64406 f_4@@39))) (<= (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Mask@@27) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Mask@@27) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11099) (o_2@@40 T@Ref) (f_4@@40 T@Field_15623_11152) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Mask@@28) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_6339_11152 f_4@@40))) (not (IsWandField_6339_11152 f_4@@40))) (<= (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Mask@@28) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Mask@@28) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_11099) (o_2@@41 T@Ref) (f_4@@41 T@Field_15623_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Mask@@29) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_6339_53 f_4@@41))) (not (IsWandField_6339_53 f_4@@41))) (<= (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Mask@@29) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Mask@@29) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_11099) (o_2@@42 T@Ref) (f_4@@42 T@Field_15623_15624) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@@30) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_6339_6340 f_4@@42))) (not (IsWandField_15623_49430 f_4@@42))) (<= (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@@30) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@@30) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_11099) (o_2@@43 T@Ref) (f_4@@43 T@Field_15623_1199) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Mask@@31) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_6339_1716 f_4@@43))) (not (IsWandField_6339_1716 f_4@@43))) (<= (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Mask@@31) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Mask@@31) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_11099) (o_2@@44 T@Ref) (f_4@@44 T@Field_11138_14482) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Mask@@32) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_6336_63559 f_4@@44))) (not (IsWandField_6336_63575 f_4@@44))) (<= (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Mask@@32) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Mask@@32) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_11099) (o_2@@45 T@Ref) (f_4@@45 T@Field_11151_11152) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Mask@@33) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_6336_11152 f_4@@45))) (not (IsWandField_6336_11152 f_4@@45))) (<= (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Mask@@33) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Mask@@33) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_11099) (o_2@@46 T@Ref) (f_4@@46 T@Field_11138_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Mask@@34) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_6336_53 f_4@@46))) (not (IsWandField_6336_53 f_4@@46))) (<= (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Mask@@34) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Mask@@34) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_11099) (o_2@@47 T@Ref) (f_4@@47 T@Field_11138_14493) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Mask@@35) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_11138_40083 f_4@@47))) (not (IsWandField_11138_48423 f_4@@47))) (<= (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Mask@@35) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Mask@@35) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_11099) (o_2@@48 T@Ref) (f_4@@48 T@Field_15576_1716) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@@36) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_6336_1716 f_4@@48))) (not (IsWandField_6336_1716 f_4@@48))) (<= (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@@36) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@@36) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_11099) (o_2@@49 T@Ref) (f_4@@49 T@Field_16561_16562) ) (! (= (HasDirectPerm_16561_14493 Mask@@37 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| Mask@@37) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16561_14493 Mask@@37 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_11099) (o_2@@50 T@Ref) (f_4@@50 T@Field_16574_16579) ) (! (= (HasDirectPerm_16561_39627 Mask@@38 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| Mask@@38) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16561_39627 Mask@@38 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_11099) (o_2@@51 T@Ref) (f_4@@51 T@Field_16561_1199) ) (! (= (HasDirectPerm_16561_1199 Mask@@39 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| Mask@@39) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16561_1199 Mask@@39 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_11099) (o_2@@52 T@Ref) (f_4@@52 T@Field_16561_11152) ) (! (= (HasDirectPerm_16561_11152 Mask@@40 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| Mask@@40) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16561_11152 Mask@@40 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_11099) (o_2@@53 T@Ref) (f_4@@53 T@Field_16561_53) ) (! (= (HasDirectPerm_16561_53 Mask@@41 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| Mask@@41) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16561_53 Mask@@41 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_11099) (o_2@@54 T@Ref) (f_4@@54 T@Field_15623_15624) ) (! (= (HasDirectPerm_15623_14493 Mask@@42 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| Mask@@42) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15623_14493 Mask@@42 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_11099) (o_2@@55 T@Ref) (f_4@@55 T@Field_15636_15641) ) (! (= (HasDirectPerm_15623_38509 Mask@@43 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| Mask@@43) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15623_38509 Mask@@43 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_11099) (o_2@@56 T@Ref) (f_4@@56 T@Field_15623_1199) ) (! (= (HasDirectPerm_15623_1199 Mask@@44 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| Mask@@44) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15623_1199 Mask@@44 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_11099) (o_2@@57 T@Ref) (f_4@@57 T@Field_15623_11152) ) (! (= (HasDirectPerm_15623_11152 Mask@@45 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| Mask@@45) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15623_11152 Mask@@45 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_11099) (o_2@@58 T@Ref) (f_4@@58 T@Field_15623_53) ) (! (= (HasDirectPerm_15623_53 Mask@@46 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| Mask@@46) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15623_53 Mask@@46 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_11099) (o_2@@59 T@Ref) (f_4@@59 T@Field_15048_15049) ) (! (= (HasDirectPerm_15021_14493 Mask@@47 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| Mask@@47) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15021_14493 Mask@@47 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_11099) (o_2@@60 T@Ref) (f_4@@60 T@Field_15033_15038) ) (! (= (HasDirectPerm_15021_37331 Mask@@48 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| Mask@@48) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15021_37331 Mask@@48 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_11099) (o_2@@61 T@Ref) (f_4@@61 T@Field_15021_1464) ) (! (= (HasDirectPerm_15021_1199 Mask@@49 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| Mask@@49) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15021_1199 Mask@@49 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_11099) (o_2@@62 T@Ref) (f_4@@62 T@Field_15021_11152) ) (! (= (HasDirectPerm_15021_11152 Mask@@50 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| Mask@@50) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15021_11152 Mask@@50 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_11099) (o_2@@63 T@Ref) (f_4@@63 T@Field_15021_53) ) (! (= (HasDirectPerm_15021_53 Mask@@51 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| Mask@@51) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15021_53 Mask@@51 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_11099) (o_2@@64 T@Ref) (f_4@@64 T@Field_14492_14493) ) (! (= (HasDirectPerm_14465_14493 Mask@@52 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| Mask@@52) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14465_14493 Mask@@52 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_11099) (o_2@@65 T@Ref) (f_4@@65 T@Field_14477_14482) ) (! (= (HasDirectPerm_14465_36197 Mask@@53 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| Mask@@53) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14465_36197 Mask@@53 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_11099) (o_2@@66 T@Ref) (f_4@@66 T@Field_14465_1199) ) (! (= (HasDirectPerm_14465_1199 Mask@@54 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| Mask@@54) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14465_1199 Mask@@54 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_11099) (o_2@@67 T@Ref) (f_4@@67 T@Field_14465_11152) ) (! (= (HasDirectPerm_14465_11152 Mask@@55 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| Mask@@55) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14465_11152 Mask@@55 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_11099) (o_2@@68 T@Ref) (f_4@@68 T@Field_14465_53) ) (! (= (HasDirectPerm_14465_53 Mask@@56 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| Mask@@56) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14465_53 Mask@@56 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_11099) (o_2@@69 T@Ref) (f_4@@69 T@Field_11138_14493) ) (! (= (HasDirectPerm_11138_14493 Mask@@57 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| Mask@@57) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11138_14493 Mask@@57 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_11099) (o_2@@70 T@Ref) (f_4@@70 T@Field_11138_14482) ) (! (= (HasDirectPerm_11138_35019 Mask@@58 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| Mask@@58) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11138_35019 Mask@@58 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_11099) (o_2@@71 T@Ref) (f_4@@71 T@Field_15576_1716) ) (! (= (HasDirectPerm_11138_1199 Mask@@59 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| Mask@@59) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11138_1199 Mask@@59 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_11099) (o_2@@72 T@Ref) (f_4@@72 T@Field_11151_11152) ) (! (= (HasDirectPerm_11138_11152 Mask@@60 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| Mask@@60) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11138_11152 Mask@@60 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_11099) (o_2@@73 T@Ref) (f_4@@73 T@Field_11138_53) ) (! (= (HasDirectPerm_11138_53 Mask@@61 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| Mask@@61) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11138_53 Mask@@61 o_2@@73 f_4@@73))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11078) (ExhaleHeap@@11 T@PolymorphicMapType_11078) (Mask@@62 T@PolymorphicMapType_11099) (o_3@@0 T@Ref) (f_8 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_16561_14493 Mask@@62 o_3@@0 f_8) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@14) o_3@@0 f_8) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@11) o_3@@0 f_8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@11) o_3@@0 f_8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11078) (ExhaleHeap@@12 T@PolymorphicMapType_11078) (Mask@@63 T@PolymorphicMapType_11099) (o_3@@1 T@Ref) (f_8@@0 T@Field_16574_16579) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_16561_39627 Mask@@63 o_3@@1 f_8@@0) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@15) o_3@@1 f_8@@0) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@12) o_3@@1 f_8@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@12) o_3@@1 f_8@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11078) (ExhaleHeap@@13 T@PolymorphicMapType_11078) (Mask@@64 T@PolymorphicMapType_11099) (o_3@@2 T@Ref) (f_8@@1 T@Field_16561_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_16561_1199 Mask@@64 o_3@@2 f_8@@1) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@16) o_3@@2 f_8@@1) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@13) o_3@@2 f_8@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@13) o_3@@2 f_8@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11078) (ExhaleHeap@@14 T@PolymorphicMapType_11078) (Mask@@65 T@PolymorphicMapType_11099) (o_3@@3 T@Ref) (f_8@@2 T@Field_16561_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_16561_11152 Mask@@65 o_3@@3 f_8@@2) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@17) o_3@@3 f_8@@2) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@14) o_3@@3 f_8@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@14) o_3@@3 f_8@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11078) (ExhaleHeap@@15 T@PolymorphicMapType_11078) (Mask@@66 T@PolymorphicMapType_11099) (o_3@@4 T@Ref) (f_8@@3 T@Field_16561_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_16561_53 Mask@@66 o_3@@4 f_8@@3) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@18) o_3@@4 f_8@@3) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@15) o_3@@4 f_8@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@15) o_3@@4 f_8@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11078) (ExhaleHeap@@16 T@PolymorphicMapType_11078) (Mask@@67 T@PolymorphicMapType_11099) (o_3@@5 T@Ref) (f_8@@4 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_15623_14493 Mask@@67 o_3@@5 f_8@@4) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@19) o_3@@5 f_8@@4) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@16) o_3@@5 f_8@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@16) o_3@@5 f_8@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11078) (ExhaleHeap@@17 T@PolymorphicMapType_11078) (Mask@@68 T@PolymorphicMapType_11099) (o_3@@6 T@Ref) (f_8@@5 T@Field_15636_15641) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_15623_38509 Mask@@68 o_3@@6 f_8@@5) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@20) o_3@@6 f_8@@5) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@17) o_3@@6 f_8@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@17) o_3@@6 f_8@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11078) (ExhaleHeap@@18 T@PolymorphicMapType_11078) (Mask@@69 T@PolymorphicMapType_11099) (o_3@@7 T@Ref) (f_8@@6 T@Field_15623_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_15623_1199 Mask@@69 o_3@@7 f_8@@6) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@21) o_3@@7 f_8@@6) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@18) o_3@@7 f_8@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@18) o_3@@7 f_8@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11078) (ExhaleHeap@@19 T@PolymorphicMapType_11078) (Mask@@70 T@PolymorphicMapType_11099) (o_3@@8 T@Ref) (f_8@@7 T@Field_15623_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_15623_11152 Mask@@70 o_3@@8 f_8@@7) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@22) o_3@@8 f_8@@7) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@19) o_3@@8 f_8@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@19) o_3@@8 f_8@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11078) (ExhaleHeap@@20 T@PolymorphicMapType_11078) (Mask@@71 T@PolymorphicMapType_11099) (o_3@@9 T@Ref) (f_8@@8 T@Field_15623_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_15623_53 Mask@@71 o_3@@9 f_8@@8) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@23) o_3@@9 f_8@@8) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@20) o_3@@9 f_8@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@20) o_3@@9 f_8@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11078) (ExhaleHeap@@21 T@PolymorphicMapType_11078) (Mask@@72 T@PolymorphicMapType_11099) (o_3@@10 T@Ref) (f_8@@9 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_15021_14493 Mask@@72 o_3@@10 f_8@@9) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@24) o_3@@10 f_8@@9) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@21) o_3@@10 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@21) o_3@@10 f_8@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11078) (ExhaleHeap@@22 T@PolymorphicMapType_11078) (Mask@@73 T@PolymorphicMapType_11099) (o_3@@11 T@Ref) (f_8@@10 T@Field_15033_15038) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_15021_37331 Mask@@73 o_3@@11 f_8@@10) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@25) o_3@@11 f_8@@10) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@22) o_3@@11 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@22) o_3@@11 f_8@@10))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11078) (ExhaleHeap@@23 T@PolymorphicMapType_11078) (Mask@@74 T@PolymorphicMapType_11099) (o_3@@12 T@Ref) (f_8@@11 T@Field_15021_1464) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_15021_1199 Mask@@74 o_3@@12 f_8@@11) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@26) o_3@@12 f_8@@11) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@23) o_3@@12 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@23) o_3@@12 f_8@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11078) (ExhaleHeap@@24 T@PolymorphicMapType_11078) (Mask@@75 T@PolymorphicMapType_11099) (o_3@@13 T@Ref) (f_8@@12 T@Field_15021_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_15021_11152 Mask@@75 o_3@@13 f_8@@12) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@27) o_3@@13 f_8@@12) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@24) o_3@@13 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@24) o_3@@13 f_8@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11078) (ExhaleHeap@@25 T@PolymorphicMapType_11078) (Mask@@76 T@PolymorphicMapType_11099) (o_3@@14 T@Ref) (f_8@@13 T@Field_15021_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_15021_53 Mask@@76 o_3@@14 f_8@@13) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@28) o_3@@14 f_8@@13) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@25) o_3@@14 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@25) o_3@@14 f_8@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11078) (ExhaleHeap@@26 T@PolymorphicMapType_11078) (Mask@@77 T@PolymorphicMapType_11099) (o_3@@15 T@Ref) (f_8@@14 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_14465_14493 Mask@@77 o_3@@15 f_8@@14) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@29) o_3@@15 f_8@@14) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@26) o_3@@15 f_8@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@26) o_3@@15 f_8@@14))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11078) (ExhaleHeap@@27 T@PolymorphicMapType_11078) (Mask@@78 T@PolymorphicMapType_11099) (o_3@@16 T@Ref) (f_8@@15 T@Field_14477_14482) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_14465_36197 Mask@@78 o_3@@16 f_8@@15) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@30) o_3@@16 f_8@@15) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@27) o_3@@16 f_8@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@27) o_3@@16 f_8@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11078) (ExhaleHeap@@28 T@PolymorphicMapType_11078) (Mask@@79 T@PolymorphicMapType_11099) (o_3@@17 T@Ref) (f_8@@16 T@Field_14465_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_14465_1199 Mask@@79 o_3@@17 f_8@@16) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@31) o_3@@17 f_8@@16) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@28) o_3@@17 f_8@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@28) o_3@@17 f_8@@16))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11078) (ExhaleHeap@@29 T@PolymorphicMapType_11078) (Mask@@80 T@PolymorphicMapType_11099) (o_3@@18 T@Ref) (f_8@@17 T@Field_14465_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_14465_11152 Mask@@80 o_3@@18 f_8@@17) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@32) o_3@@18 f_8@@17) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@29) o_3@@18 f_8@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@29) o_3@@18 f_8@@17))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11078) (ExhaleHeap@@30 T@PolymorphicMapType_11078) (Mask@@81 T@PolymorphicMapType_11099) (o_3@@19 T@Ref) (f_8@@18 T@Field_14465_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_14465_53 Mask@@81 o_3@@19 f_8@@18) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@33) o_3@@19 f_8@@18) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@30) o_3@@19 f_8@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@30) o_3@@19 f_8@@18))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11078) (ExhaleHeap@@31 T@PolymorphicMapType_11078) (Mask@@82 T@PolymorphicMapType_11099) (o_3@@20 T@Ref) (f_8@@19 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_11138_14493 Mask@@82 o_3@@20 f_8@@19) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@34) o_3@@20 f_8@@19) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@31) o_3@@20 f_8@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@31) o_3@@20 f_8@@19))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11078) (ExhaleHeap@@32 T@PolymorphicMapType_11078) (Mask@@83 T@PolymorphicMapType_11099) (o_3@@21 T@Ref) (f_8@@20 T@Field_11138_14482) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_11138_35019 Mask@@83 o_3@@21 f_8@@20) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@35) o_3@@21 f_8@@20) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@32) o_3@@21 f_8@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@32) o_3@@21 f_8@@20))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11078) (ExhaleHeap@@33 T@PolymorphicMapType_11078) (Mask@@84 T@PolymorphicMapType_11099) (o_3@@22 T@Ref) (f_8@@21 T@Field_15576_1716) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_11138_1199 Mask@@84 o_3@@22 f_8@@21) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@36) o_3@@22 f_8@@21) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@33) o_3@@22 f_8@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@33) o_3@@22 f_8@@21))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11078) (ExhaleHeap@@34 T@PolymorphicMapType_11078) (Mask@@85 T@PolymorphicMapType_11099) (o_3@@23 T@Ref) (f_8@@22 T@Field_11151_11152) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_11138_11152 Mask@@85 o_3@@23 f_8@@22) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@37) o_3@@23 f_8@@22) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@34) o_3@@23 f_8@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@34) o_3@@23 f_8@@22))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11078) (ExhaleHeap@@35 T@PolymorphicMapType_11078) (Mask@@86 T@PolymorphicMapType_11099) (o_3@@24 T@Ref) (f_8@@23 T@Field_11138_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_11138_53 Mask@@86 o_3@@24 f_8@@23) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@38) o_3@@24 f_8@@23) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@35) o_3@@24 f_8@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@35) o_3@@24 f_8@@23))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_15033_15038) ) (! (= (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_15021_11152) ) (! (= (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_15021_53) ) (! (= (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_15048_15049) ) (! (= (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_15021_1464) ) (! (= (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_14477_14482) ) (! (= (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_14465_11152) ) (! (= (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_14465_53) ) (! (= (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_14492_14493) ) (! (= (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_14465_1199) ) (! (= (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_16574_16579) ) (! (= (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_16561_11152) ) (! (= (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_16561_53) ) (! (= (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_16561_16562) ) (! (= (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_16561_1199) ) (! (= (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_15636_15641) ) (! (= (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_15623_11152) ) (! (= (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_15623_53) ) (! (= (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_15623_15624) ) (! (= (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_15623_1199) ) (! (= (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_11138_14482) ) (! (= (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_11151_11152) ) (! (= (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_11138_53) ) (! (= (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_11138_14493) ) (! (= (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_15576_1716) ) (! (= (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11099) (SummandMask1 T@PolymorphicMapType_11099) (SummandMask2 T@PolymorphicMapType_11099) (o_2@@99 T@Ref) (f_4@@99 T@Field_15033_15038) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11099_6308_61102#PolymorphicMapType_11099| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11099) (SummandMask1@@0 T@PolymorphicMapType_11099) (SummandMask2@@0 T@PolymorphicMapType_11099) (o_2@@100 T@Ref) (f_4@@100 T@Field_15021_11152) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11099_6308_11152#PolymorphicMapType_11099| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11099) (SummandMask1@@1 T@PolymorphicMapType_11099) (SummandMask2@@1 T@PolymorphicMapType_11099) (o_2@@101 T@Ref) (f_4@@101 T@Field_15021_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11099_6308_53#PolymorphicMapType_11099| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11099) (SummandMask1@@2 T@PolymorphicMapType_11099) (SummandMask2@@2 T@PolymorphicMapType_11099) (o_2@@102 T@Ref) (f_4@@102 T@Field_15048_15049) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11099_6308_6340#PolymorphicMapType_11099| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11099) (SummandMask1@@3 T@PolymorphicMapType_11099) (SummandMask2@@3 T@PolymorphicMapType_11099) (o_2@@103 T@Ref) (f_4@@103 T@Field_15021_1464) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11099_6308_1464#PolymorphicMapType_11099| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11099) (SummandMask1@@4 T@PolymorphicMapType_11099) (SummandMask2@@4 T@PolymorphicMapType_11099) (o_2@@104 T@Ref) (f_4@@104 T@Field_14477_14482) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11099_6278_60688#PolymorphicMapType_11099| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11099) (SummandMask1@@5 T@PolymorphicMapType_11099) (SummandMask2@@5 T@PolymorphicMapType_11099) (o_2@@105 T@Ref) (f_4@@105 T@Field_14465_11152) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11099_6278_11152#PolymorphicMapType_11099| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11099) (SummandMask1@@6 T@PolymorphicMapType_11099) (SummandMask2@@6 T@PolymorphicMapType_11099) (o_2@@106 T@Ref) (f_4@@106 T@Field_14465_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11099_6278_53#PolymorphicMapType_11099| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_11099) (SummandMask1@@7 T@PolymorphicMapType_11099) (SummandMask2@@7 T@PolymorphicMapType_11099) (o_2@@107 T@Ref) (f_4@@107 T@Field_14492_14493) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11099_6278_6340#PolymorphicMapType_11099| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_11099) (SummandMask1@@8 T@PolymorphicMapType_11099) (SummandMask2@@8 T@PolymorphicMapType_11099) (o_2@@108 T@Ref) (f_4@@108 T@Field_14465_1199) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11099_6278_1199#PolymorphicMapType_11099| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_11099) (SummandMask1@@9 T@PolymorphicMapType_11099) (SummandMask2@@9 T@PolymorphicMapType_11099) (o_2@@109 T@Ref) (f_4@@109 T@Field_16574_16579) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_11099_6364_60274#PolymorphicMapType_11099| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_11099) (SummandMask1@@10 T@PolymorphicMapType_11099) (SummandMask2@@10 T@PolymorphicMapType_11099) (o_2@@110 T@Ref) (f_4@@110 T@Field_16561_11152) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_11099_6364_11152#PolymorphicMapType_11099| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_11099) (SummandMask1@@11 T@PolymorphicMapType_11099) (SummandMask2@@11 T@PolymorphicMapType_11099) (o_2@@111 T@Ref) (f_4@@111 T@Field_16561_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_11099_6364_53#PolymorphicMapType_11099| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_11099) (SummandMask1@@12 T@PolymorphicMapType_11099) (SummandMask2@@12 T@PolymorphicMapType_11099) (o_2@@112 T@Ref) (f_4@@112 T@Field_16561_16562) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_11099_6364_6365#PolymorphicMapType_11099| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_11099) (SummandMask1@@13 T@PolymorphicMapType_11099) (SummandMask2@@13 T@PolymorphicMapType_11099) (o_2@@113 T@Ref) (f_4@@113 T@Field_16561_1199) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_11099_6364_1716#PolymorphicMapType_11099| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_11099) (SummandMask1@@14 T@PolymorphicMapType_11099) (SummandMask2@@14 T@PolymorphicMapType_11099) (o_2@@114 T@Ref) (f_4@@114 T@Field_15636_15641) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_11099_6339_59863#PolymorphicMapType_11099| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_11099) (SummandMask1@@15 T@PolymorphicMapType_11099) (SummandMask2@@15 T@PolymorphicMapType_11099) (o_2@@115 T@Ref) (f_4@@115 T@Field_15623_11152) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_11099_6339_11152#PolymorphicMapType_11099| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_11099) (SummandMask1@@16 T@PolymorphicMapType_11099) (SummandMask2@@16 T@PolymorphicMapType_11099) (o_2@@116 T@Ref) (f_4@@116 T@Field_15623_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_11099_6339_53#PolymorphicMapType_11099| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_11099) (SummandMask1@@17 T@PolymorphicMapType_11099) (SummandMask2@@17 T@PolymorphicMapType_11099) (o_2@@117 T@Ref) (f_4@@117 T@Field_15623_15624) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_11099_6339_6340#PolymorphicMapType_11099| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_11099) (SummandMask1@@18 T@PolymorphicMapType_11099) (SummandMask2@@18 T@PolymorphicMapType_11099) (o_2@@118 T@Ref) (f_4@@118 T@Field_15623_1199) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_11099_6339_1716#PolymorphicMapType_11099| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_11099) (SummandMask1@@19 T@PolymorphicMapType_11099) (SummandMask2@@19 T@PolymorphicMapType_11099) (o_2@@119 T@Ref) (f_4@@119 T@Field_11138_14482) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_11099_6336_59452#PolymorphicMapType_11099| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_11099) (SummandMask1@@20 T@PolymorphicMapType_11099) (SummandMask2@@20 T@PolymorphicMapType_11099) (o_2@@120 T@Ref) (f_4@@120 T@Field_11151_11152) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_11099_6336_11152#PolymorphicMapType_11099| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_11099) (SummandMask1@@21 T@PolymorphicMapType_11099) (SummandMask2@@21 T@PolymorphicMapType_11099) (o_2@@121 T@Ref) (f_4@@121 T@Field_11138_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_11099_6336_53#PolymorphicMapType_11099| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_11099) (SummandMask1@@22 T@PolymorphicMapType_11099) (SummandMask2@@22 T@PolymorphicMapType_11099) (o_2@@122 T@Ref) (f_4@@122 T@Field_11138_14493) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_11099_6336_6340#PolymorphicMapType_11099| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_11099) (SummandMask1@@23 T@PolymorphicMapType_11099) (SummandMask2@@23 T@PolymorphicMapType_11099) (o_2@@123 T@Ref) (f_4@@123 T@Field_15576_1716) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_11099_6336_1716#PolymorphicMapType_11099| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((arg1@@11 Bool) (arg2@@11 T@Ref) (arg3@@11 Real) (arg1_2 Bool) (arg2_2 T@Ref) (arg3_2 Real) ) (!  (=> (= (wand arg1@@11 arg2@@11 arg3@@11) (wand arg1_2 arg2_2 arg3_2)) (and (= arg1@@11 arg1_2) (and (= arg2@@11 arg2_2) (= arg3@@11 arg3_2))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@11 arg2@@11 arg3@@11) (wand arg1_2 arg2_2 arg3_2))
)))
(assert (forall ((arg1@@12 Bool) (arg2@@12 T@Ref) (arg3@@12 Real) (arg1_2@@0 Bool) (arg2_2@@0 T@Ref) (arg3_2@@0 Real) ) (!  (=> (= (wand_1 arg1@@12 arg2@@12 arg3@@12) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0)) (and (= arg1@@12 arg1_2@@0) (and (= arg2@@12 arg2_2@@0) (= arg3@@12 arg3_2@@0))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@12 arg2@@12 arg3@@12) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_6339_6340 (P x@@7)) 0)
 :qid |stdinbpl.268:15|
 :skolemid |38|
 :pattern ( (P x@@7))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (getPredWandId_6364_6365 (Q x@@8)) 1)
 :qid |stdinbpl.324:15|
 :skolemid |44|
 :pattern ( (Q x@@8))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11078) (o_1 T@Ref) (f_9 T@Field_15033_15038) (v T@PolymorphicMapType_11627) ) (! (succHeap Heap@@39 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@39) (store (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@39) o_1 f_9 v) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@39) (store (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@39) o_1 f_9 v) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@39) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11078) (o_1@@0 T@Ref) (f_9@@0 T@Field_15021_1464) (v@@0 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@40) (store (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@40) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@40) (store (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@40) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@40) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_11078) (o_1@@1 T@Ref) (f_9@@1 T@Field_15048_15049) (v@@1 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@41) (store (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@41) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@41) (store (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@41) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@41) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_11078) (o_1@@2 T@Ref) (f_9@@2 T@Field_15021_11152) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@42) (store (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@42) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@42) (store (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@42) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@42) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_11078) (o_1@@3 T@Ref) (f_9@@3 T@Field_15021_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@43) (store (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@43) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@43) (store (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@43) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@43) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_11078) (o_1@@4 T@Ref) (f_9@@4 T@Field_16574_16579) (v@@4 T@PolymorphicMapType_11627) ) (! (succHeap Heap@@44 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@44) (store (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@44) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@44) (store (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@44) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@44) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_11078) (o_1@@5 T@Ref) (f_9@@5 T@Field_16561_1199) (v@@5 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@45) (store (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@45) o_1@@5 f_9@@5 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@45) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@45) (store (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@45) o_1@@5 f_9@@5 v@@5)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_11078) (o_1@@6 T@Ref) (f_9@@6 T@Field_16561_16562) (v@@6 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@46) (store (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@46) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@46) (store (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@46) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@46) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_11078) (o_1@@7 T@Ref) (f_9@@7 T@Field_16561_11152) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@47) (store (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@47) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@47) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@47) (store (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@47) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_11078) (o_1@@8 T@Ref) (f_9@@8 T@Field_16561_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@48) (store (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@48) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@48) (store (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@48) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@48) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_11078) (o_1@@9 T@Ref) (f_9@@9 T@Field_14477_14482) (v@@9 T@PolymorphicMapType_11627) ) (! (succHeap Heap@@49 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@49) (store (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@49) o_1@@9 f_9@@9 v@@9) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@49) (store (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@49) o_1@@9 f_9@@9 v@@9) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@49) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_11078) (o_1@@10 T@Ref) (f_9@@10 T@Field_14465_1199) (v@@10 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@50) (store (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@50) o_1@@10 f_9@@10 v@@10) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@50) (store (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@50) o_1@@10 f_9@@10 v@@10) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@50) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_11078) (o_1@@11 T@Ref) (f_9@@11 T@Field_14492_14493) (v@@11 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@51) (store (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@51) o_1@@11 f_9@@11 v@@11) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@51) (store (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@51) o_1@@11 f_9@@11 v@@11) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@51) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_11078) (o_1@@12 T@Ref) (f_9@@12 T@Field_14465_11152) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@52) (store (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@52) o_1@@12 f_9@@12 v@@12) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@52) (store (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@52) o_1@@12 f_9@@12 v@@12) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@52) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_11078) (o_1@@13 T@Ref) (f_9@@13 T@Field_14465_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@53) (store (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@53) o_1@@13 f_9@@13 v@@13) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@53) (store (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@53) o_1@@13 f_9@@13 v@@13) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@53) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_11078) (o_1@@14 T@Ref) (f_9@@14 T@Field_15636_15641) (v@@14 T@PolymorphicMapType_11627) ) (! (succHeap Heap@@54 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@54) (store (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@54) o_1@@14 f_9@@14 v@@14) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@54) (store (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@54) o_1@@14 f_9@@14 v@@14) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@54) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_11078) (o_1@@15 T@Ref) (f_9@@15 T@Field_15623_1199) (v@@15 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@55) (store (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@55) o_1@@15 f_9@@15 v@@15) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@55) (store (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@55) o_1@@15 f_9@@15 v@@15) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@55) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_11078) (o_1@@16 T@Ref) (f_9@@16 T@Field_15623_15624) (v@@16 T@FrameType) ) (! (succHeap Heap@@56 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@56) (store (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@56) o_1@@16 f_9@@16 v@@16) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@56) (store (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@56) o_1@@16 f_9@@16 v@@16) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@56) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_11078) (o_1@@17 T@Ref) (f_9@@17 T@Field_15623_11152) (v@@17 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@57) (store (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@57) o_1@@17 f_9@@17 v@@17) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@57) (store (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@57) o_1@@17 f_9@@17 v@@17) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@57) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_11078) (o_1@@18 T@Ref) (f_9@@18 T@Field_15623_53) (v@@18 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@58) (store (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@58) o_1@@18 f_9@@18 v@@18) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@58) (store (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@58) o_1@@18 f_9@@18 v@@18) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@58) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_11078) (o_1@@19 T@Ref) (f_9@@19 T@Field_11138_14482) (v@@19 T@PolymorphicMapType_11627) ) (! (succHeap Heap@@59 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@59) (store (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@59) o_1@@19 f_9@@19 v@@19) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@59) (store (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@59) o_1@@19 f_9@@19 v@@19) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@59) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_11078) (o_1@@20 T@Ref) (f_9@@20 T@Field_15576_1716) (v@@20 Int) ) (! (succHeap Heap@@60 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@60) (store (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@60) o_1@@20 f_9@@20 v@@20) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@60) (store (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@60) o_1@@20 f_9@@20 v@@20) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@60) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_11078) (o_1@@21 T@Ref) (f_9@@21 T@Field_11138_14493) (v@@21 T@FrameType) ) (! (succHeap Heap@@61 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@61) (store (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@61) o_1@@21 f_9@@21 v@@21) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@61) (store (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@61) o_1@@21 f_9@@21 v@@21) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@61) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_11078) (o_1@@22 T@Ref) (f_9@@22 T@Field_11151_11152) (v@@22 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@62) (store (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@62) o_1@@22 f_9@@22 v@@22) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@62) (store (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@62) o_1@@22 f_9@@22 v@@22) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@62) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_11078) (o_1@@23 T@Ref) (f_9@@23 T@Field_11138_53) (v@@23 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_11078 (store (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@63) o_1@@23 f_9@@23 v@@23) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11078 (store (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@63) o_1@@23 f_9@@23 v@@23) (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@63) (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@63)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_6339 (P x@@9)) (|P#sm| x@@9))
 :qid |stdinbpl.260:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_6339 (P x@@9)))
)))
(assert (forall ((x@@10 T@Ref) ) (! (= (PredicateMaskField_6364 (Q x@@10)) (|Q#sm| x@@10))
 :qid |stdinbpl.316:15|
 :skolemid |42|
 :pattern ( (PredicateMaskField_6364 (Q x@@10)))
)))
(assert (forall ((o_1@@24 T@Ref) (f_2 T@Field_11151_11152) (Heap@@64 T@PolymorphicMapType_11078) ) (!  (=> (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@64) o_1@@24 $allocated) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@64) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@64) o_1@@24 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@64) o_1@@24 f_2))
)))
(assert (forall ((p@@5 T@Field_16561_16562) (v_1@@4 T@FrameType) (q T@Field_16561_16562) (w@@4 T@FrameType) (r T@Field_16561_16562) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16561_16561 p@@5 v_1@@4 q w@@4) (InsidePredicate_16561_16561 q w@@4 r u)) (InsidePredicate_16561_16561 p@@5 v_1@@4 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_16561 p@@5 v_1@@4 q w@@4) (InsidePredicate_16561_16561 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_16561_16562) (v_1@@5 T@FrameType) (q@@0 T@Field_16561_16562) (w@@5 T@FrameType) (r@@0 T@Field_15623_15624) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_16561 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_16561_15623 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_16561_15623 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_16561 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_16561_15623 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_16561_16562) (v_1@@6 T@FrameType) (q@@1 T@Field_16561_16562) (w@@6 T@FrameType) (r@@1 T@Field_15048_15049) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_16561 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_16561_15021 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_16561_15021 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_16561 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_16561_15021 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_16561_16562) (v_1@@7 T@FrameType) (q@@2 T@Field_16561_16562) (w@@7 T@FrameType) (r@@2 T@Field_14492_14493) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_16561 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_16561_14465 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_16561_14465 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_16561 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_16561_14465 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_16561_16562) (v_1@@8 T@FrameType) (q@@3 T@Field_16561_16562) (w@@8 T@FrameType) (r@@3 T@Field_11138_14493) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_16561 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_16561_11138 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_16561_11138 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_16561 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_16561_11138 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_16561_16562) (v_1@@9 T@FrameType) (q@@4 T@Field_15623_15624) (w@@9 T@FrameType) (r@@4 T@Field_16561_16562) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15623 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_15623_16561 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_16561_16561 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15623 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_15623_16561 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_16561_16562) (v_1@@10 T@FrameType) (q@@5 T@Field_15623_15624) (w@@10 T@FrameType) (r@@5 T@Field_15623_15624) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15623 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_15623_15623 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_16561_15623 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15623 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_15623_15623 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_16561_16562) (v_1@@11 T@FrameType) (q@@6 T@Field_15623_15624) (w@@11 T@FrameType) (r@@6 T@Field_15048_15049) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15623 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_15623_15021 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_16561_15021 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15623 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_15623_15021 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_16561_16562) (v_1@@12 T@FrameType) (q@@7 T@Field_15623_15624) (w@@12 T@FrameType) (r@@7 T@Field_14492_14493) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15623 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_15623_14465 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_16561_14465 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15623 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_15623_14465 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_16561_16562) (v_1@@13 T@FrameType) (q@@8 T@Field_15623_15624) (w@@13 T@FrameType) (r@@8 T@Field_11138_14493) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15623 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_15623_11138 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_16561_11138 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15623 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_15623_11138 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_16561_16562) (v_1@@14 T@FrameType) (q@@9 T@Field_15048_15049) (w@@14 T@FrameType) (r@@9 T@Field_16561_16562) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15021 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_15021_16561 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_16561_16561 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15021 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_15021_16561 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_16561_16562) (v_1@@15 T@FrameType) (q@@10 T@Field_15048_15049) (w@@15 T@FrameType) (r@@10 T@Field_15623_15624) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15021 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_15021_15623 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_16561_15623 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15021 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_15021_15623 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_16561_16562) (v_1@@16 T@FrameType) (q@@11 T@Field_15048_15049) (w@@16 T@FrameType) (r@@11 T@Field_15048_15049) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15021 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_15021_15021 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_16561_15021 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15021 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_15021_15021 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_16561_16562) (v_1@@17 T@FrameType) (q@@12 T@Field_15048_15049) (w@@17 T@FrameType) (r@@12 T@Field_14492_14493) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15021 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_15021_14465 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_16561_14465 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15021 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_15021_14465 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_16561_16562) (v_1@@18 T@FrameType) (q@@13 T@Field_15048_15049) (w@@18 T@FrameType) (r@@13 T@Field_11138_14493) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_15021 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_15021_11138 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_16561_11138 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_15021 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_15021_11138 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_16561_16562) (v_1@@19 T@FrameType) (q@@14 T@Field_14492_14493) (w@@19 T@FrameType) (r@@14 T@Field_16561_16562) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_14465 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_14465_16561 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_16561_16561 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_14465 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_14465_16561 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_16561_16562) (v_1@@20 T@FrameType) (q@@15 T@Field_14492_14493) (w@@20 T@FrameType) (r@@15 T@Field_15623_15624) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_14465 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_14465_15623 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_16561_15623 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_14465 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_14465_15623 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_16561_16562) (v_1@@21 T@FrameType) (q@@16 T@Field_14492_14493) (w@@21 T@FrameType) (r@@16 T@Field_15048_15049) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_14465 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_14465_15021 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_16561_15021 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_14465 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_14465_15021 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_16561_16562) (v_1@@22 T@FrameType) (q@@17 T@Field_14492_14493) (w@@22 T@FrameType) (r@@17 T@Field_14492_14493) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_14465 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_14465_14465 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_16561_14465 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_14465 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_14465_14465 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_16561_16562) (v_1@@23 T@FrameType) (q@@18 T@Field_14492_14493) (w@@23 T@FrameType) (r@@18 T@Field_11138_14493) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_14465 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_14465_11138 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_16561_11138 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_14465 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_14465_11138 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_16561_16562) (v_1@@24 T@FrameType) (q@@19 T@Field_11138_14493) (w@@24 T@FrameType) (r@@19 T@Field_16561_16562) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_11138 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_11138_16561 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_16561_16561 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_11138 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_11138_16561 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_16561_16562) (v_1@@25 T@FrameType) (q@@20 T@Field_11138_14493) (w@@25 T@FrameType) (r@@20 T@Field_15623_15624) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_11138 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_11138_15623 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_16561_15623 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_11138 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_11138_15623 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_16561_16562) (v_1@@26 T@FrameType) (q@@21 T@Field_11138_14493) (w@@26 T@FrameType) (r@@21 T@Field_15048_15049) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_11138 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_11138_15021 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_16561_15021 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_11138 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_11138_15021 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_16561_16562) (v_1@@27 T@FrameType) (q@@22 T@Field_11138_14493) (w@@27 T@FrameType) (r@@22 T@Field_14492_14493) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_11138 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_11138_14465 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_16561_14465 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_11138 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_11138_14465 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_16561_16562) (v_1@@28 T@FrameType) (q@@23 T@Field_11138_14493) (w@@28 T@FrameType) (r@@23 T@Field_11138_14493) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_16561_11138 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_11138_11138 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_16561_11138 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16561_11138 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_11138_11138 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_15623_15624) (v_1@@29 T@FrameType) (q@@24 T@Field_16561_16562) (w@@29 T@FrameType) (r@@24 T@Field_16561_16562) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_16561 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_16561_16561 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_15623_16561 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_16561 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_16561_16561 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_15623_15624) (v_1@@30 T@FrameType) (q@@25 T@Field_16561_16562) (w@@30 T@FrameType) (r@@25 T@Field_15623_15624) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_16561 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_16561_15623 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_15623_15623 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_16561 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_16561_15623 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_15623_15624) (v_1@@31 T@FrameType) (q@@26 T@Field_16561_16562) (w@@31 T@FrameType) (r@@26 T@Field_15048_15049) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_16561 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_16561_15021 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_15623_15021 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_16561 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_16561_15021 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_15623_15624) (v_1@@32 T@FrameType) (q@@27 T@Field_16561_16562) (w@@32 T@FrameType) (r@@27 T@Field_14492_14493) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_16561 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_16561_14465 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_15623_14465 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_16561 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_16561_14465 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_15623_15624) (v_1@@33 T@FrameType) (q@@28 T@Field_16561_16562) (w@@33 T@FrameType) (r@@28 T@Field_11138_14493) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_16561 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_16561_11138 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_15623_11138 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_16561 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_16561_11138 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_15623_15624) (v_1@@34 T@FrameType) (q@@29 T@Field_15623_15624) (w@@34 T@FrameType) (r@@29 T@Field_16561_16562) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15623 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_15623_16561 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_15623_16561 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15623 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_15623_16561 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_15623_15624) (v_1@@35 T@FrameType) (q@@30 T@Field_15623_15624) (w@@35 T@FrameType) (r@@30 T@Field_15623_15624) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15623 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_15623_15623 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_15623_15623 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15623 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_15623_15623 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_15623_15624) (v_1@@36 T@FrameType) (q@@31 T@Field_15623_15624) (w@@36 T@FrameType) (r@@31 T@Field_15048_15049) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15623 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_15623_15021 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_15623_15021 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15623 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_15623_15021 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_15623_15624) (v_1@@37 T@FrameType) (q@@32 T@Field_15623_15624) (w@@37 T@FrameType) (r@@32 T@Field_14492_14493) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15623 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_15623_14465 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_15623_14465 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15623 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_15623_14465 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_15623_15624) (v_1@@38 T@FrameType) (q@@33 T@Field_15623_15624) (w@@38 T@FrameType) (r@@33 T@Field_11138_14493) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15623 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_15623_11138 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_15623_11138 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15623 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_15623_11138 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_15623_15624) (v_1@@39 T@FrameType) (q@@34 T@Field_15048_15049) (w@@39 T@FrameType) (r@@34 T@Field_16561_16562) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15021 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_15021_16561 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_15623_16561 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15021 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_15021_16561 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_15623_15624) (v_1@@40 T@FrameType) (q@@35 T@Field_15048_15049) (w@@40 T@FrameType) (r@@35 T@Field_15623_15624) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15021 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_15021_15623 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_15623_15623 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15021 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_15021_15623 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_15623_15624) (v_1@@41 T@FrameType) (q@@36 T@Field_15048_15049) (w@@41 T@FrameType) (r@@36 T@Field_15048_15049) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15021 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_15021_15021 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_15623_15021 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15021 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_15021_15021 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_15623_15624) (v_1@@42 T@FrameType) (q@@37 T@Field_15048_15049) (w@@42 T@FrameType) (r@@37 T@Field_14492_14493) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15021 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_15021_14465 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_15623_14465 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15021 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_15021_14465 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_15623_15624) (v_1@@43 T@FrameType) (q@@38 T@Field_15048_15049) (w@@43 T@FrameType) (r@@38 T@Field_11138_14493) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_15021 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_15021_11138 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_15623_11138 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_15021 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_15021_11138 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_15623_15624) (v_1@@44 T@FrameType) (q@@39 T@Field_14492_14493) (w@@44 T@FrameType) (r@@39 T@Field_16561_16562) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_14465 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_14465_16561 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_15623_16561 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_14465 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_14465_16561 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_15623_15624) (v_1@@45 T@FrameType) (q@@40 T@Field_14492_14493) (w@@45 T@FrameType) (r@@40 T@Field_15623_15624) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_14465 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_14465_15623 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_15623_15623 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_14465 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_14465_15623 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_15623_15624) (v_1@@46 T@FrameType) (q@@41 T@Field_14492_14493) (w@@46 T@FrameType) (r@@41 T@Field_15048_15049) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_14465 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_14465_15021 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_15623_15021 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_14465 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_14465_15021 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_15623_15624) (v_1@@47 T@FrameType) (q@@42 T@Field_14492_14493) (w@@47 T@FrameType) (r@@42 T@Field_14492_14493) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_14465 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_14465_14465 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_15623_14465 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_14465 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_14465_14465 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_15623_15624) (v_1@@48 T@FrameType) (q@@43 T@Field_14492_14493) (w@@48 T@FrameType) (r@@43 T@Field_11138_14493) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_14465 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_14465_11138 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_15623_11138 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_14465 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_14465_11138 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_15623_15624) (v_1@@49 T@FrameType) (q@@44 T@Field_11138_14493) (w@@49 T@FrameType) (r@@44 T@Field_16561_16562) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_11138 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_11138_16561 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_15623_16561 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_11138 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_11138_16561 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_15623_15624) (v_1@@50 T@FrameType) (q@@45 T@Field_11138_14493) (w@@50 T@FrameType) (r@@45 T@Field_15623_15624) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_11138 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_11138_15623 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_15623_15623 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_11138 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_11138_15623 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_15623_15624) (v_1@@51 T@FrameType) (q@@46 T@Field_11138_14493) (w@@51 T@FrameType) (r@@46 T@Field_15048_15049) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_11138 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_11138_15021 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_15623_15021 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_11138 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_11138_15021 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_15623_15624) (v_1@@52 T@FrameType) (q@@47 T@Field_11138_14493) (w@@52 T@FrameType) (r@@47 T@Field_14492_14493) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_11138 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_11138_14465 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_15623_14465 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_11138 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_11138_14465 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_15623_15624) (v_1@@53 T@FrameType) (q@@48 T@Field_11138_14493) (w@@53 T@FrameType) (r@@48 T@Field_11138_14493) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_15623_11138 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_11138_11138 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_15623_11138 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15623_11138 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_11138_11138 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_15048_15049) (v_1@@54 T@FrameType) (q@@49 T@Field_16561_16562) (w@@54 T@FrameType) (r@@49 T@Field_16561_16562) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_16561 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_16561_16561 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_15021_16561 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_16561 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_16561_16561 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_15048_15049) (v_1@@55 T@FrameType) (q@@50 T@Field_16561_16562) (w@@55 T@FrameType) (r@@50 T@Field_15623_15624) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_16561 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_16561_15623 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_15021_15623 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_16561 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_16561_15623 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_15048_15049) (v_1@@56 T@FrameType) (q@@51 T@Field_16561_16562) (w@@56 T@FrameType) (r@@51 T@Field_15048_15049) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_16561 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_16561_15021 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_15021_15021 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_16561 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_16561_15021 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_15048_15049) (v_1@@57 T@FrameType) (q@@52 T@Field_16561_16562) (w@@57 T@FrameType) (r@@52 T@Field_14492_14493) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_16561 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_16561_14465 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_15021_14465 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_16561 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_16561_14465 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_15048_15049) (v_1@@58 T@FrameType) (q@@53 T@Field_16561_16562) (w@@58 T@FrameType) (r@@53 T@Field_11138_14493) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_16561 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_16561_11138 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_15021_11138 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_16561 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_16561_11138 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_15048_15049) (v_1@@59 T@FrameType) (q@@54 T@Field_15623_15624) (w@@59 T@FrameType) (r@@54 T@Field_16561_16562) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15623 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_15623_16561 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_15021_16561 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15623 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_15623_16561 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_15048_15049) (v_1@@60 T@FrameType) (q@@55 T@Field_15623_15624) (w@@60 T@FrameType) (r@@55 T@Field_15623_15624) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15623 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_15623_15623 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_15021_15623 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15623 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_15623_15623 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_15048_15049) (v_1@@61 T@FrameType) (q@@56 T@Field_15623_15624) (w@@61 T@FrameType) (r@@56 T@Field_15048_15049) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15623 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_15623_15021 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_15021_15021 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15623 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_15623_15021 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_15048_15049) (v_1@@62 T@FrameType) (q@@57 T@Field_15623_15624) (w@@62 T@FrameType) (r@@57 T@Field_14492_14493) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15623 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_15623_14465 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_15021_14465 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15623 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_15623_14465 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_15048_15049) (v_1@@63 T@FrameType) (q@@58 T@Field_15623_15624) (w@@63 T@FrameType) (r@@58 T@Field_11138_14493) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15623 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_15623_11138 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_15021_11138 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15623 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_15623_11138 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_15048_15049) (v_1@@64 T@FrameType) (q@@59 T@Field_15048_15049) (w@@64 T@FrameType) (r@@59 T@Field_16561_16562) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15021 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_15021_16561 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_15021_16561 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15021 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_15021_16561 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_15048_15049) (v_1@@65 T@FrameType) (q@@60 T@Field_15048_15049) (w@@65 T@FrameType) (r@@60 T@Field_15623_15624) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15021 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_15021_15623 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_15021_15623 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15021 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_15021_15623 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_15048_15049) (v_1@@66 T@FrameType) (q@@61 T@Field_15048_15049) (w@@66 T@FrameType) (r@@61 T@Field_15048_15049) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15021 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_15021_15021 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_15021_15021 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15021 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_15021_15021 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_15048_15049) (v_1@@67 T@FrameType) (q@@62 T@Field_15048_15049) (w@@67 T@FrameType) (r@@62 T@Field_14492_14493) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15021 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_15021_14465 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_15021_14465 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15021 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_15021_14465 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_15048_15049) (v_1@@68 T@FrameType) (q@@63 T@Field_15048_15049) (w@@68 T@FrameType) (r@@63 T@Field_11138_14493) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_15021 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_15021_11138 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_15021_11138 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_15021 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_15021_11138 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_15048_15049) (v_1@@69 T@FrameType) (q@@64 T@Field_14492_14493) (w@@69 T@FrameType) (r@@64 T@Field_16561_16562) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_14465 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_14465_16561 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_15021_16561 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_14465 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_14465_16561 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_15048_15049) (v_1@@70 T@FrameType) (q@@65 T@Field_14492_14493) (w@@70 T@FrameType) (r@@65 T@Field_15623_15624) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_14465 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_14465_15623 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_15021_15623 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_14465 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_14465_15623 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_15048_15049) (v_1@@71 T@FrameType) (q@@66 T@Field_14492_14493) (w@@71 T@FrameType) (r@@66 T@Field_15048_15049) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_14465 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_14465_15021 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_15021_15021 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_14465 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_14465_15021 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_15048_15049) (v_1@@72 T@FrameType) (q@@67 T@Field_14492_14493) (w@@72 T@FrameType) (r@@67 T@Field_14492_14493) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_14465 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_14465_14465 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_15021_14465 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_14465 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_14465_14465 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_15048_15049) (v_1@@73 T@FrameType) (q@@68 T@Field_14492_14493) (w@@73 T@FrameType) (r@@68 T@Field_11138_14493) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_14465 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_14465_11138 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_15021_11138 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_14465 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_14465_11138 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_15048_15049) (v_1@@74 T@FrameType) (q@@69 T@Field_11138_14493) (w@@74 T@FrameType) (r@@69 T@Field_16561_16562) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_11138 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_11138_16561 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_15021_16561 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_11138 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_11138_16561 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_15048_15049) (v_1@@75 T@FrameType) (q@@70 T@Field_11138_14493) (w@@75 T@FrameType) (r@@70 T@Field_15623_15624) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_11138 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_11138_15623 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_15021_15623 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_11138 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_11138_15623 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_15048_15049) (v_1@@76 T@FrameType) (q@@71 T@Field_11138_14493) (w@@76 T@FrameType) (r@@71 T@Field_15048_15049) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_11138 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_11138_15021 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_15021_15021 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_11138 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_11138_15021 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_15048_15049) (v_1@@77 T@FrameType) (q@@72 T@Field_11138_14493) (w@@77 T@FrameType) (r@@72 T@Field_14492_14493) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_11138 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_11138_14465 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_15021_14465 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_11138 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_11138_14465 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_15048_15049) (v_1@@78 T@FrameType) (q@@73 T@Field_11138_14493) (w@@78 T@FrameType) (r@@73 T@Field_11138_14493) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_15021_11138 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_11138_11138 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_15021_11138 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15021_11138 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_11138_11138 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_14492_14493) (v_1@@79 T@FrameType) (q@@74 T@Field_16561_16562) (w@@79 T@FrameType) (r@@74 T@Field_16561_16562) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_16561 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_16561_16561 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_14465_16561 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_16561 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_16561_16561 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_14492_14493) (v_1@@80 T@FrameType) (q@@75 T@Field_16561_16562) (w@@80 T@FrameType) (r@@75 T@Field_15623_15624) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_16561 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_16561_15623 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_14465_15623 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_16561 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_16561_15623 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_14492_14493) (v_1@@81 T@FrameType) (q@@76 T@Field_16561_16562) (w@@81 T@FrameType) (r@@76 T@Field_15048_15049) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_16561 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_16561_15021 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_14465_15021 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_16561 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_16561_15021 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_14492_14493) (v_1@@82 T@FrameType) (q@@77 T@Field_16561_16562) (w@@82 T@FrameType) (r@@77 T@Field_14492_14493) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_16561 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_16561_14465 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_14465_14465 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_16561 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_16561_14465 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_14492_14493) (v_1@@83 T@FrameType) (q@@78 T@Field_16561_16562) (w@@83 T@FrameType) (r@@78 T@Field_11138_14493) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_16561 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_16561_11138 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_14465_11138 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_16561 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_16561_11138 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_14492_14493) (v_1@@84 T@FrameType) (q@@79 T@Field_15623_15624) (w@@84 T@FrameType) (r@@79 T@Field_16561_16562) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15623 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_15623_16561 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_14465_16561 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15623 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_15623_16561 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_14492_14493) (v_1@@85 T@FrameType) (q@@80 T@Field_15623_15624) (w@@85 T@FrameType) (r@@80 T@Field_15623_15624) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15623 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_15623_15623 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_14465_15623 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15623 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_15623_15623 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_14492_14493) (v_1@@86 T@FrameType) (q@@81 T@Field_15623_15624) (w@@86 T@FrameType) (r@@81 T@Field_15048_15049) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15623 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_15623_15021 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_14465_15021 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15623 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_15623_15021 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_14492_14493) (v_1@@87 T@FrameType) (q@@82 T@Field_15623_15624) (w@@87 T@FrameType) (r@@82 T@Field_14492_14493) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15623 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_15623_14465 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_14465_14465 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15623 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_15623_14465 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_14492_14493) (v_1@@88 T@FrameType) (q@@83 T@Field_15623_15624) (w@@88 T@FrameType) (r@@83 T@Field_11138_14493) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15623 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_15623_11138 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_14465_11138 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15623 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_15623_11138 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_14492_14493) (v_1@@89 T@FrameType) (q@@84 T@Field_15048_15049) (w@@89 T@FrameType) (r@@84 T@Field_16561_16562) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15021 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_15021_16561 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_14465_16561 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15021 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_15021_16561 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_14492_14493) (v_1@@90 T@FrameType) (q@@85 T@Field_15048_15049) (w@@90 T@FrameType) (r@@85 T@Field_15623_15624) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15021 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_15021_15623 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_14465_15623 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15021 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_15021_15623 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_14492_14493) (v_1@@91 T@FrameType) (q@@86 T@Field_15048_15049) (w@@91 T@FrameType) (r@@86 T@Field_15048_15049) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15021 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_15021_15021 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_14465_15021 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15021 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_15021_15021 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_14492_14493) (v_1@@92 T@FrameType) (q@@87 T@Field_15048_15049) (w@@92 T@FrameType) (r@@87 T@Field_14492_14493) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15021 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_15021_14465 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_14465_14465 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15021 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_15021_14465 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_14492_14493) (v_1@@93 T@FrameType) (q@@88 T@Field_15048_15049) (w@@93 T@FrameType) (r@@88 T@Field_11138_14493) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_15021 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_15021_11138 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_14465_11138 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_15021 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_15021_11138 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_14492_14493) (v_1@@94 T@FrameType) (q@@89 T@Field_14492_14493) (w@@94 T@FrameType) (r@@89 T@Field_16561_16562) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_14465 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_14465_16561 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_14465_16561 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_14465 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_14465_16561 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_14492_14493) (v_1@@95 T@FrameType) (q@@90 T@Field_14492_14493) (w@@95 T@FrameType) (r@@90 T@Field_15623_15624) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_14465 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_14465_15623 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_14465_15623 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_14465 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_14465_15623 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_14492_14493) (v_1@@96 T@FrameType) (q@@91 T@Field_14492_14493) (w@@96 T@FrameType) (r@@91 T@Field_15048_15049) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_14465 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_14465_15021 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_14465_15021 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_14465 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_14465_15021 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_14492_14493) (v_1@@97 T@FrameType) (q@@92 T@Field_14492_14493) (w@@97 T@FrameType) (r@@92 T@Field_14492_14493) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_14465 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_14465_14465 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_14465_14465 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_14465 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_14465_14465 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_14492_14493) (v_1@@98 T@FrameType) (q@@93 T@Field_14492_14493) (w@@98 T@FrameType) (r@@93 T@Field_11138_14493) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_14465 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_14465_11138 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_14465_11138 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_14465 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_14465_11138 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_14492_14493) (v_1@@99 T@FrameType) (q@@94 T@Field_11138_14493) (w@@99 T@FrameType) (r@@94 T@Field_16561_16562) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_11138 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_11138_16561 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_14465_16561 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_11138 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_11138_16561 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_14492_14493) (v_1@@100 T@FrameType) (q@@95 T@Field_11138_14493) (w@@100 T@FrameType) (r@@95 T@Field_15623_15624) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_11138 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_11138_15623 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_14465_15623 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_11138 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_11138_15623 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_14492_14493) (v_1@@101 T@FrameType) (q@@96 T@Field_11138_14493) (w@@101 T@FrameType) (r@@96 T@Field_15048_15049) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_11138 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_11138_15021 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_14465_15021 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_11138 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_11138_15021 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_14492_14493) (v_1@@102 T@FrameType) (q@@97 T@Field_11138_14493) (w@@102 T@FrameType) (r@@97 T@Field_14492_14493) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_11138 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_11138_14465 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_14465_14465 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_11138 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_11138_14465 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_14492_14493) (v_1@@103 T@FrameType) (q@@98 T@Field_11138_14493) (w@@103 T@FrameType) (r@@98 T@Field_11138_14493) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_14465_11138 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_11138_11138 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_14465_11138 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14465_11138 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_11138_11138 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_11138_14493) (v_1@@104 T@FrameType) (q@@99 T@Field_16561_16562) (w@@104 T@FrameType) (r@@99 T@Field_16561_16562) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_16561 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_16561_16561 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_11138_16561 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_16561 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_16561_16561 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_11138_14493) (v_1@@105 T@FrameType) (q@@100 T@Field_16561_16562) (w@@105 T@FrameType) (r@@100 T@Field_15623_15624) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_16561 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_16561_15623 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_11138_15623 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_16561 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_16561_15623 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_11138_14493) (v_1@@106 T@FrameType) (q@@101 T@Field_16561_16562) (w@@106 T@FrameType) (r@@101 T@Field_15048_15049) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_16561 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_16561_15021 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_11138_15021 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_16561 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_16561_15021 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_11138_14493) (v_1@@107 T@FrameType) (q@@102 T@Field_16561_16562) (w@@107 T@FrameType) (r@@102 T@Field_14492_14493) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_16561 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_16561_14465 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_11138_14465 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_16561 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_16561_14465 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_11138_14493) (v_1@@108 T@FrameType) (q@@103 T@Field_16561_16562) (w@@108 T@FrameType) (r@@103 T@Field_11138_14493) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_16561 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_16561_11138 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_11138_11138 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_16561 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_16561_11138 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_11138_14493) (v_1@@109 T@FrameType) (q@@104 T@Field_15623_15624) (w@@109 T@FrameType) (r@@104 T@Field_16561_16562) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15623 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_15623_16561 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_11138_16561 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15623 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_15623_16561 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_11138_14493) (v_1@@110 T@FrameType) (q@@105 T@Field_15623_15624) (w@@110 T@FrameType) (r@@105 T@Field_15623_15624) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15623 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_15623_15623 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_11138_15623 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15623 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_15623_15623 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_11138_14493) (v_1@@111 T@FrameType) (q@@106 T@Field_15623_15624) (w@@111 T@FrameType) (r@@106 T@Field_15048_15049) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15623 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_15623_15021 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_11138_15021 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15623 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_15623_15021 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_11138_14493) (v_1@@112 T@FrameType) (q@@107 T@Field_15623_15624) (w@@112 T@FrameType) (r@@107 T@Field_14492_14493) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15623 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_15623_14465 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_11138_14465 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15623 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_15623_14465 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_11138_14493) (v_1@@113 T@FrameType) (q@@108 T@Field_15623_15624) (w@@113 T@FrameType) (r@@108 T@Field_11138_14493) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15623 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_15623_11138 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_11138_11138 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15623 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_15623_11138 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_11138_14493) (v_1@@114 T@FrameType) (q@@109 T@Field_15048_15049) (w@@114 T@FrameType) (r@@109 T@Field_16561_16562) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15021 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_15021_16561 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_11138_16561 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15021 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_15021_16561 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_11138_14493) (v_1@@115 T@FrameType) (q@@110 T@Field_15048_15049) (w@@115 T@FrameType) (r@@110 T@Field_15623_15624) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15021 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_15021_15623 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_11138_15623 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15021 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_15021_15623 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_11138_14493) (v_1@@116 T@FrameType) (q@@111 T@Field_15048_15049) (w@@116 T@FrameType) (r@@111 T@Field_15048_15049) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15021 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_15021_15021 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_11138_15021 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15021 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_15021_15021 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_11138_14493) (v_1@@117 T@FrameType) (q@@112 T@Field_15048_15049) (w@@117 T@FrameType) (r@@112 T@Field_14492_14493) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15021 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_15021_14465 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_11138_14465 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15021 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_15021_14465 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_11138_14493) (v_1@@118 T@FrameType) (q@@113 T@Field_15048_15049) (w@@118 T@FrameType) (r@@113 T@Field_11138_14493) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_15021 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_15021_11138 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_11138_11138 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_15021 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_15021_11138 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_11138_14493) (v_1@@119 T@FrameType) (q@@114 T@Field_14492_14493) (w@@119 T@FrameType) (r@@114 T@Field_16561_16562) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_14465 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_14465_16561 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_11138_16561 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_14465 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_14465_16561 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_11138_14493) (v_1@@120 T@FrameType) (q@@115 T@Field_14492_14493) (w@@120 T@FrameType) (r@@115 T@Field_15623_15624) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_14465 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_14465_15623 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_11138_15623 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_14465 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_14465_15623 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_11138_14493) (v_1@@121 T@FrameType) (q@@116 T@Field_14492_14493) (w@@121 T@FrameType) (r@@116 T@Field_15048_15049) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_14465 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_14465_15021 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_11138_15021 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_14465 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_14465_15021 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_11138_14493) (v_1@@122 T@FrameType) (q@@117 T@Field_14492_14493) (w@@122 T@FrameType) (r@@117 T@Field_14492_14493) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_14465 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_14465_14465 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_11138_14465 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_14465 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_14465_14465 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_11138_14493) (v_1@@123 T@FrameType) (q@@118 T@Field_14492_14493) (w@@123 T@FrameType) (r@@118 T@Field_11138_14493) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_14465 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_14465_11138 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_11138_11138 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_14465 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_14465_11138 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_11138_14493) (v_1@@124 T@FrameType) (q@@119 T@Field_11138_14493) (w@@124 T@FrameType) (r@@119 T@Field_16561_16562) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_11138 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_11138_16561 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_11138_16561 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_11138 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_11138_16561 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_11138_14493) (v_1@@125 T@FrameType) (q@@120 T@Field_11138_14493) (w@@125 T@FrameType) (r@@120 T@Field_15623_15624) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_11138 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_11138_15623 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_11138_15623 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_11138 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_11138_15623 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_11138_14493) (v_1@@126 T@FrameType) (q@@121 T@Field_11138_14493) (w@@126 T@FrameType) (r@@121 T@Field_15048_15049) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_11138 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_11138_15021 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_11138_15021 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_11138 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_11138_15021 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_11138_14493) (v_1@@127 T@FrameType) (q@@122 T@Field_11138_14493) (w@@127 T@FrameType) (r@@122 T@Field_14492_14493) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_11138 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_11138_14465 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_11138_14465 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_11138 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_11138_14465 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_11138_14493) (v_1@@128 T@FrameType) (q@@123 T@Field_11138_14493) (w@@128 T@FrameType) (r@@123 T@Field_11138_14493) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_11138_11138 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_11138_11138 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_11138_11138 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11138_11138 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_11138_11138 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_11078) (ExhaleHeap@@36 T@PolymorphicMapType_11078) (Mask@@87 T@PolymorphicMapType_11099) (pm_f_1@@9 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_16561_14493 Mask@@87 null pm_f_1@@9) (IsPredicateField_6364_6365 pm_f_1@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_8@@24 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1 f_8@@24) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@65) o2_1 f_8@@24) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1 f_8@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1 f_8@@24))
)) (forall ((o2_1@@0 T@Ref) (f_8@@25 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@0 f_8@@25) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@65) o2_1@@0 f_8@@25) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@0 f_8@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@0 f_8@@25))
))) (forall ((o2_1@@1 T@Ref) (f_8@@26 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@1 f_8@@26) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@65) o2_1@@1 f_8@@26) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@1 f_8@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@1 f_8@@26))
))) (forall ((o2_1@@2 T@Ref) (f_8@@27 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@2 f_8@@27) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@65) o2_1@@2 f_8@@27) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@2 f_8@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@2 f_8@@27))
))) (forall ((o2_1@@3 T@Ref) (f_8@@28 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@3 f_8@@28) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@65) o2_1@@3 f_8@@28) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@3 f_8@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@3 f_8@@28))
))) (forall ((o2_1@@4 T@Ref) (f_8@@29 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@4 f_8@@29) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@65) o2_1@@4 f_8@@29) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@4 f_8@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@4 f_8@@29))
))) (forall ((o2_1@@5 T@Ref) (f_8@@30 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@5 f_8@@30) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@65) o2_1@@5 f_8@@30) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@5 f_8@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@5 f_8@@30))
))) (forall ((o2_1@@6 T@Ref) (f_8@@31 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@6 f_8@@31) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@65) o2_1@@6 f_8@@31) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@6 f_8@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@6 f_8@@31))
))) (forall ((o2_1@@7 T@Ref) (f_8@@32 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@7 f_8@@32) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@65) o2_1@@7 f_8@@32) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@7 f_8@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@7 f_8@@32))
))) (forall ((o2_1@@8 T@Ref) (f_8@@33 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@8 f_8@@33) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@65) o2_1@@8 f_8@@33) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@8 f_8@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@8 f_8@@33))
))) (forall ((o2_1@@9 T@Ref) (f_8@@34 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@9 f_8@@34) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@65) o2_1@@9 f_8@@34) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@9 f_8@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@9 f_8@@34))
))) (forall ((o2_1@@10 T@Ref) (f_8@@35 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@10 f_8@@35) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@65) o2_1@@10 f_8@@35) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@10 f_8@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@10 f_8@@35))
))) (forall ((o2_1@@11 T@Ref) (f_8@@36 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@11 f_8@@36) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@65) o2_1@@11 f_8@@36) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@11 f_8@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@11 f_8@@36))
))) (forall ((o2_1@@12 T@Ref) (f_8@@37 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@12 f_8@@37) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@65) o2_1@@12 f_8@@37) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@12 f_8@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@12 f_8@@37))
))) (forall ((o2_1@@13 T@Ref) (f_8@@38 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@13 f_8@@38) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@65) o2_1@@13 f_8@@38) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@13 f_8@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@13 f_8@@38))
))) (forall ((o2_1@@14 T@Ref) (f_8@@39 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@14 f_8@@39) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@65) o2_1@@14 f_8@@39) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@14 f_8@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@14 f_8@@39))
))) (forall ((o2_1@@15 T@Ref) (f_8@@40 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@15 f_8@@40) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@65) o2_1@@15 f_8@@40) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@15 f_8@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@15 f_8@@40))
))) (forall ((o2_1@@16 T@Ref) (f_8@@41 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@16 f_8@@41) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@65) o2_1@@16 f_8@@41) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@16 f_8@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@16 f_8@@41))
))) (forall ((o2_1@@17 T@Ref) (f_8@@42 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@17 f_8@@42) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@65) o2_1@@17 f_8@@42) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@17 f_8@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@17 f_8@@42))
))) (forall ((o2_1@@18 T@Ref) (f_8@@43 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@18 f_8@@43) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@65) o2_1@@18 f_8@@43) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@18 f_8@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@18 f_8@@43))
))) (forall ((o2_1@@19 T@Ref) (f_8@@44 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@19 f_8@@44) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@65) o2_1@@19 f_8@@44) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@19 f_8@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@19 f_8@@44))
))) (forall ((o2_1@@20 T@Ref) (f_8@@45 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@20 f_8@@45) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@65) o2_1@@20 f_8@@45) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@20 f_8@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@20 f_8@@45))
))) (forall ((o2_1@@21 T@Ref) (f_8@@46 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@21 f_8@@46) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@65) o2_1@@21 f_8@@46) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@21 f_8@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@21 f_8@@46))
))) (forall ((o2_1@@22 T@Ref) (f_8@@47 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@22 f_8@@47) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) o2_1@@22 f_8@@47) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@22 f_8@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@22 f_8@@47))
))) (forall ((o2_1@@23 T@Ref) (f_8@@48 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@65) null (PredicateMaskField_6364 pm_f_1@@9))) o2_1@@23 f_8@@48) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@65) o2_1@@23 f_8@@48) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@23 f_8@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@36) o2_1@@23 f_8@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@36 Mask@@87) (IsPredicateField_6364_6365 pm_f_1@@9))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_11078) (ExhaleHeap@@37 T@PolymorphicMapType_11078) (Mask@@88 T@PolymorphicMapType_11099) (pm_f_1@@10 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_15623_14493 Mask@@88 null pm_f_1@@10) (IsPredicateField_6339_6340 pm_f_1@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@24 T@Ref) (f_8@@49 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@24 f_8@@49) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@66) o2_1@@24 f_8@@49) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@24 f_8@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@24 f_8@@49))
)) (forall ((o2_1@@25 T@Ref) (f_8@@50 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@25 f_8@@50) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@66) o2_1@@25 f_8@@50) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@25 f_8@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@25 f_8@@50))
))) (forall ((o2_1@@26 T@Ref) (f_8@@51 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@26 f_8@@51) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@66) o2_1@@26 f_8@@51) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@26 f_8@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@26 f_8@@51))
))) (forall ((o2_1@@27 T@Ref) (f_8@@52 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@27 f_8@@52) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@66) o2_1@@27 f_8@@52) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@27 f_8@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@27 f_8@@52))
))) (forall ((o2_1@@28 T@Ref) (f_8@@53 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@28 f_8@@53) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@66) o2_1@@28 f_8@@53) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@28 f_8@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@28 f_8@@53))
))) (forall ((o2_1@@29 T@Ref) (f_8@@54 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@29 f_8@@54) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@66) o2_1@@29 f_8@@54) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@29 f_8@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@29 f_8@@54))
))) (forall ((o2_1@@30 T@Ref) (f_8@@55 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@30 f_8@@55) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@66) o2_1@@30 f_8@@55) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@30 f_8@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@30 f_8@@55))
))) (forall ((o2_1@@31 T@Ref) (f_8@@56 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@31 f_8@@56) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@66) o2_1@@31 f_8@@56) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@31 f_8@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@31 f_8@@56))
))) (forall ((o2_1@@32 T@Ref) (f_8@@57 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@32 f_8@@57) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@66) o2_1@@32 f_8@@57) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@32 f_8@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@32 f_8@@57))
))) (forall ((o2_1@@33 T@Ref) (f_8@@58 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@33 f_8@@58) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@66) o2_1@@33 f_8@@58) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@33 f_8@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@33 f_8@@58))
))) (forall ((o2_1@@34 T@Ref) (f_8@@59 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@34 f_8@@59) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@66) o2_1@@34 f_8@@59) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@34 f_8@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@34 f_8@@59))
))) (forall ((o2_1@@35 T@Ref) (f_8@@60 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@35 f_8@@60) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@66) o2_1@@35 f_8@@60) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@35 f_8@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@35 f_8@@60))
))) (forall ((o2_1@@36 T@Ref) (f_8@@61 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@36 f_8@@61) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@66) o2_1@@36 f_8@@61) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@36 f_8@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@36 f_8@@61))
))) (forall ((o2_1@@37 T@Ref) (f_8@@62 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@37 f_8@@62) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@66) o2_1@@37 f_8@@62) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@37 f_8@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@37 f_8@@62))
))) (forall ((o2_1@@38 T@Ref) (f_8@@63 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@38 f_8@@63) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@66) o2_1@@38 f_8@@63) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@38 f_8@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@38 f_8@@63))
))) (forall ((o2_1@@39 T@Ref) (f_8@@64 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@39 f_8@@64) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@66) o2_1@@39 f_8@@64) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@39 f_8@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@39 f_8@@64))
))) (forall ((o2_1@@40 T@Ref) (f_8@@65 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@40 f_8@@65) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@66) o2_1@@40 f_8@@65) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@40 f_8@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@40 f_8@@65))
))) (forall ((o2_1@@41 T@Ref) (f_8@@66 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@41 f_8@@66) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@66) o2_1@@41 f_8@@66) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@41 f_8@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@41 f_8@@66))
))) (forall ((o2_1@@42 T@Ref) (f_8@@67 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@42 f_8@@67) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) o2_1@@42 f_8@@67) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@42 f_8@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@42 f_8@@67))
))) (forall ((o2_1@@43 T@Ref) (f_8@@68 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@43 f_8@@68) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@66) o2_1@@43 f_8@@68) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@43 f_8@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@43 f_8@@68))
))) (forall ((o2_1@@44 T@Ref) (f_8@@69 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@44 f_8@@69) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@66) o2_1@@44 f_8@@69) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@44 f_8@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@44 f_8@@69))
))) (forall ((o2_1@@45 T@Ref) (f_8@@70 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@45 f_8@@70) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@66) o2_1@@45 f_8@@70) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@45 f_8@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@45 f_8@@70))
))) (forall ((o2_1@@46 T@Ref) (f_8@@71 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@46 f_8@@71) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@66) o2_1@@46 f_8@@71) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@46 f_8@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@46 f_8@@71))
))) (forall ((o2_1@@47 T@Ref) (f_8@@72 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@47 f_8@@72) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@66) o2_1@@47 f_8@@72) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@47 f_8@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@47 f_8@@72))
))) (forall ((o2_1@@48 T@Ref) (f_8@@73 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@66) null (PredicateMaskField_6339 pm_f_1@@10))) o2_1@@48 f_8@@73) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@66) o2_1@@48 f_8@@73) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@48 f_8@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@37) o2_1@@48 f_8@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@37 Mask@@88) (IsPredicateField_6339_6340 pm_f_1@@10))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_11078) (ExhaleHeap@@38 T@PolymorphicMapType_11078) (Mask@@89 T@PolymorphicMapType_11099) (pm_f_1@@11 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_15021_14493 Mask@@89 null pm_f_1@@11) (IsPredicateField_6317_6318 pm_f_1@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@49 T@Ref) (f_8@@74 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@49 f_8@@74) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@67) o2_1@@49 f_8@@74) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@49 f_8@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@49 f_8@@74))
)) (forall ((o2_1@@50 T@Ref) (f_8@@75 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@50 f_8@@75) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@67) o2_1@@50 f_8@@75) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@50 f_8@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@50 f_8@@75))
))) (forall ((o2_1@@51 T@Ref) (f_8@@76 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@51 f_8@@76) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@67) o2_1@@51 f_8@@76) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@51 f_8@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@51 f_8@@76))
))) (forall ((o2_1@@52 T@Ref) (f_8@@77 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@52 f_8@@77) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@67) o2_1@@52 f_8@@77) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@52 f_8@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@52 f_8@@77))
))) (forall ((o2_1@@53 T@Ref) (f_8@@78 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@53 f_8@@78) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@67) o2_1@@53 f_8@@78) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@53 f_8@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@53 f_8@@78))
))) (forall ((o2_1@@54 T@Ref) (f_8@@79 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@54 f_8@@79) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@67) o2_1@@54 f_8@@79) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@54 f_8@@79)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@54 f_8@@79))
))) (forall ((o2_1@@55 T@Ref) (f_8@@80 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@55 f_8@@80) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@67) o2_1@@55 f_8@@80) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@55 f_8@@80)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@55 f_8@@80))
))) (forall ((o2_1@@56 T@Ref) (f_8@@81 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@56 f_8@@81) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@67) o2_1@@56 f_8@@81) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@56 f_8@@81)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@56 f_8@@81))
))) (forall ((o2_1@@57 T@Ref) (f_8@@82 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@57 f_8@@82) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@67) o2_1@@57 f_8@@82) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@57 f_8@@82)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@57 f_8@@82))
))) (forall ((o2_1@@58 T@Ref) (f_8@@83 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@58 f_8@@83) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@67) o2_1@@58 f_8@@83) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@58 f_8@@83)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@58 f_8@@83))
))) (forall ((o2_1@@59 T@Ref) (f_8@@84 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@59 f_8@@84) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@67) o2_1@@59 f_8@@84) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@59 f_8@@84)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@59 f_8@@84))
))) (forall ((o2_1@@60 T@Ref) (f_8@@85 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@60 f_8@@85) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@67) o2_1@@60 f_8@@85) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@60 f_8@@85)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@60 f_8@@85))
))) (forall ((o2_1@@61 T@Ref) (f_8@@86 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@61 f_8@@86) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@67) o2_1@@61 f_8@@86) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@61 f_8@@86)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@61 f_8@@86))
))) (forall ((o2_1@@62 T@Ref) (f_8@@87 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@62 f_8@@87) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) o2_1@@62 f_8@@87) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@62 f_8@@87)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@62 f_8@@87))
))) (forall ((o2_1@@63 T@Ref) (f_8@@88 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@63 f_8@@88) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@67) o2_1@@63 f_8@@88) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@63 f_8@@88)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@63 f_8@@88))
))) (forall ((o2_1@@64 T@Ref) (f_8@@89 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@64 f_8@@89) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@67) o2_1@@64 f_8@@89) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@64 f_8@@89)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@64 f_8@@89))
))) (forall ((o2_1@@65 T@Ref) (f_8@@90 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@65 f_8@@90) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@67) o2_1@@65 f_8@@90) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@65 f_8@@90)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@65 f_8@@90))
))) (forall ((o2_1@@66 T@Ref) (f_8@@91 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@66 f_8@@91) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@67) o2_1@@66 f_8@@91) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@66 f_8@@91)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@66 f_8@@91))
))) (forall ((o2_1@@67 T@Ref) (f_8@@92 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@67 f_8@@92) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@67) o2_1@@67 f_8@@92) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@67 f_8@@92)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@67 f_8@@92))
))) (forall ((o2_1@@68 T@Ref) (f_8@@93 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@68 f_8@@93) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@67) o2_1@@68 f_8@@93) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@68 f_8@@93)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@68 f_8@@93))
))) (forall ((o2_1@@69 T@Ref) (f_8@@94 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@69 f_8@@94) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@67) o2_1@@69 f_8@@94) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@69 f_8@@94)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@69 f_8@@94))
))) (forall ((o2_1@@70 T@Ref) (f_8@@95 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@70 f_8@@95) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@67) o2_1@@70 f_8@@95) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@70 f_8@@95)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@70 f_8@@95))
))) (forall ((o2_1@@71 T@Ref) (f_8@@96 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@71 f_8@@96) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@67) o2_1@@71 f_8@@96) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@71 f_8@@96)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@71 f_8@@96))
))) (forall ((o2_1@@72 T@Ref) (f_8@@97 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@72 f_8@@97) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@67) o2_1@@72 f_8@@97) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@72 f_8@@97)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@72 f_8@@97))
))) (forall ((o2_1@@73 T@Ref) (f_8@@98 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@67) null (PredicateMaskField_15021 pm_f_1@@11))) o2_1@@73 f_8@@98) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@67) o2_1@@73 f_8@@98) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@73 f_8@@98)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@38) o2_1@@73 f_8@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@38 Mask@@89) (IsPredicateField_6317_6318 pm_f_1@@11))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_11078) (ExhaleHeap@@39 T@PolymorphicMapType_11078) (Mask@@90 T@PolymorphicMapType_11099) (pm_f_1@@12 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_14465_14493 Mask@@90 null pm_f_1@@12) (IsPredicateField_6287_6288 pm_f_1@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@74 T@Ref) (f_8@@99 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@74 f_8@@99) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@68) o2_1@@74 f_8@@99) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@74 f_8@@99)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@74 f_8@@99))
)) (forall ((o2_1@@75 T@Ref) (f_8@@100 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@75 f_8@@100) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@68) o2_1@@75 f_8@@100) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@75 f_8@@100)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@75 f_8@@100))
))) (forall ((o2_1@@76 T@Ref) (f_8@@101 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@76 f_8@@101) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@68) o2_1@@76 f_8@@101) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@76 f_8@@101)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@76 f_8@@101))
))) (forall ((o2_1@@77 T@Ref) (f_8@@102 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@77 f_8@@102) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@68) o2_1@@77 f_8@@102) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@77 f_8@@102)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@77 f_8@@102))
))) (forall ((o2_1@@78 T@Ref) (f_8@@103 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@78 f_8@@103) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@68) o2_1@@78 f_8@@103) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@78 f_8@@103)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@78 f_8@@103))
))) (forall ((o2_1@@79 T@Ref) (f_8@@104 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@79 f_8@@104) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@68) o2_1@@79 f_8@@104) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@79 f_8@@104)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@79 f_8@@104))
))) (forall ((o2_1@@80 T@Ref) (f_8@@105 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@80 f_8@@105) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@68) o2_1@@80 f_8@@105) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@80 f_8@@105)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@80 f_8@@105))
))) (forall ((o2_1@@81 T@Ref) (f_8@@106 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@81 f_8@@106) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@68) o2_1@@81 f_8@@106) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@81 f_8@@106)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@81 f_8@@106))
))) (forall ((o2_1@@82 T@Ref) (f_8@@107 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@82 f_8@@107) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) o2_1@@82 f_8@@107) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@82 f_8@@107)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@82 f_8@@107))
))) (forall ((o2_1@@83 T@Ref) (f_8@@108 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@83 f_8@@108) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@68) o2_1@@83 f_8@@108) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@83 f_8@@108)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@83 f_8@@108))
))) (forall ((o2_1@@84 T@Ref) (f_8@@109 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@84 f_8@@109) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@68) o2_1@@84 f_8@@109) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@84 f_8@@109)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@84 f_8@@109))
))) (forall ((o2_1@@85 T@Ref) (f_8@@110 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@85 f_8@@110) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@68) o2_1@@85 f_8@@110) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@85 f_8@@110)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@85 f_8@@110))
))) (forall ((o2_1@@86 T@Ref) (f_8@@111 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@86 f_8@@111) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@68) o2_1@@86 f_8@@111) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@86 f_8@@111)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@86 f_8@@111))
))) (forall ((o2_1@@87 T@Ref) (f_8@@112 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@87 f_8@@112) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@68) o2_1@@87 f_8@@112) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@87 f_8@@112)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@87 f_8@@112))
))) (forall ((o2_1@@88 T@Ref) (f_8@@113 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@88 f_8@@113) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@68) o2_1@@88 f_8@@113) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@88 f_8@@113)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@88 f_8@@113))
))) (forall ((o2_1@@89 T@Ref) (f_8@@114 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@89 f_8@@114) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@68) o2_1@@89 f_8@@114) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@89 f_8@@114)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@89 f_8@@114))
))) (forall ((o2_1@@90 T@Ref) (f_8@@115 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@90 f_8@@115) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@68) o2_1@@90 f_8@@115) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@90 f_8@@115)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@90 f_8@@115))
))) (forall ((o2_1@@91 T@Ref) (f_8@@116 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@91 f_8@@116) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@68) o2_1@@91 f_8@@116) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@91 f_8@@116)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@91 f_8@@116))
))) (forall ((o2_1@@92 T@Ref) (f_8@@117 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@92 f_8@@117) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@68) o2_1@@92 f_8@@117) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@92 f_8@@117)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@92 f_8@@117))
))) (forall ((o2_1@@93 T@Ref) (f_8@@118 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@93 f_8@@118) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@68) o2_1@@93 f_8@@118) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@93 f_8@@118)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@93 f_8@@118))
))) (forall ((o2_1@@94 T@Ref) (f_8@@119 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@94 f_8@@119) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@68) o2_1@@94 f_8@@119) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@94 f_8@@119)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@94 f_8@@119))
))) (forall ((o2_1@@95 T@Ref) (f_8@@120 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@95 f_8@@120) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@68) o2_1@@95 f_8@@120) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@95 f_8@@120)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@95 f_8@@120))
))) (forall ((o2_1@@96 T@Ref) (f_8@@121 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@96 f_8@@121) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@68) o2_1@@96 f_8@@121) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@96 f_8@@121)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@96 f_8@@121))
))) (forall ((o2_1@@97 T@Ref) (f_8@@122 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@97 f_8@@122) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@68) o2_1@@97 f_8@@122) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@97 f_8@@122)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@97 f_8@@122))
))) (forall ((o2_1@@98 T@Ref) (f_8@@123 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@68) null (PredicateMaskField_14465 pm_f_1@@12))) o2_1@@98 f_8@@123) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@68) o2_1@@98 f_8@@123) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@98 f_8@@123)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@39) o2_1@@98 f_8@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@39 Mask@@90) (IsPredicateField_6287_6288 pm_f_1@@12))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_11078) (ExhaleHeap@@40 T@PolymorphicMapType_11078) (Mask@@91 T@PolymorphicMapType_11099) (pm_f_1@@13 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_11138_14493 Mask@@91 null pm_f_1@@13) (IsPredicateField_11138_40083 pm_f_1@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@99 T@Ref) (f_8@@124 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@99 f_8@@124) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@69) o2_1@@99 f_8@@124) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@99 f_8@@124)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@99 f_8@@124))
)) (forall ((o2_1@@100 T@Ref) (f_8@@125 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@100 f_8@@125) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@69) o2_1@@100 f_8@@125) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@100 f_8@@125)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@100 f_8@@125))
))) (forall ((o2_1@@101 T@Ref) (f_8@@126 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@101 f_8@@126) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@69) o2_1@@101 f_8@@126) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@101 f_8@@126)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@101 f_8@@126))
))) (forall ((o2_1@@102 T@Ref) (f_8@@127 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@102 f_8@@127) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) o2_1@@102 f_8@@127) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@102 f_8@@127)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@102 f_8@@127))
))) (forall ((o2_1@@103 T@Ref) (f_8@@128 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@103 f_8@@128) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@69) o2_1@@103 f_8@@128) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@103 f_8@@128)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@103 f_8@@128))
))) (forall ((o2_1@@104 T@Ref) (f_8@@129 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@104 f_8@@129) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@69) o2_1@@104 f_8@@129) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@104 f_8@@129)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@104 f_8@@129))
))) (forall ((o2_1@@105 T@Ref) (f_8@@130 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@105 f_8@@130) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@69) o2_1@@105 f_8@@130) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@105 f_8@@130)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@105 f_8@@130))
))) (forall ((o2_1@@106 T@Ref) (f_8@@131 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@106 f_8@@131) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@69) o2_1@@106 f_8@@131) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@106 f_8@@131)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@106 f_8@@131))
))) (forall ((o2_1@@107 T@Ref) (f_8@@132 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@107 f_8@@132) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@69) o2_1@@107 f_8@@132) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@107 f_8@@132)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@107 f_8@@132))
))) (forall ((o2_1@@108 T@Ref) (f_8@@133 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@108 f_8@@133) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@69) o2_1@@108 f_8@@133) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@108 f_8@@133)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@108 f_8@@133))
))) (forall ((o2_1@@109 T@Ref) (f_8@@134 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@109 f_8@@134) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@69) o2_1@@109 f_8@@134) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@109 f_8@@134)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@109 f_8@@134))
))) (forall ((o2_1@@110 T@Ref) (f_8@@135 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@110 f_8@@135) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@69) o2_1@@110 f_8@@135) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@110 f_8@@135)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@110 f_8@@135))
))) (forall ((o2_1@@111 T@Ref) (f_8@@136 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@111 f_8@@136) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@69) o2_1@@111 f_8@@136) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@111 f_8@@136)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@111 f_8@@136))
))) (forall ((o2_1@@112 T@Ref) (f_8@@137 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@112 f_8@@137) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@69) o2_1@@112 f_8@@137) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@112 f_8@@137)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@112 f_8@@137))
))) (forall ((o2_1@@113 T@Ref) (f_8@@138 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@113 f_8@@138) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@69) o2_1@@113 f_8@@138) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@113 f_8@@138)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@113 f_8@@138))
))) (forall ((o2_1@@114 T@Ref) (f_8@@139 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@114 f_8@@139) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@69) o2_1@@114 f_8@@139) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@114 f_8@@139)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@114 f_8@@139))
))) (forall ((o2_1@@115 T@Ref) (f_8@@140 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@115 f_8@@140) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@69) o2_1@@115 f_8@@140) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@115 f_8@@140)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@115 f_8@@140))
))) (forall ((o2_1@@116 T@Ref) (f_8@@141 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@116 f_8@@141) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@69) o2_1@@116 f_8@@141) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@116 f_8@@141)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@116 f_8@@141))
))) (forall ((o2_1@@117 T@Ref) (f_8@@142 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@117 f_8@@142) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@69) o2_1@@117 f_8@@142) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@117 f_8@@142)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@117 f_8@@142))
))) (forall ((o2_1@@118 T@Ref) (f_8@@143 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@118 f_8@@143) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@69) o2_1@@118 f_8@@143) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@118 f_8@@143)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@118 f_8@@143))
))) (forall ((o2_1@@119 T@Ref) (f_8@@144 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@119 f_8@@144) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@69) o2_1@@119 f_8@@144) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@119 f_8@@144)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@119 f_8@@144))
))) (forall ((o2_1@@120 T@Ref) (f_8@@145 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@120 f_8@@145) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@69) o2_1@@120 f_8@@145) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@120 f_8@@145)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@120 f_8@@145))
))) (forall ((o2_1@@121 T@Ref) (f_8@@146 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@121 f_8@@146) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@69) o2_1@@121 f_8@@146) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@121 f_8@@146)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@121 f_8@@146))
))) (forall ((o2_1@@122 T@Ref) (f_8@@147 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@122 f_8@@147) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@69) o2_1@@122 f_8@@147) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@122 f_8@@147)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@122 f_8@@147))
))) (forall ((o2_1@@123 T@Ref) (f_8@@148 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@69) null (PredicateMaskField_11138 pm_f_1@@13))) o2_1@@123 f_8@@148) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@69) o2_1@@123 f_8@@148) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@123 f_8@@148)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@40) o2_1@@123 f_8@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@40 Mask@@91) (IsPredicateField_11138_40083 pm_f_1@@13))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_11078) (ExhaleHeap@@41 T@PolymorphicMapType_11078) (Mask@@92 T@PolymorphicMapType_11099) (pm_f_1@@14 T@Field_16561_16562) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_16561_14493 Mask@@92 null pm_f_1@@14) (IsWandField_16561_49787 pm_f_1@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@124 T@Ref) (f_8@@149 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@124 f_8@@149) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@70) o2_1@@124 f_8@@149) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@124 f_8@@149)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@124 f_8@@149))
)) (forall ((o2_1@@125 T@Ref) (f_8@@150 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@125 f_8@@150) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@70) o2_1@@125 f_8@@150) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@125 f_8@@150)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@125 f_8@@150))
))) (forall ((o2_1@@126 T@Ref) (f_8@@151 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@126 f_8@@151) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@70) o2_1@@126 f_8@@151) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@126 f_8@@151)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@126 f_8@@151))
))) (forall ((o2_1@@127 T@Ref) (f_8@@152 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@127 f_8@@152) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@70) o2_1@@127 f_8@@152) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@127 f_8@@152)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@127 f_8@@152))
))) (forall ((o2_1@@128 T@Ref) (f_8@@153 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@128 f_8@@153) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@70) o2_1@@128 f_8@@153) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@128 f_8@@153)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@128 f_8@@153))
))) (forall ((o2_1@@129 T@Ref) (f_8@@154 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@129 f_8@@154) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@70) o2_1@@129 f_8@@154) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@129 f_8@@154)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@129 f_8@@154))
))) (forall ((o2_1@@130 T@Ref) (f_8@@155 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@130 f_8@@155) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@70) o2_1@@130 f_8@@155) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@130 f_8@@155)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@130 f_8@@155))
))) (forall ((o2_1@@131 T@Ref) (f_8@@156 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@131 f_8@@156) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@70) o2_1@@131 f_8@@156) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@131 f_8@@156)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@131 f_8@@156))
))) (forall ((o2_1@@132 T@Ref) (f_8@@157 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@132 f_8@@157) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@70) o2_1@@132 f_8@@157) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@132 f_8@@157)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@132 f_8@@157))
))) (forall ((o2_1@@133 T@Ref) (f_8@@158 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@133 f_8@@158) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@70) o2_1@@133 f_8@@158) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@133 f_8@@158)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@133 f_8@@158))
))) (forall ((o2_1@@134 T@Ref) (f_8@@159 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@134 f_8@@159) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@70) o2_1@@134 f_8@@159) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@134 f_8@@159)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@134 f_8@@159))
))) (forall ((o2_1@@135 T@Ref) (f_8@@160 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@135 f_8@@160) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@70) o2_1@@135 f_8@@160) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@135 f_8@@160)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@135 f_8@@160))
))) (forall ((o2_1@@136 T@Ref) (f_8@@161 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@136 f_8@@161) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@70) o2_1@@136 f_8@@161) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@136 f_8@@161)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@136 f_8@@161))
))) (forall ((o2_1@@137 T@Ref) (f_8@@162 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@137 f_8@@162) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@70) o2_1@@137 f_8@@162) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@137 f_8@@162)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@137 f_8@@162))
))) (forall ((o2_1@@138 T@Ref) (f_8@@163 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@138 f_8@@163) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@70) o2_1@@138 f_8@@163) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@138 f_8@@163)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@138 f_8@@163))
))) (forall ((o2_1@@139 T@Ref) (f_8@@164 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@139 f_8@@164) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@70) o2_1@@139 f_8@@164) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@139 f_8@@164)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@139 f_8@@164))
))) (forall ((o2_1@@140 T@Ref) (f_8@@165 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@140 f_8@@165) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@70) o2_1@@140 f_8@@165) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@140 f_8@@165)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@140 f_8@@165))
))) (forall ((o2_1@@141 T@Ref) (f_8@@166 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@141 f_8@@166) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@70) o2_1@@141 f_8@@166) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@141 f_8@@166)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@141 f_8@@166))
))) (forall ((o2_1@@142 T@Ref) (f_8@@167 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@142 f_8@@167) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@70) o2_1@@142 f_8@@167) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@142 f_8@@167)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@142 f_8@@167))
))) (forall ((o2_1@@143 T@Ref) (f_8@@168 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@143 f_8@@168) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@70) o2_1@@143 f_8@@168) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@143 f_8@@168)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@143 f_8@@168))
))) (forall ((o2_1@@144 T@Ref) (f_8@@169 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@144 f_8@@169) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@70) o2_1@@144 f_8@@169) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@144 f_8@@169)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@144 f_8@@169))
))) (forall ((o2_1@@145 T@Ref) (f_8@@170 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@145 f_8@@170) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@70) o2_1@@145 f_8@@170) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@145 f_8@@170)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@145 f_8@@170))
))) (forall ((o2_1@@146 T@Ref) (f_8@@171 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@146 f_8@@171) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@70) o2_1@@146 f_8@@171) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@146 f_8@@171)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@146 f_8@@171))
))) (forall ((o2_1@@147 T@Ref) (f_8@@172 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@147 f_8@@172) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) o2_1@@147 f_8@@172) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@147 f_8@@172)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@147 f_8@@172))
))) (forall ((o2_1@@148 T@Ref) (f_8@@173 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@70) null (WandMaskField_16561 pm_f_1@@14))) o2_1@@148 f_8@@173) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@70) o2_1@@148 f_8@@173) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@148 f_8@@173)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@41) o2_1@@148 f_8@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@41 Mask@@92) (IsWandField_16561_49787 pm_f_1@@14))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_11078) (ExhaleHeap@@42 T@PolymorphicMapType_11078) (Mask@@93 T@PolymorphicMapType_11099) (pm_f_1@@15 T@Field_15623_15624) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_15623_14493 Mask@@93 null pm_f_1@@15) (IsWandField_15623_49430 pm_f_1@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@149 T@Ref) (f_8@@174 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@149 f_8@@174) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@71) o2_1@@149 f_8@@174) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@149 f_8@@174)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@149 f_8@@174))
)) (forall ((o2_1@@150 T@Ref) (f_8@@175 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@150 f_8@@175) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@71) o2_1@@150 f_8@@175) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@150 f_8@@175)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@150 f_8@@175))
))) (forall ((o2_1@@151 T@Ref) (f_8@@176 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@151 f_8@@176) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@71) o2_1@@151 f_8@@176) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@151 f_8@@176)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@151 f_8@@176))
))) (forall ((o2_1@@152 T@Ref) (f_8@@177 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@152 f_8@@177) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@71) o2_1@@152 f_8@@177) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@152 f_8@@177)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@152 f_8@@177))
))) (forall ((o2_1@@153 T@Ref) (f_8@@178 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@153 f_8@@178) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@71) o2_1@@153 f_8@@178) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@153 f_8@@178)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@153 f_8@@178))
))) (forall ((o2_1@@154 T@Ref) (f_8@@179 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@154 f_8@@179) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@71) o2_1@@154 f_8@@179) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@154 f_8@@179)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@154 f_8@@179))
))) (forall ((o2_1@@155 T@Ref) (f_8@@180 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@155 f_8@@180) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@71) o2_1@@155 f_8@@180) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@155 f_8@@180)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@155 f_8@@180))
))) (forall ((o2_1@@156 T@Ref) (f_8@@181 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@156 f_8@@181) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@71) o2_1@@156 f_8@@181) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@156 f_8@@181)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@156 f_8@@181))
))) (forall ((o2_1@@157 T@Ref) (f_8@@182 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@157 f_8@@182) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@71) o2_1@@157 f_8@@182) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@157 f_8@@182)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@157 f_8@@182))
))) (forall ((o2_1@@158 T@Ref) (f_8@@183 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@158 f_8@@183) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@71) o2_1@@158 f_8@@183) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@158 f_8@@183)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@158 f_8@@183))
))) (forall ((o2_1@@159 T@Ref) (f_8@@184 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@159 f_8@@184) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@71) o2_1@@159 f_8@@184) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@159 f_8@@184)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@159 f_8@@184))
))) (forall ((o2_1@@160 T@Ref) (f_8@@185 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@160 f_8@@185) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@71) o2_1@@160 f_8@@185) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@160 f_8@@185)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@160 f_8@@185))
))) (forall ((o2_1@@161 T@Ref) (f_8@@186 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@161 f_8@@186) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@71) o2_1@@161 f_8@@186) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@161 f_8@@186)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@161 f_8@@186))
))) (forall ((o2_1@@162 T@Ref) (f_8@@187 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@162 f_8@@187) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@71) o2_1@@162 f_8@@187) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@162 f_8@@187)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@162 f_8@@187))
))) (forall ((o2_1@@163 T@Ref) (f_8@@188 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@163 f_8@@188) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@71) o2_1@@163 f_8@@188) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@163 f_8@@188)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@163 f_8@@188))
))) (forall ((o2_1@@164 T@Ref) (f_8@@189 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@164 f_8@@189) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@71) o2_1@@164 f_8@@189) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@164 f_8@@189)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@164 f_8@@189))
))) (forall ((o2_1@@165 T@Ref) (f_8@@190 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@165 f_8@@190) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@71) o2_1@@165 f_8@@190) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@165 f_8@@190)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@165 f_8@@190))
))) (forall ((o2_1@@166 T@Ref) (f_8@@191 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@166 f_8@@191) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@71) o2_1@@166 f_8@@191) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@166 f_8@@191)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@166 f_8@@191))
))) (forall ((o2_1@@167 T@Ref) (f_8@@192 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@167 f_8@@192) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) o2_1@@167 f_8@@192) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@167 f_8@@192)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@167 f_8@@192))
))) (forall ((o2_1@@168 T@Ref) (f_8@@193 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@168 f_8@@193) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@71) o2_1@@168 f_8@@193) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@168 f_8@@193)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@168 f_8@@193))
))) (forall ((o2_1@@169 T@Ref) (f_8@@194 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@169 f_8@@194) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@71) o2_1@@169 f_8@@194) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@169 f_8@@194)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@169 f_8@@194))
))) (forall ((o2_1@@170 T@Ref) (f_8@@195 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@170 f_8@@195) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@71) o2_1@@170 f_8@@195) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@170 f_8@@195)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@170 f_8@@195))
))) (forall ((o2_1@@171 T@Ref) (f_8@@196 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@171 f_8@@196) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@71) o2_1@@171 f_8@@196) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@171 f_8@@196)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@171 f_8@@196))
))) (forall ((o2_1@@172 T@Ref) (f_8@@197 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@172 f_8@@197) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@71) o2_1@@172 f_8@@197) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@172 f_8@@197)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@172 f_8@@197))
))) (forall ((o2_1@@173 T@Ref) (f_8@@198 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@71) null (WandMaskField_15623 pm_f_1@@15))) o2_1@@173 f_8@@198) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@71) o2_1@@173 f_8@@198) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@173 f_8@@198)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@42) o2_1@@173 f_8@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@42 Mask@@93) (IsWandField_15623_49430 pm_f_1@@15))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_11078) (ExhaleHeap@@43 T@PolymorphicMapType_11078) (Mask@@94 T@PolymorphicMapType_11099) (pm_f_1@@16 T@Field_15048_15049) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_15021_14493 Mask@@94 null pm_f_1@@16) (IsWandField_6317_6318 pm_f_1@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@174 T@Ref) (f_8@@199 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@174 f_8@@199) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@72) o2_1@@174 f_8@@199) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@174 f_8@@199)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@174 f_8@@199))
)) (forall ((o2_1@@175 T@Ref) (f_8@@200 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@175 f_8@@200) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@72) o2_1@@175 f_8@@200) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@175 f_8@@200)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@175 f_8@@200))
))) (forall ((o2_1@@176 T@Ref) (f_8@@201 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@176 f_8@@201) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@72) o2_1@@176 f_8@@201) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@176 f_8@@201)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@176 f_8@@201))
))) (forall ((o2_1@@177 T@Ref) (f_8@@202 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@177 f_8@@202) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@72) o2_1@@177 f_8@@202) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@177 f_8@@202)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@177 f_8@@202))
))) (forall ((o2_1@@178 T@Ref) (f_8@@203 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@178 f_8@@203) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@72) o2_1@@178 f_8@@203) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@178 f_8@@203)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@178 f_8@@203))
))) (forall ((o2_1@@179 T@Ref) (f_8@@204 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@179 f_8@@204) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@72) o2_1@@179 f_8@@204) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@179 f_8@@204)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@179 f_8@@204))
))) (forall ((o2_1@@180 T@Ref) (f_8@@205 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@180 f_8@@205) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@72) o2_1@@180 f_8@@205) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@180 f_8@@205)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@180 f_8@@205))
))) (forall ((o2_1@@181 T@Ref) (f_8@@206 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@181 f_8@@206) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@72) o2_1@@181 f_8@@206) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@181 f_8@@206)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@181 f_8@@206))
))) (forall ((o2_1@@182 T@Ref) (f_8@@207 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@182 f_8@@207) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@72) o2_1@@182 f_8@@207) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@182 f_8@@207)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@182 f_8@@207))
))) (forall ((o2_1@@183 T@Ref) (f_8@@208 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@183 f_8@@208) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@72) o2_1@@183 f_8@@208) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@183 f_8@@208)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@183 f_8@@208))
))) (forall ((o2_1@@184 T@Ref) (f_8@@209 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@184 f_8@@209) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@72) o2_1@@184 f_8@@209) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@184 f_8@@209)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@184 f_8@@209))
))) (forall ((o2_1@@185 T@Ref) (f_8@@210 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@185 f_8@@210) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@72) o2_1@@185 f_8@@210) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@185 f_8@@210)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@185 f_8@@210))
))) (forall ((o2_1@@186 T@Ref) (f_8@@211 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@186 f_8@@211) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@72) o2_1@@186 f_8@@211) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@186 f_8@@211)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@186 f_8@@211))
))) (forall ((o2_1@@187 T@Ref) (f_8@@212 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@187 f_8@@212) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) o2_1@@187 f_8@@212) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@187 f_8@@212)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@187 f_8@@212))
))) (forall ((o2_1@@188 T@Ref) (f_8@@213 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@188 f_8@@213) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@72) o2_1@@188 f_8@@213) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@188 f_8@@213)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@188 f_8@@213))
))) (forall ((o2_1@@189 T@Ref) (f_8@@214 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@189 f_8@@214) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@72) o2_1@@189 f_8@@214) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@189 f_8@@214)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@189 f_8@@214))
))) (forall ((o2_1@@190 T@Ref) (f_8@@215 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@190 f_8@@215) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@72) o2_1@@190 f_8@@215) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@190 f_8@@215)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@190 f_8@@215))
))) (forall ((o2_1@@191 T@Ref) (f_8@@216 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@191 f_8@@216) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@72) o2_1@@191 f_8@@216) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@191 f_8@@216)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@191 f_8@@216))
))) (forall ((o2_1@@192 T@Ref) (f_8@@217 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@192 f_8@@217) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@72) o2_1@@192 f_8@@217) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@192 f_8@@217)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@192 f_8@@217))
))) (forall ((o2_1@@193 T@Ref) (f_8@@218 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@193 f_8@@218) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@72) o2_1@@193 f_8@@218) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@193 f_8@@218)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@193 f_8@@218))
))) (forall ((o2_1@@194 T@Ref) (f_8@@219 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@194 f_8@@219) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@72) o2_1@@194 f_8@@219) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@194 f_8@@219)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@194 f_8@@219))
))) (forall ((o2_1@@195 T@Ref) (f_8@@220 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@195 f_8@@220) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@72) o2_1@@195 f_8@@220) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@195 f_8@@220)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@195 f_8@@220))
))) (forall ((o2_1@@196 T@Ref) (f_8@@221 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@196 f_8@@221) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@72) o2_1@@196 f_8@@221) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@196 f_8@@221)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@196 f_8@@221))
))) (forall ((o2_1@@197 T@Ref) (f_8@@222 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@197 f_8@@222) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@72) o2_1@@197 f_8@@222) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@197 f_8@@222)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@197 f_8@@222))
))) (forall ((o2_1@@198 T@Ref) (f_8@@223 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@72) null (WandMaskField_6317 pm_f_1@@16))) o2_1@@198 f_8@@223) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@72) o2_1@@198 f_8@@223) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@198 f_8@@223)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@43) o2_1@@198 f_8@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@43 Mask@@94) (IsWandField_6317_6318 pm_f_1@@16))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_11078) (ExhaleHeap@@44 T@PolymorphicMapType_11078) (Mask@@95 T@PolymorphicMapType_11099) (pm_f_1@@17 T@Field_14492_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_14465_14493 Mask@@95 null pm_f_1@@17) (IsWandField_6287_6288 pm_f_1@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@199 T@Ref) (f_8@@224 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@199 f_8@@224) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@73) o2_1@@199 f_8@@224) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@199 f_8@@224)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@199 f_8@@224))
)) (forall ((o2_1@@200 T@Ref) (f_8@@225 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@200 f_8@@225) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@73) o2_1@@200 f_8@@225) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@200 f_8@@225)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@200 f_8@@225))
))) (forall ((o2_1@@201 T@Ref) (f_8@@226 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@201 f_8@@226) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@73) o2_1@@201 f_8@@226) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@201 f_8@@226)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@201 f_8@@226))
))) (forall ((o2_1@@202 T@Ref) (f_8@@227 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@202 f_8@@227) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@73) o2_1@@202 f_8@@227) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@202 f_8@@227)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@202 f_8@@227))
))) (forall ((o2_1@@203 T@Ref) (f_8@@228 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@203 f_8@@228) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@73) o2_1@@203 f_8@@228) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@203 f_8@@228)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@203 f_8@@228))
))) (forall ((o2_1@@204 T@Ref) (f_8@@229 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@204 f_8@@229) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@73) o2_1@@204 f_8@@229) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@204 f_8@@229)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@204 f_8@@229))
))) (forall ((o2_1@@205 T@Ref) (f_8@@230 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@205 f_8@@230) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@73) o2_1@@205 f_8@@230) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@205 f_8@@230)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@205 f_8@@230))
))) (forall ((o2_1@@206 T@Ref) (f_8@@231 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@206 f_8@@231) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@73) o2_1@@206 f_8@@231) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@206 f_8@@231)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@206 f_8@@231))
))) (forall ((o2_1@@207 T@Ref) (f_8@@232 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@207 f_8@@232) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) o2_1@@207 f_8@@232) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@207 f_8@@232)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@207 f_8@@232))
))) (forall ((o2_1@@208 T@Ref) (f_8@@233 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@208 f_8@@233) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@73) o2_1@@208 f_8@@233) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@208 f_8@@233)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@208 f_8@@233))
))) (forall ((o2_1@@209 T@Ref) (f_8@@234 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@209 f_8@@234) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@73) o2_1@@209 f_8@@234) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@209 f_8@@234)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@209 f_8@@234))
))) (forall ((o2_1@@210 T@Ref) (f_8@@235 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@210 f_8@@235) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@73) o2_1@@210 f_8@@235) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@210 f_8@@235)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@210 f_8@@235))
))) (forall ((o2_1@@211 T@Ref) (f_8@@236 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@211 f_8@@236) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@73) o2_1@@211 f_8@@236) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@211 f_8@@236)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@211 f_8@@236))
))) (forall ((o2_1@@212 T@Ref) (f_8@@237 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@212 f_8@@237) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@73) o2_1@@212 f_8@@237) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@212 f_8@@237)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@212 f_8@@237))
))) (forall ((o2_1@@213 T@Ref) (f_8@@238 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@213 f_8@@238) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@73) o2_1@@213 f_8@@238) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@213 f_8@@238)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@213 f_8@@238))
))) (forall ((o2_1@@214 T@Ref) (f_8@@239 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@214 f_8@@239) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@73) o2_1@@214 f_8@@239) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@214 f_8@@239)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@214 f_8@@239))
))) (forall ((o2_1@@215 T@Ref) (f_8@@240 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@215 f_8@@240) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@73) o2_1@@215 f_8@@240) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@215 f_8@@240)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@215 f_8@@240))
))) (forall ((o2_1@@216 T@Ref) (f_8@@241 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@216 f_8@@241) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@73) o2_1@@216 f_8@@241) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@216 f_8@@241)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@216 f_8@@241))
))) (forall ((o2_1@@217 T@Ref) (f_8@@242 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@217 f_8@@242) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@73) o2_1@@217 f_8@@242) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@217 f_8@@242)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@217 f_8@@242))
))) (forall ((o2_1@@218 T@Ref) (f_8@@243 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@218 f_8@@243) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@73) o2_1@@218 f_8@@243) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@218 f_8@@243)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@218 f_8@@243))
))) (forall ((o2_1@@219 T@Ref) (f_8@@244 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@219 f_8@@244) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@73) o2_1@@219 f_8@@244) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@219 f_8@@244)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@219 f_8@@244))
))) (forall ((o2_1@@220 T@Ref) (f_8@@245 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@220 f_8@@245) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@73) o2_1@@220 f_8@@245) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@220 f_8@@245)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@220 f_8@@245))
))) (forall ((o2_1@@221 T@Ref) (f_8@@246 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@221 f_8@@246) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@73) o2_1@@221 f_8@@246) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@221 f_8@@246)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@221 f_8@@246))
))) (forall ((o2_1@@222 T@Ref) (f_8@@247 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@222 f_8@@247) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@73) o2_1@@222 f_8@@247) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@222 f_8@@247)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@222 f_8@@247))
))) (forall ((o2_1@@223 T@Ref) (f_8@@248 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@73) null (WandMaskField_6287 pm_f_1@@17))) o2_1@@223 f_8@@248) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@73) o2_1@@223 f_8@@248) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@223 f_8@@248)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@44) o2_1@@223 f_8@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@44 Mask@@95) (IsWandField_6287_6288 pm_f_1@@17))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_11078) (ExhaleHeap@@45 T@PolymorphicMapType_11078) (Mask@@96 T@PolymorphicMapType_11099) (pm_f_1@@18 T@Field_11138_14493) ) (!  (=> (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_11138_14493 Mask@@96 null pm_f_1@@18) (IsWandField_11138_48423 pm_f_1@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@224 T@Ref) (f_8@@249 T@Field_15576_1716) ) (!  (=> (select (|PolymorphicMapType_11627_6336_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@224 f_8@@249) (= (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| Heap@@74) o2_1@@224 f_8@@249) (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@224 f_8@@249)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6336_1716#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@224 f_8@@249))
)) (forall ((o2_1@@225 T@Ref) (f_8@@250 T@Field_11138_53) ) (!  (=> (select (|PolymorphicMapType_11627_6336_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@225 f_8@@250) (= (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@74) o2_1@@225 f_8@@250) (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@225 f_8@@250)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@225 f_8@@250))
))) (forall ((o2_1@@226 T@Ref) (f_8@@251 T@Field_11151_11152) ) (!  (=> (select (|PolymorphicMapType_11627_6336_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@226 f_8@@251) (= (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| Heap@@74) o2_1@@226 f_8@@251) (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@226 f_8@@251)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6151_6152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@226 f_8@@251))
))) (forall ((o2_1@@227 T@Ref) (f_8@@252 T@Field_11138_14482) ) (!  (=> (select (|PolymorphicMapType_11627_6336_42376#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@227 f_8@@252) (= (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) o2_1@@227 f_8@@252) (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@227 f_8@@252)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@227 f_8@@252))
))) (forall ((o2_1@@228 T@Ref) (f_8@@253 T@Field_11138_14493) ) (!  (=> (select (|PolymorphicMapType_11627_6336_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@228 f_8@@253) (= (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| Heap@@74) o2_1@@228 f_8@@253) (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@228 f_8@@253)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_11138_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@228 f_8@@253))
))) (forall ((o2_1@@229 T@Ref) (f_8@@254 T@Field_14465_1199) ) (!  (=> (select (|PolymorphicMapType_11627_14465_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@229 f_8@@254) (= (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| Heap@@74) o2_1@@229 f_8@@254) (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@229 f_8@@254)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@229 f_8@@254))
))) (forall ((o2_1@@230 T@Ref) (f_8@@255 T@Field_14465_53) ) (!  (=> (select (|PolymorphicMapType_11627_14465_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@230 f_8@@255) (= (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| Heap@@74) o2_1@@230 f_8@@255) (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@230 f_8@@255)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@230 f_8@@255))
))) (forall ((o2_1@@231 T@Ref) (f_8@@256 T@Field_14465_11152) ) (!  (=> (select (|PolymorphicMapType_11627_14465_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@231 f_8@@256) (= (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| Heap@@74) o2_1@@231 f_8@@256) (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@231 f_8@@256)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@231 f_8@@256))
))) (forall ((o2_1@@232 T@Ref) (f_8@@257 T@Field_14477_14482) ) (!  (=> (select (|PolymorphicMapType_11627_14465_43424#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@232 f_8@@257) (= (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| Heap@@74) o2_1@@232 f_8@@257) (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@232 f_8@@257)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6282_20161#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@232 f_8@@257))
))) (forall ((o2_1@@233 T@Ref) (f_8@@258 T@Field_14492_14493) ) (!  (=> (select (|PolymorphicMapType_11627_14465_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@233 f_8@@258) (= (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| Heap@@74) o2_1@@233 f_8@@258) (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@233 f_8@@258)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_14465_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@233 f_8@@258))
))) (forall ((o2_1@@234 T@Ref) (f_8@@259 T@Field_15021_1464) ) (!  (=> (select (|PolymorphicMapType_11627_15021_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@234 f_8@@259) (= (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| Heap@@74) o2_1@@234 f_8@@259) (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@234 f_8@@259)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@234 f_8@@259))
))) (forall ((o2_1@@235 T@Ref) (f_8@@260 T@Field_15021_53) ) (!  (=> (select (|PolymorphicMapType_11627_15021_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@235 f_8@@260) (= (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| Heap@@74) o2_1@@235 f_8@@260) (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@235 f_8@@260)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@235 f_8@@260))
))) (forall ((o2_1@@236 T@Ref) (f_8@@261 T@Field_15021_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15021_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@236 f_8@@261) (= (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| Heap@@74) o2_1@@236 f_8@@261) (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@236 f_8@@261)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@236 f_8@@261))
))) (forall ((o2_1@@237 T@Ref) (f_8@@262 T@Field_15033_15038) ) (!  (=> (select (|PolymorphicMapType_11627_15021_44472#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@237 f_8@@262) (= (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| Heap@@74) o2_1@@237 f_8@@262) (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@237 f_8@@262)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_37373#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@237 f_8@@262))
))) (forall ((o2_1@@238 T@Ref) (f_8@@263 T@Field_15048_15049) ) (!  (=> (select (|PolymorphicMapType_11627_15021_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@238 f_8@@263) (= (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| Heap@@74) o2_1@@238 f_8@@263) (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@238 f_8@@263)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15021_14493#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@238 f_8@@263))
))) (forall ((o2_1@@239 T@Ref) (f_8@@264 T@Field_15623_1199) ) (!  (=> (select (|PolymorphicMapType_11627_15623_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@239 f_8@@264) (= (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| Heap@@74) o2_1@@239 f_8@@264) (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@239 f_8@@264)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@239 f_8@@264))
))) (forall ((o2_1@@240 T@Ref) (f_8@@265 T@Field_15623_53) ) (!  (=> (select (|PolymorphicMapType_11627_15623_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@240 f_8@@265) (= (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| Heap@@74) o2_1@@240 f_8@@265) (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@240 f_8@@265)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@240 f_8@@265))
))) (forall ((o2_1@@241 T@Ref) (f_8@@266 T@Field_15623_11152) ) (!  (=> (select (|PolymorphicMapType_11627_15623_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@241 f_8@@266) (= (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| Heap@@74) o2_1@@241 f_8@@266) (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@241 f_8@@266)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_15623_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@241 f_8@@266))
))) (forall ((o2_1@@242 T@Ref) (f_8@@267 T@Field_15636_15641) ) (!  (=> (select (|PolymorphicMapType_11627_15623_45520#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@242 f_8@@267) (= (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| Heap@@74) o2_1@@242 f_8@@267) (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@242 f_8@@267)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6343_20280#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@242 f_8@@267))
))) (forall ((o2_1@@243 T@Ref) (f_8@@268 T@Field_15623_15624) ) (!  (=> (select (|PolymorphicMapType_11627_15623_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@243 f_8@@268) (= (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| Heap@@74) o2_1@@243 f_8@@268) (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@243 f_8@@268)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6339_6340#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@243 f_8@@268))
))) (forall ((o2_1@@244 T@Ref) (f_8@@269 T@Field_16561_1199) ) (!  (=> (select (|PolymorphicMapType_11627_16561_1716#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@244 f_8@@269) (= (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| Heap@@74) o2_1@@244 f_8@@269) (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@244 f_8@@269)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_1199#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@244 f_8@@269))
))) (forall ((o2_1@@245 T@Ref) (f_8@@270 T@Field_16561_53) ) (!  (=> (select (|PolymorphicMapType_11627_16561_53#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@245 f_8@@270) (= (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| Heap@@74) o2_1@@245 f_8@@270) (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@245 f_8@@270)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_53#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@245 f_8@@270))
))) (forall ((o2_1@@246 T@Ref) (f_8@@271 T@Field_16561_11152) ) (!  (=> (select (|PolymorphicMapType_11627_16561_11152#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@246 f_8@@271) (= (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| Heap@@74) o2_1@@246 f_8@@271) (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@246 f_8@@271)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_16561_11152#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@246 f_8@@271))
))) (forall ((o2_1@@247 T@Ref) (f_8@@272 T@Field_16574_16579) ) (!  (=> (select (|PolymorphicMapType_11627_16561_46568#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@247 f_8@@272) (= (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| Heap@@74) o2_1@@247 f_8@@272) (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@247 f_8@@272)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6368_22796#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@247 f_8@@272))
))) (forall ((o2_1@@248 T@Ref) (f_8@@273 T@Field_16561_16562) ) (!  (=> (select (|PolymorphicMapType_11627_16561_14493#PolymorphicMapType_11627| (select (|PolymorphicMapType_11078_11138_35061#PolymorphicMapType_11078| Heap@@74) null (WandMaskField_11138 pm_f_1@@18))) o2_1@@248 f_8@@273) (= (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| Heap@@74) o2_1@@248 f_8@@273) (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@248 f_8@@273)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11078_6364_6365#PolymorphicMapType_11078| ExhaleHeap@@45) o2_1@@248 f_8@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@74 ExhaleHeap@@45 Mask@@96) (IsWandField_11138_48423 pm_f_1@@18))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@75 () T@PolymorphicMapType_11078)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@75 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_11078_6148_53#PolymorphicMapType_11078| Heap@@75) x@@11 $allocated)) (and (= perm@0 (/ (to_real 2) (to_real 3))) (= (ControlFlow 0 2) (- 0 1)))) (>= perm@0 NoPerm)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
